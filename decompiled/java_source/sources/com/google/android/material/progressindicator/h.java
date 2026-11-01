package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes4.dex */
abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f29471a;

    protected static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f29472a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f29473b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f29474c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f29475d;

        protected a() {
        }
    }

    public h(b bVar) {
        this.f29471a = bVar;
    }

    abstract void a(Canvas canvas, Rect rect, float f11, boolean z10, boolean z11);

    abstract void b(Canvas canvas, Paint paint, int i11, int i12);

    abstract void c(Canvas canvas, Paint paint, a aVar, int i11);

    abstract void d(Canvas canvas, Paint paint, float f11, float f12, int i11, int i12, int i13);

    abstract int e();

    abstract int f();

    void g(Canvas canvas, Rect rect, float f11, boolean z10, boolean z11) {
        this.f29471a.e();
        a(canvas, rect, f11, z10, z11);
    }
}
