package com.tn.lib.view.indicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class DrawableIndicator extends BaseIndicator {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap f41338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Bitmap f41339e;

    public DrawableIndicator(Context context) {
        this(context, null);
    }

    public DrawableIndicator(Context context, int i11, int i12) {
        super(context);
        this.f41338d = BitmapFactory.decodeResource(getResources(), i11);
        this.f41339e = BitmapFactory.decodeResource(getResources(), i12);
    }

    public DrawableIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawableIndicator(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DrawableIndicator);
        if (typedArrayObtainStyledAttributes != null) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) typedArrayObtainStyledAttributes.getDrawable(R$styleable.DrawableIndicator_normal_drawable);
            BitmapDrawable bitmapDrawable2 = (BitmapDrawable) typedArrayObtainStyledAttributes.getDrawable(R$styleable.DrawableIndicator_selected_drawable);
            this.f41338d = bitmapDrawable.getBitmap();
            this.f41339e = bitmapDrawable2.getBitmap();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iD = this.f41332a.d();
        if (iD <= 1 || this.f41338d == null || this.f41339e == null) {
            return;
        }
        int i11 = 0;
        float width = 0.0f;
        while (i11 < iD) {
            canvas.drawBitmap(this.f41332a.a() == i11 ? this.f41339e : this.f41338d, width, 0.0f, this.f41333b);
            width += this.f41338d.getWidth() + this.f41332a.e();
            i11++;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        int iD = this.f41332a.d();
        if (iD <= 1) {
            return;
        }
        int i13 = iD - 1;
        setMeasuredDimension((this.f41339e.getWidth() * i13) + this.f41339e.getWidth() + (this.f41332a.e() * i13), Math.max(this.f41338d.getHeight(), this.f41339e.getHeight()));
    }
}
