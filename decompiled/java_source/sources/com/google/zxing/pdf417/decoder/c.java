package com.google.zxing.pdf417.decoder;

import com.google.zxing.NotFoundException;
import com.google.zxing.k;

/* JADX INFO: loaded from: classes4.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final id.b f32958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k f32959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f32960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k f32961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f32962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f32963f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f32964g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f32965h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f32966i;

    c(c cVar) {
        this.f32958a = cVar.f32958a;
        this.f32959b = cVar.f32959b;
        this.f32960c = cVar.f32960c;
        this.f32961d = cVar.f32961d;
        this.f32962e = cVar.f32962e;
        this.f32963f = cVar.f32963f;
        this.f32964g = cVar.f32964g;
        this.f32965h = cVar.f32965h;
        this.f32966i = cVar.f32966i;
    }

    c(id.b bVar, k kVar, k kVar2, k kVar3, k kVar4) throws NotFoundException {
        boolean z10 = kVar == null || kVar2 == null;
        boolean z11 = kVar3 == null || kVar4 == null;
        if (z10 && z11) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (z10) {
            kVar = new k(0.0f, kVar3.d());
            kVar2 = new k(0.0f, kVar4.d());
        } else if (z11) {
            kVar3 = new k(bVar.n() - 1, kVar.d());
            kVar4 = new k(bVar.n() - 1, kVar2.d());
        }
        this.f32958a = bVar;
        this.f32959b = kVar;
        this.f32960c = kVar2;
        this.f32961d = kVar3;
        this.f32962e = kVar4;
        this.f32963f = (int) Math.min(kVar.c(), kVar2.c());
        this.f32964g = (int) Math.max(kVar3.c(), kVar4.c());
        this.f32965h = (int) Math.min(kVar.d(), kVar3.d());
        this.f32966i = (int) Math.max(kVar2.d(), kVar4.d());
    }

    static c j(c cVar, c cVar2) {
        if (cVar == null) {
            return cVar2;
        }
        return cVar2 == null ? cVar : new c(cVar.f32958a, cVar.f32959b, cVar.f32960c, cVar2.f32961d, cVar2.f32962e);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0030  */
    /* JADX WARN: Code duplicated, block: B:19:0x0033  */
    /* JADX WARN: Code duplicated, block: B:22:0x0043  */
    /* JADX WARN: Code duplicated, block: B:25:0x0057  */
    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    /* JADX WARN: Code duplicated, block: B:28:0x005d  */
    c a(int i11, int i12, boolean z10) {
        k kVar;
        k kVar2;
        k kVar3;
        k kVar4;
        k kVar5;
        int iD;
        k kVar6;
        k kVar7 = this.f32959b;
        k kVar8 = this.f32960c;
        k kVar9 = this.f32961d;
        k kVar10 = this.f32962e;
        if (i11 > 0) {
            k kVar11 = z10 ? kVar7 : kVar9;
            int iD2 = ((int) kVar11.d()) - i11;
            if (iD2 < 0) {
                iD2 = 0;
            }
            k kVar12 = new k(kVar11.c(), iD2);
            if (z10) {
                kVar = kVar12;
            } else {
                kVar2 = kVar12;
                kVar = kVar7;
            }
            if (i12 > 0) {
                if (z10) {
                    kVar5 = this.f32960c;
                } else {
                    kVar5 = this.f32962e;
                }
                iD = ((int) kVar5.d()) + i12;
                if (iD >= this.f32958a.k()) {
                    iD = this.f32958a.k() - 1;
                }
                kVar6 = new k(kVar5.c(), iD);
                if (z10) {
                    kVar3 = kVar6;
                } else {
                    kVar4 = kVar6;
                    kVar3 = kVar8;
                }
                return new c(this.f32958a, kVar, kVar3, kVar2, kVar4);
            }
            kVar3 = kVar8;
            kVar4 = kVar10;
            return new c(this.f32958a, kVar, kVar3, kVar2, kVar4);
        }
        kVar = kVar7;
        kVar2 = kVar9;
        if (i12 > 0) {
            if (z10) {
                kVar5 = this.f32960c;
            } else {
                kVar5 = this.f32962e;
            }
            iD = ((int) kVar5.d()) + i12;
            if (iD >= this.f32958a.k()) {
                iD = this.f32958a.k() - 1;
            }
            kVar6 = new k(kVar5.c(), iD);
            if (z10) {
                kVar3 = kVar6;
            } else {
                kVar4 = kVar6;
                kVar3 = kVar8;
            }
            return new c(this.f32958a, kVar, kVar3, kVar2, kVar4);
        }
        kVar3 = kVar8;
        kVar4 = kVar10;
        return new c(this.f32958a, kVar, kVar3, kVar2, kVar4);
    }

    k b() {
        return this.f32960c;
    }

    k c() {
        return this.f32962e;
    }

    int d() {
        return this.f32964g;
    }

    int e() {
        return this.f32966i;
    }

    int f() {
        return this.f32963f;
    }

    int g() {
        return this.f32965h;
    }

    k h() {
        return this.f32959b;
    }

    k i() {
        return this.f32961d;
    }
}
