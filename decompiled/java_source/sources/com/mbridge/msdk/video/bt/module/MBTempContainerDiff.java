package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.util.AttributeSet;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.video.bt.module.listener.b;
import com.mbridge.msdk.video.bt.module.orglistener.h;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.container.AbstractJSContainer;

/* JADX INFO: loaded from: classes5.dex */
public class MBTempContainerDiff extends AbstractJSContainer {
    public MBridgeVideoView mbridgeVideoView;

    public MBTempContainerDiff(Context context) {
        super(context);
    }

    public MBTempContainerDiff(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean checkChinaSendToServerDiff(h hVar) {
        return false;
    }

    public boolean checkChinaShowingAlertViewState() {
        return false;
    }

    public void setChinaBrowserCallBack(b bVar, String str, h hVar, CampaignEx campaignEx) {
    }

    public void setChinaCTACallBack() {
    }

    public void setChinaCallBackStatus(WindVaneWebView windVaneWebView) {
    }

    public void setChinaDestroy() {
    }

    public void setChinaJsCommonContext() {
    }
}
