package com.tn.lib.view.bubbleview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ImageView;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class BubbleImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BubbleDrawable f41234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Drawable f41235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f41236c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f41237d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f41238e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f41239f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f41240g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private BubbleDrawable.ArrowLocation f41241h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f41242i;

    public BubbleImageView(Context context) {
        super(context);
        c(null);
    }

    public BubbleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c(attributeSet);
    }

    public BubbleImageView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        c(attributeSet);
    }

    private Bitmap a(Drawable drawable) {
        return getBitmapFromDrawable(getContext(), drawable, getWidth(), getWidth(), 25);
    }

    private Drawable b(int i11) {
        if (i11 != 0) {
            return getContext().getResources().getDrawable(i11);
        }
        throw new IllegalArgumentException("getDrawable res can not be zero");
    }

    private void c(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f41236c = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f41141u);
            this.f41238e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f41142v);
            this.f41237d = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f41143w);
            this.f41239f = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f41144x);
            this.f41241h = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f41242i = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void d() {
        Drawable drawable;
        Drawable drawable2;
        int width = getWidth();
        int height = getHeight();
        if (width > 0 && height <= 0 && (drawable2 = this.f41235b) != null && drawable2.getIntrinsicWidth() >= 0) {
            height = (width / this.f41235b.getIntrinsicWidth()) * this.f41235b.getIntrinsicHeight();
        }
        if (height > 0 && width <= 0 && (drawable = this.f41235b) != null && drawable.getIntrinsicHeight() >= 0) {
            width = (height / this.f41235b.getIntrinsicHeight()) * this.f41235b.getIntrinsicWidth();
        }
        e(width, height);
    }

    public static int dp2px(Context context, int i11) {
        return (int) TypedValue.applyDimension(1, i11, context.getResources().getDisplayMetrics());
    }

    private void e(int i11, int i12) {
        f(getPaddingLeft(), i11 - getPaddingRight(), getPaddingTop(), i12 - getPaddingBottom());
    }

    private void f(int i11, int i12, int i13, int i14) {
        if (i12 <= i11 || i14 <= i13) {
            return;
        }
        RectF rectF = new RectF(i11, i13, i12, i14);
        Drawable drawable = this.f41235b;
        if (drawable != null) {
            this.f41240g = a(drawable);
        }
        this.f41234a = new BubbleDrawable.b().B(rectF).t(this.f41241h).q(this.f41237d).s(this.f41238e).v(this.f41236c).z(BubbleDrawable.BubbleType.BITMAP).u(this.f41239f).w(this.f41240g).r(this.f41242i).A();
    }

    public static Bitmap getBitmapFromDrawable(Context context, Drawable drawable, int i11, int i12, int i13) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap bitmapCreateBitmap = (i11 <= 0 || i12 <= 0) ? Bitmap.createBitmap(dp2px(context, i13), dp2px(context, i13), Bitmap.Config.ARGB_8888) : Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int saveCount = canvas.getSaveCount();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        BubbleDrawable bubbleDrawable = this.f41234a;
        if (bubbleDrawable != null) {
            bubbleDrawable.draw(canvas);
        }
        canvas.restoreToCount(saveCount);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        d();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth <= 0 && measuredHeight > 0) {
            setMeasuredDimension(measuredHeight, measuredHeight);
        }
        if (measuredHeight > 0 || measuredWidth <= 0) {
            return;
        }
        setMeasuredDimension(measuredWidth, measuredWidth);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (i11 <= 0 || i12 <= 0) {
            return;
        }
        e(i11, i12);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        this.f41240g = bitmap;
        this.f41235b = new BitmapDrawable(getResources(), bitmap);
        d();
        super.setImageDrawable(this.f41234a);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        this.f41235b = drawable;
        d();
        super.setImageDrawable(this.f41234a);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i11) {
        setImageDrawable(b(i11));
    }
}
