package com.transsnet.downloader.viewmodel;

import com.transsion.baselib.db.download.DownloadBean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f60087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f60088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DownloadBean f60089c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f60090d;

    public b(int i11, String formatSize, DownloadBean downloadBean, boolean z10) {
        Intrinsics.h(formatSize, "formatSize");
        Intrinsics.h(downloadBean, "downloadBean");
        this.f60087a = i11;
        this.f60088b = formatSize;
        this.f60089c = downloadBean;
        this.f60090d = z10;
    }

    public final int a() {
        return this.f60087a;
    }

    public final DownloadBean b() {
        return this.f60089c;
    }

    public final String c() {
        return this.f60088b;
    }

    public final boolean d() {
        return this.f60090d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f60087a == bVar.f60087a && Intrinsics.c(this.f60088b, bVar.f60088b) && Intrinsics.c(this.f60089c, bVar.f60089c) && this.f60090d == bVar.f60090d;
    }

    public int hashCode() {
        return (((((this.f60087a * 31) + this.f60088b.hashCode()) * 31) + this.f60089c.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f60090d);
    }

    public String toString() {
        return "Download2ResultContent(count=" + this.f60087a + ", formatSize=" + this.f60088b + ", downloadBean=" + this.f60089c + ", isCancel=" + this.f60090d + ")";
    }
}
