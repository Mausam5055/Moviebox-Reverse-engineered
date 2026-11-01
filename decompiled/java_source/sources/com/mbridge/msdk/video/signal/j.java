package com.mbridge.msdk.video.signal;

/* JADX INFO: loaded from: classes5.dex */
public interface j {
    void alertWebViewShowed();

    void closeVideoOperate(int i11, int i12);

    void dismissAllAlert();

    int getBorderViewHeight();

    int getBorderViewLeft();

    int getBorderViewRadius();

    int getBorderViewTop();

    int getBorderViewWidth();

    String getCurrentProgress();

    void hideAlertView(int i11);

    boolean isH5Canvas();

    void notifyCloseBtn(int i11);

    void progressBarOperate(int i11);

    void progressOperate(int i11, int i12);

    void setCover(boolean z10);

    void setMiniEndCardState(boolean z10);

    void setScaleFitXY(int i11);

    void setVisible(int i11);

    void showAlertView();

    void showIVRewardAlertView(String str);

    void showVideoLocation(int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19);

    void soundOperate(int i11, int i12);

    void soundOperate(int i11, int i12, String str);

    void videoOperate(int i11);
}
