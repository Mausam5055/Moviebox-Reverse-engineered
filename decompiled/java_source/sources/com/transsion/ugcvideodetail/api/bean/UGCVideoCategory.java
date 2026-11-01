package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0014"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;", "Ljava/io/Serializable;", "id", "", "<init>", "(Ljava/lang/Integer;)V", "getId", "()Ljava/lang/Integer;", "setId", "Ljava/lang/Integer;", "component1", "copy", "(Ljava/lang/Integer;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoCategory implements Serializable {
    private Integer id;

    /* JADX WARN: Multi-variable type inference failed */
    public UGCVideoCategory() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public UGCVideoCategory(Integer num) {
        this.id = num;
    }

    public /* synthetic */ UGCVideoCategory(Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : num);
    }

    public static /* synthetic */ UGCVideoCategory copy$default(UGCVideoCategory uGCVideoCategory, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = uGCVideoCategory.id;
        }
        return uGCVideoCategory.copy(num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getId() {
        return this.id;
    }

    public final UGCVideoCategory copy(Integer id2) {
        return new UGCVideoCategory(id2);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UGCVideoCategory) && Intrinsics.c(this.id, ((UGCVideoCategory) other).id);
    }

    public final Integer getId() {
        return this.id;
    }

    public int hashCode() {
        Integer num = this.id;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    public final void setId(Integer num) {
        this.id = num;
    }

    public String toString() {
        return "UGCVideoCategory(id=" + this.id + ")";
    }
}
