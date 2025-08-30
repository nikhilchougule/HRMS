import { Component, Inject } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';
import { MatButtonModule } from '@angular/material/button';
import { MatDialogModule } from '@angular/material/dialog';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'aptitudetest-dialog',
  templateUrl: 'aptitudetest-dialog.component.html',
  imports: [MatDialogModule, MatButtonModule, CommonModule]
})
export class AptitudeTestDialog {
  constructor(private dialogRef: MatDialogRef<AptitudeTestDialog>,
    @Inject(MAT_DIALOG_DATA) public dataMessages: string[]
  ) {

  }

  onCancel(): void {
    this.dialogRef.close(false);
  }

  onConfirm(): void {
    this.dialogRef.close(true);
  }
}
