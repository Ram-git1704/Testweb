import { Component, OnInit, OnDestroy } from '@angular/core';
import { ApiService } from 'src/app/api.service';
import { ActivatedRoute, Router } from '../../../node_modules/@angular/router';
import { Location } from '@angular/common';
import { AppComponent } from '../app.component';

@Component({
  selector: 'app-template-report',
  templateUrl: './template-report.component.html',
  styleUrls: ['./template-report.component.css']
})
export class TemplateReportComponent implements OnInit {

  public reqtemplateRecords:  Array<object> = [];
  public nonReqtemplateRecords: Array<object> = [];

  constructor(private route: ActivatedRoute, private apiService: ApiService, private router: Router, private _location: Location, private appVariable: AppComponent) {}

  success_failure: string;
  category : string;
  logicalLevel: string;
  private sub: any;

  ngOnInit() {

    if(this.appVariable.adminFlag == 1){
      this.router.navigate(['/templateMaster/noTab']);
    }

    this.sub = this.route.params.subscribe(params => {
       this.category = params['category']; // (+) converts string 'id' to a number

       // In a real app: dispatch action to load the details here.
       this.logicalLevel = params['logicalLevel'];
    });

    const url = this.route['_routerState'].snapshot.url;

    //console.log(url);
    if(url.includes("templateStatusSuccess")){
        this.success_failure='success';
      this.getReqTemplateSuccessStatus(this.category,this.logicalLevel );
      //this.getNonReqTemplateStatus(this.category,this.logicalLevel );
    }

    if(url.includes("templateStatusTotal")){
        this.success_failure='total';
      this.getReqTemplateTotalStatus(this.category,this.logicalLevel );
      //this.getNonReqTemplateStatus(this.category,this.logicalLevel );
    }

    if(url.includes("templateStatusFailure")){
        this.success_failure='failure';
      this.getReqTemplateFailureStatus(this.category,this.logicalLevel );
      //this.getNonReqTemplateStatus(this.category,this.logicalLevel );
    }

    //console.log(this.category);
    //console.log(this.logicalLevel);
}

public getReqTemplateTotalStatus(category: string,logicalLevel: string ){
    this.apiService.getReqTemplateTotalStatus(category,logicalLevel).subscribe((data:  Array<object>) => {
      this.reqtemplateRecords  =  data;
      //console.log(data);
  });
}

public getReqTemplateSuccessStatus(category: string,logicalLevel: string ){
  this.apiService.getReqTemplateSuccessStatus(category,logicalLevel).subscribe((data:  Array<object>) => {
    this.reqtemplateRecords  =  data;
    //console.log(data);
});
}

public getReqTemplateFailureStatus(category: string,logicalLevel: string ){
  this.apiService.getReqTemplateFailureStatus(category,logicalLevel).subscribe((data:  Array<object>) => {
    this.reqtemplateRecords  =  data;
    //console.log(data);
});
}

public getNonReqTemplateStatus(category: string,logicalLevel: string ){
  this.apiService.getNonReqTemplateStatus(category,logicalLevel).subscribe((data:  Array<object>) => {
    this.nonReqtemplateRecords  =  data;
    //console.log(data);
});
}

goBack(){
  this._location.back();
}

}