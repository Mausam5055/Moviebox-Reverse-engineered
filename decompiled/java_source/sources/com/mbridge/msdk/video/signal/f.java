package com.mbridge.msdk.video.signal;

/* JADX INFO: loaded from: classes5.dex */
public interface f {
    void configurationChanged(int i11, int i12, int i13);

    boolean endCardShowing();

    void hideAlertWebview();

    void ivRewardAdsWithoutVideo(String str);

    boolean miniCardShowing();

    void readyStatus(int i11);

    void resizeMiniCard(int i11, int i12, int i13);

    boolean showAlertWebView();

    void showEndcard(int i11);

    void showMiniCard(int i11, int i12, int i13, int i14, int i15);

    void showVideoClickView(int i11);

    void showVideoEndCover();
}
