<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<script type="text/javascript" src="../internal.js"></script>
<style type="text/css">
.wrapper {
	width: 600px;
	padding: 10px;
	height: 352px;
	overflow: hidden;
	position: relative;
	border-bottom: 1px solid #d7d7d7
}

.localPath input {
	float: left;
	width: 350px;
	line-height: 20px;
	height: 20px;
}

#clipboard {
	float: left;
	width: 70px;
	height: 30px;
}

.description {
	color: #0066cc;
	margin-top: 2px;
	width: 450px;
	height: 45px;
	float: left;
	line-height: 22px
}

#upload {
	width: 100px;
	height: 30px;
	float: right;
	margin: 10px 2px 0 0;
	cursor: pointer;
}

#msg {
	width: 140px;
	height: 30px;
	line-height: 25px;
	float: left;
	color: red
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="localPath">
			<input id="localPath" type="text" readonly />
			<div id="clipboard"></div>
			<div id="msg"></div>
		</div>
		<div id="flashContainer"></div>
		<div>
			<div id="upload" style="display: none">
				<img id="uploadBtn">
			</div>
			<div class="description">
				<span style="color: red"><var id="lang_resave"></var>: </span>
				<var id="lang_step"></var>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="tangram.js"></script>
	<script type="text/javascript" src="wordimage.js"></script>
	<script type="text/javascript">
        editor.setOpt({
            wordImageFieldName:"upfile",
            compressSide:0,
            maxImageSideLength:900
        });

            //å¨å±åé
        var imageUrls = [],          //ç¨äºä¿å­ä»æå¡å¨è¿åçå¾çä¿¡æ¯æ°ç»
            selectedImageCount = 0,  //å½åå·²éæ©çä½æªä¸ä¼ çå¾çæ°é
            optImageUrl = editor.getActionUrl(editor.getOpt('imageActionName')),
            optImageFieldName = editor.getOpt('imageFieldName'),
            optImageCompressBorder = editor.getOpt('imageCompressEnable') ? editor.getOpt('imageCompressBorder'):null,
            maxSize = editor.getOpt('imageMaxSize') / 1024,
            extension = editor.getOpt('imageAllowFiles').join(';').replace(/\./g, '*.');

        /* æ·»å é¢å¤çGETåæ° */
        var params = utils.serializeParam(editor.queryCommandValue('serverparam')) || '',
            urlWidthParams = optImageUrl + (optImageUrl.indexOf('?') == -1 ? '?':'&') + params;

        utils.domReady(function(){
            //åå»ºFlashç¸å³çåæ°éå
            var flashOptions = {
                container:"flashContainer",                                                    //flashå®¹å¨id
                url:urlWidthParams,                                           // ä¸ä¼ å¤çé¡µé¢çurlå°å
                ext:editor.queryCommandValue('serverParam') || {},                                 //å¯åæå¡å¨æäº¤çèªå®ä¹åæ°åè¡¨
                fileType:'{"description":"'+lang.fileType+'", "extension":"' + extension + '"}',     //ä¸ä¼ æä»¶æ ¼å¼éå¶
                flashUrl:'imageUploader.swf',                                                  //ä¸ä¼ ç¨çflashç»ä»¶å°å
                width:600,          //flashçå®½åº¦
                height:272,         //flashçé«åº¦
                gridWidth:120,     // æ¯ä¸ä¸ªé¢è§å¾çæå çå®½åº¦
                gridHeight:120,    // æ¯ä¸ä¸ªé¢è§å¾çæå çé«åº¦
                picWidth:100,      // åå¼ é¢è§å¾ççå®½åº¦
                picHeight:100,     // åå¼ é¢è§å¾ççé«åº¦
                uploadDataFieldName: optImageFieldName,    // POSTè¯·æ±ä¸­å¾çæ°æ®çkey
                picDescFieldName:'pictitle',      // POSTè¯·æ±ä¸­å¾çæè¿°çkey
                maxSize: maxSize,                         // æä»¶çæå¤§ä½ç§¯,åä½M
                compressSize:1,                   // ä¸ä¼ åå¦æå¾çä½ç§¯è¶è¿è¯¥å¼ï¼ä¼ååç¼©,åä½M
                maxNum:32,                         // åæ¬¡æå¤§å¯ä¸ä¼ å¤å°ä¸ªæä»¶
                compressSide: 0,                 //ç­æ¯åç¼©çåºåï¼0ä¸ºæç§æé¿è¾¹ï¼1ä¸ºæç§å®½åº¦ï¼2ä¸ºæç§é«åº¦
                compressLength: optImageCompressBorder        //è½æ¥åçæå¤§è¾¹é¿ï¼è¶è¿è¯¥å¼Flashä¼èªå¨ç­æ¯åç¼©
            };
            //åè°å½æ°éåï¼æ¯æä¼ éå½æ°åçå­ç¬¦ä¸²ãå½æ°å¥æä»¥åå½æ°æ¬èº«ä¸ç§ç±»å
            var callbacks={
                selectFileCallback: function(selectFiles){                // éæ©æä»¶çåè°
                    selectedImageCount += selectFiles.length;
                    if(selectedImageCount) baidu.g("upload").style.display = "";
                    dialog.buttons[0].setDisabled(true); //åå§åæ¶ç½®ç°ç¡®å®æé®
                },
                deleteFileCallback: function(delFiles){                 // å é¤æä»¶çåè°
                    selectedImageCount -= delFiles.length;
                    if (!selectedImageCount) {
                        baidu.g("upload").style.display = "none";
                        dialog.buttons[0].setDisabled(false);         //æ²¡æéæ©å¾çæ¶éæ°ç¹äº®æé®
                    }
                },
                uploadCompleteCallback: function(data){               // åä¸ªæä»¶ä¸ä¼ å®æçåè°
                    try{var info = eval("(" + data.info + ")");
                    info && imageUrls.push(info);
                    selectedImageCount--;
                    }catch(e){}
                },
                uploadErrorCallback: function (data){         // åä¸ªæä»¶ä¸ä¼ å¤±è´¥çåè°,
                    console && console.log(data);
                },
                allCompleteCallback: function(){              // å¨é¨ä¸ä¼ å®ææ¶çåè°
                    dialog.buttons[0].setDisabled(false);    //ä¸ä¼ å®æ¯åç¹äº®æé®
                }
                //exceedFileCallback: 'exceedFileCallback',   // æä»¶è¶åºéå¶çæå¤§ä½ç§¯æ¶çåè°
                //startUploadCallback: startUploadCallback    // å¼å§ä¸ä¼ æä¸ªæä»¶æ¶çåè°
            };
            wordImage.init(flashOptions,callbacks);
        });

    </script>

</body>
</html>