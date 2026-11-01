package com.transsion.home.hashtag.model;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVerticalRank;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\rHÆ\u0003J[\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020(HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006)"}, d2 = {"Lcom/transsion/home/hashtag/model/HashTagItem;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "Lcom/transsion/home/hashtag/model/HashTagItemType;", "tags", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "selectedTags", "ugcVideo", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "ugcCollection", "Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;", "verticalRank", "Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;", "<init>", "(Lcom/transsion/home/hashtag/model/HashTagItemType;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V", "getType", "()Lcom/transsion/home/hashtag/model/HashTagItemType;", "getTags", "()Ljava/util/List;", "getSelectedTags", "getUgcVideo", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "getUgcCollection", "()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;", "getVerticalRank", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HashTagItem {
    public static final int $stable = 8;
    private final List<UGCVideoHashTag> selectedTags;
    private final List<UGCVideoHashTag> tags;
    private final HashTagItemType type;
    private final UGCCollection ugcCollection;
    private final UGCVideo ugcVideo;
    private final UGCVerticalRank verticalRank;

    public HashTagItem(HashTagItemType type, List<UGCVideoHashTag> list, List<UGCVideoHashTag> list2, UGCVideo uGCVideo, UGCCollection uGCCollection, UGCVerticalRank uGCVerticalRank) {
        Intrinsics.h(type, "type");
        this.type = type;
        this.tags = list;
        this.selectedTags = list2;
        this.ugcVideo = uGCVideo;
        this.ugcCollection = uGCCollection;
        this.verticalRank = uGCVerticalRank;
    }

    public /* synthetic */ HashTagItem(HashTagItemType hashTagItemType, List list, List list2, UGCVideo uGCVideo, UGCCollection uGCCollection, UGCVerticalRank uGCVerticalRank, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(hashTagItemType, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : list2, (i11 & 8) != 0 ? null : uGCVideo, (i11 & 16) != 0 ? null : uGCCollection, (i11 & 32) == 0 ? uGCVerticalRank : null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HashTagItem copy$default(HashTagItem hashTagItem, HashTagItemType hashTagItemType, List list, List list2, UGCVideo uGCVideo, UGCCollection uGCCollection, UGCVerticalRank uGCVerticalRank, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            hashTagItemType = hashTagItem.type;
        }
        if ((i11 & 2) != 0) {
            list = hashTagItem.tags;
        }
        List list3 = list;
        if ((i11 & 4) != 0) {
            list2 = hashTagItem.selectedTags;
        }
        List list4 = list2;
        if ((i11 & 8) != 0) {
            uGCVideo = hashTagItem.ugcVideo;
        }
        UGCVideo uGCVideo2 = uGCVideo;
        if ((i11 & 16) != 0) {
            uGCCollection = hashTagItem.ugcCollection;
        }
        UGCCollection uGCCollection2 = uGCCollection;
        if ((i11 & 32) != 0) {
            uGCVerticalRank = hashTagItem.verticalRank;
        }
        return hashTagItem.copy(hashTagItemType, list3, list4, uGCVideo2, uGCCollection2, uGCVerticalRank);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final HashTagItemType getType() {
        return this.type;
    }

    public final List<UGCVideoHashTag> component2() {
        return this.tags;
    }

    public final List<UGCVideoHashTag> component3() {
        return this.selectedTags;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final UGCVideo getUgcVideo() {
        return this.ugcVideo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final UGCCollection getUgcCollection() {
        return this.ugcCollection;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final UGCVerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    public final HashTagItem copy(HashTagItemType type, List<UGCVideoHashTag> tags, List<UGCVideoHashTag> selectedTags, UGCVideo ugcVideo, UGCCollection ugcCollection, UGCVerticalRank verticalRank) {
        Intrinsics.h(type, "type");
        return new HashTagItem(type, tags, selectedTags, ugcVideo, ugcCollection, verticalRank);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HashTagItem)) {
            return false;
        }
        HashTagItem hashTagItem = (HashTagItem) other;
        return this.type == hashTagItem.type && Intrinsics.c(this.tags, hashTagItem.tags) && Intrinsics.c(this.selectedTags, hashTagItem.selectedTags) && Intrinsics.c(this.ugcVideo, hashTagItem.ugcVideo) && Intrinsics.c(this.ugcCollection, hashTagItem.ugcCollection) && Intrinsics.c(this.verticalRank, hashTagItem.verticalRank);
    }

    public final List<UGCVideoHashTag> getSelectedTags() {
        return this.selectedTags;
    }

    public final List<UGCVideoHashTag> getTags() {
        return this.tags;
    }

    public final HashTagItemType getType() {
        return this.type;
    }

    public final UGCCollection getUgcCollection() {
        return this.ugcCollection;
    }

    public final UGCVideo getUgcVideo() {
        return this.ugcVideo;
    }

    public final UGCVerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    public int hashCode() {
        int iHashCode = this.type.hashCode() * 31;
        List<UGCVideoHashTag> list = this.tags;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<UGCVideoHashTag> list2 = this.selectedTags;
        int iHashCode3 = (iHashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        UGCVideo uGCVideo = this.ugcVideo;
        int iHashCode4 = (iHashCode3 + (uGCVideo == null ? 0 : uGCVideo.hashCode())) * 31;
        UGCCollection uGCCollection = this.ugcCollection;
        int iHashCode5 = (iHashCode4 + (uGCCollection == null ? 0 : uGCCollection.hashCode())) * 31;
        UGCVerticalRank uGCVerticalRank = this.verticalRank;
        return iHashCode5 + (uGCVerticalRank != null ? uGCVerticalRank.hashCode() : 0);
    }

    public String toString() {
        return "HashTagItem(type=" + this.type + ", tags=" + this.tags + ", selectedTags=" + this.selectedTags + ", ugcVideo=" + this.ugcVideo + ", ugcCollection=" + this.ugcCollection + ", verticalRank=" + this.verticalRank + ")";
    }
}
