package com.warkiz.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public class ArrowView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f60686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f60687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f60688c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f60689d;

    public ArrowView(Context context) {
        this(context, null);
    }

    public ArrowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArrowView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        int iA = g.a(context, 12.0f);
        this.f60686a = iA;
        int iA2 = g.a(context, 7.0f);
        this.f60687b = iA2;
        Path path = new Path();
        this.f60688c = path;
        path.moveTo(0.0f, 0.0f);
        path.lineTo(iA, 0.0f);
        path.lineTo(iA / 2.0f, iA2);
        path.close();
        Paint paint = new Paint();
        this.f60689d = paint;
        paint.setAntiAlias(true);
        paint.setStrokeWidth(1.0f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawPath(this.f60688c, this.f60689d);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        setMeasuredDimension(this.f60686a, this.f60687b);
    }

    void setColor(int i11) {
        this.f60689d.setColor(i11);
        invalidate();
    }
}
