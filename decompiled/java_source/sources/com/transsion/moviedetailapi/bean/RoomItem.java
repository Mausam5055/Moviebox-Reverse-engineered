package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.e;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bN\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BÍ\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0010\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0018\u001a\u00020\b\u0012\b\b\u0002\u0010\u0019\u001a\u00020\b¢\u0006\u0004\b\u001a\u0010\u001bJ\u000b\u0010Q\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010'J\u000b\u0010V\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010X\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u00100J\u0010\u0010Y\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u00100J\u0010\u0010Z\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u00100J\u0011\u0010[\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010^\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010HÆ\u0003J\u0011\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0010HÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\t\u0010a\u001a\u00020\bHÆ\u0003J\t\u0010b\u001a\u00020\bHÆ\u0003Jô\u0001\u0010c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00102\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00102\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020\b2\b\b\u0002\u0010\u0019\u001a\u00020\bHÆ\u0001¢\u0006\u0002\u0010dJ\u0006\u0010e\u001a\u00020fJ\u0013\u0010g\u001a\u00020\b2\b\u0010h\u001a\u0004\u0018\u00010iHÖ\u0003J\t\u0010j\u001a\u00020fHÖ\u0001J\t\u0010k\u001a\u00020\u0003HÖ\u0001J\u0016\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020fR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001d\"\u0004\b!\u0010\u001fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010\u001fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001d\"\u0004\b%\u0010\u001fR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010*\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001d\"\u0004\b,\u0010\u001fR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u001d\"\u0004\b.\u0010\u001fR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u00103\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001e\u0010\r\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u00103\u001a\u0004\b4\u00100\"\u0004\b5\u00102R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u00103\u001a\u0004\b6\u00100\"\u0004\b7\u00102R\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u001d\"\u0004\b=\u0010\u001fR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\u001d\"\u0004\b?\u0010\u001fR\"\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u00109\"\u0004\bA\u0010;R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u00109\"\u0004\bC\u0010;R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u001a\u0010\u0018\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001a\u0010\u0019\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010I\"\u0004\bL\u0010KR \u0010M\u001a\u00020\bX\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bN\u0010O\u001a\u0004\bM\u0010I\"\u0004\bP\u0010K¨\u0006q"}, d2 = {"Lcom/transsion/moviedetailapi/bean/RoomItem;", "Landroid/os/Parcelable;", "avatar", "", "creatorId", TrackingKey.DESCRIPTION, "groupId", "hasJoin", "", "lastPostTime", "name", "newPostCount", "", "postCount", "userCount", "memberAvatars", "", PermissionConstant.level, "ops", "tags", "latestPosts", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "cover", "Lcom/transsion/moviedetailapi/bean/Cover;", "builtIn", "isFooter", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;ZZ)V", "getAvatar", "()Ljava/lang/String;", "setAvatar", "(Ljava/lang/String;)V", "getCreatorId", "setCreatorId", "getDescription", "setDescription", "getGroupId", "setGroupId", "getHasJoin", "()Ljava/lang/Boolean;", "setHasJoin", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getLastPostTime", "setLastPostTime", "getName", "setName", "getNewPostCount", "()Ljava/lang/Long;", "setNewPostCount", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getPostCount", "setPostCount", "getUserCount", "setUserCount", "getMemberAvatars", "()Ljava/util/List;", "setMemberAvatars", "(Ljava/util/List;)V", "getLevel", "setLevel", "getOps", "setOps", "getTags", "setTags", "getLatestPosts", "setLatestPosts", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setCover", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getBuiltIn", "()Z", "setBuiltIn", "(Z)V", "setFooter", "isSelected", "isSelected$annotations", "()V", "setSelected", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;ZZ)Lcom/transsion/moviedetailapi/bean/RoomItem;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RoomItem implements Parcelable {
    public static final Parcelable.Creator<RoomItem> CREATOR = new a();
    private String avatar;
    private boolean builtIn;
    private Cover cover;
    private String creatorId;
    private String description;
    private String groupId;
    private Boolean hasJoin;
    private boolean isFooter;
    private transient boolean isSelected;
    private String lastPostTime;
    private List<PostSubjectItem> latestPosts;
    private String level;
    private List<String> memberAvatars;
    private String name;
    private Long newPostCount;
    private String ops;
    private Long postCount;
    private List<String> tags;
    private Long userCount;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RoomItem createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            Boolean boolValueOf = parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0);
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf3 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            ArrayList<String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(parcel.readSerializable());
                }
                arrayList = arrayList2;
            }
            return new RoomItem(string, string2, string3, string4, boolValueOf, string5, string6, lValueOf, lValueOf2, lValueOf3, arrayListCreateStringArrayList, string7, string8, arrayListCreateStringArrayList2, arrayList, (Cover) parcel.readSerializable(), parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RoomItem[] newArray(int i11) {
            return new RoomItem[i11];
        }
    }

    public RoomItem(String str, String str2, String str3, String str4, Boolean bool, String str5, String str6, Long l11, Long l12, Long l13, List<String> list, String str7, String str8, List<String> list2, List<PostSubjectItem> list3, Cover cover, boolean z10, boolean z11) {
        this.avatar = str;
        this.creatorId = str2;
        this.description = str3;
        this.groupId = str4;
        this.hasJoin = bool;
        this.lastPostTime = str5;
        this.name = str6;
        this.newPostCount = l11;
        this.postCount = l12;
        this.userCount = l13;
        this.memberAvatars = list;
        this.level = str7;
        this.ops = str8;
        this.tags = list2;
        this.latestPosts = list3;
        this.cover = cover;
        this.builtIn = z10;
        this.isFooter = z11;
    }

    public /* synthetic */ RoomItem(String str, String str2, String str3, String str4, Boolean bool, String str5, String str6, Long l11, Long l12, Long l13, List list, String str7, String str8, List list2, List list3, Cover cover, boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, bool, str5, str6, l11, l12, l13, list, str7, str8, list2, list3, cover, (i11 & 65536) != 0 ? false : z10, (i11 & 131072) != 0 ? false : z11);
    }

    public static /* synthetic */ void isSelected$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Long getUserCount() {
        return this.userCount;
    }

    public final List<String> component11() {
        return this.memberAvatars;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getLevel() {
        return this.level;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    public final List<String> component14() {
        return this.tags;
    }

    public final List<PostSubjectItem> component15() {
        return this.latestPosts;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final boolean getIsFooter() {
        return this.isFooter;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCreatorId() {
        return this.creatorId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGroupId() {
        return this.groupId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getHasJoin() {
        return this.hasJoin;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getLastPostTime() {
        return this.lastPostTime;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Long getNewPostCount() {
        return this.newPostCount;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Long getPostCount() {
        return this.postCount;
    }

    public final RoomItem copy(String avatar, String creatorId, String description, String groupId, Boolean hasJoin, String lastPostTime, String name, Long newPostCount, Long postCount, Long userCount, List<String> memberAvatars, String level, String ops, List<String> tags, List<PostSubjectItem> latestPosts, Cover cover, boolean builtIn, boolean isFooter) {
        return new RoomItem(avatar, creatorId, description, groupId, hasJoin, lastPostTime, name, newPostCount, postCount, userCount, memberAvatars, level, ops, tags, latestPosts, cover, builtIn, isFooter);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RoomItem)) {
            return false;
        }
        RoomItem roomItem = (RoomItem) other;
        return Intrinsics.c(this.avatar, roomItem.avatar) && Intrinsics.c(this.creatorId, roomItem.creatorId) && Intrinsics.c(this.description, roomItem.description) && Intrinsics.c(this.groupId, roomItem.groupId) && Intrinsics.c(this.hasJoin, roomItem.hasJoin) && Intrinsics.c(this.lastPostTime, roomItem.lastPostTime) && Intrinsics.c(this.name, roomItem.name) && Intrinsics.c(this.newPostCount, roomItem.newPostCount) && Intrinsics.c(this.postCount, roomItem.postCount) && Intrinsics.c(this.userCount, roomItem.userCount) && Intrinsics.c(this.memberAvatars, roomItem.memberAvatars) && Intrinsics.c(this.level, roomItem.level) && Intrinsics.c(this.ops, roomItem.ops) && Intrinsics.c(this.tags, roomItem.tags) && Intrinsics.c(this.latestPosts, roomItem.latestPosts) && Intrinsics.c(this.cover, roomItem.cover) && this.builtIn == roomItem.builtIn && this.isFooter == roomItem.isFooter;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final String getCreatorId() {
        return this.creatorId;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final Boolean getHasJoin() {
        return this.hasJoin;
    }

    public final String getLastPostTime() {
        return this.lastPostTime;
    }

    public final List<PostSubjectItem> getLatestPosts() {
        return this.latestPosts;
    }

    public final String getLevel() {
        return this.level;
    }

    public final List<String> getMemberAvatars() {
        return this.memberAvatars;
    }

    public final String getName() {
        return this.name;
    }

    public final Long getNewPostCount() {
        return this.newPostCount;
    }

    public final String getOps() {
        return this.ops;
    }

    public final Long getPostCount() {
        return this.postCount;
    }

    public final List<String> getTags() {
        return this.tags;
    }

    public final Long getUserCount() {
        return this.userCount;
    }

    public int hashCode() {
        String str = this.avatar;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.creatorId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.description;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.groupId;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool = this.hasJoin;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str5 = this.lastPostTime;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.name;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Long l11 = this.newPostCount;
        int iHashCode8 = (iHashCode7 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.postCount;
        int iHashCode9 = (iHashCode8 + (l12 == null ? 0 : l12.hashCode())) * 31;
        Long l13 = this.userCount;
        int iHashCode10 = (iHashCode9 + (l13 == null ? 0 : l13.hashCode())) * 31;
        List<String> list = this.memberAvatars;
        int iHashCode11 = (iHashCode10 + (list == null ? 0 : list.hashCode())) * 31;
        String str7 = this.level;
        int iHashCode12 = (iHashCode11 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.ops;
        int iHashCode13 = (iHashCode12 + (str8 == null ? 0 : str8.hashCode())) * 31;
        List<String> list2 = this.tags;
        int iHashCode14 = (iHashCode13 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<PostSubjectItem> list3 = this.latestPosts;
        int iHashCode15 = (iHashCode14 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Cover cover = this.cover;
        return ((((iHashCode15 + (cover != null ? cover.hashCode() : 0)) * 31) + e.a(this.builtIn)) * 31) + e.a(this.isFooter);
    }

    public final boolean isFooter() {
        return this.isFooter;
    }

    /* JADX INFO: renamed from: isSelected, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final void setAvatar(String str) {
        this.avatar = str;
    }

    public final void setBuiltIn(boolean z10) {
        this.builtIn = z10;
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setCreatorId(String str) {
        this.creatorId = str;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setFooter(boolean z10) {
        this.isFooter = z10;
    }

    public final void setGroupId(String str) {
        this.groupId = str;
    }

    public final void setHasJoin(Boolean bool) {
        this.hasJoin = bool;
    }

    public final void setLastPostTime(String str) {
        this.lastPostTime = str;
    }

    public final void setLatestPosts(List<PostSubjectItem> list) {
        this.latestPosts = list;
    }

    public final void setLevel(String str) {
        this.level = str;
    }

    public final void setMemberAvatars(List<String> list) {
        this.memberAvatars = list;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNewPostCount(Long l11) {
        this.newPostCount = l11;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPostCount(Long l11) {
        this.postCount = l11;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public final void setTags(List<String> list) {
        this.tags = list;
    }

    public final void setUserCount(Long l11) {
        this.userCount = l11;
    }

    public String toString() {
        return "RoomItem(avatar=" + this.avatar + ", creatorId=" + this.creatorId + ", description=" + this.description + ", groupId=" + this.groupId + ", hasJoin=" + this.hasJoin + ", lastPostTime=" + this.lastPostTime + ", name=" + this.name + ", newPostCount=" + this.newPostCount + ", postCount=" + this.postCount + ", userCount=" + this.userCount + ", memberAvatars=" + this.memberAvatars + ", level=" + this.level + ", ops=" + this.ops + ", tags=" + this.tags + ", latestPosts=" + this.latestPosts + ", cover=" + this.cover + ", builtIn=" + this.builtIn + ", isFooter=" + this.isFooter + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.avatar);
        dest.writeString(this.creatorId);
        dest.writeString(this.description);
        dest.writeString(this.groupId);
        Boolean bool = this.hasJoin;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.lastPostTime);
        dest.writeString(this.name);
        Long l11 = this.newPostCount;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        Long l12 = this.postCount;
        if (l12 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l12.longValue());
        }
        Long l13 = this.userCount;
        if (l13 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l13.longValue());
        }
        dest.writeStringList(this.memberAvatars);
        dest.writeString(this.level);
        dest.writeString(this.ops);
        dest.writeStringList(this.tags);
        List<PostSubjectItem> list = this.latestPosts;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<PostSubjectItem> it = list.iterator();
            while (it.hasNext()) {
                dest.writeSerializable(it.next());
            }
        }
        dest.writeSerializable(this.cover);
        dest.writeInt(this.builtIn ? 1 : 0);
        dest.writeInt(this.isFooter ? 1 : 0);
    }
}
