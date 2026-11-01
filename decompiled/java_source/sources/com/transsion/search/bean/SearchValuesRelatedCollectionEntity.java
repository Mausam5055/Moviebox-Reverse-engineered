package com.transsion.search.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Staff;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J5\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;", "Ljava/io/Serializable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", CampaignEx.JSON_KEY_TITLE, "", "verticalRank", "Lcom/transsion/search/bean/VerticalRank;", "staff", "Lcom/transsion/moviedetailapi/bean/Staff;", "<init>", "(ILjava/lang/String;Lcom/transsion/search/bean/VerticalRank;Lcom/transsion/moviedetailapi/bean/Staff;)V", "getType", "()I", "getTitle", "()Ljava/lang/String;", "getVerticalRank", "()Lcom/transsion/search/bean/VerticalRank;", "getStaff", "()Lcom/transsion/moviedetailapi/bean/Staff;", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SearchValuesRelatedCollectionEntity implements Serializable {
    private final Staff staff;
    private final String title;
    private final int type;
    private final VerticalRank verticalRank;

    public SearchValuesRelatedCollectionEntity(int i11, String title, VerticalRank verticalRank, Staff staff) {
        Intrinsics.h(title, "title");
        this.type = i11;
        this.title = title;
        this.verticalRank = verticalRank;
        this.staff = staff;
    }

    public static /* synthetic */ SearchValuesRelatedCollectionEntity copy$default(SearchValuesRelatedCollectionEntity searchValuesRelatedCollectionEntity, int i11, String str, VerticalRank verticalRank, Staff staff, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = searchValuesRelatedCollectionEntity.type;
        }
        if ((i12 & 2) != 0) {
            str = searchValuesRelatedCollectionEntity.title;
        }
        if ((i12 & 4) != 0) {
            verticalRank = searchValuesRelatedCollectionEntity.verticalRank;
        }
        if ((i12 & 8) != 0) {
            staff = searchValuesRelatedCollectionEntity.staff;
        }
        return searchValuesRelatedCollectionEntity.copy(i11, str, verticalRank, staff);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final VerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Staff getStaff() {
        return this.staff;
    }

    public final SearchValuesRelatedCollectionEntity copy(int type, String title, VerticalRank verticalRank, Staff staff) {
        Intrinsics.h(title, "title");
        return new SearchValuesRelatedCollectionEntity(type, title, verticalRank, staff);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchValuesRelatedCollectionEntity)) {
            return false;
        }
        SearchValuesRelatedCollectionEntity searchValuesRelatedCollectionEntity = (SearchValuesRelatedCollectionEntity) other;
        return this.type == searchValuesRelatedCollectionEntity.type && Intrinsics.c(this.title, searchValuesRelatedCollectionEntity.title) && Intrinsics.c(this.verticalRank, searchValuesRelatedCollectionEntity.verticalRank) && Intrinsics.c(this.staff, searchValuesRelatedCollectionEntity.staff);
    }

    public final Staff getStaff() {
        return this.staff;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public final VerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    public int hashCode() {
        int iHashCode = ((this.type * 31) + this.title.hashCode()) * 31;
        VerticalRank verticalRank = this.verticalRank;
        int iHashCode2 = (iHashCode + (verticalRank == null ? 0 : verticalRank.hashCode())) * 31;
        Staff staff = this.staff;
        return iHashCode2 + (staff != null ? staff.hashCode() : 0);
    }

    public String toString() {
        return "SearchValuesRelatedCollectionEntity(type=" + this.type + ", title=" + this.title + ", verticalRank=" + this.verticalRank + ", staff=" + this.staff + ")";
    }
}
