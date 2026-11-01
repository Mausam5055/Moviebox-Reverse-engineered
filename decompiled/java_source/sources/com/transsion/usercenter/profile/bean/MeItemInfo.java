package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/transsion/usercenter/profile/bean/MeItemInfo;", "Ljava/io/Serializable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "data", "", "<init>", "(ILjava/lang/Object;)V", "getType", "()I", "setType", "(I)V", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MeItemInfo implements Serializable {
    private Object data;
    private int type;

    public MeItemInfo(int i11, Object obj) {
        this.type = i11;
        this.data = obj;
    }

    public static /* synthetic */ MeItemInfo copy$default(MeItemInfo meItemInfo, int i11, Object obj, int i12, Object obj2) {
        if ((i12 & 1) != 0) {
            i11 = meItemInfo.type;
        }
        if ((i12 & 2) != 0) {
            obj = meItemInfo.data;
        }
        return meItemInfo.copy(i11, obj);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Object getData() {
        return this.data;
    }

    public final MeItemInfo copy(int type, Object data) {
        return new MeItemInfo(type, data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MeItemInfo)) {
            return false;
        }
        MeItemInfo meItemInfo = (MeItemInfo) other;
        return this.type == meItemInfo.type && Intrinsics.c(this.data, meItemInfo.data);
    }

    public final Object getData() {
        return this.data;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int i11 = this.type * 31;
        Object obj = this.data;
        return i11 + (obj == null ? 0 : obj.hashCode());
    }

    public final void setData(Object obj) {
        this.data = obj;
    }

    public final void setType(int i11) {
        this.type = i11;
    }

    public String toString() {
        return "MeItemInfo(type=" + this.type + ", data=" + this.data + ")";
    }
}
