package com.transsion.baselib.db.video;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.utils.PlayMode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\bg\b\u0087\b\u0018\u00002\u00020\u0001BÁ\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0019\u001a\u00020\t\u0012\u001c\b\u0003\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0015\u0012\b\b\u0002\u0010 \u001a\u00020\u0015\u0012\b\b\u0002\u0010!\u001a\u00020\u0015\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b#\u0010$J\t\u0010b\u001a\u00020\u0003HÆ\u0003J\t\u0010c\u001a\u00020\u0003HÆ\u0003J\t\u0010d\u001a\u00020\u0006HÆ\u0003J\t\u0010e\u001a\u00020\u0006HÆ\u0003J\t\u0010f\u001a\u00020\tHÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010k\u001a\u00020\tHÆ\u0003J\u000b\u0010l\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010m\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u00109J\u0010\u0010n\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u00109J\u000b\u0010o\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010p\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010BJ\t\u0010q\u001a\u00020\u0015HÆ\u0003J\t\u0010r\u001a\u00020\u0003HÆ\u0003J\u000b\u0010s\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010u\u001a\u00020\tHÆ\u0003J\u001d\u0010v\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u001cHÆ\u0003J\u0010\u0010w\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u00109J\u0010\u0010x\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u00109J\t\u0010y\u001a\u00020\u0015HÆ\u0003J\t\u0010z\u001a\u00020\u0015HÆ\u0003J\t\u0010{\u001a\u00020\u0015HÆ\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u0003HÆ\u0003JÌ\u0002\u0010}\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000e\u001a\u00020\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0019\u001a\u00020\t2\u001c\b\u0003\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u001f\u001a\u00020\u00152\b\b\u0002\u0010 \u001a\u00020\u00152\b\b\u0002\u0010!\u001a\u00020\u00152\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010~J\u0014\u0010\u007f\u001a\u00020\u00152\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010\u0081\u0001\u001a\u00020\u0006HÖ\u0001J\n\u0010\u0082\u0001\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010&R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b*\u0010)R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b/\u0010&R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u0010&R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b1\u0010&R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b2\u0010&R\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010,\"\u0004\b4\u0010.R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010&\"\u0004\b6\u00107R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010<\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010<\u001a\u0004\b=\u00109\"\u0004\b>\u0010;R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010&\"\u0004\b@\u00107R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010E\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u001a\u0010\u0016\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010&\"\u0004\bK\u00107R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010&\"\u0004\bM\u00107R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010&\"\u0004\bO\u00107R\u001a\u0010\u0019\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010,\"\u0004\bQ\u0010.R.\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\u001e\u0010\u001d\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010<\u001a\u0004\bV\u00109\"\u0004\bW\u0010;R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010<\u001a\u0004\bX\u00109\"\u0004\bY\u0010;R\u001a\u0010\u001f\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010G\"\u0004\b[\u0010IR\u001a\u0010 \u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010G\"\u0004\b]\u0010IR\u001a\u0010!\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010G\"\u0004\b_\u0010IR\u001c\u0010\"\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010&\"\u0004\ba\u00107¨\u0006\u0083\u0001"}, d2 = {"Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", "", "subjectId", "", "id", "ep", "", "se", NotificationCompat.CATEGORY_PROGRESS, "", CampaignEx.JSON_KEY_TITLE, "coverUrl", "thumbnail", "videoUrl", "timeStamp", "subtitleSelectId", "totalDuration", "subjectDurationSeconds", "averageHueLight", "subjectType", "hasDelete", "", "playMode", "downloadUrl", "downloadFilePath", "downloadSize", "dubs", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "lastAdStartTimeStamp", "lastAdEndTimeStamp", "rewardPlayed", "rewardUnlock", "rewardFree", "ops", "<init>", "(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V", "getSubjectId", "()Ljava/lang/String;", "getId", "getEp", "()I", "getSe", "getProgress", "()J", "setProgress", "(J)V", "getTitle", "getCoverUrl", "getThumbnail", "getVideoUrl", "getTimeStamp", "setTimeStamp", "getSubtitleSelectId", "setSubtitleSelectId", "(Ljava/lang/String;)V", "getTotalDuration", "()Ljava/lang/Long;", "setTotalDuration", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getSubjectDurationSeconds", "setSubjectDurationSeconds", "getAverageHueLight", "setAverageHueLight", "getSubjectType", "()Ljava/lang/Integer;", "setSubjectType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getHasDelete", "()Z", "setHasDelete", "(Z)V", "getPlayMode", "setPlayMode", "getDownloadUrl", "setDownloadUrl", "getDownloadFilePath", "setDownloadFilePath", "getDownloadSize", "setDownloadSize", "getDubs", "()Ljava/util/ArrayList;", "setDubs", "(Ljava/util/ArrayList;)V", "getLastAdStartTimeStamp", "setLastAdStartTimeStamp", "getLastAdEndTimeStamp", "setLastAdEndTimeStamp", "getRewardPlayed", "setRewardPlayed", "getRewardUnlock", "setRewardUnlock", "getRewardFree", "setRewardFree", "getOps", "setOps", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "copy", "(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VideoDetailPlayBean {
    private String averageHueLight;
    private final String coverUrl;
    private String downloadFilePath;
    private long downloadSize;
    private String downloadUrl;
    private ArrayList<String> dubs;
    private final int ep;
    private boolean hasDelete;
    private final String id;
    private Long lastAdEndTimeStamp;
    private Long lastAdStartTimeStamp;
    private String ops;
    private String playMode;
    private long progress;
    private boolean rewardFree;
    private boolean rewardPlayed;
    private boolean rewardUnlock;
    private final int se;
    private Long subjectDurationSeconds;
    private final String subjectId;
    private Integer subjectType;
    private String subtitleSelectId;
    private final String thumbnail;
    private long timeStamp;
    private final String title;
    private Long totalDuration;
    private final String videoUrl;

    public VideoDetailPlayBean(String subjectId, String id2, int i11, int i12, long j11, String str, String str2, String str3, String str4, long j12, String str5, Long l11, Long l12, String str6, Integer num, boolean z10, String playMode, String str7, String str8, long j13, ArrayList<String> arrayList, Long l13, Long l14, boolean z11, boolean z12, boolean z13, String str9) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(id2, "id");
        Intrinsics.h(playMode, "playMode");
        this.subjectId = subjectId;
        this.id = id2;
        this.ep = i11;
        this.se = i12;
        this.progress = j11;
        this.title = str;
        this.coverUrl = str2;
        this.thumbnail = str3;
        this.videoUrl = str4;
        this.timeStamp = j12;
        this.subtitleSelectId = str5;
        this.totalDuration = l11;
        this.subjectDurationSeconds = l12;
        this.averageHueLight = str6;
        this.subjectType = num;
        this.hasDelete = z10;
        this.playMode = playMode;
        this.downloadUrl = str7;
        this.downloadFilePath = str8;
        this.downloadSize = j13;
        this.dubs = arrayList;
        this.lastAdStartTimeStamp = l13;
        this.lastAdEndTimeStamp = l14;
        this.rewardPlayed = z11;
        this.rewardUnlock = z12;
        this.rewardFree = z13;
        this.ops = str9;
    }

    public /* synthetic */ VideoDetailPlayBean(String str, String str2, int i11, int i12, long j11, String str3, String str4, String str5, String str6, long j12, String str7, Long l11, Long l12, String str8, Integer num, boolean z10, String str9, String str10, String str11, long j13, ArrayList arrayList, Long l13, Long l14, boolean z11, boolean z12, boolean z13, String str12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12, (i13 & 16) != 0 ? 0L : j11, (i13 & 32) != 0 ? null : str3, (i13 & 64) != 0 ? null : str4, (i13 & 128) != 0 ? null : str5, (i13 & 256) != 0 ? null : str6, (i13 & 512) != 0 ? 0L : j12, (i13 & 1024) != 0 ? null : str7, (i13 & 2048) != 0 ? 0L : l11, (i13 & 4096) != 0 ? 0L : l12, (i13 & 8192) != 0 ? null : str8, (i13 & 16384) != 0 ? 1 : num, (32768 & i13) != 0 ? false : z10, (65536 & i13) != 0 ? PlayMode.STREAM.getValue() : str9, (131072 & i13) != 0 ? null : str10, (262144 & i13) != 0 ? null : str11, (524288 & i13) != 0 ? 0L : j13, (1048576 & i13) != 0 ? null : arrayList, (2097152 & i13) != 0 ? null : l13, (4194304 & i13) != 0 ? null : l14, (8388608 & i13) != 0 ? false : z11, (16777216 & i13) != 0 ? false : z12, (33554432 & i13) != 0 ? false : z13, (i13 & 67108864) != 0 ? null : str12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final long getTimeStamp() {
        return this.timeStamp;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getSubtitleSelectId() {
        return this.subtitleSelectId;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Long getTotalDuration() {
        return this.totalDuration;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Long getSubjectDurationSeconds() {
        return this.subjectDurationSeconds;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getAverageHueLight() {
        return this.averageHueLight;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final Integer getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final boolean getHasDelete() {
        return this.hasDelete;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getPlayMode() {
        return this.playMode;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getDownloadFilePath() {
        return this.downloadFilePath;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final long getDownloadSize() {
        return this.downloadSize;
    }

    public final ArrayList<String> component21() {
        return this.dubs;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final Long getLastAdStartTimeStamp() {
        return this.lastAdStartTimeStamp;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final Long getLastAdEndTimeStamp() {
        return this.lastAdEndTimeStamp;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final boolean getRewardPlayed() {
        return this.rewardPlayed;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final boolean getRewardUnlock() {
        return this.rewardUnlock;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final boolean getRewardFree() {
        return this.rewardFree;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getProgress() {
        return this.progress;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getThumbnail() {
        return this.thumbnail;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public final VideoDetailPlayBean copy(String subjectId, String id2, int ep2, int se2, long progress, String title, String coverUrl, String thumbnail, String videoUrl, long timeStamp, String subtitleSelectId, Long totalDuration, Long subjectDurationSeconds, String averageHueLight, Integer subjectType, boolean hasDelete, String playMode, String downloadUrl, String downloadFilePath, long downloadSize, ArrayList<String> dubs, Long lastAdStartTimeStamp, Long lastAdEndTimeStamp, boolean rewardPlayed, boolean rewardUnlock, boolean rewardFree, String ops) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(id2, "id");
        Intrinsics.h(playMode, "playMode");
        return new VideoDetailPlayBean(subjectId, id2, ep2, se2, progress, title, coverUrl, thumbnail, videoUrl, timeStamp, subtitleSelectId, totalDuration, subjectDurationSeconds, averageHueLight, subjectType, hasDelete, playMode, downloadUrl, downloadFilePath, downloadSize, dubs, lastAdStartTimeStamp, lastAdEndTimeStamp, rewardPlayed, rewardUnlock, rewardFree, ops);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VideoDetailPlayBean)) {
            return false;
        }
        VideoDetailPlayBean videoDetailPlayBean = (VideoDetailPlayBean) other;
        return Intrinsics.c(this.subjectId, videoDetailPlayBean.subjectId) && Intrinsics.c(this.id, videoDetailPlayBean.id) && this.ep == videoDetailPlayBean.ep && this.se == videoDetailPlayBean.se && this.progress == videoDetailPlayBean.progress && Intrinsics.c(this.title, videoDetailPlayBean.title) && Intrinsics.c(this.coverUrl, videoDetailPlayBean.coverUrl) && Intrinsics.c(this.thumbnail, videoDetailPlayBean.thumbnail) && Intrinsics.c(this.videoUrl, videoDetailPlayBean.videoUrl) && this.timeStamp == videoDetailPlayBean.timeStamp && Intrinsics.c(this.subtitleSelectId, videoDetailPlayBean.subtitleSelectId) && Intrinsics.c(this.totalDuration, videoDetailPlayBean.totalDuration) && Intrinsics.c(this.subjectDurationSeconds, videoDetailPlayBean.subjectDurationSeconds) && Intrinsics.c(this.averageHueLight, videoDetailPlayBean.averageHueLight) && Intrinsics.c(this.subjectType, videoDetailPlayBean.subjectType) && this.hasDelete == videoDetailPlayBean.hasDelete && Intrinsics.c(this.playMode, videoDetailPlayBean.playMode) && Intrinsics.c(this.downloadUrl, videoDetailPlayBean.downloadUrl) && Intrinsics.c(this.downloadFilePath, videoDetailPlayBean.downloadFilePath) && this.downloadSize == videoDetailPlayBean.downloadSize && Intrinsics.c(this.dubs, videoDetailPlayBean.dubs) && Intrinsics.c(this.lastAdStartTimeStamp, videoDetailPlayBean.lastAdStartTimeStamp) && Intrinsics.c(this.lastAdEndTimeStamp, videoDetailPlayBean.lastAdEndTimeStamp) && this.rewardPlayed == videoDetailPlayBean.rewardPlayed && this.rewardUnlock == videoDetailPlayBean.rewardUnlock && this.rewardFree == videoDetailPlayBean.rewardFree && Intrinsics.c(this.ops, videoDetailPlayBean.ops);
    }

    public final String getAverageHueLight() {
        return this.averageHueLight;
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final String getDownloadFilePath() {
        return this.downloadFilePath;
    }

    public final long getDownloadSize() {
        return this.downloadSize;
    }

    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    public final ArrayList<String> getDubs() {
        return this.dubs;
    }

    public final int getEp() {
        return this.ep;
    }

    public final boolean getHasDelete() {
        return this.hasDelete;
    }

    public final String getId() {
        return this.id;
    }

    public final Long getLastAdEndTimeStamp() {
        return this.lastAdEndTimeStamp;
    }

    public final Long getLastAdStartTimeStamp() {
        return this.lastAdStartTimeStamp;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getPlayMode() {
        return this.playMode;
    }

    public final long getProgress() {
        return this.progress;
    }

    public final boolean getRewardFree() {
        return this.rewardFree;
    }

    public final boolean getRewardPlayed() {
        return this.rewardPlayed;
    }

    public final boolean getRewardUnlock() {
        return this.rewardUnlock;
    }

    public final int getSe() {
        return this.se;
    }

    public final Long getSubjectDurationSeconds() {
        return this.subjectDurationSeconds;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final Integer getSubjectType() {
        return this.subjectType;
    }

    public final String getSubtitleSelectId() {
        return this.subtitleSelectId;
    }

    public final String getThumbnail() {
        return this.thumbnail;
    }

    public final long getTimeStamp() {
        return this.timeStamp;
    }

    public final String getTitle() {
        return this.title;
    }

    public final Long getTotalDuration() {
        return this.totalDuration;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.subjectId.hashCode() * 31) + this.id.hashCode()) * 31) + this.ep) * 31) + this.se) * 31) + androidx.collection.s.a(this.progress)) * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.coverUrl;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.thumbnail;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.videoUrl;
        int iHashCode5 = (((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31) + androidx.collection.s.a(this.timeStamp)) * 31;
        String str5 = this.subtitleSelectId;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Long l11 = this.totalDuration;
        int iHashCode7 = (iHashCode6 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.subjectDurationSeconds;
        int iHashCode8 = (iHashCode7 + (l12 == null ? 0 : l12.hashCode())) * 31;
        String str6 = this.averageHueLight;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num = this.subjectType;
        int iHashCode10 = (((((iHashCode9 + (num == null ? 0 : num.hashCode())) * 31) + androidx.compose.foundation.e.a(this.hasDelete)) * 31) + this.playMode.hashCode()) * 31;
        String str7 = this.downloadUrl;
        int iHashCode11 = (iHashCode10 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.downloadFilePath;
        int iHashCode12 = (((iHashCode11 + (str8 == null ? 0 : str8.hashCode())) * 31) + androidx.collection.s.a(this.downloadSize)) * 31;
        ArrayList<String> arrayList = this.dubs;
        int iHashCode13 = (iHashCode12 + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        Long l13 = this.lastAdStartTimeStamp;
        int iHashCode14 = (iHashCode13 + (l13 == null ? 0 : l13.hashCode())) * 31;
        Long l14 = this.lastAdEndTimeStamp;
        int iHashCode15 = (((((((iHashCode14 + (l14 == null ? 0 : l14.hashCode())) * 31) + androidx.compose.foundation.e.a(this.rewardPlayed)) * 31) + androidx.compose.foundation.e.a(this.rewardUnlock)) * 31) + androidx.compose.foundation.e.a(this.rewardFree)) * 31;
        String str9 = this.ops;
        return iHashCode15 + (str9 != null ? str9.hashCode() : 0);
    }

    public final void setAverageHueLight(String str) {
        this.averageHueLight = str;
    }

    public final void setDownloadFilePath(String str) {
        this.downloadFilePath = str;
    }

    public final void setDownloadSize(long j11) {
        this.downloadSize = j11;
    }

    public final void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public final void setDubs(ArrayList<String> arrayList) {
        this.dubs = arrayList;
    }

    public final void setHasDelete(boolean z10) {
        this.hasDelete = z10;
    }

    public final void setLastAdEndTimeStamp(Long l11) {
        this.lastAdEndTimeStamp = l11;
    }

    public final void setLastAdStartTimeStamp(Long l11) {
        this.lastAdStartTimeStamp = l11;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPlayMode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.playMode = str;
    }

    public final void setProgress(long j11) {
        this.progress = j11;
    }

    public final void setRewardFree(boolean z10) {
        this.rewardFree = z10;
    }

    public final void setRewardPlayed(boolean z10) {
        this.rewardPlayed = z10;
    }

    public final void setRewardUnlock(boolean z10) {
        this.rewardUnlock = z10;
    }

    public final void setSubjectDurationSeconds(Long l11) {
        this.subjectDurationSeconds = l11;
    }

    public final void setSubjectType(Integer num) {
        this.subjectType = num;
    }

    public final void setSubtitleSelectId(String str) {
        this.subtitleSelectId = str;
    }

    public final void setTimeStamp(long j11) {
        this.timeStamp = j11;
    }

    public final void setTotalDuration(Long l11) {
        this.totalDuration = l11;
    }

    public String toString() {
        return "VideoDetailPlayBean(subjectId=" + this.subjectId + ", id=" + this.id + ", ep=" + this.ep + ", se=" + this.se + ", progress=" + this.progress + ", title=" + this.title + ", coverUrl=" + this.coverUrl + ", thumbnail=" + this.thumbnail + ", videoUrl=" + this.videoUrl + ", timeStamp=" + this.timeStamp + ", subtitleSelectId=" + this.subtitleSelectId + ", totalDuration=" + this.totalDuration + ", subjectDurationSeconds=" + this.subjectDurationSeconds + ", averageHueLight=" + this.averageHueLight + ", subjectType=" + this.subjectType + ", hasDelete=" + this.hasDelete + ", playMode=" + this.playMode + ", downloadUrl=" + this.downloadUrl + ", downloadFilePath=" + this.downloadFilePath + ", downloadSize=" + this.downloadSize + ", dubs=" + this.dubs + ", lastAdStartTimeStamp=" + this.lastAdStartTimeStamp + ", lastAdEndTimeStamp=" + this.lastAdEndTimeStamp + ", rewardPlayed=" + this.rewardPlayed + ", rewardUnlock=" + this.rewardUnlock + ", rewardFree=" + this.rewardFree + ", ops=" + this.ops + ")";
    }
}
