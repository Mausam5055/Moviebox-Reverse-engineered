package com.transsion.shorttv_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.permission.PermissionConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b]\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0095\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\u0010\b\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000b\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b%\u0010&J\u000b\u0010h\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010j\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010.J\u000b\u0010k\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010l\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0011\u0010m\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0003J\u0011\u0010n\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000bHÆ\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010p\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010s\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u0011\u0010t\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000bHÆ\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\u0011\u0010w\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u000bHÆ\u0003J\u0011\u0010x\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000bHÆ\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\"HÆ\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010{\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u009c\u0002\u0010|\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0010\b\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u000b2\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000b2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010}J\u0006\u0010~\u001a\u00020\u0006J\u0016\u0010\u007f\u001a\u00030\u0080\u00012\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u0001HÖ\u0003J\n\u0010\u0083\u0001\u001a\u00020\u0006HÖ\u0001J\n\u0010\u0084\u0001\u001a\u00020\u0003HÖ\u0001J\u001b\u0010\u0085\u0001\u001a\u00030\u0086\u00012\b\u0010\u0087\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u0089\u0001\u001a\u00020\u0006R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010(\"\u0004\b,\u0010*R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u00101\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010(\"\u0004\b3\u0010*R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u00109\"\u0004\b=\u0010;R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010(\"\u0004\bK\u0010*R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u00109\"\u0004\bQ\u0010;R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\"\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u00109\"\u0004\b[\u0010;R\"\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u00109\"\u0004\b]\u0010;R\"\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u001c\u0010#\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u0010(\"\u0004\be\u0010*R\u001c\u0010$\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010(\"\u0004\bg\u0010*¨\u0006\u008a\u0001"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/OperateItem;", "Landroid/os/Parcelable;", CampaignEx.JSON_KEY_TITLE, "", NativeComponentConstants.KEY_COMPONENT_TYPE, RequestParameters.POSITION, "", "deepLink", "banner", "Lcom/transsion/shorttv_pugc/bean/BannerBean;", "filters", "", "Lcom/transsion/shorttv_pugc/bean/FilterItem;", "subjects", "Lcom/transsion/shorttv_pugc/bean/AppointSubject;", "customData", "Lcom/transsion/shorttv_pugc/bean/CustomData;", "playListData", "Lcom/transsion/shorttv_pugc/bean/PlayListItem;", "feedsSubject", "Lcom/transsion/shorttv_pugc/bean/Subject;", "opId", "page", "Lcom/transsion/shorttv_pugc/bean/SingleImagePage;", "rankings", "rankingData", "Lcom/transsion/shorttv_pugc/bean/RankingData;", "rankingListData", "Lcom/transsion/shorttv_pugc/bean/RankingListData;", "liveList", "Lcom/transsion/shorttv_pugc/bean/LiveListItem;", PermissionConfig.GROUPS, "Lcom/transsion/shorttv_pugc/bean/Group;", "nonAdDelegate", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "pageName", "md5", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/CustomData;Lcom/transsion/shorttv_pugc/bean/PlayListItem;Lcom/transsion/shorttv_pugc/bean/Subject;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/SingleImagePage;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/RankingData;Lcom/transsion/shorttv_pugc/bean/RankingListData;Ljava/util/List;Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getType", "setType", "getPosition", "()Ljava/lang/Integer;", "setPosition", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDeepLink", "setDeepLink", "getBanner", "()Lcom/transsion/shorttv_pugc/bean/BannerBean;", "setBanner", "(Lcom/transsion/shorttv_pugc/bean/BannerBean;)V", "getFilters", "()Ljava/util/List;", "setFilters", "(Ljava/util/List;)V", "getSubjects", "setSubjects", "getCustomData", "()Lcom/transsion/shorttv_pugc/bean/CustomData;", "setCustomData", "(Lcom/transsion/shorttv_pugc/bean/CustomData;)V", "getPlayListData", "()Lcom/transsion/shorttv_pugc/bean/PlayListItem;", "setPlayListData", "(Lcom/transsion/shorttv_pugc/bean/PlayListItem;)V", "getFeedsSubject", "()Lcom/transsion/shorttv_pugc/bean/Subject;", "setFeedsSubject", "(Lcom/transsion/shorttv_pugc/bean/Subject;)V", "getOpId", "setOpId", "getPage", "()Lcom/transsion/shorttv_pugc/bean/SingleImagePage;", "setPage", "(Lcom/transsion/shorttv_pugc/bean/SingleImagePage;)V", "getRankings", "setRankings", "getRankingData", "()Lcom/transsion/shorttv_pugc/bean/RankingData;", "setRankingData", "(Lcom/transsion/shorttv_pugc/bean/RankingData;)V", "getRankingListData", "()Lcom/transsion/shorttv_pugc/bean/RankingListData;", "setRankingListData", "(Lcom/transsion/shorttv_pugc/bean/RankingListData;)V", "getLiveList", "setLiveList", "getGroups", "setGroups", "getNonAdDelegate$annotations", "()V", "getNonAdDelegate", "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "setNonAdDelegate", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "getPageName", "setPageName", "getMd5", "setMd5", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/CustomData;Lcom/transsion/shorttv_pugc/bean/PlayListItem;Lcom/transsion/shorttv_pugc/bean/Subject;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/SingleImagePage;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/RankingData;Lcom/transsion/shorttv_pugc/bean/RankingListData;Ljava/util/List;Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/bean/OperateItem;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OperateItem implements Parcelable {
    public static final Parcelable.Creator<OperateItem> CREATOR = new a();
    private BannerBean banner;
    private CustomData customData;
    private String deepLink;
    private Subject feedsSubject;
    private List<FilterItem> filters;
    private List<Group> groups;
    private List<LiveListItem> liveList;
    private String md5;
    private transient BiddingNativeManager nonAdDelegate;
    private String opId;
    private SingleImagePage page;
    private transient String pageName;
    private PlayListItem playListData;
    private Integer position;
    private RankingData rankingData;
    private RankingListData rankingListData;
    private List<? extends Subject> rankings;
    private List<AppointSubject> subjects;
    private String title;
    private String type;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OperateItem createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            ArrayList arrayList3;
            ArrayList arrayList4;
            ArrayList arrayList5;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string3 = parcel.readString();
            BannerBean bannerBeanCreateFromParcel = parcel.readInt() == 0 ? null : BannerBean.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(FilterItem.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(parcel.readSerializable());
                }
            }
            CustomData customDataCreateFromParcel = parcel.readInt() == 0 ? null : CustomData.CREATOR.createFromParcel(parcel);
            PlayListItem playListItemCreateFromParcel = parcel.readInt() == 0 ? null : PlayListItem.CREATOR.createFromParcel(parcel);
            Subject subject = (Subject) parcel.readSerializable();
            String string4 = parcel.readString();
            SingleImagePage singleImagePageCreateFromParcel = parcel.readInt() == 0 ? null : SingleImagePage.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 0) {
                arrayList3 = null;
            } else {
                int i15 = parcel.readInt();
                ArrayList arrayList6 = new ArrayList(i15);
                int i16 = 0;
                while (i16 != i15) {
                    arrayList6.add(parcel.readSerializable());
                    i16++;
                    i15 = i15;
                }
                arrayList3 = arrayList6;
            }
            RankingData rankingDataCreateFromParcel = parcel.readInt() == 0 ? null : RankingData.CREATOR.createFromParcel(parcel);
            RankingListData rankingListDataCreateFromParcel = parcel.readInt() == 0 ? null : RankingListData.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 0) {
                arrayList4 = null;
            } else {
                int i17 = parcel.readInt();
                ArrayList arrayList7 = new ArrayList(i17);
                int i18 = 0;
                while (i18 != i17) {
                    arrayList7.add(LiveListItem.CREATOR.createFromParcel(parcel));
                    i18++;
                    i17 = i17;
                }
                arrayList4 = arrayList7;
            }
            if (parcel.readInt() == 0) {
                arrayList5 = null;
            } else {
                int i19 = parcel.readInt();
                ArrayList arrayList8 = new ArrayList(i19);
                for (int i20 = 0; i20 != i19; i20++) {
                    arrayList8.add(parcel.readSerializable());
                }
                arrayList5 = arrayList8;
            }
            return new OperateItem(string, string2, numValueOf, string3, bannerBeanCreateFromParcel, arrayList, arrayList2, customDataCreateFromParcel, playListItemCreateFromParcel, subject, string4, singleImagePageCreateFromParcel, arrayList3, rankingDataCreateFromParcel, rankingListDataCreateFromParcel, arrayList4, arrayList5, null, parcel.readString(), parcel.readString(), 131072, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final OperateItem[] newArray(int i11) {
            return new OperateItem[i11];
        }
    }

    public OperateItem() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1048575, null);
    }

    public OperateItem(String str, String str2, Integer num, String str3, BannerBean bannerBean, List<FilterItem> list, List<AppointSubject> list2, CustomData customData, PlayListItem playListItem, Subject subject, String str4, SingleImagePage singleImagePage, List<? extends Subject> list3, RankingData rankingData, RankingListData rankingListData, List<LiveListItem> list4, List<Group> list5, BiddingNativeManager biddingNativeManager, String str5, String str6) {
        this.title = str;
        this.type = str2;
        this.position = num;
        this.deepLink = str3;
        this.banner = bannerBean;
        this.filters = list;
        this.subjects = list2;
        this.customData = customData;
        this.playListData = playListItem;
        this.feedsSubject = subject;
        this.opId = str4;
        this.page = singleImagePage;
        this.rankings = list3;
        this.rankingData = rankingData;
        this.rankingListData = rankingListData;
        this.liveList = list4;
        this.groups = list5;
        this.nonAdDelegate = biddingNativeManager;
        this.pageName = str5;
        this.md5 = str6;
    }

    public /* synthetic */ OperateItem(String str, String str2, Integer num, String str3, BannerBean bannerBean, List list, List list2, CustomData customData, PlayListItem playListItem, Subject subject, String str4, SingleImagePage singleImagePage, List list3, RankingData rankingData, RankingListData rankingListData, List list4, List list5, BiddingNativeManager biddingNativeManager, String str5, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) == 0 ? str2 : "", (i11 & 4) != 0 ? 0 : num, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : bannerBean, (i11 & 32) != 0 ? null : list, (i11 & 64) != 0 ? null : list2, (i11 & 128) != 0 ? null : customData, (i11 & 256) != 0 ? null : playListItem, (i11 & 512) != 0 ? null : subject, (i11 & 1024) != 0 ? null : str4, (i11 & 2048) != 0 ? null : singleImagePage, (i11 & 4096) != 0 ? null : list3, (i11 & 8192) != 0 ? null : rankingData, (i11 & 16384) != 0 ? null : rankingListData, (i11 & 32768) != 0 ? null : list4, (i11 & 65536) != 0 ? null : list5, (i11 & 131072) != 0 ? null : biddingNativeManager, (i11 & 262144) != 0 ? null : str5, (i11 & 524288) != 0 ? null : str6);
    }

    public static /* synthetic */ void getNonAdDelegate$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Subject getFeedsSubject() {
        return this.feedsSubject;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getOpId() {
        return this.opId;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final SingleImagePage getPage() {
        return this.page;
    }

    public final List<Subject> component13() {
        return this.rankings;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final RankingData getRankingData() {
        return this.rankingData;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final RankingListData getRankingListData() {
        return this.rankingListData;
    }

    public final List<LiveListItem> component16() {
        return this.liveList;
    }

    public final List<Group> component17() {
        return this.groups;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getPageName() {
        return this.pageName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getMd5() {
        return this.md5;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getPosition() {
        return this.position;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final BannerBean getBanner() {
        return this.banner;
    }

    public final List<FilterItem> component6() {
        return this.filters;
    }

    public final List<AppointSubject> component7() {
        return this.subjects;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final CustomData getCustomData() {
        return this.customData;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final PlayListItem getPlayListData() {
        return this.playListData;
    }

    public final OperateItem copy(String title, String type, Integer position, String deepLink, BannerBean banner, List<FilterItem> filters, List<AppointSubject> subjects, CustomData customData, PlayListItem playListData, Subject feedsSubject, String opId, SingleImagePage page, List<? extends Subject> rankings, RankingData rankingData, RankingListData rankingListData, List<LiveListItem> liveList, List<Group> groups, BiddingNativeManager nonAdDelegate, String pageName, String md5) {
        return new OperateItem(title, type, position, deepLink, banner, filters, subjects, customData, playListData, feedsSubject, opId, page, rankings, rankingData, rankingListData, liveList, groups, nonAdDelegate, pageName, md5);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OperateItem)) {
            return false;
        }
        OperateItem operateItem = (OperateItem) other;
        return Intrinsics.c(this.title, operateItem.title) && Intrinsics.c(this.type, operateItem.type) && Intrinsics.c(this.position, operateItem.position) && Intrinsics.c(this.deepLink, operateItem.deepLink) && Intrinsics.c(this.banner, operateItem.banner) && Intrinsics.c(this.filters, operateItem.filters) && Intrinsics.c(this.subjects, operateItem.subjects) && Intrinsics.c(this.customData, operateItem.customData) && Intrinsics.c(this.playListData, operateItem.playListData) && Intrinsics.c(this.feedsSubject, operateItem.feedsSubject) && Intrinsics.c(this.opId, operateItem.opId) && Intrinsics.c(this.page, operateItem.page) && Intrinsics.c(this.rankings, operateItem.rankings) && Intrinsics.c(this.rankingData, operateItem.rankingData) && Intrinsics.c(this.rankingListData, operateItem.rankingListData) && Intrinsics.c(this.liveList, operateItem.liveList) && Intrinsics.c(this.groups, operateItem.groups) && Intrinsics.c(this.nonAdDelegate, operateItem.nonAdDelegate) && Intrinsics.c(this.pageName, operateItem.pageName) && Intrinsics.c(this.md5, operateItem.md5);
    }

    public final BannerBean getBanner() {
        return this.banner;
    }

    public final CustomData getCustomData() {
        return this.customData;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final Subject getFeedsSubject() {
        return this.feedsSubject;
    }

    public final List<FilterItem> getFilters() {
        return this.filters;
    }

    public final List<Group> getGroups() {
        return this.groups;
    }

    public final List<LiveListItem> getLiveList() {
        return this.liveList;
    }

    public final String getMd5() {
        return this.md5;
    }

    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final String getOpId() {
        return this.opId;
    }

    public final SingleImagePage getPage() {
        return this.page;
    }

    public final String getPageName() {
        return this.pageName;
    }

    public final PlayListItem getPlayListData() {
        return this.playListData;
    }

    public final Integer getPosition() {
        return this.position;
    }

    public final RankingData getRankingData() {
        return this.rankingData;
    }

    public final RankingListData getRankingListData() {
        return this.rankingListData;
    }

    public final List<Subject> getRankings() {
        return this.rankings;
    }

    public final List<AppointSubject> getSubjects() {
        return this.subjects;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.type;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.position;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.deepLink;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        BannerBean bannerBean = this.banner;
        int iHashCode5 = (iHashCode4 + (bannerBean == null ? 0 : bannerBean.hashCode())) * 31;
        List<FilterItem> list = this.filters;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        List<AppointSubject> list2 = this.subjects;
        int iHashCode7 = (iHashCode6 + (list2 == null ? 0 : list2.hashCode())) * 31;
        CustomData customData = this.customData;
        int iHashCode8 = (iHashCode7 + (customData == null ? 0 : customData.hashCode())) * 31;
        PlayListItem playListItem = this.playListData;
        int iHashCode9 = (iHashCode8 + (playListItem == null ? 0 : playListItem.hashCode())) * 31;
        Subject subject = this.feedsSubject;
        int iHashCode10 = (iHashCode9 + (subject == null ? 0 : subject.hashCode())) * 31;
        String str4 = this.opId;
        int iHashCode11 = (iHashCode10 + (str4 == null ? 0 : str4.hashCode())) * 31;
        SingleImagePage singleImagePage = this.page;
        int iHashCode12 = (iHashCode11 + (singleImagePage == null ? 0 : singleImagePage.hashCode())) * 31;
        List<? extends Subject> list3 = this.rankings;
        int iHashCode13 = (iHashCode12 + (list3 == null ? 0 : list3.hashCode())) * 31;
        RankingData rankingData = this.rankingData;
        int iHashCode14 = (iHashCode13 + (rankingData == null ? 0 : rankingData.hashCode())) * 31;
        RankingListData rankingListData = this.rankingListData;
        int iHashCode15 = (iHashCode14 + (rankingListData == null ? 0 : rankingListData.hashCode())) * 31;
        List<LiveListItem> list4 = this.liveList;
        int iHashCode16 = (iHashCode15 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<Group> list5 = this.groups;
        int iHashCode17 = (iHashCode16 + (list5 == null ? 0 : list5.hashCode())) * 31;
        BiddingNativeManager biddingNativeManager = this.nonAdDelegate;
        int iHashCode18 = (iHashCode17 + (biddingNativeManager == null ? 0 : biddingNativeManager.hashCode())) * 31;
        String str5 = this.pageName;
        int iHashCode19 = (iHashCode18 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.md5;
        return iHashCode19 + (str6 != null ? str6.hashCode() : 0);
    }

    public final void setBanner(BannerBean bannerBean) {
        this.banner = bannerBean;
    }

    public final void setCustomData(CustomData customData) {
        this.customData = customData;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setFeedsSubject(Subject subject) {
        this.feedsSubject = subject;
    }

    public final void setFilters(List<FilterItem> list) {
        this.filters = list;
    }

    public final void setGroups(List<Group> list) {
        this.groups = list;
    }

    public final void setLiveList(List<LiveListItem> list) {
        this.liveList = list;
    }

    public final void setMd5(String str) {
        this.md5 = str;
    }

    public final void setNonAdDelegate(BiddingNativeManager biddingNativeManager) {
        this.nonAdDelegate = biddingNativeManager;
    }

    public final void setOpId(String str) {
        this.opId = str;
    }

    public final void setPage(SingleImagePage singleImagePage) {
        this.page = singleImagePage;
    }

    public final void setPageName(String str) {
        this.pageName = str;
    }

    public final void setPlayListData(PlayListItem playListItem) {
        this.playListData = playListItem;
    }

    public final void setPosition(Integer num) {
        this.position = num;
    }

    public final void setRankingData(RankingData rankingData) {
        this.rankingData = rankingData;
    }

    public final void setRankingListData(RankingListData rankingListData) {
        this.rankingListData = rankingListData;
    }

    public final void setRankings(List<? extends Subject> list) {
        this.rankings = list;
    }

    public final void setSubjects(List<AppointSubject> list) {
        this.subjects = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "OperateItem(title=" + this.title + ", type=" + this.type + ", position=" + this.position + ", deepLink=" + this.deepLink + ", banner=" + this.banner + ", filters=" + this.filters + ", subjects=" + this.subjects + ", customData=" + this.customData + ", playListData=" + this.playListData + ", feedsSubject=" + this.feedsSubject + ", opId=" + this.opId + ", page=" + this.page + ", rankings=" + this.rankings + ", rankingData=" + this.rankingData + ", rankingListData=" + this.rankingListData + ", liveList=" + this.liveList + ", groups=" + this.groups + ", nonAdDelegate=" + this.nonAdDelegate + ", pageName=" + this.pageName + ", md5=" + this.md5 + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.title);
        dest.writeString(this.type);
        Integer num = this.position;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.deepLink);
        BannerBean bannerBean = this.banner;
        if (bannerBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            bannerBean.writeToParcel(dest, flags);
        }
        List<FilterItem> list = this.filters;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<FilterItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        List<AppointSubject> list2 = this.subjects;
        if (list2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list2.size());
            Iterator<AppointSubject> it2 = list2.iterator();
            while (it2.hasNext()) {
                dest.writeSerializable(it2.next());
            }
        }
        CustomData customData = this.customData;
        if (customData == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            customData.writeToParcel(dest, flags);
        }
        PlayListItem playListItem = this.playListData;
        if (playListItem == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            playListItem.writeToParcel(dest, flags);
        }
        dest.writeSerializable(this.feedsSubject);
        dest.writeString(this.opId);
        SingleImagePage singleImagePage = this.page;
        if (singleImagePage == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            singleImagePage.writeToParcel(dest, flags);
        }
        List<? extends Subject> list3 = this.rankings;
        if (list3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list3.size());
            Iterator<? extends Subject> it3 = list3.iterator();
            while (it3.hasNext()) {
                dest.writeSerializable(it3.next());
            }
        }
        RankingData rankingData = this.rankingData;
        if (rankingData == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            rankingData.writeToParcel(dest, flags);
        }
        RankingListData rankingListData = this.rankingListData;
        if (rankingListData == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            rankingListData.writeToParcel(dest, flags);
        }
        List<LiveListItem> list4 = this.liveList;
        if (list4 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list4.size());
            Iterator<LiveListItem> it4 = list4.iterator();
            while (it4.hasNext()) {
                it4.next().writeToParcel(dest, flags);
            }
        }
        List<Group> list5 = this.groups;
        if (list5 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list5.size());
            Iterator<Group> it5 = list5.iterator();
            while (it5.hasNext()) {
                dest.writeSerializable(it5.next());
            }
        }
        dest.writeString(this.pageName);
        dest.writeString(this.md5);
    }
}
