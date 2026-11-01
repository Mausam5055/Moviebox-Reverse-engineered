package com.cloud.hisavana.abtestkit.bean;

import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import v6.z;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u001c\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0018\u001a\u0004\b\u0019\u0010\r\"\u0004\b\u001a\u0010\u0005¨\u0006\u001b"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;", "Lv6/z;", "Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;", "abLayerInfo", "<init>", "(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V", "", "json", "convertLayerInfo", "(Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;", "toString", "()Ljava/lang/String;", "component1", "()Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;", "copy", "(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;", "getAbLayerInfo", "setAbLayerInfo", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OnlineABLayerDTO extends z {
    private ABLayerInfo abLayerInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public OnlineABLayerDTO() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public OnlineABLayerDTO(ABLayerInfo aBLayerInfo) {
        super(0L, 0L, null, 7, null);
        this.abLayerInfo = aBLayerInfo;
    }

    public /* synthetic */ OnlineABLayerDTO(ABLayerInfo aBLayerInfo, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : aBLayerInfo);
    }

    public static /* synthetic */ OnlineABLayerDTO copy$default(OnlineABLayerDTO onlineABLayerDTO, ABLayerInfo aBLayerInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            aBLayerInfo = onlineABLayerDTO.abLayerInfo;
        }
        return onlineABLayerDTO.copy(aBLayerInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ABLayerInfo getAbLayerInfo() {
        return this.abLayerInfo;
    }

    public final ABLayerInfo convertLayerInfo(String json) {
        if (json != null && json.length() != 0) {
            try {
                return (ABLayerInfo) GsonUtil.a(json, ABLayerInfo.class);
            } catch (Exception e11) {
                c.Log().w("localABData", "coverLayerInfo fail, reason = " + e11.getMessage());
            }
        }
        return null;
    }

    public final OnlineABLayerDTO copy(ABLayerInfo abLayerInfo) {
        return new OnlineABLayerDTO(abLayerInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof OnlineABLayerDTO) && Intrinsics.c(this.abLayerInfo, ((OnlineABLayerDTO) other).abLayerInfo);
    }

    public final ABLayerInfo getAbLayerInfo() {
        return this.abLayerInfo;
    }

    public int hashCode() {
        ABLayerInfo aBLayerInfo = this.abLayerInfo;
        if (aBLayerInfo == null) {
            return 0;
        }
        return aBLayerInfo.hashCode();
    }

    public final void setAbLayerInfo(ABLayerInfo aBLayerInfo) {
        this.abLayerInfo = aBLayerInfo;
    }

    public String toString() {
        return "OnlineABLayerDTO(layerId=" + getLayerId() + ", requestTime=" + getRequestTime() + ", abLayerInfo=" + this.abLayerInfo + ')';
    }
}
