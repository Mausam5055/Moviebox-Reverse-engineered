package com.transsion.player.shorttv.preload;

import androidx.collection.s;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f48518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f48519b;

    public c(boolean z10, long j11) {
        this.f48518a = z10;
        this.f48519b = j11;
    }

    public final boolean a() {
        return this.f48518a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f48518a == cVar.f48518a && this.f48519b == cVar.f48519b;
    }

    public int hashCode() {
        return (androidx.compose.foundation.e.a(this.f48518a) * 31) + s.a(this.f48519b);
    }

    public String toString() {
        return "VideoPreloadConfig(enable=" + this.f48518a + ", cacheByte=" + this.f48519b + ")";
    }
}
