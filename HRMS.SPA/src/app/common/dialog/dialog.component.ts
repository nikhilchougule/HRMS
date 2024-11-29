import { Component, Inject } from '@angular/core';
import {
  MatDialog,
  MAT_DIALOG_DATA,
  MatDialogRef,
  MatDialogTitle,
  MatDialogContent,
  MatDialogActions,
  MatDialogClose,
  MatDialogModule,
} from '@angular/material/dialog';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';

@Component({
  selector: 'app-dialog-scrollable-content',
  standalone: true,
  imports: [MatButtonModule, MatDialogModule, MatCardModule],
  templateUrl: './dialog.component.html',
  styleUrl: './dialog.component.scss'
})

export class DialogComponent {
  constructor(
    public dialog: MatDialog
  ) { }

  openDialog(dialogData: String) {
    const dialogRef = this.dialog.open(DialogContent, { data: dialogData });

    dialogRef.afterClosed().subscribe(result => {
      //console.log(`Dialog result: ${result}`);
    });
  }

}

@Component({
  selector: 'dialog-content-example-dialog',
  templateUrl: 'dialog-content.html',
  standalone: true,
  imports: [MatDialogModule, MatButtonModule],
})

export class DialogContent {
  constructor(public dialogRef: MatDialogRef<DialogContent>,
    @Inject(MAT_DIALOG_DATA) public data: {DialogData: any }) {
    
  }
}




