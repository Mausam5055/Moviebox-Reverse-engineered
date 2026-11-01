package com.transsion.baselib.db.download;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\bT\b\u0087\b\u0018\u0000 j2\u00020\u0001:\u0001kBµ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\r\u0012\b\b\u0002\u0010\u0013\u001a\u00020\r\u0012\b\b\u0002\u0010\u0014\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001f\u0010\u001eJ\u0012\u0010 \u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b \u0010\u001eJ\u0012\u0010!\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\u001eJ\u0012\u0010\"\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\"\u0010\u001eJ\u0010\u0010#\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b#\u0010\u001eJ\u0012\u0010$\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b$\u0010\u001eJ\u0012\u0010%\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b%\u0010&J\u0012\u0010'\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b'\u0010&J\u0010\u0010(\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b(\u0010\u001cJ\u0010\u0010)\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b)\u0010\u001cJ\u0012\u0010*\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b*\u0010\u001eJ\u0012\u0010+\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b+\u0010\u001eJ\u0010\u0010,\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b,\u0010\u001cJ\u0010\u0010-\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b-\u0010\u001cJ\u0010\u0010.\u001a\u00020\rHÆ\u0003¢\u0006\u0004\b.\u0010\u001cJÂ\u0001\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0012\u001a\u00020\r2\b\b\u0002\u0010\u0013\u001a\u00020\r2\b\b\u0002\u0010\u0014\u001a\u00020\rHÆ\u0001¢\u0006\u0004\b/\u00100J\u0010\u00101\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b1\u0010\u001eR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u00102\u001a\u0004\b3\u0010\u001e\"\u0004\b4\u00105R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u00102\u001a\u0004\b6\u0010\u001e\"\u0004\b7\u00105R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u00102\u001a\u0004\b8\u0010\u001e\"\u0004\b9\u00105R$\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u00102\u001a\u0004\b:\u0010\u001e\"\u0004\b;\u00105R$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u00102\u001a\u0004\b<\u0010\u001e\"\u0004\b=\u00105R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u00102\u001a\u0004\b>\u0010\u001e\"\u0004\b?\u00105R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u00102\u001a\u0004\b@\u0010\u001e\"\u0004\bA\u00105R$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010B\u001a\u0004\bC\u0010&\"\u0004\bD\u0010ER$\u0010\f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010B\u001a\u0004\bF\u0010&\"\u0004\bG\u0010ER\"\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010H\u001a\u0004\bI\u0010\u001c\"\u0004\bJ\u0010KR\"\u0010\u000f\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010H\u001a\u0004\bL\u0010\u001c\"\u0004\bM\u0010KR$\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u00102\u001a\u0004\bN\u0010\u001e\"\u0004\bO\u00105R$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u00102\u001a\u0004\bP\u0010\u001e\"\u0004\bQ\u00105R\"\u0010\u0012\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010H\u001a\u0004\bR\u0010\u001c\"\u0004\bS\u0010KR\"\u0010\u0013\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010H\u001a\u0004\bT\u0010\u001c\"\u0004\bU\u0010KR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010H\u001a\u0004\bV\u0010\u001c\"\u0004\bW\u0010KR\"\u0010X\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bX\u0010H\u001a\u0004\bY\u0010\u001c\"\u0004\bZ\u0010KR\"\u0010[\u001a\u00020\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b[\u0010]\"\u0004\b^\u0010_R\"\u0010`\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b`\u00102\u001a\u0004\ba\u0010\u001e\"\u0004\bb\u00105R\u0011\u0010c\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\bc\u0010]R\u0011\u0010e\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bd\u0010\u001eR\u0011\u0010g\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bf\u0010\u001eR\u0011\u0010h\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\bh\u0010]R\u0011\u0010i\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\bi\u0010]¨\u0006l"}, d2 = {"Lcom/transsion/baselib/db/download/SubtitleBean;", "", "", "resourceId", "postId", "url", "path", "lan", "lanName", "subtitleName", "", "size", "delayDuration", "", NotificationCompat.CATEGORY_STATUS, NativeComponentConstants.KEY_COMPONENT_TYPE, "fileCharsetName", "subjectId", "ep", "se", "resolution", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;III)V", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "()Ljava/lang/Long;", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;III)Lcom/transsion/baselib/db/download/SubtitleBean;", "toString", "Ljava/lang/String;", "getResourceId", "setResourceId", "(Ljava/lang/String;)V", "getPostId", "setPostId", "getUrl", "setUrl", "getPath", "setPath", "getLan", "setLan", "getLanName", "setLanName", "getSubtitleName", "setSubtitleName", "Ljava/lang/Long;", "getSize", "setSize", "(Ljava/lang/Long;)V", "getDelayDuration", "setDelayDuration", "I", "getStatus", "setStatus", "(I)V", "getType", "setType", "getFileCharsetName", "setFileCharsetName", "getSubjectId", "setSubjectId", "getEp", "setEp", "getSe", "setSe", "getResolution", "setResolution", "errorCount", "getErrorCount", "setErrorCount", "isSelect", "Z", "()Z", "setSelect", "(Z)V", "pageName", "getPageName", "setPageName", "isDownloaded", "getName", "name", "getDiffId", "diffId", "isInner", "isOpensub", "Companion", "a", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubtitleBean {
    public static final int STATUS_COMPLETED = 2;
    public static final int STATUS_ERROR = 1;
    public static final int STATUS_LOADING = 3;
    public static final int STATUS_NONE = 0;
    public static final int TYPE_INNER = 1;
    public static final int TYPE_LOCAL = 3;
    public static final int TYPE_OPEN_SUBTITLES = 4;
    public static final int TYPE_OPEN_SUBTITLES_NEW = 5;
    public static final int TYPE_SEARCH_DOWNLOAD = 2;
    private Long delayDuration;
    private int ep;
    private int errorCount;
    private String fileCharsetName;
    private boolean isSelect;
    private String lan;
    private String lanName;
    private String pageName;
    private String path;
    private String postId;
    private int resolution;
    private String resourceId;
    private int se;
    private Long size;
    private int status;
    private String subjectId;
    private String subtitleName;
    private int type;
    private String url;

    public SubtitleBean(String resourceId, String str, String str2, String str3, String str4, String lanName, String str5, Long l11, Long l12, int i11, int i12, String str6, String str7, int i13, int i14, int i15) {
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(lanName, "lanName");
        this.resourceId = resourceId;
        this.postId = str;
        this.url = str2;
        this.path = str3;
        this.lan = str4;
        this.lanName = lanName;
        this.subtitleName = str5;
        this.size = l11;
        this.delayDuration = l12;
        this.status = i11;
        this.type = i12;
        this.fileCharsetName = str6;
        this.subjectId = str7;
        this.ep = i13;
        this.se = i14;
        this.resolution = i15;
        this.pageName = "";
    }

    public /* synthetic */ SubtitleBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, Long l11, Long l12, int i11, int i12, String str8, String str9, int i13, int i14, int i15, int i16, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i16 & 2) != 0 ? "" : str2, (i16 & 4) != 0 ? "" : str3, (i16 & 8) != 0 ? "" : str4, (i16 & 16) != 0 ? "" : str5, str6, (i16 & 64) != 0 ? "" : str7, (i16 & 128) != 0 ? 0L : l11, (i16 & 256) != 0 ? 0L : l12, (i16 & 512) != 0 ? 0 : i11, (i16 & 1024) != 0 ? 1 : i12, (i16 & 2048) != 0 ? Charsets.UTF_8.name() : str8, (i16 & 4096) != 0 ? "" : str9, (i16 & 8192) != 0 ? 0 : i13, (i16 & 16384) != 0 ? 0 : i14, (i16 & 32768) != 0 ? 0 : i15);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final int getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getFileCharsetName() {
        return this.fileCharsetName;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final int getResolution() {
        return this.resolution;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPostId() {
        return this.postId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLan() {
        return this.lan;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getLanName() {
        return this.lanName;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getSubtitleName() {
        return this.subtitleName;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Long getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Long getDelayDuration() {
        return this.delayDuration;
    }

    public final SubtitleBean copy(String resourceId, String postId, String url, String path, String lan, String lanName, String subtitleName, Long size, Long delayDuration, int status, int type, String fileCharsetName, String subjectId, int ep2, int se2, int resolution) {
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(lanName, "lanName");
        return new SubtitleBean(resourceId, postId, url, path, lan, lanName, subtitleName, size, delayDuration, status, type, fileCharsetName, subjectId, ep2, se2, resolution);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.c(SubtitleBean.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.f(other, "null cannot be cast to non-null type com.transsion.baselib.db.download.SubtitleBean");
        return Intrinsics.c(this.resourceId, ((SubtitleBean) other).resourceId);
    }

    public final Long getDelayDuration() {
        return this.delayDuration;
    }

    public final String getDiffId() {
        return this.resourceId;
    }

    public final int getEp() {
        return this.ep;
    }

    public final int getErrorCount() {
        return this.errorCount;
    }

    public final String getFileCharsetName() {
        return this.fileCharsetName;
    }

    public final String getLan() {
        return this.lan;
    }

    public final String getLanName() {
        return this.lanName;
    }

    public final String getName() {
        if (this.type == 1) {
            return this.lanName;
        }
        String str = this.subtitleName;
        return str == null ? "" : str;
    }

    public final String getPageName() {
        return this.pageName;
    }

    public final String getPath() {
        return this.path;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final int getResolution() {
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

    public final int getStatus() {
        return this.status;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getSubtitleName() {
        return this.subtitleName;
    }

    public final int getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return this.resourceId.hashCode();
    }

    public final boolean isDownloaded() {
        return this.status == 2;
    }

    public final boolean isInner() {
        return this.type == 1;
    }

    public final boolean isOpensub() {
        int i11 = this.type;
        return i11 == 4 || i11 == 5;
    }

    /* JADX INFO: renamed from: isSelect, reason: from getter */
    public final boolean getIsSelect() {
        return this.isSelect;
    }

    public final void setDelayDuration(Long l11) {
        this.delayDuration = l11;
    }

    public final void setEp(int i11) {
        this.ep = i11;
    }

    public final void setErrorCount(int i11) {
        this.errorCount = i11;
    }

    public final void setFileCharsetName(String str) {
        this.fileCharsetName = str;
    }

    public final void setLan(String str) {
        this.lan = str;
    }

    public final void setLanName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.lanName = str;
    }

    public final void setPageName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.pageName = str;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    public final void setResolution(int i11) {
        this.resolution = i11;
    }

    public final void setResourceId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.resourceId = str;
    }

    public final void setSe(int i11) {
        this.se = i11;
    }

    public final void setSelect(boolean z10) {
        this.isSelect = z10;
    }

    public final void setSize(Long l11) {
        this.size = l11;
    }

    public final void setStatus(int i11) {
        this.status = i11;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubtitleName(String str) {
        this.subtitleName = str;
    }

    public final void setType(int i11) {
        this.type = i11;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "SubtitleBean(resourceId=" + this.resourceId + ", postId=" + this.postId + ", url=" + this.url + ", path=" + this.path + ", lan=" + this.lan + ", lanName=" + this.lanName + ", subtitleName=" + this.subtitleName + ", size=" + this.size + ", delayDuration=" + this.delayDuration + ", status=" + this.status + ", type=" + this.type + ", fileCharsetName=" + this.fileCharsetName + ", subjectId=" + this.subjectId + ", ep=" + this.ep + ", se=" + this.se + ", resolution=" + this.resolution + ")";
    }
}
