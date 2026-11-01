package com.transsion.player.orplayer;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0003\n\u0002\b\t\b\u0087\b\u0018\u0000 \"2\u00020\u0001:\u0001#B\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ(\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\tR$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0017\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\u001aR$\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/transsion/player/orplayer/PlayError;", "", "", "errorCode", "", "errorMessage", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;)V", "component1", "()Ljava/lang/Integer;", "component2", "()Ljava/lang/String;", "copy", "(Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/player/orplayer/PlayError;", "toString", "hashCode", "()I", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Integer;", "getErrorCode", "Ljava/lang/String;", "getErrorMessage", "setErrorMessage", "(Ljava/lang/String;)V", "", "exoCause", "Ljava/lang/Throwable;", "getExoCause", "()Ljava/lang/Throwable;", "setExoCause", "(Ljava/lang/Throwable;)V", "Companion", "a", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PlayError {
    public static final int ERROR_LOADING_TIMEOUT = 537067524;
    private final Integer errorCode;
    private String errorMessage;
    private Throwable exoCause;

    /* JADX WARN: Multi-variable type inference failed */
    public PlayError() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public PlayError(Integer num, String str) {
        this.errorCode = num;
        this.errorMessage = str;
    }

    public /* synthetic */ PlayError(Integer num, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? null : str);
    }

    public static /* synthetic */ PlayError copy$default(PlayError playError, Integer num, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = playError.errorCode;
        }
        if ((i11 & 2) != 0) {
            str = playError.errorMessage;
        }
        return playError.copy(num, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getErrorCode() {
        return this.errorCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final PlayError copy(Integer errorCode, String errorMessage) {
        return new PlayError(errorCode, errorMessage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayError)) {
            return false;
        }
        PlayError playError = (PlayError) other;
        return Intrinsics.c(this.errorCode, playError.errorCode) && Intrinsics.c(this.errorMessage, playError.errorMessage);
    }

    public final Integer getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final Throwable getExoCause() {
        return this.exoCause;
    }

    public int hashCode() {
        Integer num = this.errorCode;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.errorMessage;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public final void setExoCause(Throwable th2) {
        this.exoCause = th2;
    }

    public String toString() {
        return "PlayError(errorCode=" + this.errorCode + ", errorMessage=" + this.errorMessage + ")";
    }
}
