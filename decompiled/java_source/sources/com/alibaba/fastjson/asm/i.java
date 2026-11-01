package com.alibaba.fastjson.asm;

import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes2.dex */
public class i implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    i f18119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final c f18120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f18121c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f18122d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f18123e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f18124f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int[] f18125g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f18126h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f18127i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f18128j;

    public i(c cVar, int i11, String str, String str2, String str3, String[] strArr) {
        if (cVar.f18095q == null) {
            cVar.f18095q = this;
        } else {
            cVar.f18096r.f18119a = this;
        }
        cVar.f18096r = this;
        this.f18120b = cVar;
        this.f18121c = i11;
        this.f18122d = cVar.h(str);
        this.f18123e = cVar.h(str2);
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.f18124f = length;
        this.f18125g = new int[length];
        for (int i12 = 0; i12 < this.f18124f; i12++) {
            this.f18125g[i12] = cVar.b(strArr[i12]).f18101a;
        }
    }

    @Override // com.alibaba.fastjson.asm.h
    public void a(int i11, f fVar) {
        if ((fVar.f18110a & 2) != 0 && fVar.f18111b - this.f18126h.f18072b < -32768) {
            throw new UnsupportedOperationException();
        }
        this.f18126h.d(i11);
        a aVar = this.f18126h;
        fVar.b(this, aVar, aVar.f18072b - 1, i11 == 200);
    }

    @Override // com.alibaba.fastjson.asm.h
    public void b(int i11, String str, String str2, String str3) {
        this.f18126h.c(i11, this.f18120b.d(str, str2, str3).f18101a);
    }

    @Override // com.alibaba.fastjson.asm.h
    public void c(int i11, int i12) {
        if (i12 < 4 && i11 != 169) {
            this.f18126h.d((i11 < 54 ? ((i11 - 21) << 2) + 26 : ((i11 - 54) << 2) + 59) + i12);
        } else if (i12 >= 256) {
            this.f18126h.d(196).c(i11, i12);
        } else {
            this.f18126h.b(i11, i12);
        }
    }

    @Override // com.alibaba.fastjson.asm.h
    public void d(Object obj) {
        e eVarC = this.f18120b.c(obj);
        int i11 = eVarC.f18101a;
        int i12 = eVarC.f18102b;
        if (i12 == 5 || i12 == 6) {
            this.f18126h.c(20, i11);
        } else if (i11 >= 256) {
            this.f18126h.c(19, i11);
        } else {
            this.f18126h.b(18, i11);
        }
    }

    @Override // com.alibaba.fastjson.asm.h
    public void e(int i11, int i12) {
        this.f18126h.d(Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE).b(i11, i12);
    }

    @Override // com.alibaba.fastjson.asm.h
    public void f(int i11, String str) {
        this.f18126h.c(i11, this.f18120b.b(str).f18101a);
    }

    @Override // com.alibaba.fastjson.asm.h
    public void g(int i11, int i12) {
        this.f18126h.b(i11, i12);
    }

    @Override // com.alibaba.fastjson.asm.h
    public void h(int i11) {
        this.f18126h.d(i11);
    }

    @Override // com.alibaba.fastjson.asm.h
    public void i(int i11, int i12) {
        this.f18127i = i11;
        this.f18128j = i12;
    }

    @Override // com.alibaba.fastjson.asm.h
    public void j(int i11, String str, String str2, String str3) {
        boolean z10 = i11 == 185;
        e eVarE = this.f18120b.e(str, str2, str3, z10);
        int iB = eVarE.f18103c;
        if (!z10) {
            this.f18126h.c(i11, eVarE.f18101a);
            return;
        }
        if (iB == 0) {
            iB = j.b(str3);
            eVarE.f18103c = iB;
        }
        this.f18126h.c(185, eVarE.f18101a).b(iB >> 2, 0);
    }

    @Override // com.alibaba.fastjson.asm.h
    public void k() {
    }

    @Override // com.alibaba.fastjson.asm.h
    public void l(f fVar) {
        a aVar = this.f18126h;
        fVar.c(this, aVar.f18072b, aVar.f18071a);
    }

    final int m() {
        int i11;
        if (this.f18126h.f18072b > 0) {
            this.f18120b.h("Code");
            i11 = this.f18126h.f18072b + 26;
        } else {
            i11 = 8;
        }
        if (this.f18124f <= 0) {
            return i11;
        }
        this.f18120b.h("Exceptions");
        return i11 + (this.f18124f * 2) + 8;
    }

    final void n(a aVar) {
        aVar.g(this.f18121c & (-393217)).g(this.f18122d).g(this.f18123e);
        int i11 = this.f18126h.f18072b > 0 ? 1 : 0;
        if (this.f18124f > 0) {
            i11++;
        }
        aVar.g(i11);
        int i12 = this.f18126h.f18072b;
        if (i12 > 0) {
            aVar.g(this.f18120b.h("Code")).f(i12 + 12);
            aVar.g(this.f18127i).g(this.f18128j);
            a aVarF = aVar.f(this.f18126h.f18072b);
            a aVar2 = this.f18126h;
            aVarF.e(aVar2.f18071a, 0, aVar2.f18072b);
            aVar.g(0);
            aVar.g(0);
        }
        if (this.f18124f > 0) {
            aVar.g(this.f18120b.h("Exceptions")).f((this.f18124f * 2) + 2);
            aVar.g(this.f18124f);
            for (int i13 = 0; i13 < this.f18124f; i13++) {
                aVar.g(this.f18125g[i13]);
            }
        }
    }
}
