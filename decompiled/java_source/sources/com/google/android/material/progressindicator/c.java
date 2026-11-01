package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes4.dex */
final class c extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f29425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f29426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f29427d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f29428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f29429f;

    c(e eVar) {
        super(eVar);
    }

    private void h(Canvas canvas, Paint paint, float f11, float f12, int i11, int i12, int i13) {
        float f13 = f12 >= f11 ? f12 - f11 : (f12 + 1.0f) - f11;
        float f14 = f11 % 1.0f;
        if (this.f29429f < 1.0f) {
            float f15 = f14 + f13;
            if (f15 > 1.0f) {
                h(canvas, paint, f14, 1.0f, i11, i12, 0);
                h(canvas, paint, 1.0f, f15, i11, 0, i13);
                return;
            }
        }
        float degrees = (float) Math.toDegrees(this.f29426c / this.f29427d);
        if (f14 == 0.0f && f13 >= 0.99f) {
            f13 += ((f13 - 0.99f) * ((degrees * 2.0f) / 360.0f)) / 0.01f;
        }
        float fD = va.a.d(1.0f - this.f29429f, 1.0f, f14);
        float fD2 = va.a.d(0.0f, this.f29429f, f13);
        float degrees2 = (float) Math.toDegrees(i12 / this.f29427d);
        float degrees3 = ((fD2 * 360.0f) - degrees2) - ((float) Math.toDegrees(i13 / this.f29427d));
        float f16 = (fD * 360.0f) + degrees2;
        if (degrees3 <= 0.0f) {
            return;
        }
        paint.setAntiAlias(true);
        paint.setColor(i11);
        paint.setStrokeWidth(this.f29425b);
        float f17 = degrees * 2.0f;
        if (degrees3 < f17) {
            float f18 = degrees3 / f17;
            paint.setStyle(Paint.Style.FILL);
            j(canvas, paint, f16 + (degrees * f18), this.f29426c * 2.0f, this.f29425b, f18);
            return;
        }
        float f19 = this.f29427d;
        RectF rectF = new RectF(-f19, -f19, f19, f19);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(this.f29428e ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        float f20 = f16 + degrees;
        canvas.drawArc(rectF, f20, degrees3 - f17, false, paint);
        if (this.f29428e || this.f29426c <= 0.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        i(canvas, paint, f20, this.f29426c * 2.0f, this.f29425b);
        i(canvas, paint, (f16 + degrees3) - degrees, this.f29426c * 2.0f, this.f29425b);
    }

    private void i(Canvas canvas, Paint paint, float f11, float f12, float f13) {
        j(canvas, paint, f11, f12, f13, 1.0f);
    }

    private void j(Canvas canvas, Paint paint, float f11, float f12, float f13, float f14) {
        float fMin = (int) Math.min(f13, this.f29425b);
        float f15 = f12 / 2.0f;
        float fMin2 = Math.min(f15, (this.f29426c * fMin) / this.f29425b);
        RectF rectF = new RectF((-fMin) / 2.0f, (-f12) / 2.0f, fMin / 2.0f, f15);
        canvas.save();
        double d11 = f11;
        canvas.translate((float) (((double) this.f29427d) * Math.cos(Math.toRadians(d11))), (float) (((double) this.f29427d) * Math.sin(Math.toRadians(d11))));
        canvas.rotate(f11);
        canvas.scale(f14, f14);
        canvas.drawRoundRect(rectF, fMin2, fMin2, paint);
        canvas.restore();
    }

    private int k() {
        b bVar = this.f29471a;
        return ((e) bVar).f29445h + (((e) bVar).f29446i * 2);
    }

    @Override // com.google.android.material.progressindicator.h
    void a(Canvas canvas, Rect rect, float f11, boolean z10, boolean z11) {
        float fWidth = rect.width() / f();
        float fHeight = rect.height() / e();
        b bVar = this.f29471a;
        float f12 = (((e) bVar).f29445h / 2.0f) + ((e) bVar).f29446i;
        canvas.translate((f12 * fWidth) + rect.left, (f12 * fHeight) + rect.top);
        canvas.rotate(-90.0f);
        canvas.scale(fWidth, fHeight);
        if (((e) this.f29471a).f29447j != 0) {
            canvas.scale(1.0f, -1.0f);
        }
        float f13 = -f12;
        canvas.clipRect(f13, f13, f12, f12);
        b bVar2 = this.f29471a;
        this.f29428e = ((e) bVar2).f29418a / 2 <= ((e) bVar2).f29419b;
        this.f29425b = ((e) bVar2).f29418a * f11;
        this.f29426c = Math.min(((e) bVar2).f29418a / 2, ((e) bVar2).f29419b) * f11;
        b bVar3 = this.f29471a;
        float f14 = (((e) bVar3).f29445h - ((e) bVar3).f29418a) / 2.0f;
        this.f29427d = f14;
        if (z10 || z11) {
            if ((z10 && ((e) bVar3).f29422e == 2) || (z11 && ((e) bVar3).f29423f == 1)) {
                this.f29427d = f14 + (((1.0f - f11) * ((e) bVar3).f29418a) / 2.0f);
            } else if ((z10 && ((e) bVar3).f29422e == 1) || (z11 && ((e) bVar3).f29423f == 2)) {
                this.f29427d = f14 - (((1.0f - f11) * ((e) bVar3).f29418a) / 2.0f);
            }
        }
        if (z11 && ((e) bVar3).f29423f == 3) {
            this.f29429f = f11;
        } else {
            this.f29429f = 1.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.h
    void b(Canvas canvas, Paint paint, int i11, int i12) {
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
        return k();
    }

    @Override // com.google.android.material.progressindicator.h
    int f() {
        return k();
    }
}
