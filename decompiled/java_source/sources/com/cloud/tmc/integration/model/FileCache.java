package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u001a\b\u0002\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\bJ\u001b\u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003HÆ\u0003J\u0015\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J;\u0010\u000e\u001a\u00020\u00002\u001a\b\u0002\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00032\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0004HÖ\u0001R#\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/cloud/tmc/integration/model/FileCache;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "fileCache", "Ljava/util/WeakHashMap;", "", "Ljava/lang/ref/WeakReference;", "Ljava/io/File;", "flags", "(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;)V", "getFileCache", "()Ljava/util/WeakHashMap;", "getFlags", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FileCache extends BaseBean {
    private final WeakHashMap<String, WeakReference<File>> fileCache;
    private final WeakHashMap<String, String> flags;

    /* JADX WARN: Multi-variable type inference failed */
    public FileCache() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public FileCache(WeakHashMap<String, WeakReference<File>> fileCache, WeakHashMap<String, String> flags) {
        Intrinsics.h(fileCache, "fileCache");
        Intrinsics.h(flags, "flags");
        this.fileCache = fileCache;
        this.flags = flags;
    }

    public /* synthetic */ FileCache(WeakHashMap weakHashMap, WeakHashMap weakHashMap2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new WeakHashMap() : weakHashMap, (i11 & 2) != 0 ? new WeakHashMap() : weakHashMap2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FileCache copy$default(FileCache fileCache, WeakHashMap weakHashMap, WeakHashMap weakHashMap2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            weakHashMap = fileCache.fileCache;
        }
        if ((i11 & 2) != 0) {
            weakHashMap2 = fileCache.flags;
        }
        return fileCache.copy(weakHashMap, weakHashMap2);
    }

    public final WeakHashMap<String, WeakReference<File>> component1() {
        return this.fileCache;
    }

    public final WeakHashMap<String, String> component2() {
        return this.flags;
    }

    public final FileCache copy(WeakHashMap<String, WeakReference<File>> fileCache, WeakHashMap<String, String> flags) {
        Intrinsics.h(fileCache, "fileCache");
        Intrinsics.h(flags, "flags");
        return new FileCache(fileCache, flags);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FileCache)) {
            return false;
        }
        FileCache fileCache = (FileCache) other;
        return Intrinsics.c(this.fileCache, fileCache.fileCache) && Intrinsics.c(this.flags, fileCache.flags);
    }

    public final WeakHashMap<String, WeakReference<File>> getFileCache() {
        return this.fileCache;
    }

    public final WeakHashMap<String, String> getFlags() {
        return this.flags;
    }

    public int hashCode() {
        return (this.fileCache.hashCode() * 31) + this.flags.hashCode();
    }

    public String toString() {
        return "FileCache(fileCache=" + this.fileCache + ", flags=" + this.flags + ")";
    }
}
