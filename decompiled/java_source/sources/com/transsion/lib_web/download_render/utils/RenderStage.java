package com.transsion.lib_web.download_render.utils;

import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b.\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0006HÆ\u0003J\t\u00101\u001a\u00020\bHÆ\u0003J\t\u00102\u001a\u00020\bHÆ\u0003J\t\u00103\u001a\u00020\bHÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\rHÆ\u0003J\t\u00106\u001a\u00020\rHÆ\u0003J\t\u00107\u001a\u00020\rHÆ\u0003Jm\u00108\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\rHÆ\u0001J\u0013\u00109\u001a\u00020\b2\b\u0010:\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010;\u001a\u00020<HÖ\u0001J\t\u0010=\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001d\"\u0004\b!\u0010\u001fR\u001a\u0010\n\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010\u001fR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0013\"\u0004\b%\u0010\u0015R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001a\u0010\u000e\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010'\"\u0004\b+\u0010)R\u001a\u0010\u000f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010'\"\u0004\b-\u0010)¨\u0006>"}, d2 = {"Lcom/transsion/lib_web/download_render/utils/RenderStage;", "", "url", "", EventConstants.KEY_SOURCE, "renderStartTime", "", "reported", "", "needReport", "renderWithDownload", NativeComponentConstants.KEY_COMPONENT_TYPE, "stage1", "Lcom/transsion/lib_web/download_render/utils/FileScoreData;", "stage2", "stage3", "<init>", "(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getSource", "setSource", "getRenderStartTime", "()J", "setRenderStartTime", "(J)V", "getReported", "()Z", "setReported", "(Z)V", "getNeedReport", "setNeedReport", "getRenderWithDownload", "setRenderWithDownload", "getType", "setType", "getStage1", "()Lcom/transsion/lib_web/download_render/utils/FileScoreData;", "setStage1", "(Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V", "getStage2", "setStage2", "getStage3", "setStage3", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RenderStage {
    private boolean needReport;
    private long renderStartTime;
    private boolean renderWithDownload;
    private boolean reported;
    private String source;
    private FileScoreData stage1;
    private FileScoreData stage2;
    private FileScoreData stage3;
    private String type;
    private String url;

    public RenderStage(String url, String source, long j11, boolean z10, boolean z11, boolean z12, String type, FileScoreData stage1, FileScoreData stage2, FileScoreData stage3) {
        Intrinsics.h(url, "url");
        Intrinsics.h(source, "source");
        Intrinsics.h(type, "type");
        Intrinsics.h(stage1, "stage1");
        Intrinsics.h(stage2, "stage2");
        Intrinsics.h(stage3, "stage3");
        this.url = url;
        this.source = source;
        this.renderStartTime = j11;
        this.reported = z10;
        this.needReport = z11;
        this.renderWithDownload = z12;
        this.type = type;
        this.stage1 = stage1;
        this.stage2 = stage2;
        this.stage3 = stage3;
    }

    public /* synthetic */ RenderStage(String str, String str2, long j11, boolean z10, boolean z11, boolean z12, String str3, FileScoreData fileScoreData, FileScoreData fileScoreData2, FileScoreData fileScoreData3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j11, (i11 & 8) != 0 ? false : z10, (i11 & 16) != 0 ? false : z11, (i11 & 32) != 0 ? false : z12, (i11 & 64) != 0 ? "" : str3, (i11 & 128) != 0 ? new FileScoreData(false, 0L, 0, 0, 0, 0, 0, 0, 0, 511, null) : fileScoreData, (i11 & 256) != 0 ? new FileScoreData(false, 0L, 0, 0, 0, 0, 0, 0, 0, 511, null) : fileScoreData2, (i11 & 512) != 0 ? new FileScoreData(false, 0L, 0, 0, 0, 0, 0, 0, 0, 511, null) : fileScoreData3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final FileScoreData getStage3() {
        return this.stage3;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSource() {
        return this.source;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getRenderStartTime() {
        return this.renderStartTime;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getReported() {
        return this.reported;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getNeedReport() {
        return this.needReport;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getRenderWithDownload() {
        return this.renderWithDownload;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final FileScoreData getStage1() {
        return this.stage1;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final FileScoreData getStage2() {
        return this.stage2;
    }

    public final RenderStage copy(String url, String source, long renderStartTime, boolean reported, boolean needReport, boolean renderWithDownload, String type, FileScoreData stage1, FileScoreData stage2, FileScoreData stage3) {
        Intrinsics.h(url, "url");
        Intrinsics.h(source, "source");
        Intrinsics.h(type, "type");
        Intrinsics.h(stage1, "stage1");
        Intrinsics.h(stage2, "stage2");
        Intrinsics.h(stage3, "stage3");
        return new RenderStage(url, source, renderStartTime, reported, needReport, renderWithDownload, type, stage1, stage2, stage3);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RenderStage)) {
            return false;
        }
        RenderStage renderStage = (RenderStage) other;
        return Intrinsics.c(this.url, renderStage.url) && Intrinsics.c(this.source, renderStage.source) && this.renderStartTime == renderStage.renderStartTime && this.reported == renderStage.reported && this.needReport == renderStage.needReport && this.renderWithDownload == renderStage.renderWithDownload && Intrinsics.c(this.type, renderStage.type) && Intrinsics.c(this.stage1, renderStage.stage1) && Intrinsics.c(this.stage2, renderStage.stage2) && Intrinsics.c(this.stage3, renderStage.stage3);
    }

    public final boolean getNeedReport() {
        return this.needReport;
    }

    public final long getRenderStartTime() {
        return this.renderStartTime;
    }

    public final boolean getRenderWithDownload() {
        return this.renderWithDownload;
    }

    public final boolean getReported() {
        return this.reported;
    }

    public final String getSource() {
        return this.source;
    }

    public final FileScoreData getStage1() {
        return this.stage1;
    }

    public final FileScoreData getStage2() {
        return this.stage2;
    }

    public final FileScoreData getStage3() {
        return this.stage3;
    }

    public final String getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (((((((((((((((((this.url.hashCode() * 31) + this.source.hashCode()) * 31) + s.a(this.renderStartTime)) * 31) + androidx.compose.foundation.e.a(this.reported)) * 31) + androidx.compose.foundation.e.a(this.needReport)) * 31) + androidx.compose.foundation.e.a(this.renderWithDownload)) * 31) + this.type.hashCode()) * 31) + this.stage1.hashCode()) * 31) + this.stage2.hashCode()) * 31) + this.stage3.hashCode();
    }

    public final void setNeedReport(boolean z10) {
        this.needReport = z10;
    }

    public final void setRenderStartTime(long j11) {
        this.renderStartTime = j11;
    }

    public final void setRenderWithDownload(boolean z10) {
        this.renderWithDownload = z10;
    }

    public final void setReported(boolean z10) {
        this.reported = z10;
    }

    public final void setSource(String str) {
        Intrinsics.h(str, "<set-?>");
        this.source = str;
    }

    public final void setStage1(FileScoreData fileScoreData) {
        Intrinsics.h(fileScoreData, "<set-?>");
        this.stage1 = fileScoreData;
    }

    public final void setStage2(FileScoreData fileScoreData) {
        Intrinsics.h(fileScoreData, "<set-?>");
        this.stage2 = fileScoreData;
    }

    public final void setStage3(FileScoreData fileScoreData) {
        Intrinsics.h(fileScoreData, "<set-?>");
        this.stage3 = fileScoreData;
    }

    public final void setType(String str) {
        Intrinsics.h(str, "<set-?>");
        this.type = str;
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }

    public String toString() {
        return "RenderStage(url=" + this.url + ", source=" + this.source + ", renderStartTime=" + this.renderStartTime + ", reported=" + this.reported + ", needReport=" + this.needReport + ", renderWithDownload=" + this.renderWithDownload + ", type=" + this.type + ", stage1=" + this.stage1 + ", stage2=" + this.stage2 + ", stage3=" + this.stage3 + ")";
    }
}
