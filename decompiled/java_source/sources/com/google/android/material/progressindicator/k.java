package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes4.dex */
final class k extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f29481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f29482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f29483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f29484e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f29485f;

    k(n nVar) {
        super(nVar);
        this.f29481b = 300.0f;
    }

    private void h(Canvas canvas, Paint paint, float f11, float f12, int i11, int i12, int i13) {
        float fA = d1.a.a(f11, 0.0f, 1.0f);
        float fA2 = d1.a.a(f12, 0.0f, 1.0f);
        float fD = va.a.d(1.0f - this.f29485f, 1.0f, fA);
        float fD2 = va.a.d(1.0f - this.f29485f, 1.0f, fA2);
        int iA = (int) ((i12 * d1.a.a(fD, 0.0f, 0.01f)) / 0.01f);
        int iA2 = (int) ((i13 * (1.0f - d1.a.a(fD2, 0.99f, 1.0f))) / 0.01f);
        float f13 = this.f29481b;
        int i14 = (int) ((fD * f13) + iA);
        int i15 = (int) ((fD2 * f13) - iA2);
        float f14 = (-f13) / 2.0f;
        if (i14 <= i15) {
            float f15 = this.f29483d;
            float f16 = i14 + f15;
            float f17 = i15 - f15;
            float f18 = f15 * 2.0f;
            paint.setColor(i11);
            paint.setAntiAlias(true);
            paint.setStrokeWidth(this.f29482c);
            if (f16 >= f17) {
                j(canvas, paint, new PointF(f16 + f14, 0.0f), new PointF(f17 + f14, 0.0f), f18, this.f29482c);
                return;
            }
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(this.f29484e ? Paint.Cap.ROUND : Paint.Cap.BUTT);
            float f19 = f16 + f14;
            float f20 = f17 + f14;
            canvas.drawLine(f19, 0.0f, f20, 0.0f, paint);
            if (this.f29484e || this.f29483d <= 0.0f) {
                return;
            }
            paint.setStyle(Paint.Style.FILL);
            if (f16 > 0.0f) {
                i(canvas, paint, new PointF(f19, 0.0f), f18, this.f29482c);
            }
            if (f17 < this.f29481b) {
                i(canvas, paint, new PointF(f20, 0.0f), f18, this.f29482c);
            }
        }
    }

    private void i(Canvas canvas, Paint paint, PointF pointF, float f11, float f12) {
        j(canvas, paint, pointF, null, f11, f12);
    }

    private void j(Canvas canvas, Paint paint, PointF pointF, PointF pointF2, float f11, float f12) {
        float fMin = Math.min(f12, this.f29482c);
        float f13 = f11 / 2.0f;
        float fMin2 = Math.min(f13, (this.f29483d * fMin) / this.f29482c);
        RectF rectF = new RectF((-f11) / 2.0f, (-fMin) / 2.0f, f13, fMin / 2.0f);
        paint.setStyle(Paint.Style.FILL);
        canvas.save();
        if (pointF2 != null) {
            canvas.translate(pointF2.x, pointF2.y);
            Path path = new Path();
            path.addRoundRect(rectF, fMin2, fMin2, Path.Direction.CCW);
            canvas.clipPath(path);
            canvas.translate(-pointF2.x, -pointF2.y);
        }
        canvas.translate(pointF.x, pointF.y);
        canvas.drawRoundRect(rectF, fMin2, fMin2, paint);
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.h
    void a(Canvas canvas, Rect rect, float f11, boolean z10, boolean z11) {
        this.f29481b = rect.width();
        float f12 = ((n) this.f29471a).f29418a;
        canvas.translate(rect.left + (rect.width() / 2.0f), rect.top + (rect.height() / 2.0f) + Math.max(0.0f, (rect.height() - f12) / 2.0f));
        if (((n) this.f29471a).f29509j) {
            canvas.scale(-1.0f, 1.0f);
        }
        float f13 = this.f29481b / 2.0f;
        float f14 = f12 / 2.0f;
        canvas.clipRect(-f13, -f14, f13, f14);
        b bVar = this.f29471a;
        this.f29484e = ((n) bVar).f29418a / 2 == ((n) bVar).f29419b;
        this.f29482c = ((n) bVar).f29418a * f11;
        this.f29483d = Math.min(((n) bVar).f29418a / 2, ((n) bVar).f29419b) * f11;
        if (z10 || z11) {
            if ((z10 && ((n) this.f29471a).f29422e == 2) || (z11 && ((n) this.f29471a).f29423f == 1)) {
                canvas.scale(1.0f, -1.0f);
            }
            if (z10 || (z11 && ((n) this.f29471a).f29423f != 3)) {
                canvas.translate(0.0f, (((n) this.f29471a).f29418a * (1.0f - f11)) / 2.0f);
            }
        }
        if (z11 && ((n) this.f29471a).f29423f == 3) {
            this.f29485f = f11;
        } else {
            this.f29485f = 1.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.h
    void b(Canvas canvas, Paint paint, int i11, int i12) {
        int iA = com.google.android.material.color.b.a(i11, i12);
        if (((n) this.f29471a).f29510k <= 0 || iA == 0) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(iA);
        PointF pointF = new PointF((this.f29481b / 2.0f) - (this.f29482c / 2.0f), 0.0f);
        b bVar = this.f29471a;
        i(canvas, paint, pointF, ((n) bVar).f29510k, ((n) bVar).f29510k);
    }

    @Override // com.google.android.material.progressindicator.h
    void c(Canvas canvas, Paint paint, h.a aVar, int i11) {
        int iA = com.google.android.material.color.b.a(aVar.f29474c, i11);
        float f11 = aVar.f29472a;
        float f12 = aVar.f29473b;
        int i12 = aVar.f29475d;
        h(canvas, paint, f11, f12, iA, i12, i12);
    }

    @Override // com.google.android.material.progressindicator.h
    void d(Canvas canvas, Paint paint, float f11, float f12, int i11, int i12, int i13) {
        h(canvas, paint, f11, f12, com.google.android.material.color.b.a(i11, i12), i13, i13);
    }

    @Override // com.google.android.material.progressindicator.h
    int e() {
        return ((n) this.f29471a).f29418a;
    }

    @Override // com.google.android.material.progressindicator.h
    int f() {
        return -1;
    }
}
