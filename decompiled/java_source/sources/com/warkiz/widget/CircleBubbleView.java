package com.warkiz.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public class CircleBubbleView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f60690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f60691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f60692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f60693d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Path f60694e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Paint f60695f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f60696g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f60697h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f60698i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f60699j;

    CircleBubbleView(Context context, float f11, int i11, int i12, String str) {
        super(context, null, 0);
        this.f60693d = context;
        this.f60692c = f11;
        this.f60690a = i11;
        this.f60691b = i12;
        a(str);
    }

    private void a(String str) {
        Paint paint = new Paint();
        this.f60695f = paint;
        paint.setAntiAlias(true);
        this.f60695f.setStrokeWidth(1.0f);
        this.f60695f.setTextAlign(Paint.Align.CENTER);
        this.f60695f.setTextSize(this.f60692c);
        Rect rect = new Rect();
        this.f60695f.getTextBounds(str, 0, str.length(), rect);
        this.f60696g = rect.width() + g.a(this.f60693d, 4.0f);
        float fA = g.a(this.f60693d, 36.0f);
        if (this.f60696g < fA) {
            this.f60696g = fA;
        }
        this.f60698i = rect.height();
        this.f60697h = this.f60696g * 1.2f;
        b();
    }

    private void b() {
        this.f60694e = new Path();
        float f11 = this.f60696g;
        this.f60694e.arcTo(new RectF(0.0f, 0.0f, f11, f11), 135.0f, 270.0f);
        this.f60694e.lineTo(this.f60696g / 2.0f, this.f60697h);
        this.f60694e.close();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f60695f.setColor(this.f60691b);
        canvas.drawPath(this.f60694e, this.f60695f);
        this.f60695f.setColor(this.f60690a);
        canvas.drawText(this.f60699j, this.f60696g / 2.0f, (this.f60697h / 2.0f) + (this.f60698i / 4.0f), this.f60695f);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        setMeasuredDimension((int) this.f60696g, (int) this.f60697h);
    }

    void setProgress(String str) {
        this.f60699j = str;
        invalidate();
    }
}
