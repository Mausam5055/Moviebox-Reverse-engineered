package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final byte[] f38464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f38465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f38466c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f38467d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f38468e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    o f38469f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    o f38470g;

    o() {
        this.f38464a = new byte[8192];
        this.f38468e = true;
        this.f38467d = false;
    }

    o(byte[] bArr, int i11, int i12, boolean z10, boolean z11) {
        this.f38464a = bArr;
        this.f38465b = i11;
        this.f38466c = i12;
        this.f38467d = z10;
        this.f38468e = z11;
    }

    public final o a(int i11) {
        o oVarA;
        if (i11 <= 0 || i11 > this.f38466c - this.f38465b) {
            throw new IllegalArgumentException();
        }
        if (i11 >= 1024) {
            oVarA = c();
        } else {
            oVarA = p.a();
            System.arraycopy(this.f38464a, this.f38465b, oVarA.f38464a, 0, i11);
        }
        oVarA.f38466c = oVarA.f38465b + i11;
        this.f38465b += i11;
        this.f38470g.a(oVarA);
        return oVarA;
    }

    public final o a(o oVar) {
        oVar.f38470g = this;
        oVar.f38469f = this.f38469f;
        this.f38469f.f38470g = oVar;
        this.f38469f = oVar;
        return oVar;
    }

    public final void a() {
        o oVar = this.f38470g;
        if (oVar == this) {
            throw new IllegalStateException();
        }
        if (oVar.f38468e) {
            int i11 = this.f38466c - this.f38465b;
            if (i11 > (8192 - oVar.f38466c) + (oVar.f38467d ? 0 : oVar.f38465b)) {
                return;
            }
            a(oVar, i11);
            b();
            p.a(this);
        }
    }

    public final void a(o oVar, int i11) {
        if (!oVar.f38468e) {
            throw new IllegalArgumentException();
        }
        int i12 = oVar.f38466c;
        int i13 = i12 + i11;
        if (i13 > 8192) {
            if (oVar.f38467d) {
                throw new IllegalArgumentException();
            }
            int i14 = oVar.f38465b;
            if (i13 - i14 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = oVar.f38464a;
            System.arraycopy(bArr, i14, bArr, 0, i12 - i14);
            oVar.f38466c -= oVar.f38465b;
            oVar.f38465b = 0;
        }
        System.arraycopy(this.f38464a, this.f38465b, oVar.f38464a, oVar.f38466c, i11);
        oVar.f38466c += i11;
        this.f38465b += i11;
    }

    @Nullable
    public final o b() {
        o oVar = this.f38469f;
        o oVar2 = oVar != this ? oVar : null;
        o oVar3 = this.f38470g;
        oVar3.f38469f = oVar;
        this.f38469f.f38470g = oVar3;
        this.f38469f = null;
        this.f38470g = null;
        return oVar2;
    }

    final o c() {
        this.f38467d = true;
        return new o(this.f38464a, this.f38465b, this.f38466c, true, false);
    }
}
