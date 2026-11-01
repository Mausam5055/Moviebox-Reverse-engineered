package com.transsion.baselib.db.video;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0019\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006HÆ\u0003J-\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;", "", "collectionId", "", "ugcVideoIds", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "<init>", "(Ljava/lang/String;Ljava/util/ArrayList;)V", "getCollectionId", "()Ljava/lang/String;", "getUgcVideoIds", "()Ljava/util/ArrayList;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCCollectionVideoGroup {
    private final String collectionId;
    private final ArrayList<String> ugcVideoIds;

    public UGCCollectionVideoGroup(String collectionId, ArrayList<String> ugcVideoIds) {
        Intrinsics.h(collectionId, "collectionId");
        Intrinsics.h(ugcVideoIds, "ugcVideoIds");
        this.collectionId = collectionId;
        this.ugcVideoIds = ugcVideoIds;
    }

    public /* synthetic */ UGCCollectionVideoGroup(String str, ArrayList arrayList, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? new ArrayList() : arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCCollectionVideoGroup copy$default(UGCCollectionVideoGroup uGCCollectionVideoGroup, String str, ArrayList arrayList, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCCollectionVideoGroup.collectionId;
        }
        if ((i11 & 2) != 0) {
            arrayList = uGCCollectionVideoGroup.ugcVideoIds;
        }
        return uGCCollectionVideoGroup.copy(str, arrayList);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCollectionId() {
        return this.collectionId;
    }

    public final ArrayList<String> component2() {
        return this.ugcVideoIds;
    }

    public final UGCCollectionVideoGroup copy(String collectionId, ArrayList<String> ugcVideoIds) {
        Intrinsics.h(collectionId, "collectionId");
        Intrinsics.h(ugcVideoIds, "ugcVideoIds");
        return new UGCCollectionVideoGroup(collectionId, ugcVideoIds);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCCollectionVideoGroup)) {
            return false;
        }
        UGCCollectionVideoGroup uGCCollectionVideoGroup = (UGCCollectionVideoGroup) other;
        return Intrinsics.c(this.collectionId, uGCCollectionVideoGroup.collectionId) && Intrinsics.c(this.ugcVideoIds, uGCCollectionVideoGroup.ugcVideoIds);
    }

    public final String getCollectionId() {
        return this.collectionId;
    }

    public final ArrayList<String> getUgcVideoIds() {
        return this.ugcVideoIds;
    }

    public int hashCode() {
        return (this.collectionId.hashCode() * 31) + this.ugcVideoIds.hashCode();
    }

    public String toString() {
        return "UGCCollectionVideoGroup(collectionId=" + this.collectionId + ", ugcVideoIds=" + this.ugcVideoIds + ")";
    }
}
