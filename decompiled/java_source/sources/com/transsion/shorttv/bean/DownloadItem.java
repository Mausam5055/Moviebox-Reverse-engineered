package com.transsion.shorttv.bean;

import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b:\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0014\b\u0087\b\u0018\u00002\u00020\u0001B\u0099\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0007\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010U\u001a\u00020D2\b\u0010V\u001a\u0004\u0018\u00010WH\u0096\u0002J\b\u0010X\u001a\u00020\u0007H\u0016J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\\\u001a\u00020\u0007HÆ\u0003J\u0010\u0010]\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010#J\u000b\u0010^\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010.J\t\u0010a\u001a\u00020\u0007HÆ\u0003J\t\u0010b\u001a\u00020\u0007HÆ\u0003J\t\u0010c\u001a\u00020\u0007HÆ\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010e\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010.J\u0010\u0010f\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010.J\u000b\u0010g\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jº\u0001\u0010h\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010iJ\t\u0010j\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0017\"\u0004\b\u001d\u0010\u0019R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R \u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0017\"\u0004\b(\u0010\u0019R \u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0017\"\u0004\b*\u0010\u0019R(\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u00101\u0012\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001e\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u001f\"\u0004\b3\u0010!R\u001e\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u001f\"\u0004\b5\u0010!R\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u001f\"\u0004\b7\u0010!R \u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u0017\"\u0004\b9\u0010\u0019R\"\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u00101\u001a\u0004\b:\u0010.\"\u0004\b;\u00100R\"\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u00101\u001a\u0004\b<\u0010.\"\u0004\b=\u00100R \u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\u0017\"\u0004\b?\u0010\u0019R\"\u0010@\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\bA\u0010#\"\u0004\bB\u0010%R\u001a\u0010C\u001a\u00020DX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010E\"\u0004\bF\u0010GR\u001a\u0010H\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010\u001f\"\u0004\bJ\u0010!R\u001a\u0010K\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010\u0017\"\u0004\bM\u0010\u0019R\u001c\u0010N\u001a\u0004\u0018\u00010OX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\u0011\u0010T\u001a\u00020D8F¢\u0006\u0006\u001a\u0004\bT\u0010E¨\u0006k"}, d2 = {"Lcom/transsion/shorttv/bean/DownloadItem;", "Ljava/io/Serializable;", "resourceId", "", "name", "url", "linkType", "", "size", "", "uploadBy", "postId", "epse", "se", "ep", NotificationCompat.CATEGORY_STATUS, "sourceUrl", "resolution", "requireMemberType", "memberIcon", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getResourceId", "()Ljava/lang/String;", "setResourceId", "(Ljava/lang/String;)V", "getName", "setName", "getUrl", "setUrl", "getLinkType", "()I", "setLinkType", "(I)V", "getSize", "()Ljava/lang/Long;", "setSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getUploadBy", "setUploadBy", "getPostId", "setPostId", "getEpse$annotations", "()V", "getEpse", "()Ljava/lang/Integer;", "setEpse", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getSe", "setSe", "getEp", "setEp", "getStatus", "setStatus", "getSourceUrl", "setSourceUrl", "getResolution", "setResolution", "getRequireMemberType", "setRequireMemberType", "getMemberIcon", "setMemberIcon", "duration", "getDuration", "setDuration", "isCheck", "", "()Z", "setCheck", "(Z)V", RequestParameters.POSITION, "getPosition", "setPosition", "taskId", "getTaskId", "setTaskId", "episodeItem", "Lcom/transsion/shorttv/bean/ShortTVItem;", "getEpisodeItem", "()Lcom/transsion/shorttv/bean/ShortTVItem;", "setEpisodeItem", "(Lcom/transsion/shorttv/bean/ShortTVItem;)V", "isAvailable", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/shorttv/bean/DownloadItem;", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DownloadItem implements Serializable {

    @SerializedName("duration")
    private Long duration;

    @SerializedName("ep")
    private int ep;
    private transient ShortTVItem episodeItem;

    @SerializedName("episode")
    private Integer epse;
    private transient boolean isCheck;

    @SerializedName("linkType")
    private int linkType;

    @SerializedName("memberIcon")
    private String memberIcon;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String name;
    private transient int position;

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
    private transient int status;
    private transient String taskId;

    @SerializedName("uploadBy")
    private String uploadBy;

    @SerializedName("resourceLink")
    private String url;

    public DownloadItem(String str, String str2, String str3, int i11, Long l11, String str4, String str5, Integer num, int i12, int i13, int i14, String str6, Integer num2, Integer num3, String str7) {
        this.resourceId = str;
        this.name = str2;
        this.url = str3;
        this.linkType = i11;
        this.size = l11;
        this.uploadBy = str4;
        this.postId = str5;
        this.epse = num;
        this.se = i12;
        this.ep = i13;
        this.status = i14;
        this.sourceUrl = str6;
        this.resolution = num2;
        this.requireMemberType = num3;
        this.memberIcon = str7;
        this.position = -1;
        this.taskId = "";
    }

    public /* synthetic */ DownloadItem(String str, String str2, String str3, int i11, Long l11, String str4, String str5, Integer num, int i12, int i13, int i14, String str6, Integer num2, Integer num3, String str7, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, i11, l11, str4, str5, (i15 & 128) != 0 ? 0 : num, i12, i13, (i15 & 1024) != 0 ? 0 : i14, str6, num2, num3, str7);
    }

    @Deprecated
    public static /* synthetic */ void getEpse$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final int getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getSourceUrl() {
        return this.sourceUrl;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Integer getResolution() {
        return this.resolution;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Integer getRequireMemberType() {
        return this.requireMemberType;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getMemberIcon() {
        return this.memberIcon;
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

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    public final DownloadItem copy(String resourceId, String name, String url, int linkType, Long size, String uploadBy, String postId, Integer epse, int se2, int ep2, int status, String sourceUrl, Integer resolution, Integer requireMemberType, String memberIcon) {
        return new DownloadItem(resourceId, name, url, linkType, size, uploadBy, postId, epse, se2, ep2, status, sourceUrl, resolution, requireMemberType, memberIcon);
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

    public final ShortTVItem getEpisodeItem() {
        return this.episodeItem;
    }

    public final Integer getEpse() {
        return this.epse;
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

    public final int getPosition() {
        return this.position;
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

    public final int getStatus() {
        return this.status;
    }

    public final String getTaskId() {
        return this.taskId;
    }

    public final String getUploadBy() {
        return this.uploadBy;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.resourceId;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final boolean isAvailable() {
        int i11 = this.status;
        return (i11 == 0 || i11 == 7) ? false : true;
    }

    /* JADX INFO: renamed from: isCheck, reason: from getter */
    public final boolean getIsCheck() {
        return this.isCheck;
    }

    public final void setCheck(boolean z10) {
        this.isCheck = z10;
    }

    public final void setDuration(Long l11) {
        this.duration = l11;
    }

    public final void setEp(int i11) {
        this.ep = i11;
    }

    public final void setEpisodeItem(ShortTVItem shortTVItem) {
        this.episodeItem = shortTVItem;
    }

    public final void setEpse(Integer num) {
        this.epse = num;
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

    public final void setPosition(int i11) {
        this.position = i11;
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

    public final void setStatus(int i11) {
        this.status = i11;
    }

    public final void setTaskId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.taskId = str;
    }

    public final void setUploadBy(String str) {
        this.uploadBy = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "DownloadItem(resourceId=" + this.resourceId + ", name=" + this.name + ", url=" + this.url + ", linkType=" + this.linkType + ", size=" + this.size + ", uploadBy=" + this.uploadBy + ", postId=" + this.postId + ", epse=" + this.epse + ", se=" + this.se + ", ep=" + this.ep + ", status=" + this.status + ", sourceUrl=" + this.sourceUrl + ", resolution=" + this.resolution + ", requireMemberType=" + this.requireMemberType + ", memberIcon=" + this.memberIcon + ")";
    }
}
