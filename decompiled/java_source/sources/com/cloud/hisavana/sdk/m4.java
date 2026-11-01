package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.widget.video.MediaTextureView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;

/* JADX INFO: loaded from: classes3.dex */
public interface m4 {
    void a();

    void a(MediaTextureView mediaTextureView);

    void a(boolean z10);

    void b();

    void b(AdsDTO adsDTO, String str, boolean z10, boolean z11);

    void c();

    void c(q4 q4Var);

    void d();

    void e();

    long getCurrentPosition();

    long getDuration();

    boolean getPlayWhenReady();

    boolean isPlaying();

    void pause();

    void play();

    void release();

    void seekTo(long j11);

    void setPlayWhenReady(boolean z10);
}
