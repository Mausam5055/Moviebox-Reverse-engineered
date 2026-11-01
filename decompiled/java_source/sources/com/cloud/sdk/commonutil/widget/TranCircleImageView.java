package com.cloud.sdk.commonutil.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.cloud.sdk.commonutil.R$styleable;
import com.cloud.sdk.commonutil.util.c;

/* JADX INFO: loaded from: classes3.dex */
public class TranCircleImageView extends ImageView {
    public static final int BOTTOM = 2;
    public static final int CENTER = 1;
    public static final int FITXY = 3;
    public static final int TOP = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f23218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f23219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f23220c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f23221d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f23222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f23223f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f23224g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f23225h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f23226i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f23227j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f23228k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f23229l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f23230m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f23231n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f23232o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f23233p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f23234q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f23235r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f23236s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f23237t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f23238u;

    public TranCircleImageView(Context context) {
        super(context);
        initData();
    }

    public TranCircleImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23218a = context;
        e(attributeSet);
    }

    private void a(Canvas canvas, RectF rectF, Paint paint, float f11) {
        Path path = new Path();
        path.addRoundRect(rectF, new float[]{g(this.f23226i, f11), g(this.f23227j, f11), g(this.f23228k, f11), g(this.f23229l, f11), g(this.f23232o, f11), g(this.f23233p, f11), g(this.f23230m, f11), g(this.f23231n, f11)}, Path.Direction.CW);
        path.close();
        canvas.drawPath(path, paint);
    }

    private boolean b(Drawable drawable) {
        return drawable != null && drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0;
    }

    private Bitmap c(Drawable drawable) {
        try {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable th2) {
            c.Log().e("TranCircleImageView", Log.getStackTraceString(th2));
            return null;
        }
    }

    private Rect d(Bitmap bitmap, int i11, int i12) {
        int i13;
        int i14;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i15 = width * i12;
        int i16 = i11 * height;
        int i17 = 0;
        int[] iArr = {width, height};
        if (i15 == i16) {
            return new Rect(0, 0, width, height);
        }
        if (i15 > i16) {
            iArr[0] = i16 / i12;
        } else if (i15 < i16) {
            iArr[1] = i15 / i11;
        }
        boolean z10 = width > iArr[0];
        int i18 = this.f23238u;
        if (i18 != 0) {
            if (i18 == 1) {
                i14 = z10 ? (width - iArr[0]) / 2 : 0;
                i13 = z10 ? 0 : (height - iArr[1]) / 2;
                width = z10 ? (width + iArr[0]) / 2 : iArr[0];
                height = z10 ? iArr[1] : (height + iArr[1]) / 2;
            } else if (i18 == 2) {
                i14 = z10 ? (width - iArr[0]) / 2 : 0;
                i13 = z10 ? 0 : height - iArr[1];
                width = z10 ? (width + iArr[0]) / 2 : iArr[0];
                if (z10) {
                    height = iArr[1];
                }
            } else if (i18 != 3) {
                height = 0;
                width = 0;
                i13 = 0;
            } else {
                i13 = 0;
            }
            i17 = i14;
        } else {
            int i19 = z10 ? (width - iArr[0]) / 2 : 0;
            width = z10 ? (width + iArr[0]) / 2 : iArr[0];
            i13 = 0;
            i17 = i19;
            height = iArr[1];
        }
        return new Rect(i17, i13, width, height);
    }

    private void e(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = this.f23218a.obtainStyledAttributes(attributeSet, R$styleable.TranCircleImageView);
        this.f23221d = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_radiusYL, 0.0f);
        this.f23222e = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topLeftRadiusYL, 0.0f);
        this.f23223f = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topRightRadiusYL, 0.0f);
        this.f23224g = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomLeftRadiusYL, 0.0f);
        this.f23225h = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomRightRadiusYL, 0.0f);
        this.f23238u = typedArrayObtainStyledAttributes.getInt(R$styleable.TranCircleImageView_scaleTypeYL, 0);
        this.f23234q = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_borderWidthYL, 0.0f);
        this.f23235r = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_borderSpaceYL, 0.0f);
        this.f23236s = typedArrayObtainStyledAttributes.getColor(R$styleable.TranCircleImageView_borderColorYL, -1);
        this.f23226i = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topLeftRadius_xYL, 0.0f);
        this.f23227j = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topLeftRadius_yYL, 0.0f);
        this.f23228k = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topRightRadius_xYL, 0.0f);
        this.f23229l = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topRightRadius_yYL, 0.0f);
        this.f23230m = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomLeftRadius_xYL, 0.0f);
        this.f23231n = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomLeftRadius_yYL, 0.0f);
        this.f23232o = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomRightRadius_xYL, 0.0f);
        this.f23233p = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomRightRadius_yYL, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        initData();
    }

    private void f() {
        float f11 = this.f23221d;
        if (f11 != 0.0f) {
            float f12 = this.f23222e;
            if (f12 == 0.0f) {
                f12 = f11;
            }
            this.f23222e = f12;
            float f13 = this.f23223f;
            if (f13 == 0.0f) {
                f13 = f11;
            }
            this.f23223f = f13;
            float f14 = this.f23224g;
            if (f14 == 0.0f) {
                f14 = f11;
            }
            this.f23224g = f14;
            float f15 = this.f23225h;
            if (f15 != 0.0f) {
                f11 = f15;
            }
            this.f23225h = f11;
        }
        float f16 = this.f23226i;
        if (f16 == 0.0f) {
            f16 = this.f23222e;
        }
        this.f23226i = f16;
        float f17 = this.f23227j;
        if (f17 == 0.0f) {
            f17 = this.f23222e;
        }
        this.f23227j = f17;
        float f18 = this.f23228k;
        if (f18 == 0.0f) {
            f18 = this.f23223f;
        }
        this.f23228k = f18;
        float f19 = this.f23229l;
        if (f19 == 0.0f) {
            f19 = this.f23223f;
        }
        this.f23229l = f19;
        float f20 = this.f23230m;
        if (f20 == 0.0f) {
            f20 = this.f23224g;
        }
        this.f23230m = f20;
        float f21 = this.f23231n;
        if (f21 == 0.0f) {
            f21 = this.f23224g;
        }
        this.f23231n = f21;
        float f22 = this.f23232o;
        if (f22 == 0.0f) {
            f22 = this.f23225h;
        }
        this.f23232o = f22;
        float f23 = this.f23233p;
        if (f23 == 0.0f) {
            f23 = this.f23225h;
        }
        this.f23233p = f23;
    }

    private float g(float f11, float f12) {
        return Math.max(f11 - f12, 0.0f);
    }

    public Paint getBorderPaint() {
        return this.f23220c;
    }

    public Paint getPaint() {
        return this.f23219b;
    }

    public void initData() {
        f();
        this.f23237t = (this.f23234q == 0.0f && this.f23235r == 0.0f && this.f23226i == 0.0f && this.f23227j == 0.0f && this.f23228k == 0.0f && this.f23229l == 0.0f && this.f23230m == 0.0f && this.f23231n == 0.0f && this.f23232o == 0.0f && this.f23233p == 0.0f) ? false : true;
        this.f23219b = new Paint(1);
        Paint paint = new Paint(1);
        this.f23220c = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f23220c.setStrokeWidth(this.f23234q);
        this.f23220c.setColor(this.f23236s);
        if (this.f23237t) {
            setScaleType(ImageView.ScaleType.MATRIX);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        try {
            Drawable drawable = getDrawable();
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            if (this.f23234q != 0.0f) {
                RectF rectF = new RectF(paddingLeft, paddingTop, measuredWidth - paddingRight, measuredHeight - paddingBottom);
                float f11 = this.f23234q / 2.0f;
                rectF.inset(f11, f11);
                a(canvas, rectF, this.f23220c, f11);
            }
            if (!b(drawable) || !this.f23237t) {
                super.onDraw(canvas);
                return;
            }
            RectF rectF2 = new RectF(paddingLeft, paddingTop, measuredWidth - paddingRight, measuredHeight - paddingBottom);
            float f12 = this.f23234q + this.f23235r;
            float f13 = f12 > 1.0f ? f12 - 1.0f : 0.0f;
            rectF2.inset(f13, f13);
            int iSaveLayer = canvas.saveLayer(rectF2, null, 31);
            a(canvas, rectF2, this.f23219b, f13);
            Paint paint = this.f23219b;
            if (paint != null) {
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            }
            Bitmap bitmapC = c(drawable);
            canvas.drawBitmap(bitmapC, d(bitmapC, (int) rectF2.width(), (int) rectF2.height()), rectF2, this.f23219b);
            Paint paint2 = this.f23219b;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restoreToCount(iSaveLayer);
        } catch (Throwable th2) {
            c.Log().e("TranCircleImageView", Log.getStackTraceString(th2));
        }
    }

    public void setBorderColor(int i11) {
        this.f23236s = i11;
        Paint paint = this.f23220c;
        if (paint != null) {
            paint.setColor(i11);
        }
    }

    public void setBorderSpace(float f11) {
        this.f23235r = f11;
    }

    public void setBorderWidth(float f11) {
        this.f23234q = f11;
        Paint paint = this.f23220c;
        if (paint != null) {
            paint.setStrokeWidth(f11);
        }
    }

    public void setBottomLeftRadius(float f11) {
        setBottomLeftRadius_x(f11);
        setBottomLeftRadius_y(f11);
    }

    public void setBottomLeftRadius_x(float f11) {
        this.f23230m = f11;
    }

    public void setBottomLeftRadius_y(float f11) {
        this.f23231n = f11;
    }

    public void setBottomRightRadius(float f11) {
        setBottomRightRadius_x(f11);
        setBottomRightRadius_y(f11);
    }

    public void setBottomRightRadius_x(float f11) {
        this.f23232o = f11;
    }

    public void setBottomRightRadius_y(float f11) {
        this.f23233p = f11;
    }

    public void setCircle(boolean z10) {
        this.f23237t = z10;
    }

    public void setRadius(float f11) {
        setTopLeftRadius(f11);
        setTopRightRadius(f11);
        setBottomLeftRadius(f11);
        setBottomRightRadius(f11);
    }

    public void setStyleType(int i11) {
        this.f23238u = i11;
    }

    public void setTopLeftRadius(float f11) {
        setTopLeftRadius_x(f11);
        setTopLeftRadius_y(f11);
    }

    public void setTopLeftRadius_x(float f11) {
        this.f23226i = f11;
    }

    public void setTopLeftRadius_y(float f11) {
        this.f23227j = f11;
    }

    public void setTopRightRadius(float f11) {
        setTopRightRadius_x(f11);
        setTopRightRadius_y(f11);
    }

    public void setTopRightRadius_x(float f11) {
        this.f23228k = f11;
    }

    public void setTopRightRadius_y(float f11) {
        this.f23229l = f11;
    }
}
