package com.mbridge.msdk.video.signal.impl;

import com.mbridge.msdk.video.module.MBridgeVideoView;

/* JADX INFO: loaded from: classes5.dex */
public class q extends r {
    public q(MBridgeVideoView mBridgeVideoView) {
        this.f39855a = mBridgeVideoView;
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void alertWebViewShowed() {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.alertWebViewShowed();
        } else {
            super.alertWebViewShowed();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void closeVideoOperate(int i11, int i12) {
        super.closeVideoOperate(i11, i12);
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.closeVideoOperate(i11, i12);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void dismissAllAlert() {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.dismissAllAlert();
        } else {
            super.dismissAllAlert();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public int getBorderViewHeight() {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        return mBridgeVideoView != null ? mBridgeVideoView.getBorderViewHeight() : super.getBorderViewHeight();
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public int getBorderViewLeft() {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        return mBridgeVideoView != null ? mBridgeVideoView.getBorderViewLeft() : super.getBorderViewLeft();
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public int getBorderViewRadius() {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        return mBridgeVideoView != null ? mBridgeVideoView.getBorderViewRadius() : super.getBorderViewRadius();
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public int getBorderViewTop() {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        return mBridgeVideoView != null ? mBridgeVideoView.getBorderViewTop() : super.getBorderViewTop();
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public int getBorderViewWidth() {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        return mBridgeVideoView != null ? mBridgeVideoView.getBorderViewWidth() : super.getBorderViewWidth();
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public String getCurrentProgress() {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        return mBridgeVideoView != null ? mBridgeVideoView.getCurrentProgress() : super.getCurrentProgress();
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void hideAlertView(int i11) {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.hideAlertView(i11);
        } else {
            super.hideAlertView(i11);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public boolean isH5Canvas() {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        return mBridgeVideoView != null ? mBridgeVideoView.isH5Canvas() : super.isH5Canvas();
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void progressBarOperate(int i11) {
        super.progressBarOperate(i11);
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.progressBarOperate(i11);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void progressOperate(int i11, int i12) {
        super.progressOperate(i11, i12);
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.progressOperate(i11, i12);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void setCover(boolean z10) {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setCover(z10);
        } else {
            super.setCover(z10);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void setMiniEndCardState(boolean z10) {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setMiniEndCardState(z10);
        } else {
            super.setMiniEndCardState(z10);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void setScaleFitXY(int i11) {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setScaleFitXY(i11);
        } else {
            super.setScaleFitXY(i11);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void setVisible(int i11) {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setVisible(i11);
        } else {
            super.setVisible(i11);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void showAlertView() {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.showAlertView();
        } else {
            super.showAlertView();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void showIVRewardAlertView(String str) {
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.showIVRewardAlertView(str);
        } else {
            super.showIVRewardAlertView(str);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void showVideoLocation(int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        super.showVideoLocation(i11, i12, i13, i14, i15, i16, i17, i18, i19);
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.showVideoLocation(i11, i12, i13, i14, i15, i16, i17, i18, i19);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void soundOperate(int i11, int i12) {
        super.soundOperate(i11, i12);
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.soundOperate(i11, i12);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void soundOperate(int i11, int i12, String str) {
        super.soundOperate(i11, i12, str);
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.soundOperate(i11, i12, str);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.h, com.mbridge.msdk.video.signal.j
    public void videoOperate(int i11) {
        super.videoOperate(i11);
        MBridgeVideoView mBridgeVideoView = this.f39855a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.videoOperate(i11);
        }
    }
}
