package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    d f18097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f18098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f18099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f18100d;

    public d(c cVar, int i11, String str, String str2) {
        if (cVar.f18093o == null) {
            cVar.f18093o = this;
        } else {
            cVar.f18094p.f18097a = this;
        }
        cVar.f18094p = this;
        this.f18098b = i11;
        this.f18099c = cVar.h(str);
        this.f18100d = cVar.h(str2);
    }

    int a() {
        return 8;
    }

    void b(a aVar) {
        aVar.g(this.f18098b & (-393217)).g(this.f18099c).g(this.f18100d);
        aVar.g(0);
    }

    public void c() {
    }
}
