package com.mbridge.msdk.video.signal.impl;

import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class g implements com.mbridge.msdk.video.signal.i {
    @Override // com.mbridge.msdk.video.signal.i
    public void a(String str) {
        o0.a("js", "setOrientation,landscape=" + str);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public String b() {
        o0.a("js", "getEndScreenInfo");
        return "{}";
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void handlerPlayableException(String str) {
        o0.a("js", "handlerPlayableException，msg=" + str);
    }

    @Override // com.mbridge.msdk.video.signal.h
    public void notifyCloseBtn(int i11) {
        o0.a("js", "notifyCloseBtn,state=" + i11);
    }

    @Override // com.mbridge.msdk.video.signal.h
    public void toggleCloseBtn(int i11) {
        o0.a("js", "toggleCloseBtn,state=" + i11);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void triggerCloseBtn(String str) {
        o0.a("js", "triggerCloseBtn,state=" + str);
    }
}
