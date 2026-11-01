package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\bN\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bõ\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\f\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\b\u001e\u0010\u001fJ\u000b\u0010V\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\\\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fHÆ\u0003J\t\u0010]\u001a\u00020\u000eHÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010`\u001a\b\u0012\u0004\u0012\u00020\u00120\fHÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fHÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\u001dHÆ\u0003Jû\u0001\u0010i\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\f2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÆ\u0001J\u0006\u0010j\u001a\u00020\u000eJ\u0013\u0010k\u001a\u00020l2\b\u0010m\u001a\u0004\u0018\u00010nHÖ\u0003J\t\u0010o\u001a\u00020\u000eHÖ\u0001J\t\u0010p\u001a\u00020\u0003HÖ\u0001J\u0016\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020\u000eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010!\"\u0004\b%\u0010#R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010!\"\u0004\b'\u0010#R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010!\"\u0004\b1\u0010#R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010!\"\u0004\b;\u0010#R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010!\"\u0004\b=\u0010#R \u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u00103\"\u0004\b?\u00105R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010!\"\u0004\bE\u0010#R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010!\"\u0004\bK\u0010#R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010!\"\u0004\bM\u0010#R\"\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u00103\"\u0004\bO\u00105R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010!\"\u0004\bQ\u0010#R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010S\"\u0004\bT\u0010U¨\u0006v"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/FeedItem;", "Landroid/os/Parcelable;", "ugcVideoId", "", CampaignEx.JSON_KEY_TITLE, TrackingKey.DESCRIPTION, "cover", "Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;", "creator", "Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;", "category", "genres", "", "duration", "", "publishTime", "watchNum", "hashTags", "Lcom/transsion/room/sub/bean/subscription/HashTagFeed;", "interactiveInfo", "Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;", "subjectId", "belongToCollection", "Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;", "ops", "corner", PlaceTypes.COUNTRY, "releaseDate", "operatingInfo", "Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;)V", "getUgcVideoId", "()Ljava/lang/String;", "setUgcVideoId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getDescription", "setDescription", "getCover", "()Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;", "setCover", "(Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;)V", "getCreator", "()Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;", "setCreator", "(Lcom/transsion/room/sub/bean/subscription/CreatorInfoFeed;)V", "getCategory", "setCategory", "getGenres", "()Ljava/util/List;", "setGenres", "(Ljava/util/List;)V", "getDuration", "()I", "setDuration", "(I)V", "getPublishTime", "setPublishTime", "getWatchNum", "setWatchNum", "getHashTags", "setHashTags", "getInteractiveInfo", "()Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;", "setInteractiveInfo", "(Lcom/transsion/room/sub/bean/subscription/InteractiveInfoFeed;)V", "getSubjectId", "setSubjectId", "getBelongToCollection", "()Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;", "setBelongToCollection", "(Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;)V", "getOps", "setOps", "getCorner", "setCorner", "getCountry", "setCountry", "getReleaseDate", "setReleaseDate", "getOperatingInfo", "()Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;", "setOperatingInfo", "(Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FeedItem implements Parcelable {
    public static final Parcelable.Creator<FeedItem> CREATOR = new a();
    private CollectionBelongInfoFeed belongToCollection;
    private String category;
    private String corner;
    private List<String> country;
    private CoverInfoFeed cover;
    private CreatorInfoFeed creator;
    private String description;
    private int duration;
    private List<String> genres;
    private List<HashTagFeed> hashTags;
    private InteractiveInfoFeed interactiveInfo;
    private OperatingInfoFeed operatingInfo;
    private String ops;
    private String publishTime;
    private String releaseDate;
    private String subjectId;
    private String title;
    private String ugcVideoId;
    private String watchNum;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FeedItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            CoverInfoFeed coverInfoFeedCreateFromParcel = parcel.readInt() == 0 ? null : CoverInfoFeed.CREATOR.createFromParcel(parcel);
            CreatorInfoFeed creatorInfoFeedCreateFromParcel = parcel.readInt() == 0 ? null : CreatorInfoFeed.CREATOR.createFromParcel(parcel);
            String string4 = parcel.readString();
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            int i11 = parcel.readInt();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            int i12 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i12);
            for (int i13 = 0; i13 != i12; i13++) {
                arrayList.add(HashTagFeed.CREATOR.createFromParcel(parcel));
            }
            return new FeedItem(string, string2, string3, coverInfoFeedCreateFromParcel, creatorInfoFeedCreateFromParcel, string4, arrayListCreateStringArrayList, i11, string5, string6, arrayList, parcel.readInt() == 0 ? null : InteractiveInfoFeed.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readInt() == 0 ? null : CollectionBelongInfoFeed.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.createStringArrayList(), parcel.readString(), parcel.readInt() != 0 ? OperatingInfoFeed.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final FeedItem[] newArray(int i11) {
            return new FeedItem[i11];
        }
    }

    public FeedItem(String str, String str2, String str3, CoverInfoFeed coverInfoFeed, CreatorInfoFeed creatorInfoFeed, String str4, List<String> list, int i11, String str5, String str6, List<HashTagFeed> hashTags, InteractiveInfoFeed interactiveInfoFeed, String str7, CollectionBelongInfoFeed collectionBelongInfoFeed, String str8, String str9, List<String> list2, String str10, OperatingInfoFeed operatingInfoFeed) {
        Intrinsics.h(hashTags, "hashTags");
        this.ugcVideoId = str;
        this.title = str2;
        this.description = str3;
        this.cover = coverInfoFeed;
        this.creator = creatorInfoFeed;
        this.category = str4;
        this.genres = list;
        this.duration = i11;
        this.publishTime = str5;
        this.watchNum = str6;
        this.hashTags = hashTags;
        this.interactiveInfo = interactiveInfoFeed;
        this.subjectId = str7;
        this.belongToCollection = collectionBelongInfoFeed;
        this.ops = str8;
        this.corner = str9;
        this.country = list2;
        this.releaseDate = str10;
        this.operatingInfo = operatingInfoFeed;
    }

    public /* synthetic */ FeedItem(String str, String str2, String str3, CoverInfoFeed coverInfoFeed, CreatorInfoFeed creatorInfoFeed, String str4, List list, int i11, String str5, String str6, List list2, InteractiveInfoFeed interactiveInfoFeed, String str7, CollectionBelongInfoFeed collectionBelongInfoFeed, String str8, String str9, List list3, String str10, OperatingInfoFeed operatingInfoFeed, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? null : str3, (i12 & 8) != 0 ? null : coverInfoFeed, (i12 & 16) != 0 ? null : creatorInfoFeed, (i12 & 32) != 0 ? null : str4, list, (i12 & 128) != 0 ? 0 : i11, (i12 & 256) != 0 ? null : str5, (i12 & 512) != 0 ? null : str6, list2, (i12 & 2048) != 0 ? null : interactiveInfoFeed, (i12 & 4096) != 0 ? null : str7, (i12 & 8192) != 0 ? null : collectionBelongInfoFeed, (i12 & 16384) != 0 ? null : str8, (32768 & i12) != 0 ? null : str9, (65536 & i12) != 0 ? null : list3, (131072 & i12) != 0 ? null : str10, (i12 & 262144) != 0 ? null : operatingInfoFeed);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getWatchNum() {
        return this.watchNum;
    }

    public final List<HashTagFeed> component11() {
        return this.hashTags;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final InteractiveInfoFeed getInteractiveInfo() {
        return this.interactiveInfo;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final CollectionBelongInfoFeed getBelongToCollection() {
        return this.belongToCollection;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getCorner() {
        return this.corner;
    }

    public final List<String> component17() {
        return this.country;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getReleaseDate() {
        return this.releaseDate;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final OperatingInfoFeed getOperatingInfo() {
        return this.operatingInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final CoverInfoFeed getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final CreatorInfoFeed getCreator() {
        return this.creator;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    public final List<String> component7() {
        return this.genres;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getPublishTime() {
        return this.publishTime;
    }

    public final FeedItem copy(String ugcVideoId, String title, String description, CoverInfoFeed cover, CreatorInfoFeed creator, String category, List<String> genres, int duration, String publishTime, String watchNum, List<HashTagFeed> hashTags, InteractiveInfoFeed interactiveInfo, String subjectId, CollectionBelongInfoFeed belongToCollection, String ops, String corner, List<String> country, String releaseDate, OperatingInfoFeed operatingInfo) {
        Intrinsics.h(hashTags, "hashTags");
        return new FeedItem(ugcVideoId, title, description, cover, creator, category, genres, duration, publishTime, watchNum, hashTags, interactiveInfo, subjectId, belongToCollection, ops, corner, country, releaseDate, operatingInfo);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FeedItem)) {
            return false;
        }
        FeedItem feedItem = (FeedItem) other;
        return Intrinsics.c(this.ugcVideoId, feedItem.ugcVideoId) && Intrinsics.c(this.title, feedItem.title) && Intrinsics.c(this.description, feedItem.description) && Intrinsics.c(this.cover, feedItem.cover) && Intrinsics.c(this.creator, feedItem.creator) && Intrinsics.c(this.category, feedItem.category) && Intrinsics.c(this.genres, feedItem.genres) && this.duration == feedItem.duration && Intrinsics.c(this.publishTime, feedItem.publishTime) && Intrinsics.c(this.watchNum, feedItem.watchNum) && Intrinsics.c(this.hashTags, feedItem.hashTags) && Intrinsics.c(this.interactiveInfo, feedItem.interactiveInfo) && Intrinsics.c(this.subjectId, feedItem.subjectId) && Intrinsics.c(this.belongToCollection, feedItem.belongToCollection) && Intrinsics.c(this.ops, feedItem.ops) && Intrinsics.c(this.corner, feedItem.corner) && Intrinsics.c(this.country, feedItem.country) && Intrinsics.c(this.releaseDate, feedItem.releaseDate) && Intrinsics.c(this.operatingInfo, feedItem.operatingInfo);
    }

    public final CollectionBelongInfoFeed getBelongToCollection() {
        return this.belongToCollection;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getCorner() {
        return this.corner;
    }

    public final List<String> getCountry() {
        return this.country;
    }

    public final CoverInfoFeed getCover() {
        return this.cover;
    }

    public final CreatorInfoFeed getCreator() {
        return this.creator;
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final List<String> getGenres() {
        return this.genres;
    }

    public final List<HashTagFeed> getHashTags() {
        return this.hashTags;
    }

    public final InteractiveInfoFeed getInteractiveInfo() {
        return this.interactiveInfo;
    }

    public final OperatingInfoFeed getOperatingInfo() {
        return this.operatingInfo;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getPublishTime() {
        return this.publishTime;
    }

    public final String getReleaseDate() {
        return this.releaseDate;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public final String getWatchNum() {
        return this.watchNum;
    }

    public int hashCode() {
        String str = this.ugcVideoId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.description;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        CoverInfoFeed coverInfoFeed = this.cover;
        int iHashCode4 = (iHashCode3 + (coverInfoFeed == null ? 0 : coverInfoFeed.hashCode())) * 31;
        CreatorInfoFeed creatorInfoFeed = this.creator;
        int iHashCode5 = (iHashCode4 + (creatorInfoFeed == null ? 0 : creatorInfoFeed.hashCode())) * 31;
        String str4 = this.category;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List<String> list = this.genres;
        int iHashCode7 = (((iHashCode6 + (list == null ? 0 : list.hashCode())) * 31) + this.duration) * 31;
        String str5 = this.publishTime;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.watchNum;
        int iHashCode9 = (((iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31) + this.hashTags.hashCode()) * 31;
        InteractiveInfoFeed interactiveInfoFeed = this.interactiveInfo;
        int iHashCode10 = (iHashCode9 + (interactiveInfoFeed == null ? 0 : interactiveInfoFeed.hashCode())) * 31;
        String str7 = this.subjectId;
        int iHashCode11 = (iHashCode10 + (str7 == null ? 0 : str7.hashCode())) * 31;
        CollectionBelongInfoFeed collectionBelongInfoFeed = this.belongToCollection;
        int iHashCode12 = (iHashCode11 + (collectionBelongInfoFeed == null ? 0 : collectionBelongInfoFeed.hashCode())) * 31;
        String str8 = this.ops;
        int iHashCode13 = (iHashCode12 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.corner;
        int iHashCode14 = (iHashCode13 + (str9 == null ? 0 : str9.hashCode())) * 31;
        List<String> list2 = this.country;
        int iHashCode15 = (iHashCode14 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str10 = this.releaseDate;
        int iHashCode16 = (iHashCode15 + (str10 == null ? 0 : str10.hashCode())) * 31;
        OperatingInfoFeed operatingInfoFeed = this.operatingInfo;
        return iHashCode16 + (operatingInfoFeed != null ? operatingInfoFeed.hashCode() : 0);
    }

    public final void setBelongToCollection(CollectionBelongInfoFeed collectionBelongInfoFeed) {
        this.belongToCollection = collectionBelongInfoFeed;
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setCorner(String str) {
        this.corner = str;
    }

    public final void setCountry(List<String> list) {
        this.country = list;
    }

    public final void setCover(CoverInfoFeed coverInfoFeed) {
        this.cover = coverInfoFeed;
    }

    public final void setCreator(CreatorInfoFeed creatorInfoFeed) {
        this.creator = creatorInfoFeed;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDuration(int i11) {
        this.duration = i11;
    }

    public final void setGenres(List<String> list) {
        this.genres = list;
    }

    public final void setHashTags(List<HashTagFeed> list) {
        Intrinsics.h(list, "<set-?>");
        this.hashTags = list;
    }

    public final void setInteractiveInfo(InteractiveInfoFeed interactiveInfoFeed) {
        this.interactiveInfo = interactiveInfoFeed;
    }

    public final void setOperatingInfo(OperatingInfoFeed operatingInfoFeed) {
        this.operatingInfo = operatingInfoFeed;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPublishTime(String str) {
        this.publishTime = str;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUgcVideoId(String str) {
        this.ugcVideoId = str;
    }

    public final void setWatchNum(String str) {
        this.watchNum = str;
    }

    public String toString() {
        return "FeedItem(ugcVideoId=" + this.ugcVideoId + ", title=" + this.title + ", description=" + this.description + ", cover=" + this.cover + ", creator=" + this.creator + ", category=" + this.category + ", genres=" + this.genres + ", duration=" + this.duration + ", publishTime=" + this.publishTime + ", watchNum=" + this.watchNum + ", hashTags=" + this.hashTags + ", interactiveInfo=" + this.interactiveInfo + ", subjectId=" + this.subjectId + ", belongToCollection=" + this.belongToCollection + ", ops=" + this.ops + ", corner=" + this.corner + ", country=" + this.country + ", releaseDate=" + this.releaseDate + ", operatingInfo=" + this.operatingInfo + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.ugcVideoId);
        dest.writeString(this.title);
        dest.writeString(this.description);
        CoverInfoFeed coverInfoFeed = this.cover;
        if (coverInfoFeed == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            coverInfoFeed.writeToParcel(dest, flags);
        }
        CreatorInfoFeed creatorInfoFeed = this.creator;
        if (creatorInfoFeed == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            creatorInfoFeed.writeToParcel(dest, flags);
        }
        dest.writeString(this.category);
        dest.writeStringList(this.genres);
        dest.writeInt(this.duration);
        dest.writeString(this.publishTime);
        dest.writeString(this.watchNum);
        List<HashTagFeed> list = this.hashTags;
        dest.writeInt(list.size());
        Iterator<HashTagFeed> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
        InteractiveInfoFeed interactiveInfoFeed = this.interactiveInfo;
        if (interactiveInfoFeed == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            interactiveInfoFeed.writeToParcel(dest, flags);
        }
        dest.writeString(this.subjectId);
        CollectionBelongInfoFeed collectionBelongInfoFeed = this.belongToCollection;
        if (collectionBelongInfoFeed == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            collectionBelongInfoFeed.writeToParcel(dest, flags);
        }
        dest.writeString(this.ops);
        dest.writeString(this.corner);
        dest.writeStringList(this.country);
        dest.writeString(this.releaseDate);
        OperatingInfoFeed operatingInfoFeed = this.operatingInfo;
        if (operatingInfoFeed == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            operatingInfoFeed.writeToParcel(dest, flags);
        }
    }
}
