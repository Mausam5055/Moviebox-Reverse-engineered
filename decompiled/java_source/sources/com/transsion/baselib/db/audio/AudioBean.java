package com.transsion.baselib.db.audio;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b+\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b:\b\u0087\b\u0018\u0000 q2\u00020\u0001:\u0001rBã\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u000b¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001cJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b \u0010\u001fJ\u0012\u0010!\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\u001cJ\u0012\u0010\"\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\"\u0010\u001cJ\u0012\u0010#\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b#\u0010\u001cJ\u0012\u0010$\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b$\u0010%J\u0012\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b&\u0010\u001fJ\u0012\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b'\u0010\u001fJ\u0012\u0010(\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b(\u0010\u001cJ\u0012\u0010)\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b)\u0010\u001cJ\u0012\u0010*\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b*\u0010\u001cJ\u0012\u0010+\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b+\u0010\u001cJ\u0012\u0010,\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b,\u0010\u001cJ\u0012\u0010-\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b-\u0010\u001cJ\u0010\u0010.\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b.\u0010/J\u0012\u00100\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b0\u0010\u001cJ\u0010\u00101\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b1\u0010/J\u0010\u00102\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b2\u0010/Jø\u0001\u00103\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u000b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u000b2\b\b\u0002\u0010\u0018\u001a\u00020\u000bHÆ\u0001¢\u0006\u0004\b3\u00104J\u0010\u00105\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b5\u0010\u001cJ\u0010\u00106\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b6\u0010/J\u001a\u0010:\u001a\u0002092\b\u00108\u001a\u0004\u0018\u000107HÖ\u0003¢\u0006\u0004\b:\u0010;R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010<\u001a\u0004\b=\u0010\u001c\"\u0004\b>\u0010?R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010<\u001a\u0004\b@\u0010\u001c\"\u0004\bA\u0010?R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010B\u001a\u0004\bC\u0010\u001f\"\u0004\bD\u0010ER$\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010B\u001a\u0004\bF\u0010\u001f\"\u0004\bG\u0010ER$\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010<\u001a\u0004\bH\u0010\u001c\"\u0004\bI\u0010?R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010<\u001a\u0004\bJ\u0010\u001c\"\u0004\bK\u0010?R$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010<\u001a\u0004\bL\u0010\u001c\"\u0004\bM\u0010?R$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010N\u001a\u0004\bO\u0010%\"\u0004\bP\u0010QR$\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010B\u001a\u0004\bR\u0010\u001f\"\u0004\bS\u0010ER$\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010B\u001a\u0004\bT\u0010\u001f\"\u0004\bU\u0010ER$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010<\u001a\u0004\bV\u0010\u001c\"\u0004\bW\u0010?R$\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010<\u001a\u0004\bX\u0010\u001c\"\u0004\bY\u0010?R$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010<\u001a\u0004\bZ\u0010\u001c\"\u0004\b[\u0010?R$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010<\u001a\u0004\b\\\u0010\u001c\"\u0004\b]\u0010?R$\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010<\u001a\u0004\b^\u0010\u001c\"\u0004\b_\u0010?R$\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010<\u001a\u0004\b`\u0010\u001c\"\u0004\ba\u0010?R\"\u0010\u0015\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010b\u001a\u0004\bc\u0010/\"\u0004\bd\u0010eR$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010<\u001a\u0004\bf\u0010\u001c\"\u0004\bg\u0010?R\"\u0010\u0017\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010b\u001a\u0004\bh\u0010/\"\u0004\bi\u0010eR\"\u0010\u0018\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010b\u001a\u0004\bj\u0010/\"\u0004\bk\u0010eR\"\u0010l\u001a\u0002098\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bl\u0010m\u001a\u0004\bl\u0010n\"\u0004\bo\u0010p¨\u0006s"}, d2 = {"Lcom/transsion/baselib/db/audio/AudioBean;", "Ljava/io/Serializable;", "", "audioUrl", "cover", "", "duration", "size", "url", CampaignEx.JSON_KEY_TITLE, CampaignEx.JSON_KEY_DESC, "", "bitrate", "updateTimeStamp", "readProcess", "localPath", "ops", "resourceId", "postId", "subjectId", "groupId", NotificationCompat.CATEGORY_STATUS, "subjectTitle", "se", "ep", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V", "component1", "()Ljava/lang/String;", "component2", "component3", "()Ljava/lang/Long;", "component4", "component5", "component6", "component7", "component8", "()Ljava/lang/Integer;", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "()I", "component18", "component19", "component20", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lcom/transsion/baselib/db/audio/AudioBean;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getAudioUrl", "setAudioUrl", "(Ljava/lang/String;)V", "getCover", "setCover", "Ljava/lang/Long;", "getDuration", "setDuration", "(Ljava/lang/Long;)V", "getSize", "setSize", "getUrl", "setUrl", "getTitle", "setTitle", "getDesc", "setDesc", "Ljava/lang/Integer;", "getBitrate", "setBitrate", "(Ljava/lang/Integer;)V", "getUpdateTimeStamp", "setUpdateTimeStamp", "getReadProcess", "setReadProcess", "getLocalPath", "setLocalPath", "getOps", "setOps", "getResourceId", "setResourceId", "getPostId", "setPostId", "getSubjectId", "setSubjectId", "getGroupId", "setGroupId", "I", "getStatus", "setStatus", "(I)V", "getSubjectTitle", "setSubjectTitle", "getSe", "setSe", "getEp", "setEp", "isChangeToLocalPath", "Z", "()Z", "setChangeToLocalPath", "(Z)V", "Companion", "a", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AudioBean implements Serializable {
    public static final int STATUS_ERROR = 7;
    public static final int STATUS_FINISHED = 6;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_NO_OPEN = 1;
    public static final int STATUS_PAUSED = 4;
    public static final int STATUS_PLAYING = 3;
    private String audioUrl;
    private Integer bitrate;
    private String cover;
    private String desc;
    private Long duration;
    private int ep;
    private String groupId;
    private boolean isChangeToLocalPath;
    private String localPath;
    private String ops;
    private String postId;
    private Long readProcess;
    private String resourceId;
    private int se;
    private Long size;
    private int status;
    private String subjectId;
    private String subjectTitle;
    private String title;
    private Long updateTimeStamp;
    private String url;

    public AudioBean(String audioUrl, String str, Long l11, Long l12, String str2, String str3, String str4, Integer num, Long l13, Long l14, String str5, String str6, String str7, String str8, String str9, String str10, int i11, String str11, int i12, int i13) {
        Intrinsics.h(audioUrl, "audioUrl");
        this.audioUrl = audioUrl;
        this.cover = str;
        this.duration = l11;
        this.size = l12;
        this.url = str2;
        this.title = str3;
        this.desc = str4;
        this.bitrate = num;
        this.updateTimeStamp = l13;
        this.readProcess = l14;
        this.localPath = str5;
        this.ops = str6;
        this.resourceId = str7;
        this.postId = str8;
        this.subjectId = str9;
        this.groupId = str10;
        this.status = i11;
        this.subjectTitle = str11;
        this.se = i12;
        this.ep = i13;
    }

    public /* synthetic */ AudioBean(String str, String str2, Long l11, Long l12, String str3, String str4, String str5, Integer num, Long l13, Long l14, String str6, String str7, String str8, String str9, String str10, String str11, int i11, String str12, int i12, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, l11, l12, str3, str4, (i14 & 64) != 0 ? "" : str5, (i14 & 128) != 0 ? 0 : num, (i14 & 256) != 0 ? 0L : l13, (i14 & 512) != 0 ? 0L : l14, (i14 & 1024) != 0 ? "" : str6, (i14 & 2048) != 0 ? "" : str7, (i14 & 4096) != 0 ? "" : str8, (i14 & 8192) != 0 ? "" : str9, (i14 & 16384) != 0 ? "" : str10, (32768 & i14) != 0 ? "" : str11, (65536 & i14) != 0 ? 1 : i11, (131072 & i14) != 0 ? "" : str12, (262144 & i14) != 0 ? 0 : i12, (i14 & 524288) != 0 ? 0 : i13);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAudioUrl() {
        return this.audioUrl;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Long getReadProcess() {
        return this.readProcess;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getLocalPath() {
        return this.localPath;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getPostId() {
        return this.postId;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getGroupId() {
        return this.groupId;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final int getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getSubjectTitle() {
        return this.subjectTitle;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Long getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Long getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getBitrate() {
        return this.bitrate;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Long getUpdateTimeStamp() {
        return this.updateTimeStamp;
    }

    public final AudioBean copy(String audioUrl, String cover, Long duration, Long size, String url, String title, String desc, Integer bitrate, Long updateTimeStamp, Long readProcess, String localPath, String ops, String resourceId, String postId, String subjectId, String groupId, int status, String subjectTitle, int se2, int ep2) {
        Intrinsics.h(audioUrl, "audioUrl");
        return new AudioBean(audioUrl, cover, duration, size, url, title, desc, bitrate, updateTimeStamp, readProcess, localPath, ops, resourceId, postId, subjectId, groupId, status, subjectTitle, se2, ep2);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioBean)) {
            return false;
        }
        AudioBean audioBean = (AudioBean) other;
        return Intrinsics.c(this.audioUrl, audioBean.audioUrl) && Intrinsics.c(this.cover, audioBean.cover) && Intrinsics.c(this.duration, audioBean.duration) && Intrinsics.c(this.size, audioBean.size) && Intrinsics.c(this.url, audioBean.url) && Intrinsics.c(this.title, audioBean.title) && Intrinsics.c(this.desc, audioBean.desc) && Intrinsics.c(this.bitrate, audioBean.bitrate) && Intrinsics.c(this.updateTimeStamp, audioBean.updateTimeStamp) && Intrinsics.c(this.readProcess, audioBean.readProcess) && Intrinsics.c(this.localPath, audioBean.localPath) && Intrinsics.c(this.ops, audioBean.ops) && Intrinsics.c(this.resourceId, audioBean.resourceId) && Intrinsics.c(this.postId, audioBean.postId) && Intrinsics.c(this.subjectId, audioBean.subjectId) && Intrinsics.c(this.groupId, audioBean.groupId) && this.status == audioBean.status && Intrinsics.c(this.subjectTitle, audioBean.subjectTitle) && this.se == audioBean.se && this.ep == audioBean.ep;
    }

    public final String getAudioUrl() {
        return this.audioUrl;
    }

    public final Integer getBitrate() {
        return this.bitrate;
    }

    public final String getCover() {
        return this.cover;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final int getEp() {
        return this.ep;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final String getLocalPath() {
        return this.localPath;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final Long getReadProcess() {
        return this.readProcess;
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

    public final String getSubjectTitle() {
        return this.subjectTitle;
    }

    public final String getTitle() {
        return this.title;
    }

    public final Long getUpdateTimeStamp() {
        return this.updateTimeStamp;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int iHashCode = this.audioUrl.hashCode() * 31;
        String str = this.cover;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l11 = this.duration;
        int iHashCode3 = (iHashCode2 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.size;
        int iHashCode4 = (iHashCode3 + (l12 == null ? 0 : l12.hashCode())) * 31;
        String str2 = this.url;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.title;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.desc;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.bitrate;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        Long l13 = this.updateTimeStamp;
        int iHashCode9 = (iHashCode8 + (l13 == null ? 0 : l13.hashCode())) * 31;
        Long l14 = this.readProcess;
        int iHashCode10 = (iHashCode9 + (l14 == null ? 0 : l14.hashCode())) * 31;
        String str5 = this.localPath;
        int iHashCode11 = (iHashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.ops;
        int iHashCode12 = (iHashCode11 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.resourceId;
        int iHashCode13 = (iHashCode12 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.postId;
        int iHashCode14 = (iHashCode13 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.subjectId;
        int iHashCode15 = (iHashCode14 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.groupId;
        int iHashCode16 = (((iHashCode15 + (str10 == null ? 0 : str10.hashCode())) * 31) + this.status) * 31;
        String str11 = this.subjectTitle;
        return ((((iHashCode16 + (str11 != null ? str11.hashCode() : 0)) * 31) + this.se) * 31) + this.ep;
    }

    /* JADX INFO: renamed from: isChangeToLocalPath, reason: from getter */
    public final boolean getIsChangeToLocalPath() {
        return this.isChangeToLocalPath;
    }

    public final void setAudioUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.audioUrl = str;
    }

    public final void setBitrate(Integer num) {
        this.bitrate = num;
    }

    public final void setChangeToLocalPath(boolean z10) {
        this.isChangeToLocalPath = z10;
    }

    public final void setCover(String str) {
        this.cover = str;
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setDuration(Long l11) {
        this.duration = l11;
    }

    public final void setEp(int i11) {
        this.ep = i11;
    }

    public final void setGroupId(String str) {
        this.groupId = str;
    }

    public final void setLocalPath(String str) {
        this.localPath = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    public final void setReadProcess(Long l11) {
        this.readProcess = l11;
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

    public final void setStatus(int i11) {
        this.status = i11;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubjectTitle(String str) {
        this.subjectTitle = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUpdateTimeStamp(Long l11) {
        this.updateTimeStamp = l11;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "AudioBean(audioUrl=" + this.audioUrl + ", cover=" + this.cover + ", duration=" + this.duration + ", size=" + this.size + ", url=" + this.url + ", title=" + this.title + ", desc=" + this.desc + ", bitrate=" + this.bitrate + ", updateTimeStamp=" + this.updateTimeStamp + ", readProcess=" + this.readProcess + ", localPath=" + this.localPath + ", ops=" + this.ops + ", resourceId=" + this.resourceId + ", postId=" + this.postId + ", subjectId=" + this.subjectId + ", groupId=" + this.groupId + ", status=" + this.status + ", subjectTitle=" + this.subjectTitle + ", se=" + this.se + ", ep=" + this.ep + ")";
    }
}
