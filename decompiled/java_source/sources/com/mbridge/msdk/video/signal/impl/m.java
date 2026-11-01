package com.mbridge.msdk.video.signal.impl;

import com.mbridge.msdk.video.module.MBridgeContainerView;

/* JADX INFO: loaded from: classes5.dex */
public class m extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MBridgeContainerView f39851a;

    public m(MBridgeContainerView mBridgeContainerView) {
        this.f39851a = mBridgeContainerView;
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public void configurationChanged(int i11, int i12, int i13) {
        super.configurationChanged(i11, i12, i13);
        try {
            MBridgeContainerView mBridgeContainerView = this.f39851a;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.configurationChanged(i11, i12, i13);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public boolean endCardShowing() {
        try {
            MBridgeContainerView mBridgeContainerView = this.f39851a;
            if (mBridgeContainerView != null) {
                return mBridgeContainerView.endCardShowing();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return super.endCardShowing();
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public void hideAlertWebview() {
        super.hideAlertWebview();
        MBridgeContainerView mBridgeContainerView = this.f39851a;
        if (mBridgeContainerView != null) {
            mBridgeContainerView.hideAlertWebview();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public void ivRewardAdsWithoutVideo(String str) {
        super.ivRewardAdsWithoutVideo(str);
        MBridgeContainerView mBridgeContainerView = this.f39851a;
        if (mBridgeContainerView != null) {
            mBridgeContainerView.ivRewardAdsWithoutVideo(str);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public boolean miniCardShowing() {
        try {
            MBridgeContainerView mBridgeContainerView = this.f39851a;
            if (mBridgeContainerView != null) {
                return mBridgeContainerView.miniCardShowing();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return super.miniCardShowing();
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public void readyStatus(int i11) {
        try {
            MBridgeContainerView mBridgeContainerView = this.f39851a;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.readyStatus(i11);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        super.readyStatus(i11);
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public void resizeMiniCard(int i11, int i12, int i13) {
        super.resizeMiniCard(i11, i12, i13);
        try {
            MBridgeContainerView mBridgeContainerView = this.f39851a;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.resizeMiniCard(i11, i12, i13);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public boolean showAlertWebView() {
        super.showAlertWebView();
        MBridgeContainerView mBridgeContainerView = this.f39851a;
        if (mBridgeContainerView != null) {
            return mBridgeContainerView.showAlertWebView();
        }
        return false;
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public void showEndcard(int i11) {
        super.showEndcard(i11);
        try {
            MBridgeContainerView mBridgeContainerView = this.f39851a;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.showEndcard(i11);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public void showMiniCard(int i11, int i12, int i13, int i14, int i15) {
        super.showMiniCard(i11, i12, i13, i14, i15);
        try {
            MBridgeContainerView mBridgeContainerView = this.f39851a;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.showMiniCard(i11, i12, i13, i14, i15);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public void showVideoClickView(int i11) {
        super.showVideoClickView(i11);
        MBridgeContainerView mBridgeContainerView = this.f39851a;
        if (mBridgeContainerView != null) {
            mBridgeContainerView.showVideoClickView(i11);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.e, com.mbridge.msdk.video.signal.f
    public void showVideoEndCover() {
        super.showVideoEndCover();
        try {
            MBridgeContainerView mBridgeContainerView = this.f39851a;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.showVideoEndCover();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
