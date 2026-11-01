package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import ao.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.player.p007enum.PlayMimeType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import pv.a;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0017\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J(\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u001cHÖ\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010!\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u001fHÖ\u0003¢\u0006\u0004\b!\u0010\"R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010#\u001a\u0004\b$\u0010\u0014R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010%\u001a\u0004\b&\u0010\u0016R\"\u0010'\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010\u001e\"\u0004\b*\u0010+R\"\u0010,\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010(\u001a\u0004\b-\u0010\u001e\"\u0004\b.\u0010+R\"\u0010/\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b/\u0010\u000f\"\u0004\b1\u00102R*\u00104\u001a\u00020\r2\u0006\u00103\u001a\u00020\r8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00100\u001a\u0004\b4\u0010\u000f\"\u0004\b5\u00102¨\u00066"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "Ljava/io/Serializable;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "ugcVideo", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;", "playInfo", "<init>", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;", "info", "Lcom/transsion/player/enum/PlayMimeType;", "getFormat", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;)Lcom/transsion/player/enum/PlayMimeType;", "", "isDataComplete", "()Z", "Lao/e;", "toMediaSource", "()Lao/e;", "component1", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "component2", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;", "copy", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "getUgcVideo", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;", "getPlayInfo", "lockStatus", "I", "getLockStatus", "setLockStatus", "(I)V", "downloadStatus", "getDownloadStatus", "setDownloadStatus", "isCollectionList", "Z", "setCollectionList", "(Z)V", AppMeasurementSdk.ConditionalUserProperty.VALUE, "isFree", "setFree", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCImmVideo implements Serializable {
    private boolean isCollectionList;
    private boolean isFree;
    private final UGCVideoPlayInfo playInfo;
    private final UGCVideo ugcVideo;
    private transient int lockStatus = 1;
    private transient int downloadStatus = -1;

    public UGCImmVideo(UGCVideo uGCVideo, UGCVideoPlayInfo uGCVideoPlayInfo) {
        this.ugcVideo = uGCVideo;
        this.playInfo = uGCVideoPlayInfo;
    }

    public static /* synthetic */ UGCImmVideo copy$default(UGCImmVideo uGCImmVideo, UGCVideo uGCVideo, UGCVideoPlayInfo uGCVideoPlayInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            uGCVideo = uGCImmVideo.ugcVideo;
        }
        if ((i11 & 2) != 0) {
            uGCVideoPlayInfo = uGCImmVideo.playInfo;
        }
        return uGCImmVideo.copy(uGCVideo, uGCVideoPlayInfo);
    }

    private final PlayMimeType getFormat(UGCVideoPlayStream info) {
        String format = info.getFormat();
        if (Intrinsics.c(format, "DASH")) {
            return PlayMimeType.DASH;
        }
        return Intrinsics.c(format, "HLS") ? PlayMimeType.HLS : PlayMimeType.DEFAULT;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final UGCVideo getUgcVideo() {
        return this.ugcVideo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final UGCVideoPlayInfo getPlayInfo() {
        return this.playInfo;
    }

    public final UGCImmVideo copy(UGCVideo ugcVideo, UGCVideoPlayInfo playInfo) {
        return new UGCImmVideo(ugcVideo, playInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCImmVideo)) {
            return false;
        }
        UGCImmVideo uGCImmVideo = (UGCImmVideo) other;
        return Intrinsics.c(this.ugcVideo, uGCImmVideo.ugcVideo) && Intrinsics.c(this.playInfo, uGCImmVideo.playInfo);
    }

    public final int getDownloadStatus() {
        return this.downloadStatus;
    }

    public final int getLockStatus() {
        return this.lockStatus;
    }

    public final UGCVideoPlayInfo getPlayInfo() {
        return this.playInfo;
    }

    public final UGCVideo getUgcVideo() {
        return this.ugcVideo;
    }

    public int hashCode() {
        UGCVideo uGCVideo = this.ugcVideo;
        int iHashCode = (uGCVideo == null ? 0 : uGCVideo.hashCode()) * 31;
        UGCVideoPlayInfo uGCVideoPlayInfo = this.playInfo;
        return iHashCode + (uGCVideoPlayInfo != null ? uGCVideoPlayInfo.hashCode() : 0);
    }

    /* JADX INFO: renamed from: isCollectionList, reason: from getter */
    public final boolean getIsCollectionList() {
        return this.isCollectionList;
    }

    public final boolean isDataComplete() {
        return this.playInfo != null;
    }

    public final boolean isFree() {
        return this.lockStatus == 1;
    }

    public final void setCollectionList(boolean z10) {
        this.isCollectionList = z10;
    }

    public final void setDownloadStatus(int i11) {
        this.downloadStatus = i11;
    }

    public final void setFree(boolean z10) {
        this.isFree = z10;
        this.lockStatus = 1;
    }

    public final void setLockStatus(int i11) {
        this.lockStatus = i11;
    }

    public final e toMediaSource() {
        LinkedHashMap linkedHashMap;
        String signCookie;
        UGCVideoPlayStream uGCVideoPlayStreamA = a.f72500a.a(this.playInfo);
        e eVar = null;
        String url = uGCVideoPlayStreamA != null ? uGCVideoPlayStreamA.getUrl() : null;
        if (uGCVideoPlayStreamA == null || (signCookie = uGCVideoPlayStreamA.getSignCookie()) == null || signCookie.length() <= 0) {
            linkedHashMap = null;
        } else {
            linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("cookie", uGCVideoPlayStreamA.getSignCookie());
        }
        if (url != null && url.length() != 0) {
            UGCVideo uGCVideo = this.ugcVideo;
            eVar = new e(url, url, uGCVideo != null ? uGCVideo.videoUGCPosition() : 0, null, null, 24, null);
            eVar.u(getFormat(uGCVideoPlayStreamA));
            eVar.q(linkedHashMap);
        }
        return eVar;
    }

    public String toString() {
        return "UGCImmVideo(ugcVideo=" + this.ugcVideo + ", playInfo=" + this.playInfo + ")";
    }
}
