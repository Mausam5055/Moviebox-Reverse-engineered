package com.cloud.hisavana.abtestkit.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006\u0012\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0017\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006HÆ\u0003J\u0013\u0010\u0019\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tHÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ^\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00062\u0012\b\u0002\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001cJ\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u001eHÖ\u0001J\b\u0010$\u001a\u00020\u0007H\u0016J\u0019\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001eHÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0010\u0010\u000eR \u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0013\u0010\u000eR$\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006*"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;", "Landroid/os/Parcelable;", "projectId", "", "layerId", "whiteList", "", "", "subExps", "", "Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;", "updatedAt", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;Ljava/lang/Long;)V", "getLayerId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getProjectId", "getSubExps", "()Ljava/util/List;", "getUpdatedAt", "getWhiteList", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;Ljava/lang/Long;)Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ABLayerInfo implements Parcelable {
    public static final Parcelable.Creator<ABLayerInfo> CREATOR = new Creator();

    @SerializedName(ClientABTestDTOKt.LAYER_ID)
    private final Long layerId;

    @SerializedName("project_id")
    private final Long projectId;

    @SerializedName("vars")
    private final List<ABSubExpInfo> subExps;

    @SerializedName("updated_at")
    private final Long updatedAt;

    @SerializedName("white_list")
    private final Map<String, Long> whiteList;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<ABLayerInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ABLayerInfo createFromParcel(Parcel parcel) {
            LinkedHashMap linkedHashMap;
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                linkedHashMap = null;
            } else {
                int i11 = parcel.readInt();
                linkedHashMap = new LinkedHashMap(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    linkedHashMap.put(parcel.readString(), Long.valueOf(parcel.readLong()));
                }
            }
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i13 = parcel.readInt();
                arrayList = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList.add(parcel.readInt() == 0 ? null : ABSubExpInfo.CREATOR.createFromParcel(parcel));
                }
            }
            return new ABLayerInfo(lValueOf, lValueOf2, linkedHashMap, arrayList, parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ABLayerInfo[] newArray(int i11) {
            return new ABLayerInfo[i11];
        }
    }

    public ABLayerInfo(Long l11, Long l12, Map<String, Long> map, List<ABSubExpInfo> list, Long l13) {
        this.projectId = l11;
        this.layerId = l12;
        this.whiteList = map;
        this.subExps = list;
        this.updatedAt = l13;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ABLayerInfo copy$default(ABLayerInfo aBLayerInfo, Long l11, Long l12, Map map, List list, Long l13, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            l11 = aBLayerInfo.projectId;
        }
        if ((i11 & 2) != 0) {
            l12 = aBLayerInfo.layerId;
        }
        Long l14 = l12;
        if ((i11 & 4) != 0) {
            map = aBLayerInfo.whiteList;
        }
        Map map2 = map;
        if ((i11 & 8) != 0) {
            list = aBLayerInfo.subExps;
        }
        List list2 = list;
        if ((i11 & 16) != 0) {
            l13 = aBLayerInfo.updatedAt;
        }
        return aBLayerInfo.copy(l11, l14, map2, list2, l13);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getProjectId() {
        return this.projectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getLayerId() {
        return this.layerId;
    }

    public final Map<String, Long> component3() {
        return this.whiteList;
    }

    public final List<ABSubExpInfo> component4() {
        return this.subExps;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getUpdatedAt() {
        return this.updatedAt;
    }

    public final ABLayerInfo copy(Long projectId, Long layerId, Map<String, Long> whiteList, List<ABSubExpInfo> subExps, Long updatedAt) {
        return new ABLayerInfo(projectId, layerId, whiteList, subExps, updatedAt);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ABLayerInfo)) {
            return false;
        }
        ABLayerInfo aBLayerInfo = (ABLayerInfo) other;
        return Intrinsics.c(this.projectId, aBLayerInfo.projectId) && Intrinsics.c(this.layerId, aBLayerInfo.layerId) && Intrinsics.c(this.whiteList, aBLayerInfo.whiteList) && Intrinsics.c(this.subExps, aBLayerInfo.subExps) && Intrinsics.c(this.updatedAt, aBLayerInfo.updatedAt);
    }

    public final Long getLayerId() {
        return this.layerId;
    }

    public final Long getProjectId() {
        return this.projectId;
    }

    public final List<ABSubExpInfo> getSubExps() {
        return this.subExps;
    }

    public final Long getUpdatedAt() {
        return this.updatedAt;
    }

    public final Map<String, Long> getWhiteList() {
        return this.whiteList;
    }

    public int hashCode() {
        Long l11 = this.projectId;
        int iHashCode = (l11 == null ? 0 : l11.hashCode()) * 31;
        Long l12 = this.layerId;
        int iHashCode2 = (iHashCode + (l12 == null ? 0 : l12.hashCode())) * 31;
        Map<String, Long> map = this.whiteList;
        int iHashCode3 = (iHashCode2 + (map == null ? 0 : map.hashCode())) * 31;
        List<ABSubExpInfo> list = this.subExps;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        Long l13 = this.updatedAt;
        return iHashCode4 + (l13 != null ? l13.hashCode() : 0);
    }

    public String toString() {
        return "ABLayerInfo(projectId=" + this.projectId + ", layerId=" + this.layerId + ", whiteList=" + this.whiteList + ", subExps=" + this.subExps + ", updatedAt=" + this.updatedAt + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        Long l11 = this.projectId;
        if (l11 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l11.longValue());
        }
        Long l12 = this.layerId;
        if (l12 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l12.longValue());
        }
        Map<String, Long> map = this.whiteList;
        if (map == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(map.size());
            for (Map.Entry<String, Long> entry : map.entrySet()) {
                parcel.writeString(entry.getKey());
                parcel.writeLong(entry.getValue().longValue());
            }
        }
        List<ABSubExpInfo> list = this.subExps;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            for (ABSubExpInfo aBSubExpInfo : list) {
                if (aBSubExpInfo == null) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(1);
                    aBSubExpInfo.writeToParcel(parcel, flags);
                }
            }
        }
        Long l13 = this.updatedAt;
        if (l13 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l13.longValue());
        }
    }
}
