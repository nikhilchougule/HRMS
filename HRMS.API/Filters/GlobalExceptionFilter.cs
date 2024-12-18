﻿using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.IO;

namespace HRMS.API.Filters
{
    public class GlobalExceptionFilter : ExceptionFilterAttribute
    {
        public override void OnException(ExceptionContext context)
        {
            var controllerName = context.RouteData.Values["controller"];
            var actionName = context.RouteData.Values["action"];

            string message = $"\nTime: {DateTime.Now}, Controller: {controllerName}, Action: {actionName}, Exception: {context.Exception.Message}";
            string filePath = Path.Combine(Directory.GetCurrentDirectory(), "Log", "Log.txt");
            //saving the data in a text file called Log.txt
            File.AppendAllText(filePath, message + "\n");
        }
    }
}
