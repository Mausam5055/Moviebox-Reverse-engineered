package com.airbnb.lottie.model;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class DocumentData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f17771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f17772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Justification f17773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17774e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f17775f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f17776g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17777h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17778i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f17779j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17780k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public PointF f17781l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PointF f17782m;

    public enum Justification {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public DocumentData() {
    }

    public DocumentData(String str, String str2, float f11, Justification justification, int i11, float f12, float f13, int i12, int i13, float f14, boolean z10, PointF pointF, PointF pointF2) {
        a(str, str2, f11, justification, i11, f12, f13, i12, i13, f14, z10, pointF, pointF2);
    }

    public void a(String str, String str2, float f11, Justification justification, int i11, float f12, float f13, int i12, int i13, float f14, boolean z10, PointF pointF, PointF pointF2) {
        this.f17770a = str;
        this.f17771b = str2;
        this.f17772c = f11;
        this.f17773d = justification;
        this.f17774e = i11;
        this.f17775f = f12;
        this.f17776g = f13;
        this.f17777h = i12;
        this.f17778i = i13;
        this.f17779j = f14;
        this.f17780k = z10;
        this.f17781l = pointF;
        this.f17782m = pointF2;
    }

    public int hashCode() {
        int iHashCode = (((((int) ((((this.f17770a.hashCode() * 31) + this.f17771b.hashCode()) * 31) + this.f17772c)) * 31) + this.f17773d.ordinal()) * 31) + this.f17774e;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f17775f);
        return (((iHashCode * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.f17777h;
    }
}
