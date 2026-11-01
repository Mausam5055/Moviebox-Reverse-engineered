package com.transsion.moviedetailapi;

import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.moviedetailapi.bean.SubtitleItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b8\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0087\b\u0018\u00002\u00020\u0001B³\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\u0013\u0010P\u001a\u00020Q2\b\u0010R\u001a\u0004\u0018\u00010SH\u0096\u0002J\b\u0010T\u001a\u00020\u0007H\u0016J\u0006\u0010U\u001a\u00020VJ\u000b\u0010W\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010Z\u001a\u00020\u0007HÆ\u0003J\u0010\u0010[\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010(J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010^\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u00103J\u0011\u0010_\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0003J\t\u0010`\u001a\u00020\u0007HÆ\u0003J\t\u0010a\u001a\u00020\u0007HÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u00103J\u000b\u0010c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010d\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u00103J\u0010\u0010e\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u00103J\u000b\u0010f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0018HÆ\u0003JÚ\u0001\u0010h\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÆ\u0001¢\u0006\u0002\u0010iJ\t\u0010j\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001c\"\u0004\b \u0010\u001eR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001c\"\u0004\b\"\u0010\u001eR\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010+\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R \u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001c\"\u0004\b-\u0010\u001eR \u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u001c\"\u0004\b/\u0010\u001eR(\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u00106\u0012\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R&\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001e\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010$\"\u0004\b<\u0010&R\u001e\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010$\"\u0004\b>\u0010&R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u00106\u001a\u0004\b?\u00103\"\u0004\b@\u00105R \u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\u001c\"\u0004\bB\u0010\u001eR\"\u0010\u0014\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u00106\u001a\u0004\bC\u00103\"\u0004\bD\u00105R\"\u0010\u0015\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u00106\u001a\u0004\bE\u00103\"\u0004\bF\u00105R \u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010\u001c\"\u0004\bH\u0010\u001eR \u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\"\u0010M\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010+\u001a\u0004\bN\u0010(\"\u0004\bO\u0010*¨\u0006k"}, d2 = {"Lcom/transsion/moviedetailapi/DownloadItem;", "Ljava/io/Serializable;", "resourceId", "", "name", "url", "linkType", "", "size", "", "uploadBy", "postId", "epse", "extSubtitle", "", "Lcom/transsion/moviedetailapi/bean/SubtitleItem;", "se", "ep", NotificationCompat.CATEGORY_STATUS, "sourceUrl", "resolution", "requireMemberType", "memberIcon", "vipInfo", "Lcom/transsion/baselib/db/download/VipInfo;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)V", "getResourceId", "()Ljava/lang/String;", "setResourceId", "(Ljava/lang/String;)V", "getName", "setName", "getUrl", "setUrl", "getLinkType", "()I", "setLinkType", "(I)V", "getSize", "()Ljava/lang/Long;", "setSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getUploadBy", "setUploadBy", "getPostId", "setPostId", "getEpse$annotations", "()V", "getEpse", "()Ljava/lang/Integer;", "setEpse", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getExtSubtitle", "()Ljava/util/List;", "setExtSubtitle", "(Ljava/util/List;)V", "getSe", "setSe", "getEp", "setEp", "getStatus", "setStatus", "getSourceUrl", "setSourceUrl", "getResolution", "setResolution", "getRequireMemberType", "setRequireMemberType", "getMemberIcon", "setMemberIcon", "getVipInfo", "()Lcom/transsion/baselib/db/download/VipInfo;", "setVipInfo", "(Lcom/transsion/baselib/db/download/VipInfo;)V", "duration", "getDuration", "setDuration", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toDownloadBean", "Lcom/transsion/baselib/db/download/DownloadBean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/baselib/db/download/VipInfo;)Lcom/transsion/moviedetailapi/DownloadItem;", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DownloadItem implements Serializable {

    @SerializedName("duration")
    private Long duration;

    @SerializedName("ep")
    private int ep;

    @SerializedName("episode")
    private Integer epse;

    @SerializedName("extCaptions")
    private List<SubtitleItem> extSubtitle;

    @SerializedName("linkType")
    private int linkType;

    @SerializedName("memberIcon")
    private String memberIcon;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String name;

    @SerializedName("postId")
    private String postId;

    @SerializedName("requireMemberType")
    private Integer requireMemberType;

    @SerializedName("resolution")
    private Integer resolution;

    @SerializedName("resourceId")
    private String resourceId;

    @SerializedName("se")
    private int se;

    @SerializedName("size")
    private Long size;

    @SerializedName("sourceUrl")
    private String sourceUrl;
    private transient Integer status;

    @SerializedName("uploadBy")
    private String uploadBy;

    @SerializedName("resourceLink")
    private String url;

    @SerializedName("vipInfo")
    private VipInfo vipInfo;

    public DownloadItem(String str, String str2, String str3, int i11, Long l11, String str4, String str5, Integer num, List<SubtitleItem> list, int i12, int i13, Integer num2, String str6, Integer num3, Integer num4, String str7, VipInfo vipInfo) {
        this.resourceId = str;
        this.name = str2;
        this.url = str3;
        this.linkType = i11;
        this.size = l11;
        this.uploadBy = str4;
        this.postId = str5;
        this.epse = num;
        this.extSubtitle = list;
        this.se = i12;
        this.ep = i13;
        this.status = num2;
        this.sourceUrl = str6;
        this.resolution = num3;
        this.requireMemberType = num4;
        this.memberIcon = str7;
        this.vipInfo = vipInfo;
    }

    public /* synthetic */ DownloadItem(String str, String str2, String str3, int i11, Long l11, String str4, String str5, Integer num, List list, int i12, int i13, Integer num2, String str6, Integer num3, Integer num4, String str7, VipInfo vipInfo, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, i11, l11, str4, str5, (i14 & 128) != 0 ? 0 : num, list, i12, i13, num2, str6, num3, num4, str7, vipInfo);
    }

    @Deprecated
    public static /* synthetic */ void getEpse$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Integer getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getSourceUrl() {
        return this.sourceUrl;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Integer getResolution() {
        return this.resolution;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final Integer getRequireMemberType() {
        return this.requireMemberType;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getMemberIcon() {
        return this.memberIcon;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getLinkType() {
        return this.linkType;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getUploadBy() {
        return this.uploadBy;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getPostId() {
        return this.postId;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getEpse() {
        return this.epse;
    }

    public final List<SubtitleItem> component9() {
        return this.extSubtitle;
    }

    public final DownloadItem copy(String resourceId, String name, String url, int linkType, Long size, String uploadBy, String postId, Integer epse, List<SubtitleItem> extSubtitle, int se2, int ep2, Integer status, String sourceUrl, Integer resolution, Integer requireMemberType, String memberIcon, VipInfo vipInfo) {
        return new DownloadItem(resourceId, name, url, linkType, size, uploadBy, postId, epse, extSubtitle, se2, ep2, status, sourceUrl, resolution, requireMemberType, memberIcon, vipInfo);
    }

    public boolean equals(Object other) {
        return (other instanceof DownloadItem) && !TextUtils.isEmpty(this.resourceId) && TextUtils.equals(this.resourceId, ((DownloadItem) other).resourceId);
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final int getEp() {
        return this.ep;
    }

    public final Integer getEpse() {
        return this.epse;
    }

    public final List<SubtitleItem> getExtSubtitle() {
        return this.extSubtitle;
    }

    public final int getLinkType() {
        return this.linkType;
    }

    public final String getMemberIcon() {
        return this.memberIcon;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final Integer getRequireMemberType() {
        return this.requireMemberType;
    }

    public final Integer getResolution() {
        return this.resolution;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final int getSe() {
        return this.se;
    }

    public final Long getSize() {
        return this.size;
    }

    public final String getSourceUrl() {
        return this.sourceUrl;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public final String getUploadBy() {
        return this.uploadBy;
    }

    public final String getUrl() {
        return this.url;
    }

    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    public int hashCode() {
        String str = this.resourceId;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final void setDuration(Long l11) {
        this.duration = l11;
    }

    public final void setEp(int i11) {
        this.ep = i11;
    }

    public final void setEpse(Integer num) {
        this.epse = num;
    }

    public final void setExtSubtitle(List<SubtitleItem> list) {
        this.extSubtitle = list;
    }

    public final void setLinkType(int i11) {
        this.linkType = i11;
    }

    public final void setMemberIcon(String str) {
        this.memberIcon = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    public final void setRequireMemberType(Integer num) {
        this.requireMemberType = num;
    }

    public final void setResolution(Integer num) {
        this.resolution = num;
    }

    public final void setResourceId(String str) {
        this.resourceId = str;
    }

    public final void setSe(int i11) {
        this.se = i11;
    }

    public final void setSize(Long l11) {
        this.size = l11;
    }

    public final void setSourceUrl(String str) {
        this.sourceUrl = str;
    }

    public final void setStatus(Integer num) {
        this.status = num;
    }

    public final void setUploadBy(String str) {
        this.uploadBy = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setVipInfo(VipInfo vipInfo) {
        this.vipInfo = vipInfo;
    }

    public final DownloadBean toDownloadBean() {
        String str = this.url;
        String str2 = str == null ? "" : str;
        String str3 = this.resourceId;
        String str4 = str3 == null ? "" : str3;
        String str5 = this.name;
        String str6 = str5 == null ? "" : str5;
        DownloadBean downloadBean = new DownloadBean(str2, str4, str6, "", this.size, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
        String str7 = this.uploadBy;
        if (str7 == null) {
            str7 = "";
        }
        downloadBean.setUploadBy(str7);
        String str8 = this.sourceUrl;
        if (str8 == null) {
            str8 = "";
        }
        downloadBean.setSourceUrl(str8);
        downloadBean.setPostId(this.postId);
        Integer num = this.epse;
        downloadBean.setEpse(num != null ? num.intValue() : 0);
        downloadBean.setEp(this.ep);
        downloadBean.setSe(this.se);
        downloadBean.setDuration(this.duration);
        Integer num2 = this.resolution;
        downloadBean.setResolution(num2 != null ? num2.intValue() : 0);
        return downloadBean;
    }

    public String toString() {
        return "DownloadItem(resourceId=" + this.resourceId + ", name=" + this.name + ", url=" + this.url + ", linkType=" + this.linkType + ", size=" + this.size + ", uploadBy=" + this.uploadBy + ", postId=" + this.postId + ", epse=" + this.epse + ", extSubtitle=" + this.extSubtitle + ", se=" + this.se + ", ep=" + this.ep + ", status=" + this.status + ", sourceUrl=" + this.sourceUrl + ", resolution=" + this.resolution + ", requireMemberType=" + this.requireMemberType + ", memberIcon=" + this.memberIcon + ", vipInfo=" + this.vipInfo + ")";
    }
}
