package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes3.dex */
public final class a3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a3 f24527b = new a3(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f24528a;

    public a3(boolean z10) {
        this.f24528a = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && a3.class == obj.getClass() && this.f24528a == ((a3) obj).f24528a;
    }

    public int hashCode() {
        return !this.f24528a ? 1 : 0;
    }
}
