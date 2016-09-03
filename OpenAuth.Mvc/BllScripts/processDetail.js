﻿var schemecode = 'SimpleWF';
var wfdesigner = undefined;
console.log("detail");

function wfdesignerRedraw() {
    var data;

    if (wfdesigner != undefined) {
        data = wfdesigner.data;
        wfdesigner.destroy();
    }
    console.log(QueryString.id);  //取不到值？？
    var processid = $("#processId").val();

    wfdesigner = new WorkflowDesigner({
        name: 'simpledesigner',
        apiurl: '/Designer/API',
        renderTo: 'wfdesigner',
        imagefolder: '/images/',
        graphwidth: 800,
        graphheight: 600
    });

    if (data == undefined) {
        var p = { schemecode: schemecode, processid: processid, readonly: true };
        if (wfdesigner.exists(p))
            wfdesigner.load(p);
        else
            wfdesigner.create();
    } else {
        wfdesigner.data = data;
        wfdesigner.render();
    }
}

wfdesignerRedraw();



//@@ sourceURL=processDetail.js