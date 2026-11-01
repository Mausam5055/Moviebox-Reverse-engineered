package com.transsion.baselib.db.video;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/transsion/baselib/db/video/ShortTvFavoriteState;", "Ljava/io/Serializable;", "<init>", "()V", "subjectId", "", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "favoriteNum", "getFavoriteNum", "setFavoriteNum", "hasFavorite", "", "getHasFavorite", "()Z", "setHasFavorite", "(Z)V", "favoriteTime", "getFavoriteTime", "setFavoriteTime", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvFavoriteState implements Serializable {
    private String favoriteNum;
    private String favoriteTime;
    private boolean hasFavorite;
    private String subjectId = "";

    public final String getFavoriteNum() {
        return this.favoriteNum;
    }

    public final String getFavoriteTime() {
        return this.favoriteTime;
    }

    public final boolean getHasFavorite() {
        return this.hasFavorite;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final void setFavoriteNum(String str) {
        this.favoriteNum = str;
    }

    public final void setFavoriteTime(String str) {
        this.favoriteTime = str;
    }

    public final void setHasFavorite(boolean z10) {
        this.hasFavorite = z10;
    }

    public final void setSubjectId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.subjectId = str;
    }
}
