package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f18114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f18115b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f18118e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final StringBuilder f18117d = new StringBuilder();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f18116c = 0;

    protected g(int i11, int i12) {
        this.f18115b = i11;
        this.f18114a = i12;
        this.f18118e = i12 == 0;
    }

    protected String a() {
        return this.f18117d.length() != 0 ? this.f18117d.substring(1) : "";
    }

    protected void b(String str, int i11) {
        int i12 = this.f18115b;
        if (i11 < i12 || i11 >= i12 + this.f18114a) {
            return;
        }
        if (!str.equals("arg" + this.f18116c)) {
            this.f18118e = true;
        }
        this.f18117d.append(',');
        this.f18117d.append(str);
        this.f18116c++;
    }
}
