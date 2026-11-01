package com.airbnb.lottie;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes2.dex */
public class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f17763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f17764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f17765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f17766d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f17767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f17768f;

    public l0(int i11, int i12, String str, String str2, String str3) {
        this.f17763a = i11;
        this.f17764b = i12;
        this.f17765c = str;
        this.f17766d = str2;
        this.f17767e = str3;
    }

    public l0 a(float f11) {
        l0 l0Var = new l0((int) (this.f17763a * f11), (int) (this.f17764b * f11), this.f17765c, this.f17766d, this.f17767e);
        Bitmap bitmap = this.f17768f;
        if (bitmap != null) {
            l0Var.g(Bitmap.createScaledBitmap(bitmap, l0Var.f17763a, l0Var.f17764b, true));
        }
        return l0Var;
    }

    public Bitmap b() {
        return this.f17768f;
    }

    public String c() {
        return this.f17766d;
    }

    public int d() {
        return this.f17764b;
    }

    public String e() {
        return this.f17765c;
    }

    public int f() {
        return this.f17763a;
    }

    public void g(Bitmap bitmap) {
        this.f17768f = bitmap;
    }
}
