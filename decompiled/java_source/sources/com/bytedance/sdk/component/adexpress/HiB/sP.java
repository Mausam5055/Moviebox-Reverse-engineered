package com.bytedance.sdk.component.adexpress.HiB;

/* JADX INFO: loaded from: classes2.dex */
public interface sP {
    void Sj(String str);

    String adInfo();

    String appInfo();

    void changeVideoState(String str);

    void chooseAdResult(String str);

    void clickEvent(String str);

    void dynamicTrack(String str);

    String getCurrentVideoState();

    String getData(String str);

    String getTemplateInfo();

    void initRenderFinish();

    void muteVideo(String str);

    void renderDidFinish(String str);

    void skipVideo();

    void videoFrameChanged(String str);
}
