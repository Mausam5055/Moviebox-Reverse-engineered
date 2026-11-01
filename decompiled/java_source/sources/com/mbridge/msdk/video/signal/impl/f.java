package com.mbridge.msdk.video.signal.impl;

import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.video.module.MBridgeVideoView;

/* JADX INFO: loaded from: classes5.dex */
public class f implements com.mbridge.msdk.video.signal.g {
    @Override // com.mbridge.msdk.video.signal.g
    public void a(int i11) {
        o0.a("DefaultJSNotifyProxy", "onVideoStatusNotify:" + i11);
    }

    @Override // com.mbridge.msdk.video.signal.g
    public void a(int i11, int i12, int i13, int i14) {
        o0.a("DefaultJSNotifyProxy", "showDataInfo");
    }

    @Override // com.mbridge.msdk.video.signal.g
    public void a(int i11, String str) {
        o0.a("DefaultJSNotifyProxy", "onClick:" + i11 + ",pt:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.g
    public void a(MBridgeVideoView.v vVar) {
        o0.a("DefaultJSNotifyProxy", "onProgressNotify:" + vVar.toString());
    }

    @Override // com.mbridge.msdk.video.signal.g
    public void a(Object obj) {
        o0.a("DefaultJSNotifyProxy", "onWebviewShow:" + obj);
    }
}
