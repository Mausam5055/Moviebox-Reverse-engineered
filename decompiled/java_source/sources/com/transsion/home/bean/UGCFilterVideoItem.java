package com.transsion.home.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVerticalRank;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b&\b\u0087\b\u0018\u0000 52\u00020\u0001:\u00016B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u001e\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJJ\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u001e\u0010\u0017R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001f\u001a\u0004\b \u0010\u0015R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010!\u001a\u0004\b\"\u0010\u0017\"\u0004\b#\u0010$R0\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010%\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010(R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010)\u001a\u0004\b*\u0010\u001b\"\u0004\b+\u0010,R\u0011\u0010-\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0013\u00100\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b/\u0010\u0017R\u0013\u00102\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b1\u0010\u0017R\u0013\u00104\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b3\u0010\u0017¨\u00067"}, d2 = {"Lcom/transsion/home/bean/UGCFilterVideoItem;", "Ljava/io/Serializable;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "content", "", TmcStartParams.KEY_CHANNEL_ID, "", "selectItems", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nonAdDelegate", "<init>", "(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "component1", "()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "component2", "()Ljava/lang/String;", "component3", "()Ljava/util/Map;", "component4", "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "copy", "(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lcom/transsion/home/bean/UGCFilterVideoItem;", "toString", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "getContent", "Ljava/lang/String;", "getChannelId", "setChannelId", "(Ljava/lang/String;)V", "Ljava/util/Map;", "getSelectItems", "setSelectItems", "(Ljava/util/Map;)V", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "getNonAdDelegate", "setNonAdDelegate", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "isAd", "()Z", "getVideoId", "videoId", "getTitle", CampaignEx.JSON_KEY_TITLE, "getOps", "ops", "Companion", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCFilterVideoItem implements Serializable {
    private String channelId;
    private final UGCContent content;
    private BiddingNativeManager nonAdDelegate;
    private Map<String, String> selectItems;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    /* JADX INFO: renamed from: com.transsion.home.bean.UGCFilterVideoItem$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCFilterVideoItem a(BiddingNativeManager adManager, String str, Map map) {
            Intrinsics.h(adManager, "adManager");
            return new UGCFilterVideoItem(new UGCContent("UGC_VIDEO", new UGCVideo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, false, null, null, null, null, 536806432, null), null, null, null), str, map, adManager);
        }

        public final UGCFilterVideoItem b(UGCContent content, String str, Map map) {
            Intrinsics.h(content, "content");
            return new UGCFilterVideoItem(content, str, map, null);
        }
    }

    public UGCFilterVideoItem(UGCContent content, String str, Map<String, String> map, BiddingNativeManager biddingNativeManager) {
        Intrinsics.h(content, "content");
        this.content = content;
        this.channelId = str;
        this.selectItems = map;
        this.nonAdDelegate = biddingNativeManager;
    }

    public /* synthetic */ UGCFilterVideoItem(UGCContent uGCContent, String str, Map map, BiddingNativeManager biddingNativeManager, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(uGCContent, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : map, (i11 & 8) != 0 ? null : biddingNativeManager);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCFilterVideoItem copy$default(UGCFilterVideoItem uGCFilterVideoItem, UGCContent uGCContent, String str, Map map, BiddingNativeManager biddingNativeManager, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            uGCContent = uGCFilterVideoItem.content;
        }
        if ((i11 & 2) != 0) {
            str = uGCFilterVideoItem.channelId;
        }
        if ((i11 & 4) != 0) {
            map = uGCFilterVideoItem.selectItems;
        }
        if ((i11 & 8) != 0) {
            biddingNativeManager = uGCFilterVideoItem.nonAdDelegate;
        }
        return uGCFilterVideoItem.copy(uGCContent, str, map, biddingNativeManager);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final UGCContent getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getChannelId() {
        return this.channelId;
    }

    public final Map<String, String> component3() {
        return this.selectItems;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final UGCFilterVideoItem copy(UGCContent content, String channelId, Map<String, String> selectItems, BiddingNativeManager nonAdDelegate) {
        Intrinsics.h(content, "content");
        return new UGCFilterVideoItem(content, channelId, selectItems, nonAdDelegate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.c(UGCFilterVideoItem.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.f(other, "null cannot be cast to non-null type com.transsion.home.bean.UGCFilterVideoItem");
        UGCFilterVideoItem uGCFilterVideoItem = (UGCFilterVideoItem) other;
        if (isAd() || uGCFilterVideoItem.isAd()) {
            return this == other;
        }
        String topicType = this.content.getTopicType();
        if (!Intrinsics.c(topicType, uGCFilterVideoItem.content.getTopicType())) {
            return false;
        }
        if (topicType != null) {
            int iHashCode = topicType.hashCode();
            if (iHashCode != -1989652851) {
                if (iHashCode != 511113132) {
                    if (iHashCode == 2033770325 && topicType.equals("VERTICAL_RANK")) {
                        UGCVerticalRank verticalRank = this.content.getVerticalRank();
                        String id2 = verticalRank != null ? verticalRank.getId() : null;
                        UGCVerticalRank verticalRank2 = uGCFilterVideoItem.content.getVerticalRank();
                        return Intrinsics.c(id2, verticalRank2 != null ? verticalRank2.getId() : null);
                    }
                } else if (topicType.equals("UGC_COLLECTION")) {
                    UGCCollection collection = this.content.getCollection();
                    String collectionId = collection != null ? collection.getCollectionId() : null;
                    UGCCollection collection2 = uGCFilterVideoItem.content.getCollection();
                    return Intrinsics.c(collectionId, collection2 != null ? collection2.getCollectionId() : null);
                }
            } else if (topicType.equals("UGC_VIDEO")) {
                UGCVideo video = this.content.getVideo();
                String ugcVideoId = video != null ? video.getUgcVideoId() : null;
                UGCVideo video2 = uGCFilterVideoItem.content.getVideo();
                return Intrinsics.c(ugcVideoId, video2 != null ? video2.getUgcVideoId() : null);
            }
        }
        return Intrinsics.c(this.content, uGCFilterVideoItem.content);
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final UGCContent getContent() {
        return this.content;
    }

    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final String getOps() {
        UGCVideo video;
        UGCCollection collection;
        UGCVerticalRank verticalRank;
        List<UGCVideo> videos;
        UGCVideo uGCVideo;
        String topicType = this.content.getTopicType();
        if (topicType == null) {
            return null;
        }
        int iHashCode = topicType.hashCode();
        if (iHashCode == -1989652851) {
            if (topicType.equals("UGC_VIDEO") && (video = this.content.getVideo()) != null) {
                return video.getOps();
            }
            return null;
        }
        if (iHashCode == 511113132) {
            if (topicType.equals("UGC_COLLECTION") && (collection = this.content.getCollection()) != null) {
                return collection.getOps();
            }
            return null;
        }
        if (iHashCode != 2033770325 || !topicType.equals("VERTICAL_RANK") || (verticalRank = this.content.getVerticalRank()) == null || (videos = verticalRank.getVideos()) == null || (uGCVideo = (UGCVideo) CollectionsKt.k0(videos)) == null) {
            return null;
        }
        return uGCVideo.getOps();
    }

    public final Map<String, String> getSelectItems() {
        return this.selectItems;
    }

    public final String getTitle() {
        UGCVideo video;
        UGCCollection collection;
        UGCVerticalRank verticalRank;
        String topicType = this.content.getTopicType();
        if (topicType == null) {
            return null;
        }
        int iHashCode = topicType.hashCode();
        if (iHashCode == -1989652851) {
            if (topicType.equals("UGC_VIDEO") && (video = this.content.getVideo()) != null) {
                return video.getTitle();
            }
            return null;
        }
        if (iHashCode == 511113132) {
            if (topicType.equals("UGC_COLLECTION") && (collection = this.content.getCollection()) != null) {
                return collection.getTitle();
            }
            return null;
        }
        if (iHashCode == 2033770325 && topicType.equals("VERTICAL_RANK") && (verticalRank = this.content.getVerticalRank()) != null) {
            return verticalRank.getTitle();
        }
        return null;
    }

    public final String getVideoId() {
        UGCVerticalRank verticalRank;
        if (isAd()) {
            BiddingNativeManager biddingNativeManager = this.nonAdDelegate;
            String mSceneId = biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null;
            if (mSceneId == null) {
                mSceneId = TmcConstants.ROUTE_UNKNOWN;
            }
            return "ad_" + mSceneId + "_" + System.identityHashCode(this.nonAdDelegate);
        }
        if (Intrinsics.c(this.content.getTopicType(), "UGC_VIDEO")) {
            UGCVideo video = this.content.getVideo();
            if (video != null) {
                return video.getUgcVideoId();
            }
            return null;
        }
        if (Intrinsics.c(this.content.getTopicType(), "UGC_COLLECTION")) {
            UGCCollection collection = this.content.getCollection();
            if (collection != null) {
                return collection.getCollectionId();
            }
            return null;
        }
        if (!Intrinsics.c(this.content.getTopicType(), "VERTICAL_RANK") || (verticalRank = this.content.getVerticalRank()) == null) {
            return null;
        }
        return verticalRank.getId();
    }

    public int hashCode() {
        String ugcVideoId;
        String collectionId;
        String id2;
        if (isAd()) {
            return System.identityHashCode(this);
        }
        String topicType = this.content.getTopicType();
        if (topicType != null) {
            int iHashCode = topicType.hashCode();
            if (iHashCode != -1989652851) {
                if (iHashCode != 511113132) {
                    if (iHashCode == 2033770325 && topicType.equals("VERTICAL_RANK")) {
                        UGCVerticalRank verticalRank = this.content.getVerticalRank();
                        if (verticalRank == null || (id2 = verticalRank.getId()) == null) {
                            return 0;
                        }
                        return id2.hashCode();
                    }
                } else if (topicType.equals("UGC_COLLECTION")) {
                    UGCCollection collection = this.content.getCollection();
                    if (collection == null || (collectionId = collection.getCollectionId()) == null) {
                        return 0;
                    }
                    return collectionId.hashCode();
                }
            } else if (topicType.equals("UGC_VIDEO")) {
                UGCVideo video = this.content.getVideo();
                if (video == null || (ugcVideoId = video.getUgcVideoId()) == null) {
                    return 0;
                }
                return ugcVideoId.hashCode();
            }
        }
        return this.content.hashCode();
    }

    public final boolean isAd() {
        return this.nonAdDelegate != null;
    }

    public final void setChannelId(String str) {
        this.channelId = str;
    }

    public final void setNonAdDelegate(BiddingNativeManager biddingNativeManager) {
        this.nonAdDelegate = biddingNativeManager;
    }

    public final void setSelectItems(Map<String, String> map) {
        this.selectItems = map;
    }

    public String toString() {
        return "UGCFilterVideoItem(content=" + this.content + ", channelId=" + this.channelId + ", selectItems=" + this.selectItems + ", nonAdDelegate=" + this.nonAdDelegate + ")";
    }
}
