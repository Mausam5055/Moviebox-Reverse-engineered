package com.transsion.home.hashtag;

import android.app.Application;
import androidx.annotation.Keep;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.gslb.Utils;
import com.transsion.home.R$string;
import com.transsion.home.bean.RefreshBaseDto;
import com.transsion.home.hashtag.model.HashTagItem;
import com.transsion.home.hashtag.model.HashTagItemType;
import com.transsion.home.hashtag.model.HashTagTab;
import com.transsion.home.net.HashTagListRequest;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;
import ol.a;
import zg.c;

/* JADX INFO: loaded from: classes5.dex */
public final class HashTagViewModel extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Application f45518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f45519c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f45520d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private UGCVideoHashTag f45521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f45522f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f45523g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f45524h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f45525i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Map f45526j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map f45527k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map f45528l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map f45529m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map f45530n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private t1 f45531o;

    @Keep
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/transsion/home/hashtag/HashTagViewModel$DeeplinkTag;", "", "tag", "", CampaignEx.JSON_KEY_TITLE, "tagType", "referId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTag", "()Ljava/lang/String;", "getTitle", "getTagType", "getReferId", "mapTagType", "t", "toUgcTag", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class DeeplinkTag {
        public static final int $stable = 0;

        @SerializedName("refer_id")
        private final String referId;

        @SerializedName("tag")
        private final String tag;

        @SerializedName("tag_type")
        private final String tagType;

        @SerializedName(CampaignEx.JSON_KEY_TITLE)
        private final String title;

        public DeeplinkTag() {
            this(null, null, null, null, 15, null);
        }

        public DeeplinkTag(String str, String str2, String str3, String str4) {
            this.tag = str;
            this.title = str2;
            this.tagType = str3;
            this.referId = str4;
        }

        public /* synthetic */ DeeplinkTag(String str, String str2, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4);
        }

        public static /* synthetic */ DeeplinkTag copy$default(DeeplinkTag deeplinkTag, String str, String str2, String str3, String str4, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = deeplinkTag.tag;
            }
            if ((i11 & 2) != 0) {
                str2 = deeplinkTag.title;
            }
            if ((i11 & 4) != 0) {
                str3 = deeplinkTag.tagType;
            }
            if ((i11 & 8) != 0) {
                str4 = deeplinkTag.referId;
            }
            return deeplinkTag.copy(str, str2, str3, str4);
        }

        private final String mapTagType(String t11) {
            if (t11 == null) {
                return t11;
            }
            switch (t11.hashCode()) {
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    return !t11.equals("1") ? t11 : "TAG_GENRE";
                case 50:
                    return !t11.equals("2") ? t11 : "TAG_COUNTRY";
                case AD_REWARD_USER_VALUE:
                    return !t11.equals("3") ? t11 : "TAG_YEAR";
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    return !t11.equals("4") ? t11 : "TAG_STAFF";
                default:
                    return t11;
            }
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTag() {
            return this.tag;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getTagType() {
            return this.tagType;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getReferId() {
            return this.referId;
        }

        public final DeeplinkTag copy(String tag, String title, String tagType, String referId) {
            return new DeeplinkTag(tag, title, tagType, referId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DeeplinkTag)) {
                return false;
            }
            DeeplinkTag deeplinkTag = (DeeplinkTag) other;
            return Intrinsics.c(this.tag, deeplinkTag.tag) && Intrinsics.c(this.title, deeplinkTag.title) && Intrinsics.c(this.tagType, deeplinkTag.tagType) && Intrinsics.c(this.referId, deeplinkTag.referId);
        }

        public final String getReferId() {
            return this.referId;
        }

        public final String getTag() {
            return this.tag;
        }

        public final String getTagType() {
            return this.tagType;
        }

        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            String str = this.tag;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.title;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.tagType;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.referId;
            return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        public String toString() {
            return "DeeplinkTag(tag=" + this.tag + ", title=" + this.title + ", tagType=" + this.tagType + ", referId=" + this.referId + ")";
        }

        public final UGCVideoHashTag toUgcTag() {
            String str;
            String str2 = this.title;
            if (str2 == null || str2.length() == 0) {
                String str3 = this.tag;
                if (str3 == null) {
                    str3 = "";
                }
                str = Utils.SEPARATOR + str3;
            } else {
                str = this.title;
            }
            return new UGCVideoHashTag(this.tag, str, mapTagType(this.tagType), this.referId, null);
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007HÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/transsion/home/hashtag/HashTagViewModel$HashtagPayload;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "mainHashtag", "Lcom/transsion/home/hashtag/HashTagViewModel$DeeplinkTag;", "subHashtag", "", "<init>", "(Ljava/lang/String;Lcom/transsion/home/hashtag/HashTagViewModel$DeeplinkTag;Ljava/util/List;)V", "getType", "()Ljava/lang/String;", "getMainHashtag", "()Lcom/transsion/home/hashtag/HashTagViewModel$DeeplinkTag;", "getSubHashtag", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class HashtagPayload {
        public static final int $stable = 8;

        @SerializedName("main_hashtag")
        private final DeeplinkTag mainHashtag;

        @SerializedName("sub_hashtag")
        private final List<DeeplinkTag> subHashtag;

        @SerializedName(NativeComponentConstants.KEY_COMPONENT_TYPE)
        private final String type;

        public HashtagPayload() {
            this(null, null, null, 7, null);
        }

        public HashtagPayload(String str, DeeplinkTag deeplinkTag, List<DeeplinkTag> list) {
            this.type = str;
            this.mainHashtag = deeplinkTag;
            this.subHashtag = list;
        }

        public /* synthetic */ HashtagPayload(String str, DeeplinkTag deeplinkTag, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : deeplinkTag, (i11 & 4) != 0 ? null : list);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ HashtagPayload copy$default(HashtagPayload hashtagPayload, String str, DeeplinkTag deeplinkTag, List list, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = hashtagPayload.type;
            }
            if ((i11 & 2) != 0) {
                deeplinkTag = hashtagPayload.mainHashtag;
            }
            if ((i11 & 4) != 0) {
                list = hashtagPayload.subHashtag;
            }
            return hashtagPayload.copy(str, deeplinkTag, list);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final DeeplinkTag getMainHashtag() {
            return this.mainHashtag;
        }

        public final List<DeeplinkTag> component3() {
            return this.subHashtag;
        }

        public final HashtagPayload copy(String type, DeeplinkTag mainHashtag, List<DeeplinkTag> subHashtag) {
            return new HashtagPayload(type, mainHashtag, subHashtag);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof HashtagPayload)) {
                return false;
            }
            HashtagPayload hashtagPayload = (HashtagPayload) other;
            return Intrinsics.c(this.type, hashtagPayload.type) && Intrinsics.c(this.mainHashtag, hashtagPayload.mainHashtag) && Intrinsics.c(this.subHashtag, hashtagPayload.subHashtag);
        }

        public final DeeplinkTag getMainHashtag() {
            return this.mainHashtag;
        }

        public final List<DeeplinkTag> getSubHashtag() {
            return this.subHashtag;
        }

        public final String getType() {
            return this.type;
        }

        public int hashCode() {
            String str = this.type;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            DeeplinkTag deeplinkTag = this.mainHashtag;
            int iHashCode2 = (iHashCode + (deeplinkTag == null ? 0 : deeplinkTag.hashCode())) * 31;
            List<DeeplinkTag> list = this.subHashtag;
            return iHashCode2 + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            return "HashtagPayload(type=" + this.type + ", mainHashtag=" + this.mainHashtag + ", subHashtag=" + this.subHashtag + ")";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashTagViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45518b = application;
        this.f45519c = (a) c.f79414e.a().h(a.class);
        this.f45520d = CollectionsKt.l();
        this.f45523g = "ForYou";
        this.f45526j = new LinkedHashMap();
        this.f45527k = new LinkedHashMap();
        this.f45528l = new LinkedHashMap();
        this.f45529m = new LinkedHashMap();
        this.f45530n = new LinkedHashMap();
    }

    private final List h(Set set, boolean z10) {
        List list;
        if (!z10 || (list = this.f45522f) == null || list.isEmpty()) {
            return null;
        }
        return CollectionsKt.e(new HashTagItem(HashTagItemType.TAGS, this.f45522f, CollectionsKt.R0(set), null, null, null, 56, null));
    }

    private final List i(List list, Set set, boolean z10) {
        if (!z10) {
            return list;
        }
        List listC = CollectionsKt.c();
        List list2 = this.f45522f;
        if (list2 != null && !list2.isEmpty()) {
            listC.add(new HashTagItem(HashTagItemType.TAGS, this.f45522f, CollectionsKt.R0(set), null, null, null, 56, null));
            lg.a.C0828a c0828a = lg.a.f68839a;
            List list3 = this.f45522f;
            Integer numValueOf = list3 != null ? Integer.valueOf(list3.size()) : null;
            lg.a.C0828a.f(c0828a, "HashTagViewModel", "buildFinalData: insert tags item, tags size=" + numValueOf + ", selected size=" + set.size(), false, 4, null);
        }
        listC.addAll(list);
        return CollectionsKt.a(listC);
    }

    private final List j(Set set) {
        List listC = CollectionsKt.c();
        UGCVideoHashTag uGCVideoHashTag = this.f45521e;
        if (uGCVideoHashTag != null) {
            listC.add(uGCVideoHashTag);
        }
        Set set2 = set;
        if (!set2.isEmpty()) {
            listC.addAll(set2);
        }
        return CollectionsKt.a(listC);
    }

    private final HashTagItem k(UGCContent uGCContent) {
        if (Intrinsics.c(uGCContent.getTopicType(), "UGC_VIDEO")) {
            UGCVideo video = uGCContent.getVideo();
            if (video != null) {
                return new HashTagItem(HashTagItemType.HASHTAG_CARD, null, null, video, null, null, 54, null);
            }
            return null;
        }
        lg.a.C0828a.z(lg.a.f68839a, "HashTagViewModel", "convertToHashTagItem: unknown or unsupported content type=" + uGCContent.getTopicType(), false, 4, null);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RequestBody l(String str, int i11, Set set) {
        String strJ = o.j(new HashTagListRequest(i11, 20, j(set), this.f45525i, this.f45524h, str));
        lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "createRequestBody: request=" + strJ, false, 4, null);
        bh.b.a aVar = bh.b.f16471a;
        Intrinsics.e(strJ);
        return aVar.a(strJ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(String str, Set set, boolean z10, String str2, String str3) {
        Map map = this.f45529m;
        Object b0Var = map.get(str);
        if (b0Var == null) {
            b0Var = new b0(null);
            map.put(str, b0Var);
        }
        b0 b0Var2 = (b0) b0Var;
        List listH = h(set, z10);
        lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "handleError: errorMsg=" + str2 + ", errorCode=" + str3 + ", errorData size=" + (listH != null ? Integer.valueOf(listH.size()) : null), false, 4, null);
        b0Var2.n(new RefreshBaseDto(str2, str3, listH, "", z10));
        if (z10) {
            Map map2 = this.f45530n;
            Object b0Var3 = map2.get(str);
            if (b0Var3 == null) {
                b0Var3 = new b0(Boolean.FALSE);
                map2.put(str, b0Var3);
            }
            ((b0) b0Var3).n(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(String str, int i11, Set set, boolean z10, BaseDto baseDto) {
        if (Intrinsics.c(baseDto.getCode(), "0") && baseDto.getData() != null) {
            p(str, i11, set, z10, (UGCContentList) baseDto.getData());
            return;
        }
        lg.a.f68839a.i("HashTagViewModel", "loadHashTagList failed: code=" + baseDto.getCode() + ", msg=" + baseDto.getMsg(), true);
        String msg = baseDto.getMsg();
        if (msg == null) {
            msg = "";
        }
        String str2 = msg;
        String code = baseDto.getCode();
        if (code == null) {
            code = TmcConstants.COLD_OPEN_TYPE;
        }
        n(str, set, z10, str2, code);
    }

    private final void p(String str, int i11, Set set, boolean z10, UGCContentList uGCContentList) {
        List<UGCContent> listL;
        Pager pager;
        Boolean hasMore;
        if (uGCContentList == null || (listL = uGCContentList.getItems()) == null) {
            listL = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listL.iterator();
        while (it.hasNext()) {
            HashTagItem hashTagItemK = k((UGCContent) it.next());
            if (hashTagItemK != null) {
                arrayList.add(hashTagItemK);
            }
        }
        boolean zBooleanValue = (uGCContentList == null || (pager = uGCContentList.getPager()) == null || (hasMore = pager.getHasMore()) == null) ? false : hasMore.booleanValue();
        this.f45528l.put(str, Boolean.valueOf(zBooleanValue));
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "HashTagViewModel", "loadHashTagList success, tabSort=" + str + ", page=" + i11 + ", size=" + arrayList.size() + ", hasMore=" + zBooleanValue, false, 4, null);
        List listI = i(arrayList, set, z10);
        int size = listI.size();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("loadHashTagList: finalData size=");
        sb2.append(size);
        lg.a.C0828a.f(c0828a, "HashTagViewModel", sb2.toString(), false, 4, null);
        Map map = this.f45529m;
        Object b0Var = map.get(str);
        if (b0Var == null) {
            b0Var = new b0(null);
            map.put(str, b0Var);
        }
        ((b0) b0Var).n(new RefreshBaseDto("", "0", listI, "", z10));
        if (z10) {
            Map map2 = this.f45530n;
            Object b0Var2 = map2.get(str);
            if (b0Var2 == null) {
                b0Var2 = new b0(Boolean.FALSE);
                map2.put(str, b0Var2);
            }
            ((b0) b0Var2).n(Boolean.FALSE);
        }
    }

    private final void t(String str, boolean z10) {
        Integer num = (Integer) this.f45527k.get(str);
        int iIntValue = num != null ? num.intValue() : 1;
        Set linkedHashSet = (Set) this.f45526j.get(str);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet();
        }
        Set set = linkedHashSet;
        lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "loadHashTagList: start, tabSort=" + str + ", page=" + iIntValue + ", isRefresh=" + z10 + ", selectedTags=" + set.size(), false, 4, null);
        k.d(u0.a(this), y0.b(), null, new HashTagViewModel$loadHashTagList$1(this, str, iIntValue, set, z10, null), 2, null);
    }

    private final void z(String str) {
        List listL;
        Map map = this.f45529m;
        Object b0Var = map.get(str);
        HashTagItem hashTagItem = null;
        if (b0Var == null) {
            b0Var = new b0(null);
            map.put(str, b0Var);
        }
        b0 b0Var2 = (b0) b0Var;
        RefreshBaseDto refreshBaseDto = (RefreshBaseDto) b0Var2.f();
        if (refreshBaseDto == null || (listL = (List) refreshBaseDto.getData()) == null) {
            listL = CollectionsKt.l();
        }
        Iterable linkedHashSet = (Set) this.f45526j.get(str);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet();
        }
        List list = this.f45522f;
        if (list != null && !list.isEmpty()) {
            hashTagItem = new HashTagItem(HashTagItemType.TAGS, this.f45522f, CollectionsKt.R0(linkedHashSet), null, null, null, 56, null);
        }
        if (hashTagItem != null) {
            List list2 = listL;
            if (list2.isEmpty() || ((HashTagItem) listL.get(0)).getType() != HashTagItemType.TAGS) {
                List listC = CollectionsKt.c();
                listC.add(hashTagItem);
                listC.addAll(list2);
                listL = CollectionsKt.a(listC);
            } else {
                List listC2 = CollectionsKt.c();
                listC2.add(hashTagItem);
                listC2.addAll(CollectionsKt.d0(listL, 1));
                listL = CollectionsKt.a(listC2);
            }
        }
        b0Var2.n(new RefreshBaseDto("", "0", listL, "", true));
    }

    public final void A(String tabSort) {
        Intrinsics.h(tabSort, "tabSort");
        this.f45527k.put(tabSort, 1);
        lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "refresh: tabSort=" + tabSort + ", reset page to 1", false, 4, null);
        Map map = this.f45530n;
        Object b0Var = map.get(tabSort);
        if (b0Var == null) {
            b0Var = new b0(Boolean.FALSE);
            map.put(tabSort, b0Var);
        }
        ((b0) b0Var).n(Boolean.TRUE);
        t(tabSort, true);
    }

    public final List m() {
        return this.f45520d;
    }

    public final boolean q(String tabSort) {
        Intrinsics.h(tabSort, "tabSort");
        Boolean bool = (Boolean) this.f45528l.get(tabSort);
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public final void r(UGCVideoHashTag uGCVideoHashTag, List list, int i11, String str) {
        ArrayList arrayList;
        this.f45521e = uGCVideoHashTag;
        if (list != null) {
            arrayList = new ArrayList();
            for (Object obj : list) {
                String title = ((UGCVideoHashTag) obj).getTitle();
                if (!(title == null || title.length() == 0)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        this.f45522f = arrayList;
        this.f45524h = i11;
        this.f45525i = str;
        this.f45523g = "ForYou";
        lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "init: hashTag=" + (uGCVideoHashTag != null ? uGCVideoHashTag.getTitle() : null) + ", hashTags size=" + (list != null ? Integer.valueOf(list.size()) : null) + ", tabId=" + i11 + ", ugcVideoId=" + str, false, 4, null);
        String string = this.f45518b.getString(R$string.item_tab_hash_tag_for_you);
        Intrinsics.g(string, "getString(...)");
        HashTagTab hashTagTab = new HashTagTab("ForYou", string, true);
        String string2 = this.f45518b.getString(R$string.item_tab_hash_tag_most_viewed);
        Intrinsics.g(string2, "getString(...)");
        HashTagTab hashTagTab2 = new HashTagTab("MostViewed", string2, false, 4, null);
        String string3 = this.f45518b.getString(R$string.item_tab_hash_tag_new);
        Intrinsics.g(string3, "getString(...)");
        List listO = CollectionsKt.o(hashTagTab, hashTagTab2, new HashTagTab("New", string3, false, 4, null));
        this.f45520d = listO;
        Iterator it = listO.iterator();
        while (it.hasNext()) {
            this.f45526j.put(((HashTagTab) it.next()).getId(), new LinkedHashSet());
        }
    }

    public final LiveData s(String tabSort) {
        Intrinsics.h(tabSort, "tabSort");
        Map map = this.f45529m;
        Object b0Var = map.get(tabSort);
        if (b0Var == null) {
            b0Var = new b0(null);
            map.put(tabSort, b0Var);
        }
        return (LiveData) b0Var;
    }

    public final void u(String tabSort) {
        Intrinsics.h(tabSort, "tabSort");
        if (!q(tabSort)) {
            lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "loadMore: no more data, tabSort=" + tabSort, false, 4, null);
            return;
        }
        Integer num = (Integer) this.f45527k.get(tabSort);
        int iIntValue = (num != null ? num.intValue() : 1) + 1;
        this.f45527k.put(tabSort, Integer.valueOf(iIntValue));
        lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "loadMore: tabSort=" + tabSort + ", page=" + iIntValue, false, 4, null);
        t(tabSort, false);
    }

    public final LiveData v(String tabSort) {
        Intrinsics.h(tabSort, "tabSort");
        Map map = this.f45530n;
        Object b0Var = map.get(tabSort);
        if (b0Var == null) {
            b0Var = new b0(Boolean.FALSE);
            map.put(tabSort, b0Var);
        }
        return (LiveData) b0Var;
    }

    public final void w(String tabSort) {
        Intrinsics.h(tabSort, "tabSort");
        lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "onTabSelected: tabSort=" + tabSort + ", previous=" + this.f45523g, false, 4, null);
        List<HashTagTab> list = this.f45520d;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
        for (HashTagTab hashTagTab : list) {
            arrayList.add(HashTagTab.copy$default(hashTagTab, null, null, Intrinsics.c(hashTagTab.getId(), tabSort), 3, null));
        }
        this.f45520d = arrayList;
        this.f45523g = tabSort;
        Map map = this.f45529m;
        Object b0Var = map.get(tabSort);
        if (b0Var == null) {
            b0Var = new b0(null);
            map.put(tabSort, b0Var);
        }
        RefreshBaseDto refreshBaseDto = (RefreshBaseDto) ((b0) b0Var).f();
        List list2 = refreshBaseDto != null ? (List) refreshBaseDto.getData() : null;
        List list3 = list2;
        if (list3 != null && !list3.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "onTabSelected: data exists, size=" + list2.size(), false, 4, null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "onTabSelected: no data, start loading", false, 4, null);
        Map map2 = this.f45530n;
        Object b0Var2 = map2.get(tabSort);
        if (b0Var2 == null) {
            b0Var2 = new b0(Boolean.FALSE);
            map2.put(tabSort, b0Var2);
        }
        ((b0) b0Var2).n(Boolean.TRUE);
        A(tabSort);
    }

    public final void x(UGCVideoHashTag tag) {
        Object next;
        Intrinsics.h(tag, "tag");
        Set linkedHashSet = (Set) this.f45526j.get(this.f45523g);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet();
        }
        Iterator it = linkedHashSet.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((UGCVideoHashTag) next).getTag(), tag.getTag()));
        UGCVideoHashTag uGCVideoHashTag = (UGCVideoHashTag) next;
        if (uGCVideoHashTag != null) {
            linkedHashSet.remove(uGCVideoHashTag);
            lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "onTagClicked: unselect tag=" + tag.getTag() + ", tabSort=" + this.f45523g + ", current selected=" + linkedHashSet.size(), false, 4, null);
        } else {
            linkedHashSet.add(tag);
            lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "onTagClicked: select tag=" + tag.getTag() + ", tabSort=" + this.f45523g + ", current selected=" + linkedHashSet.size(), false, 4, null);
        }
        this.f45526j.put(this.f45523g, linkedHashSet);
        z(this.f45523g);
        t1 t1Var = this.f45531o;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "onTagClicked: cancel previous debounce job, will refresh after 700ms", false, 4, null);
        this.f45531o = k.d(u0.a(this), null, null, new HashTagViewModel$onTagClicked$1(this, null), 3, null);
    }

    public final Pair y(String raw) {
        Object objM454constructorimpl;
        ArrayList arrayList;
        List<DeeplinkTag> subHashtag;
        DeeplinkTag mainHashtag;
        Intrinsics.h(raw, "raw");
        try {
            Result.Companion companion = Result.INSTANCE;
            HashtagPayload hashtagPayload = (HashtagPayload) o.f().fromJson(raw, HashtagPayload.class);
            UGCVideoHashTag ugcTag = (hashtagPayload == null || (mainHashtag = hashtagPayload.getMainHashtag()) == null) ? null : mainHashtag.toUgcTag();
            if (hashtagPayload == null || (subHashtag = hashtagPayload.getSubHashtag()) == null) {
                arrayList = null;
            } else {
                List<DeeplinkTag> list = subHashtag;
                arrayList = new ArrayList(CollectionsKt.v(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((DeeplinkTag) it.next()).toUgcTag());
                }
            }
            lg.a.C0828a.f(lg.a.f68839a, "HashTagViewModel", "parse hashtag json success: main=" + (ugcTag != null ? ugcTag.getTitle() : null) + ", subs=" + (arrayList != null ? Integer.valueOf(arrayList.size()) : null), false, 4, null);
            objM454constructorimpl = Result.m454constructorimpl(new Pair(ugcTag, arrayList));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.i("HashTagViewModel", "parse hashtag json failed: " + thM457exceptionOrNullimpl.getMessage(), true);
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        Pair pair = (Pair) objM454constructorimpl;
        return pair == null ? new Pair(null, null) : pair;
    }
}
