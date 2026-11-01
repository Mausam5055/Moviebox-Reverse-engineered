package com.transsion.shorttv_pugc;

import ao.e;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    public static final e a(ShorttvModel.UGCVideo uGCVideo) {
        Intrinsics.h(uGCVideo, "<this>");
        String playUrl = uGCVideo.getPlayUrl();
        String playUrl2 = uGCVideo.getPlayUrl();
        if (playUrl2 == null) {
            playUrl2 = "";
        }
        return new e(playUrl, playUrl2, uGCVideo.videoUGCPosition(), null, null, 24, null);
    }
}
