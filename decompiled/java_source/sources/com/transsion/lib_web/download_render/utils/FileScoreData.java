package com.transsion.lib_web.download_render.utils;

import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b.\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0005HÆ\u0003J\t\u0010*\u001a\u00020\u0007HÆ\u0003J\t\u0010+\u001a\u00020\u0007HÆ\u0003J\t\u0010,\u001a\u00020\u0007HÆ\u0003J\t\u0010-\u001a\u00020\u0007HÆ\u0003J\t\u0010.\u001a\u00020\u0007HÆ\u0003J\t\u0010/\u001a\u00020\u0007HÆ\u0003J\t\u00100\u001a\u00020\u0007HÆ\u0003Jc\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\u00072\b\b\u0002\u0010\r\u001a\u00020\u0007HÆ\u0001J\u0013\u00102\u001a\u00020\u00032\b\u00103\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00104\u001a\u00020\u0007HÖ\u0001J\t\u00105\u001a\u000206HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0019\"\u0004\b\u001d\u0010\u001bR\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0019\"\u0004\b\u001f\u0010\u001bR\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0019\"\u0004\b!\u0010\u001bR\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0019\"\u0004\b#\u0010\u001bR\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0019\"\u0004\b%\u0010\u001bR\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010\u001b¨\u00067"}, d2 = {"Lcom/transsion/lib_web/download_render/utils/FileScoreData;", "", "stageFinished", "", "renderTime", "", "score", "", "fileDataNull", "fileOperateStatusAbort", "fileUnExist", "exception", "versionUnSame", "htmlFromRemote", "<init>", "(ZJIIIIIII)V", "getStageFinished", "()Z", "setStageFinished", "(Z)V", "getRenderTime", "()J", "setRenderTime", "(J)V", "getScore", "()I", "setScore", "(I)V", "getFileDataNull", "setFileDataNull", "getFileOperateStatusAbort", "setFileOperateStatusAbort", "getFileUnExist", "setFileUnExist", "getException", "setException", "getVersionUnSame", "setVersionUnSame", "getHtmlFromRemote", "setHtmlFromRemote", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FileScoreData {
    private int exception;
    private int fileDataNull;
    private int fileOperateStatusAbort;
    private int fileUnExist;
    private int htmlFromRemote;
    private long renderTime;
    private int score;
    private boolean stageFinished;
    private int versionUnSame;

    public FileScoreData() {
        this(false, 0L, 0, 0, 0, 0, 0, 0, 0, 511, null);
    }

    public FileScoreData(boolean z10, long j11, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        this.stageFinished = z10;
        this.renderTime = j11;
        this.score = i11;
        this.fileDataNull = i12;
        this.fileOperateStatusAbort = i13;
        this.fileUnExist = i14;
        this.exception = i15;
        this.versionUnSame = i16;
        this.htmlFromRemote = i17;
    }

    public /* synthetic */ FileScoreData(boolean z10, long j11, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, DefaultConstructorMarker defaultConstructorMarker) {
        this((i18 & 1) != 0 ? false : z10, (i18 & 2) != 0 ? 0L : j11, (i18 & 4) != 0 ? 0 : i11, (i18 & 8) != 0 ? 0 : i12, (i18 & 16) != 0 ? 0 : i13, (i18 & 32) != 0 ? 0 : i14, (i18 & 64) != 0 ? 0 : i15, (i18 & 128) != 0 ? 0 : i16, (i18 & 256) == 0 ? i17 : 0);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getStageFinished() {
        return this.stageFinished;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getRenderTime() {
        return this.renderTime;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getScore() {
        return this.score;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getFileDataNull() {
        return this.fileDataNull;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getFileOperateStatusAbort() {
        return this.fileOperateStatusAbort;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getFileUnExist() {
        return this.fileUnExist;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getException() {
        return this.exception;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getVersionUnSame() {
        return this.versionUnSame;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final int getHtmlFromRemote() {
        return this.htmlFromRemote;
    }

    public final FileScoreData copy(boolean stageFinished, long renderTime, int score, int fileDataNull, int fileOperateStatusAbort, int fileUnExist, int exception, int versionUnSame, int htmlFromRemote) {
        return new FileScoreData(stageFinished, renderTime, score, fileDataNull, fileOperateStatusAbort, fileUnExist, exception, versionUnSame, htmlFromRemote);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FileScoreData)) {
            return false;
        }
        FileScoreData fileScoreData = (FileScoreData) other;
        return this.stageFinished == fileScoreData.stageFinished && this.renderTime == fileScoreData.renderTime && this.score == fileScoreData.score && this.fileDataNull == fileScoreData.fileDataNull && this.fileOperateStatusAbort == fileScoreData.fileOperateStatusAbort && this.fileUnExist == fileScoreData.fileUnExist && this.exception == fileScoreData.exception && this.versionUnSame == fileScoreData.versionUnSame && this.htmlFromRemote == fileScoreData.htmlFromRemote;
    }

    public final int getException() {
        return this.exception;
    }

    public final int getFileDataNull() {
        return this.fileDataNull;
    }

    public final int getFileOperateStatusAbort() {
        return this.fileOperateStatusAbort;
    }

    public final int getFileUnExist() {
        return this.fileUnExist;
    }

    public final int getHtmlFromRemote() {
        return this.htmlFromRemote;
    }

    public final long getRenderTime() {
        return this.renderTime;
    }

    public final int getScore() {
        return this.score;
    }

    public final boolean getStageFinished() {
        return this.stageFinished;
    }

    public final int getVersionUnSame() {
        return this.versionUnSame;
    }

    public int hashCode() {
        return (((((((((((((((androidx.compose.foundation.e.a(this.stageFinished) * 31) + s.a(this.renderTime)) * 31) + this.score) * 31) + this.fileDataNull) * 31) + this.fileOperateStatusAbort) * 31) + this.fileUnExist) * 31) + this.exception) * 31) + this.versionUnSame) * 31) + this.htmlFromRemote;
    }

    public final void setException(int i11) {
        this.exception = i11;
    }

    public final void setFileDataNull(int i11) {
        this.fileDataNull = i11;
    }

    public final void setFileOperateStatusAbort(int i11) {
        this.fileOperateStatusAbort = i11;
    }

    public final void setFileUnExist(int i11) {
        this.fileUnExist = i11;
    }

    public final void setHtmlFromRemote(int i11) {
        this.htmlFromRemote = i11;
    }

    public final void setRenderTime(long j11) {
        this.renderTime = j11;
    }

    public final void setScore(int i11) {
        this.score = i11;
    }

    public final void setStageFinished(boolean z10) {
        this.stageFinished = z10;
    }

    public final void setVersionUnSame(int i11) {
        this.versionUnSame = i11;
    }

    public String toString() {
        return "FileScoreData(stageFinished=" + this.stageFinished + ", renderTime=" + this.renderTime + ", score=" + this.score + ", fileDataNull=" + this.fileDataNull + ", fileOperateStatusAbort=" + this.fileOperateStatusAbort + ", fileUnExist=" + this.fileUnExist + ", exception=" + this.exception + ", versionUnSame=" + this.versionUnSame + ", htmlFromRemote=" + this.htmlFromRemote + ")";
    }
}
