package com.transsion.lib_web.download_render.init;

import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001e"}, d2 = {"Lcom/transsion/lib_web/download_render/init/FileInfo;", "", "url", "", "size", "", "usedTime", "upgradeTime", "path", "<init>", "(Ljava/lang/String;JJJLjava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getSize", "()J", "getUsedTime", "getUpgradeTime", "getPath", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FileInfo {
    private final String path;
    private final long size;
    private final long upgradeTime;
    private final String url;
    private final long usedTime;

    public FileInfo(String url, long j11, long j12, long j13, String path) {
        Intrinsics.h(url, "url");
        Intrinsics.h(path, "path");
        this.url = url;
        this.size = j11;
        this.usedTime = j12;
        this.upgradeTime = j13;
        this.path = path;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getUsedTime() {
        return this.usedTime;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getUpgradeTime() {
        return this.upgradeTime;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    public final FileInfo copy(String url, long size, long usedTime, long upgradeTime, String path) {
        Intrinsics.h(url, "url");
        Intrinsics.h(path, "path");
        return new FileInfo(url, size, usedTime, upgradeTime, path);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FileInfo)) {
            return false;
        }
        FileInfo fileInfo = (FileInfo) other;
        return Intrinsics.c(this.url, fileInfo.url) && this.size == fileInfo.size && this.usedTime == fileInfo.usedTime && this.upgradeTime == fileInfo.upgradeTime && Intrinsics.c(this.path, fileInfo.path);
    }

    public final String getPath() {
        return this.path;
    }

    public final long getSize() {
        return this.size;
    }

    public final long getUpgradeTime() {
        return this.upgradeTime;
    }

    public final String getUrl() {
        return this.url;
    }

    public final long getUsedTime() {
        return this.usedTime;
    }

    public int hashCode() {
        return (((((((this.url.hashCode() * 31) + s.a(this.size)) * 31) + s.a(this.usedTime)) * 31) + s.a(this.upgradeTime)) * 31) + this.path.hashCode();
    }

    public String toString() {
        return "FileInfo(url=" + this.url + ", size=" + this.size + ", usedTime=" + this.usedTime + ", upgradeTime=" + this.upgradeTime + ", path=" + this.path + ")";
    }
}
