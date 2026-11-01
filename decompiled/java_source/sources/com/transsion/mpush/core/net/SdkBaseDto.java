package com.transsion.mpush.core.net;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000f\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0004HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0002\u0010\rJ4\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u0000HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0004HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0015\u0010\u0006\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/transsion/mpush/core/net/SdkBaseDto;", "T", "", "code", "", NotificationCompat.CATEGORY_MESSAGE, "data", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "getCode", "()Ljava/lang/String;", "getMsg", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/transsion/mpush/core/net/SdkBaseDto;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SdkBaseDto<T> {
    private final String code;
    private final T data;
    private final String msg;

    public SdkBaseDto(String code, String msg, T t11) {
        Intrinsics.h(code, "code");
        Intrinsics.h(msg, "msg");
        this.code = code;
        this.msg = msg;
        this.data = t11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SdkBaseDto copy$default(SdkBaseDto sdkBaseDto, String str, String str2, Object obj, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            str = sdkBaseDto.code;
        }
        if ((i11 & 2) != 0) {
            str2 = sdkBaseDto.msg;
        }
        if ((i11 & 4) != 0) {
            obj = sdkBaseDto.data;
        }
        return sdkBaseDto.copy(str, str2, obj);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMsg() {
        return this.msg;
    }

    public final T component3() {
        return this.data;
    }

    public final SdkBaseDto<T> copy(String code, String msg, T data) {
        Intrinsics.h(code, "code");
        Intrinsics.h(msg, "msg");
        return new SdkBaseDto<>(code, msg, data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SdkBaseDto)) {
            return false;
        }
        SdkBaseDto sdkBaseDto = (SdkBaseDto) other;
        return Intrinsics.c(this.code, sdkBaseDto.code) && Intrinsics.c(this.msg, sdkBaseDto.msg) && Intrinsics.c(this.data, sdkBaseDto.data);
    }

    public final String getCode() {
        return this.code;
    }

    public final T getData() {
        return this.data;
    }

    public final String getMsg() {
        return this.msg;
    }

    public int hashCode() {
        int iHashCode = ((this.code.hashCode() * 31) + this.msg.hashCode()) * 31;
        T t11 = this.data;
        return iHashCode + (t11 == null ? 0 : t11.hashCode());
    }

    public String toString() {
        return "SdkBaseDto(code=" + this.code + ", msg=" + this.msg + ", data=" + this.data + ")";
    }
}
