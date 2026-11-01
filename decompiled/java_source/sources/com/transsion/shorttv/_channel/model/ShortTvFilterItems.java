package com.transsion.shorttv._channel.model;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/transsion/shorttv/_channel/model/ShortTvFilterItems;", "Ljava/io/Serializable;", "typeList", "", "Lcom/transsion/shorttv/_channel/model/ShortTvChannel;", "<init>", "(Ljava/util/List;)V", "getTypeList", "()Ljava/util/List;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTvFilterItems implements Serializable {

    @SerializedName("typeList")
    private final List<ShortTvChannel> typeList;

    public ShortTvFilterItems(List<ShortTvChannel> typeList) {
        Intrinsics.h(typeList, "typeList");
        this.typeList = typeList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ShortTvFilterItems copy$default(ShortTvFilterItems shortTvFilterItems, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = shortTvFilterItems.typeList;
        }
        return shortTvFilterItems.copy(list);
    }

    public final List<ShortTvChannel> component1() {
        return this.typeList;
    }

    public final ShortTvFilterItems copy(List<ShortTvChannel> typeList) {
        Intrinsics.h(typeList, "typeList");
        return new ShortTvFilterItems(typeList);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ShortTvFilterItems) && Intrinsics.c(this.typeList, ((ShortTvFilterItems) other).typeList);
    }

    public final List<ShortTvChannel> getTypeList() {
        return this.typeList;
    }

    public int hashCode() {
        return this.typeList.hashCode();
    }

    public String toString() {
        return "ShortTvFilterItems(typeList=" + this.typeList + ")";
    }
}
