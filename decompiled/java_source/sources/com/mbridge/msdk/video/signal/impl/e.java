package com.mbridge.msdk.video.signal.impl;

import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class e implements com.mbridge.msdk.video.signal.f, com.mbridge.msdk.video.signal.h {
    @Override // com.mbridge.msdk.video.signal.f
    public void configurationChanged(int i11, int i12, int i13) {
    }

    @Override // com.mbridge.msdk.video.signal.f
    public boolean endCardShowing() {
        o0.a("DefaultJSContainerModule", "endCardShowing");
        return true;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void hideAlertWebview() {
        o0.a("DefaultJSContainerModule", "hideAlertWebview ,msg=");
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void ivRewardAdsWithoutVideo(String str) {
        o0.a("DefaultJSContainerModule", "ivRewardAdsWithoutVideo,params=");
    }

    @Override // com.mbridge.msdk.video.signal.f
    public boolean miniCardShowing() {
        o0.a("DefaultJSContainerModule", "miniCardShowing");
        return false;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void readyStatus(int i11) {
        o0.a("DefaultJSContainerModule", "readyStatus:isReady=" + i11);
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void resizeMiniCard(int i11, int i12, int i13) {
        o0.a("DefaultJSContainerModule", "showMiniCard width = " + i11 + " height = " + i12 + " radius = " + i13);
    }

    @Override // com.mbridge.msdk.video.signal.f
    public boolean showAlertWebView() {
        o0.a("DefaultJSContainerModule", "showAlertWebView ,msg=");
        return false;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showEndcard(int i11) {
        o0.a("DefaultJSContainerModule", "showEndcard,type=" + i11);
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showMiniCard(int i11, int i12, int i13, int i14, int i15) {
        o0.a("DefaultJSContainerModule", "showMiniCard top = " + i11 + " left = " + i12 + " width = " + i13 + " height = " + i14 + " radius = " + i15);
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showVideoClickView(int i11) {
        o0.a("DefaultJSContainerModule", "showVideoClickView:" + i11);
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showVideoEndCover() {
        o0.a("DefaultJSContainerModule", "showVideoEndCover");
    }
}
