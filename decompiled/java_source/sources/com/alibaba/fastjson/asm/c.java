package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f18079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f18080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final a f18081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    e[] f18082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f18083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final e f18084f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final e f18085g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final e f18086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f18087i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f18088j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f18089k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f18090l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f18091m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int[] f18092n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    d f18093o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    d f18094p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    i f18095q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    i f18096r;

    public c() {
        this(0);
    }

    private c(int i11) {
        this.f18080b = 1;
        this.f18081c = new a();
        e[] eVarArr = new e[256];
        this.f18082d = eVarArr;
        this.f18083e = (int) (((double) eVarArr.length) * 0.75d);
        this.f18084f = new e();
        this.f18085g = new e();
        this.f18086h = new e();
    }

    private e a(e eVar) {
        e[] eVarArr = this.f18082d;
        e eVar2 = eVarArr[eVar.f18108h % eVarArr.length];
        while (eVar2 != null && (eVar2.f18102b != eVar.f18102b || !eVar.a(eVar2))) {
            eVar2 = eVar2.f18109i;
        }
        return eVar2;
    }

    private e g(String str) {
        this.f18085g.c(8, str, null, null);
        e eVarA = a(this.f18085g);
        if (eVarA != null) {
            return eVarA;
        }
        this.f18081c.c(8, h(str));
        int i11 = this.f18080b;
        this.f18080b = i11 + 1;
        e eVar = new e(i11, this.f18085g);
        i(eVar);
        return eVar;
    }

    private void i(e eVar) {
        if (this.f18080b > this.f18083e) {
            int length = this.f18082d.length;
            int i11 = (length * 2) + 1;
            e[] eVarArr = new e[i11];
            for (int i12 = length - 1; i12 >= 0; i12--) {
                e eVar2 = this.f18082d[i12];
                while (eVar2 != null) {
                    int i13 = eVar2.f18108h % i11;
                    e eVar3 = eVar2.f18109i;
                    eVar2.f18109i = eVarArr[i13];
                    eVarArr[i13] = eVar2;
                    eVar2 = eVar3;
                }
            }
            this.f18082d = eVarArr;
            this.f18083e = (int) (((double) i11) * 0.75d);
        }
        int i14 = eVar.f18108h;
        e[] eVarArr2 = this.f18082d;
        int length2 = i14 % eVarArr2.length;
        eVar.f18109i = eVarArr2[length2];
        eVarArr2[length2] = eVar;
    }

    public e b(String str) {
        this.f18085g.c(7, str, null, null);
        e eVarA = a(this.f18085g);
        if (eVarA != null) {
            return eVarA;
        }
        this.f18081c.c(7, h(str));
        int i11 = this.f18080b;
        this.f18080b = i11 + 1;
        e eVar = new e(i11, this.f18085g);
        i(eVar);
        return eVar;
    }

    e c(Object obj) {
        if (!(obj instanceof Integer)) {
            if (obj instanceof String) {
                return g((String) obj);
            }
            if (obj instanceof j) {
                j jVar = (j) obj;
                return b(jVar.f18138a == 10 ? jVar.f() : jVar.d());
            }
            throw new IllegalArgumentException("value " + obj);
        }
        int iIntValue = ((Integer) obj).intValue();
        this.f18084f.b(iIntValue);
        e eVarA = a(this.f18084f);
        if (eVarA != null) {
            return eVarA;
        }
        this.f18081c.d(3).f(iIntValue);
        int i11 = this.f18080b;
        this.f18080b = i11 + 1;
        e eVar = new e(i11, this.f18084f);
        i(eVar);
        return eVar;
    }

    e d(String str, String str2, String str3) {
        this.f18086h.c(9, str, str2, str3);
        e eVarA = a(this.f18086h);
        if (eVarA != null) {
            return eVarA;
        }
        int i11 = b(str).f18101a;
        this.f18081c.c(9, i11).g(f(str2, str3).f18101a);
        int i12 = this.f18080b;
        this.f18080b = i12 + 1;
        e eVar = new e(i12, this.f18086h);
        i(eVar);
        return eVar;
    }

    e e(String str, String str2, String str3, boolean z10) {
        int i11 = z10 ? 11 : 10;
        this.f18086h.c(i11, str, str2, str3);
        e eVarA = a(this.f18086h);
        if (eVarA != null) {
            return eVarA;
        }
        this.f18081c.c(i11, b(str).f18101a).g(f(str2, str3).f18101a);
        int i12 = this.f18080b;
        this.f18080b = i12 + 1;
        e eVar = new e(i12, this.f18086h);
        i(eVar);
        return eVar;
    }

    public e f(String str, String str2) {
        this.f18085g.c(12, str, str2, null);
        e eVarA = a(this.f18085g);
        if (eVarA != null) {
            return eVarA;
        }
        int iH = h(str);
        this.f18081c.c(12, iH).g(h(str2));
        int i11 = this.f18080b;
        this.f18080b = i11 + 1;
        e eVar = new e(i11, this.f18085g);
        i(eVar);
        return eVar;
    }

    public int h(String str) {
        this.f18084f.c(1, str, null, null);
        e eVarA = a(this.f18084f);
        if (eVarA == null) {
            this.f18081c.d(1).h(str);
            int i11 = this.f18080b;
            this.f18080b = i11 + 1;
            eVarA = new e(i11, this.f18084f);
            i(eVarA);
        }
        return eVarA.f18101a;
    }

    public byte[] j() {
        int iM = (this.f18091m * 2) + 24;
        int i11 = 0;
        for (d dVar = this.f18093o; dVar != null; dVar = dVar.f18097a) {
            i11++;
            iM += dVar.a();
        }
        int i12 = 0;
        for (i iVar = this.f18095q; iVar != null; iVar = iVar.f18119a) {
            i12++;
            iM += iVar.m();
        }
        a aVar = new a(iM + this.f18081c.f18072b);
        aVar.f(-889275714).f(this.f18079a);
        a aVarG = aVar.g(this.f18080b);
        a aVar2 = this.f18081c;
        aVarG.e(aVar2.f18071a, 0, aVar2.f18072b);
        aVar.g(this.f18087i & (-393217)).g(this.f18088j).g(this.f18090l);
        aVar.g(this.f18091m);
        for (int i13 = 0; i13 < this.f18091m; i13++) {
            aVar.g(this.f18092n[i13]);
        }
        aVar.g(i11);
        for (d dVar2 = this.f18093o; dVar2 != null; dVar2 = dVar2.f18097a) {
            dVar2.b(aVar);
        }
        aVar.g(i12);
        for (i iVar2 = this.f18095q; iVar2 != null; iVar2 = iVar2.f18119a) {
            iVar2.n(aVar);
        }
        aVar.g(0);
        return aVar.f18071a;
    }

    public void k(int i11, int i12, String str, String str2, String[] strArr) {
        this.f18079a = i11;
        this.f18087i = i12;
        this.f18088j = b(str).f18101a;
        this.f18089k = str;
        this.f18090l = str2 == null ? 0 : b(str2).f18101a;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.f18091m = length;
        this.f18092n = new int[length];
        for (int i13 = 0; i13 < this.f18091m; i13++) {
            this.f18092n[i13] = b(strArr[i13]).f18101a;
        }
    }
}
