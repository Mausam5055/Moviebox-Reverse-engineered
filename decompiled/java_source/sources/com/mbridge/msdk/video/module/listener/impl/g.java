package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.video.module.MBridgeClickMiniCardView;

/* JADX INFO: loaded from: classes5.dex */
public class g extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MBridgeClickMiniCardView f39457b;

    public g(MBridgeClickMiniCardView mBridgeClickMiniCardView, com.mbridge.msdk.video.module.listener.a aVar) {
        super(aVar);
        this.f39457b = mBridgeClickMiniCardView;
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.i, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i11, Object obj) {
        boolean z10 = false;
        switch (i11) {
            case 100:
                MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f39457b;
                if (mBridgeClickMiniCardView != null) {
                    mBridgeClickMiniCardView.webviewshow();
                    MBridgeClickMiniCardView mBridgeClickMiniCardView2 = this.f39457b;
                    mBridgeClickMiniCardView2.onSelfConfigurationChanged(mBridgeClickMiniCardView2.getResources().getConfiguration());
                }
                break;
            case 101:
            case 102:
                z10 = true;
                break;
            case 103:
                i11 = 107;
                break;
        }
        if (z10) {
            return;
        }
        super.a(i11, obj);
    }
}
