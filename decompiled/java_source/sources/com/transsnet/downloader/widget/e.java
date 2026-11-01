package com.transsnet.downloader.widget;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f60197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f60198b;

    public e(String name, boolean z10) {
        Intrinsics.h(name, "name");
        this.f60197a = name;
        this.f60198b = z10;
    }

    public final String a() {
        return this.f60197a;
    }

    public final boolean b() {
        return this.f60198b;
    }

    public final void c(boolean z10) {
        this.f60198b = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.c(this.f60197a, eVar.f60197a) && this.f60198b == eVar.f60198b;
    }

    public int hashCode() {
        return (this.f60197a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f60198b);
    }

    public String toString() {
        return "DownloadGridTabBean(name=" + this.f60197a + ", isSelected=" + this.f60198b + ")";
    }
}
