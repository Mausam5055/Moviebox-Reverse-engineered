package com.transsion.shorttv_pugc.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\bX\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001Bõ\u0001\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001c\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u000e¢\u0006\u0004\b\u001f\u0010 J\u0011\u0010\\\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010b\u001a\u00020\u000eHÆ\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010d\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010<J\u0010\u0010e\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010<J\u0010\u0010f\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010<J\u000b\u0010g\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0011\u0010i\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u0010\u0010k\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010<J\u000b\u0010l\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010n\u001a\u00020\u001cHÆ\u0003J\t\u0010o\u001a\u00020\u000eHÆ\u0003J\t\u0010p\u001a\u00020\u000eHÆ\u0003J\u008e\u0002\u0010q\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u000e2\b\b\u0002\u0010\u001e\u001a\u00020\u000eHÆ\u0001¢\u0006\u0002\u0010rJ\u0013\u0010s\u001a\u00020\u001c2\b\u0010t\u001a\u0004\u0018\u00010uHÖ\u0003J\t\u0010v\u001a\u00020\u000eHÖ\u0001J\t\u0010w\u001a\u00020\nHÖ\u0001R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R \u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010.\"\u0004\b2\u00100R \u0010\f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010.\"\u0004\b4\u00100R\u001e\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R \u0010\u000f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010.\"\u0004\b:\u00100R\"\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010?\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010?\u001a\u0004\b@\u0010<\"\u0004\bA\u0010>R\"\u0010\u0012\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010?\u001a\u0004\bB\u0010<\"\u0004\bC\u0010>R \u0010\u0013\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010.\"\u0004\bE\u00100R \u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010.\"\u0004\bG\u00100R&\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010\"\"\u0004\bI\u0010$R \u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010?\u001a\u0004\bN\u0010<\"\u0004\bO\u0010>R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010.\"\u0004\bQ\u00100R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010.\"\u0004\bS\u00100R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\u001a\u0010\u001d\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bX\u00106\"\u0004\bY\u00108R\u001a\u0010\u001e\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u00106\"\u0004\b[\u00108¨\u0006x"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/DownloadListBean;", "Ljava/io/Serializable;", "items", "", "Lcom/transsion/shorttv_pugc/bean/DownloadItem;", "pager", "Lcom/transsion/shorttv_pugc/bean/Pager;", "cover", "Lcom/transsion/shorttv_pugc/bean/Cover;", "subjectId", "", "groupId", CampaignEx.JSON_KEY_TITLE, "subjectType", "", "subjectTitle", RequestParameters.POSITION, "totalEpisode", "resolution", TrackingKey.DESCRIPTION, "genre", "tags", "shortTVFavInfo", "Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;", "durationSeconds", "releaseDate", "countryName", "loadMore", "", "startPosition", "endPosition", "<init>", "(Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Pager;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZII)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/shorttv_pugc/bean/Pager;", "setPager", "(Lcom/transsion/shorttv_pugc/bean/Pager;)V", "getCover", "()Lcom/transsion/shorttv_pugc/bean/Cover;", "setCover", "(Lcom/transsion/shorttv_pugc/bean/Cover;)V", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "getGroupId", "setGroupId", "getTitle", "setTitle", "getSubjectType", "()I", "setSubjectType", "(I)V", "getSubjectTitle", "setSubjectTitle", "getPosition", "()Ljava/lang/Integer;", "setPosition", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTotalEpisode", "setTotalEpisode", "getResolution", "setResolution", "getDescription", "setDescription", "getGenre", "setGenre", "getTags", "setTags", "getShortTVFavInfo", "()Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;", "setShortTVFavInfo", "(Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;)V", "getDurationSeconds", "setDurationSeconds", "getReleaseDate", "setReleaseDate", "getCountryName", "setCountryName", "getLoadMore", "()Z", "setLoadMore", "(Z)V", "getStartPosition", "setStartPosition", "getEndPosition", "setEndPosition", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "copy", "(Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Pager;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/transsion/shorttv_pugc/bean/DownloadListBean;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DownloadListBean implements Serializable {
    private String countryName;

    @SerializedName("cover")
    private Cover cover;

    @SerializedName(TrackingKey.DESCRIPTION)
    private String description;

    @SerializedName("durationSeconds")
    private Integer durationSeconds;
    private transient int endPosition;

    @SerializedName("genre")
    private String genre;

    @SerializedName("groupId")
    private String groupId;

    @SerializedName("list")
    private List<DownloadItem> items;
    private transient boolean loadMore;

    @SerializedName("pager")
    private Pager pager;

    @SerializedName(RequestParameters.POSITION)
    private Integer position;
    private String releaseDate;

    @SerializedName("resolution")
    private Integer resolution;

    @SerializedName("favInfo")
    private ShortTVFavInfo shortTVFavInfo;
    private transient int startPosition;

    @SerializedName("subjectId")
    private String subjectId;

    @SerializedName("subjectTitle")
    private String subjectTitle;

    @SerializedName("subjectType")
    private int subjectType;

    @SerializedName("tags")
    private List<String> tags;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;

    @SerializedName("totalEpisode")
    private Integer totalEpisode;

    public DownloadListBean(List<DownloadItem> list, Pager pager, Cover cover, String str, String str2, String str3, int i11, String str4, Integer num, Integer num2, Integer num3, String str5, String str6, List<String> list2, ShortTVFavInfo shortTVFavInfo, Integer num4, String str7, String str8, boolean z10, int i12, int i13) {
        this.items = list;
        this.pager = pager;
        this.cover = cover;
        this.subjectId = str;
        this.groupId = str2;
        this.title = str3;
        this.subjectType = i11;
        this.subjectTitle = str4;
        this.position = num;
        this.totalEpisode = num2;
        this.resolution = num3;
        this.description = str5;
        this.genre = str6;
        this.tags = list2;
        this.shortTVFavInfo = shortTVFavInfo;
        this.durationSeconds = num4;
        this.releaseDate = str7;
        this.countryName = str8;
        this.loadMore = z10;
        this.startPosition = i12;
        this.endPosition = i13;
    }

    public /* synthetic */ DownloadListBean(List list, Pager pager, Cover cover, String str, String str2, String str3, int i11, String str4, Integer num, Integer num2, Integer num3, String str5, String str6, List list2, ShortTVFavInfo shortTVFavInfo, Integer num4, String str7, String str8, boolean z10, int i12, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, pager, cover, str, str2, str3, (i14 & 64) != 0 ? 0 : i11, str4, num, num2, (i14 & 1024) != 0 ? 0 : num3, (i14 & 2048) != 0 ? null : str5, (i14 & 4096) != 0 ? null : str6, (i14 & 8192) != 0 ? null : list2, (i14 & 16384) != 0 ? null : shortTVFavInfo, (32768 & i14) != 0 ? 0 : num4, (65536 & i14) != 0 ? null : str7, (131072 & i14) != 0 ? null : str8, (262144 & i14) != 0 ? true : z10, (524288 & i14) != 0 ? 0 : i12, (i14 & 1048576) != 0 ? 0 : i13);
    }

    public final List<DownloadItem> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getTotalEpisode() {
        return this.totalEpisode;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getResolution() {
        return this.resolution;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getGenre() {
        return this.genre;
    }

    public final List<String> component14() {
        return this.tags;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final ShortTVFavInfo getShortTVFavInfo() {
        return this.shortTVFavInfo;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getReleaseDate() {
        return this.releaseDate;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getCountryName() {
        return this.countryName;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final boolean getLoadMore() {
        return this.loadMore;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final int getStartPosition() {
        return this.startPosition;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final int getEndPosition() {
        return this.endPosition;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getGroupId() {
        return this.groupId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getSubjectTitle() {
        return this.subjectTitle;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getPosition() {
        return this.position;
    }

    public final DownloadListBean copy(List<DownloadItem> items, Pager pager, Cover cover, String subjectId, String groupId, String title, int subjectType, String subjectTitle, Integer position, Integer totalEpisode, Integer resolution, String description, String genre, List<String> tags, ShortTVFavInfo shortTVFavInfo, Integer durationSeconds, String releaseDate, String countryName, boolean loadMore, int startPosition, int endPosition) {
        return new DownloadListBean(items, pager, cover, subjectId, groupId, title, subjectType, subjectTitle, position, totalEpisode, resolution, description, genre, tags, shortTVFavInfo, durationSeconds, releaseDate, countryName, loadMore, startPosition, endPosition);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadListBean)) {
            return false;
        }
        DownloadListBean downloadListBean = (DownloadListBean) other;
        return Intrinsics.c(this.items, downloadListBean.items) && Intrinsics.c(this.pager, downloadListBean.pager) && Intrinsics.c(this.cover, downloadListBean.cover) && Intrinsics.c(this.subjectId, downloadListBean.subjectId) && Intrinsics.c(this.groupId, downloadListBean.groupId) && Intrinsics.c(this.title, downloadListBean.title) && this.subjectType == downloadListBean.subjectType && Intrinsics.c(this.subjectTitle, downloadListBean.subjectTitle) && Intrinsics.c(this.position, downloadListBean.position) && Intrinsics.c(this.totalEpisode, downloadListBean.totalEpisode) && Intrinsics.c(this.resolution, downloadListBean.resolution) && Intrinsics.c(this.description, downloadListBean.description) && Intrinsics.c(this.genre, downloadListBean.genre) && Intrinsics.c(this.tags, downloadListBean.tags) && Intrinsics.c(this.shortTVFavInfo, downloadListBean.shortTVFavInfo) && Intrinsics.c(this.durationSeconds, downloadListBean.durationSeconds) && Intrinsics.c(this.releaseDate, downloadListBean.releaseDate) && Intrinsics.c(this.countryName, downloadListBean.countryName) && this.loadMore == downloadListBean.loadMore && this.startPosition == downloadListBean.startPosition && this.endPosition == downloadListBean.endPosition;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    public final int getEndPosition() {
        return this.endPosition;
    }

    public final String getGenre() {
        return this.genre;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final List<DownloadItem> getItems() {
        return this.items;
    }

    public final boolean getLoadMore() {
        return this.loadMore;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final Integer getPosition() {
        return this.position;
    }

    public final String getReleaseDate() {
        return this.releaseDate;
    }

    public final Integer getResolution() {
        return this.resolution;
    }

    public final ShortTVFavInfo getShortTVFavInfo() {
        return this.shortTVFavInfo;
    }

    public final int getStartPosition() {
        return this.startPosition;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getSubjectTitle() {
        return this.subjectTitle;
    }

    public final int getSubjectType() {
        return this.subjectType;
    }

    public final List<String> getTags() {
        return this.tags;
    }

    public final String getTitle() {
        return this.title;
    }

    public final Integer getTotalEpisode() {
        return this.totalEpisode;
    }

    public int hashCode() {
        List<DownloadItem> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Pager pager = this.pager;
        int iHashCode2 = (iHashCode + (pager == null ? 0 : pager.hashCode())) * 31;
        Cover cover = this.cover;
        int iHashCode3 = (iHashCode2 + (cover == null ? 0 : cover.hashCode())) * 31;
        String str = this.subjectId;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.groupId;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.title;
        int iHashCode6 = (((iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.subjectType) * 31;
        String str4 = this.subjectTitle;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.position;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.totalEpisode;
        int iHashCode9 = (iHashCode8 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.resolution;
        int iHashCode10 = (iHashCode9 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str5 = this.description;
        int iHashCode11 = (iHashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.genre;
        int iHashCode12 = (iHashCode11 + (str6 == null ? 0 : str6.hashCode())) * 31;
        List<String> list2 = this.tags;
        int iHashCode13 = (iHashCode12 + (list2 == null ? 0 : list2.hashCode())) * 31;
        ShortTVFavInfo shortTVFavInfo = this.shortTVFavInfo;
        int iHashCode14 = (iHashCode13 + (shortTVFavInfo == null ? 0 : shortTVFavInfo.hashCode())) * 31;
        Integer num4 = this.durationSeconds;
        int iHashCode15 = (iHashCode14 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str7 = this.releaseDate;
        int iHashCode16 = (iHashCode15 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.countryName;
        return ((((((iHashCode16 + (str8 != null ? str8.hashCode() : 0)) * 31) + e.a(this.loadMore)) * 31) + this.startPosition) * 31) + this.endPosition;
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDurationSeconds(Integer num) {
        this.durationSeconds = num;
    }

    public final void setEndPosition(int i11) {
        this.endPosition = i11;
    }

    public final void setGenre(String str) {
        this.genre = str;
    }

    public final void setGroupId(String str) {
        this.groupId = str;
    }

    public final void setItems(List<DownloadItem> list) {
        this.items = list;
    }

    public final void setLoadMore(boolean z10) {
        this.loadMore = z10;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public final void setPosition(Integer num) {
        this.position = num;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setResolution(Integer num) {
        this.resolution = num;
    }

    public final void setShortTVFavInfo(ShortTVFavInfo shortTVFavInfo) {
        this.shortTVFavInfo = shortTVFavInfo;
    }

    public final void setStartPosition(int i11) {
        this.startPosition = i11;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubjectTitle(String str) {
        this.subjectTitle = str;
    }

    public final void setSubjectType(int i11) {
        this.subjectType = i11;
    }

    public final void setTags(List<String> list) {
        this.tags = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setTotalEpisode(Integer num) {
        this.totalEpisode = num;
    }

    public String toString() {
        return "DownloadListBean(items=" + this.items + ", pager=" + this.pager + ", cover=" + this.cover + ", subjectId=" + this.subjectId + ", groupId=" + this.groupId + ", title=" + this.title + ", subjectType=" + this.subjectType + ", subjectTitle=" + this.subjectTitle + ", position=" + this.position + ", totalEpisode=" + this.totalEpisode + ", resolution=" + this.resolution + ", description=" + this.description + ", genre=" + this.genre + ", tags=" + this.tags + ", shortTVFavInfo=" + this.shortTVFavInfo + ", durationSeconds=" + this.durationSeconds + ", releaseDate=" + this.releaseDate + ", countryName=" + this.countryName + ", loadMore=" + this.loadMore + ", startPosition=" + this.startPosition + ", endPosition=" + this.endPosition + ")";
    }
}
