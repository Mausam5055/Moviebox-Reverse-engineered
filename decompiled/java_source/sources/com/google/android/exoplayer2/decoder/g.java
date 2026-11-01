package com.google.android.exoplayer2.decoder;

import com.google.android.exoplayer2.o1;

/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f24889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o1 f24890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o1 f24891c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f24892d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f24893e;

    public g(String str, o1 o1Var, o1 o1Var2, int i11, int i12) {
        com.google.android.exoplayer2.util.a.a(i11 == 0 || i12 == 0);
        this.f24889a = com.google.android.exoplayer2.util.a.d(str);
        this.f24890b = (o1) com.google.android.exoplayer2.util.a.e(o1Var);
        this.f24891c = (o1) com.google.android.exoplayer2.util.a.e(o1Var2);
        this.f24892d = i11;
        this.f24893e = i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f24892d == gVar.f24892d && this.f24893e == gVar.f24893e && this.f24889a.equals(gVar.f24889a) && this.f24890b.equals(gVar.f24890b) && this.f24891c.equals(gVar.f24891c);
    }

    public int hashCode() {
        return ((((((((527 + this.f24892d) * 31) + this.f24893e) * 31) + this.f24889a.hashCode()) * 31) + this.f24890b.hashCode()) * 31) + this.f24891c.hashCode();
    }
}
