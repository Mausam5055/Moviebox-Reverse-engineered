package androidx.constraintlayout.utils.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.constraintlayout.motion.widget.c;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.view.GravityCompat;
import com.google.android.material.card.MaterialCardView;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
public class MotionLabel extends View implements c {
    static String V = "MotionLabel";
    private float A;
    private float B;
    private float C;
    private Drawable D;
    Matrix E;
    private Bitmap F;
    private BitmapShader G;
    private Matrix H;
    private float I;
    private float J;
    private float K;
    private float L;
    Paint M;
    private int N;
    Rect O;
    Paint P;
    float Q;
    float R;
    float S;
    float T;
    float U;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    TextPaint f7605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Path f7606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7608d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7609e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f7610f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f7611g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    ViewOutlineProvider f7612h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    RectF f7613i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f7614j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f7615k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f7616l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f7617m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f7618n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f7619o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    boolean f7620p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Rect f7621q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f7622r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f7623s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f7624t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f7625u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f7626v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Layout f7627w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f7628x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f7629y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f7630z;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            int width = MotionLabel.this.getWidth();
            int height = MotionLabel.this.getHeight();
            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * MotionLabel.this.f7610f) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionLabel.this.getWidth(), MotionLabel.this.getHeight(), MotionLabel.this.f7611g);
        }
    }

    public MotionLabel(Context context) {
        super(context);
        this.f7605a = new TextPaint();
        this.f7606b = new Path();
        this.f7607c = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7608d = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7609e = false;
        this.f7610f = 0.0f;
        this.f7611g = Float.NaN;
        this.f7614j = 48.0f;
        this.f7615k = Float.NaN;
        this.f7618n = 0.0f;
        this.f7619o = "Hello World";
        this.f7620p = true;
        this.f7621q = new Rect();
        this.f7622r = 1;
        this.f7623s = 1;
        this.f7624t = 1;
        this.f7625u = 1;
        this.f7628x = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        this.f7629y = 0;
        this.f7630z = false;
        this.I = Float.NaN;
        this.J = Float.NaN;
        this.K = 0.0f;
        this.L = 0.0f;
        this.M = new Paint();
        this.N = 0;
        this.R = Float.NaN;
        this.S = Float.NaN;
        this.T = Float.NaN;
        this.U = Float.NaN;
        f(context, null);
    }

    public MotionLabel(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7605a = new TextPaint();
        this.f7606b = new Path();
        this.f7607c = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7608d = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7609e = false;
        this.f7610f = 0.0f;
        this.f7611g = Float.NaN;
        this.f7614j = 48.0f;
        this.f7615k = Float.NaN;
        this.f7618n = 0.0f;
        this.f7619o = "Hello World";
        this.f7620p = true;
        this.f7621q = new Rect();
        this.f7622r = 1;
        this.f7623s = 1;
        this.f7624t = 1;
        this.f7625u = 1;
        this.f7628x = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        this.f7629y = 0;
        this.f7630z = false;
        this.I = Float.NaN;
        this.J = Float.NaN;
        this.K = 0.0f;
        this.L = 0.0f;
        this.M = new Paint();
        this.N = 0;
        this.R = Float.NaN;
        this.S = Float.NaN;
        this.T = Float.NaN;
        this.U = Float.NaN;
        f(context, attributeSet);
    }

    public MotionLabel(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7605a = new TextPaint();
        this.f7606b = new Path();
        this.f7607c = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7608d = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7609e = false;
        this.f7610f = 0.0f;
        this.f7611g = Float.NaN;
        this.f7614j = 48.0f;
        this.f7615k = Float.NaN;
        this.f7618n = 0.0f;
        this.f7619o = "Hello World";
        this.f7620p = true;
        this.f7621q = new Rect();
        this.f7622r = 1;
        this.f7623s = 1;
        this.f7624t = 1;
        this.f7625u = 1;
        this.f7628x = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        this.f7629y = 0;
        this.f7630z = false;
        this.I = Float.NaN;
        this.J = Float.NaN;
        this.K = 0.0f;
        this.L = 0.0f;
        this.M = new Paint();
        this.N = 0;
        this.R = Float.NaN;
        this.S = Float.NaN;
        this.T = Float.NaN;
        this.U = Float.NaN;
        f(context, attributeSet);
    }

    private void c(float f11, float f12, float f13, float f14) {
        if (this.H == null) {
            return;
        }
        this.B = f13 - f11;
        this.C = f14 - f12;
        k();
    }

    private void f(Context context, AttributeSet attributeSet) {
        h(context, attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionLabel);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.MotionLabel_android_text) {
                    setText(typedArrayObtainStyledAttributes.getText(index));
                } else if (index == R$styleable.MotionLabel_android_fontFamily) {
                    this.f7626v = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.MotionLabel_scaleFromTextSize) {
                    this.f7615k = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, (int) this.f7615k);
                } else if (index == R$styleable.MotionLabel_android_textSize) {
                    this.f7614j = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, (int) this.f7614j);
                } else if (index == R$styleable.MotionLabel_android_textStyle) {
                    this.f7616l = typedArrayObtainStyledAttributes.getInt(index, this.f7616l);
                } else if (index == R$styleable.MotionLabel_android_typeface) {
                    this.f7617m = typedArrayObtainStyledAttributes.getInt(index, this.f7617m);
                } else if (index == R$styleable.MotionLabel_android_textColor) {
                    this.f7607c = typedArrayObtainStyledAttributes.getColor(index, this.f7607c);
                } else if (index == R$styleable.MotionLabel_borderRound) {
                    float dimension = typedArrayObtainStyledAttributes.getDimension(index, this.f7611g);
                    this.f7611g = dimension;
                    setRound(dimension);
                } else if (index == R$styleable.MotionLabel_borderRoundPercent) {
                    float f11 = typedArrayObtainStyledAttributes.getFloat(index, this.f7610f);
                    this.f7610f = f11;
                    setRoundPercent(f11);
                } else if (index == R$styleable.MotionLabel_android_gravity) {
                    setGravity(typedArrayObtainStyledAttributes.getInt(index, -1));
                } else if (index == R$styleable.MotionLabel_android_autoSizeTextType) {
                    this.f7629y = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.MotionLabel_textOutlineColor) {
                    this.f7608d = typedArrayObtainStyledAttributes.getInt(index, this.f7608d);
                    this.f7609e = true;
                } else if (index == R$styleable.MotionLabel_textOutlineThickness) {
                    this.f7618n = typedArrayObtainStyledAttributes.getDimension(index, this.f7618n);
                    this.f7609e = true;
                } else if (index == R$styleable.MotionLabel_textBackground) {
                    this.D = typedArrayObtainStyledAttributes.getDrawable(index);
                    this.f7609e = true;
                } else if (index == R$styleable.MotionLabel_textBackgroundPanX) {
                    this.R = typedArrayObtainStyledAttributes.getFloat(index, this.R);
                } else if (index == R$styleable.MotionLabel_textBackgroundPanY) {
                    this.S = typedArrayObtainStyledAttributes.getFloat(index, this.S);
                } else if (index == R$styleable.MotionLabel_textPanX) {
                    this.K = typedArrayObtainStyledAttributes.getFloat(index, this.K);
                } else if (index == R$styleable.MotionLabel_textPanY) {
                    this.L = typedArrayObtainStyledAttributes.getFloat(index, this.L);
                } else if (index == R$styleable.MotionLabel_textBackgroundRotate) {
                    this.U = typedArrayObtainStyledAttributes.getFloat(index, this.U);
                } else if (index == R$styleable.MotionLabel_textBackgroundZoom) {
                    this.T = typedArrayObtainStyledAttributes.getFloat(index, this.T);
                } else if (index == R$styleable.MotionLabel_textureHeight) {
                    this.I = typedArrayObtainStyledAttributes.getDimension(index, this.I);
                } else if (index == R$styleable.MotionLabel_textureWidth) {
                    this.J = typedArrayObtainStyledAttributes.getDimension(index, this.J);
                } else if (index == R$styleable.MotionLabel_textureEffect) {
                    this.N = typedArrayObtainStyledAttributes.getInt(index, this.N);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        j();
        i();
    }

    private void g(String str, int i11, int i12) {
        Typeface typefaceCreate;
        if (str != null) {
            typefaceCreate = Typeface.create(str, i12);
            if (typefaceCreate != null) {
                setTypeface(typefaceCreate);
                return;
            }
        } else {
            typefaceCreate = null;
        }
        if (i11 == 1) {
            typefaceCreate = Typeface.SANS_SERIF;
        } else if (i11 == 2) {
            typefaceCreate = Typeface.SERIF;
        } else if (i11 == 3) {
            typefaceCreate = Typeface.MONOSPACE;
        }
        if (i12 <= 0) {
            this.f7605a.setFakeBoldText(false);
            this.f7605a.setTextSkewX(0.0f);
            setTypeface(typefaceCreate);
        } else {
            Typeface typefaceDefaultFromStyle = typefaceCreate == null ? Typeface.defaultFromStyle(i12) : Typeface.create(typefaceCreate, i12);
            setTypeface(typefaceDefaultFromStyle);
            int i13 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i12;
            this.f7605a.setFakeBoldText((i13 & 1) != 0);
            this.f7605a.setTextSkewX((i13 & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    private float getHorizontalOffset() {
        float f11 = Float.isNaN(this.f7615k) ? 1.0f : this.f7614j / this.f7615k;
        TextPaint textPaint = this.f7605a;
        String str = this.f7619o;
        return (((((Float.isNaN(this.B) ? getMeasuredWidth() : this.B) - getPaddingLeft()) - getPaddingRight()) - (f11 * textPaint.measureText(str, 0, str.length()))) * (this.K + 1.0f)) / 2.0f;
    }

    private float getVerticalOffset() {
        float f11 = Float.isNaN(this.f7615k) ? 1.0f : this.f7614j / this.f7615k;
        Paint.FontMetrics fontMetrics = this.f7605a.getFontMetrics();
        float measuredHeight = ((Float.isNaN(this.C) ? getMeasuredHeight() : this.C) - getPaddingTop()) - getPaddingBottom();
        float f12 = fontMetrics.descent;
        float f13 = fontMetrics.ascent;
        return (((measuredHeight - ((f12 - f13) * f11)) * (1.0f - this.L)) / 2.0f) - (f11 * f13);
    }

    private void h(Context context, AttributeSet attributeSet) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.colorPrimary, typedValue, true);
        TextPaint textPaint = this.f7605a;
        int i11 = typedValue.data;
        this.f7607c = i11;
        textPaint.setColor(i11);
    }

    private void j() {
        if (this.D != null) {
            this.H = new Matrix();
            int intrinsicWidth = this.D.getIntrinsicWidth();
            int intrinsicHeight = this.D.getIntrinsicHeight();
            if (intrinsicWidth <= 0 && (intrinsicWidth = getWidth()) == 0) {
                intrinsicWidth = Float.isNaN(this.J) ? 128 : (int) this.J;
            }
            if (intrinsicHeight <= 0 && (intrinsicHeight = getHeight()) == 0) {
                intrinsicHeight = Float.isNaN(this.I) ? 128 : (int) this.I;
            }
            if (this.N != 0) {
                intrinsicWidth /= 2;
                intrinsicHeight /= 2;
            }
            this.F = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.F);
            this.D.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            this.D.setFilterBitmap(true);
            this.D.draw(canvas);
            if (this.N != 0) {
                this.F = d(this.F, 4);
            }
            Bitmap bitmap = this.F;
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            this.G = new BitmapShader(bitmap, tileMode, tileMode);
        }
    }

    private void k() {
        float f11 = Float.isNaN(this.R) ? 0.0f : this.R;
        float f12 = Float.isNaN(this.S) ? 0.0f : this.S;
        float f13 = Float.isNaN(this.T) ? 1.0f : this.T;
        float f14 = Float.isNaN(this.U) ? 0.0f : this.U;
        this.H.reset();
        float width = this.F.getWidth();
        float height = this.F.getHeight();
        float f15 = Float.isNaN(this.J) ? this.B : this.J;
        float f16 = Float.isNaN(this.I) ? this.C : this.I;
        float f17 = f13 * (width * f16 < height * f15 ? f15 / width : f16 / height);
        this.H.postScale(f17, f17);
        float f18 = width * f17;
        float f19 = f15 - f18;
        float f20 = f17 * height;
        float f21 = f16 - f20;
        if (!Float.isNaN(this.I)) {
            f21 = this.I / 2.0f;
        }
        if (!Float.isNaN(this.J)) {
            f19 = this.J / 2.0f;
        }
        this.H.postTranslate((((f11 * f19) + f15) - f18) * 0.5f, (((f12 * f21) + f16) - f20) * 0.5f);
        this.H.postRotate(f14, f15 / 2.0f, f16 / 2.0f);
        this.G.setLocalMatrix(this.H);
    }

    Bitmap d(Bitmap bitmap, int i11) {
        System.nanoTime();
        int width = bitmap.getWidth() / 2;
        int height = bitmap.getHeight() / 2;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, width, height, true);
        for (int i12 = 0; i12 < i11 && width >= 32 && height >= 32; i12++) {
            width /= 2;
            height /= 2;
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, width, height, true);
        }
        return bitmapCreateScaledBitmap;
    }

    void e(float f11) {
        if (this.f7609e || f11 != 1.0f) {
            this.f7606b.reset();
            String str = this.f7619o;
            int length = str.length();
            this.f7605a.getTextBounds(str, 0, length, this.f7621q);
            this.f7605a.getTextPath(str, 0, length, 0.0f, 0.0f, this.f7606b);
            if (f11 != 1.0f) {
                Log.v(V, androidx.constraintlayout.motion.widget.a.a() + " scale " + f11);
                Matrix matrix = new Matrix();
                matrix.postScale(f11, f11);
                this.f7606b.transform(matrix);
            }
            Rect rect = this.f7621q;
            rect.right--;
            rect.left++;
            rect.bottom++;
            rect.top--;
            RectF rectF = new RectF();
            rectF.bottom = getHeight();
            rectF.right = getWidth();
            this.f7620p = false;
        }
    }

    public float getRound() {
        return this.f7611g;
    }

    public float getRoundPercent() {
        return this.f7610f;
    }

    public float getScaleFromTextSize() {
        return this.f7615k;
    }

    public float getTextBackgroundPanX() {
        return this.R;
    }

    public float getTextBackgroundPanY() {
        return this.S;
    }

    public float getTextBackgroundRotate() {
        return this.U;
    }

    public float getTextBackgroundZoom() {
        return this.T;
    }

    public int getTextOutlineColor() {
        return this.f7608d;
    }

    public float getTextPanX() {
        return this.K;
    }

    public float getTextPanY() {
        return this.L;
    }

    public float getTextureHeight() {
        return this.I;
    }

    public float getTextureWidth() {
        return this.J;
    }

    public Typeface getTypeface() {
        return this.f7605a.getTypeface();
    }

    void i() {
        this.f7622r = getPaddingLeft();
        this.f7623s = getPaddingRight();
        this.f7624t = getPaddingTop();
        this.f7625u = getPaddingBottom();
        g(this.f7626v, this.f7617m, this.f7616l);
        this.f7605a.setColor(this.f7607c);
        this.f7605a.setStrokeWidth(this.f7618n);
        this.f7605a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f7605a.setFlags(128);
        setTextSize(this.f7614j);
        this.f7605a.setAntiAlias(true);
    }

    @Override // androidx.constraintlayout.motion.widget.c
    public void layout(float f11, float f12, float f13, float f14) {
        int i11 = (int) (f11 + 0.5f);
        this.A = f11 - i11;
        int i12 = (int) (f13 + 0.5f);
        int i13 = i12 - i11;
        int i14 = (int) (f14 + 0.5f);
        int i15 = (int) (0.5f + f12);
        int i16 = i14 - i15;
        float f15 = f13 - f11;
        this.B = f15;
        float f16 = f14 - f12;
        this.C = f16;
        c(f11, f12, f13, f14);
        if (getMeasuredHeight() == i16 && getMeasuredWidth() == i13) {
            super.layout(i11, i15, i12, i14);
        } else {
            measure(View.MeasureSpec.makeMeasureSpec(i13, 1073741824), View.MeasureSpec.makeMeasureSpec(i16, 1073741824));
            super.layout(i11, i15, i12, i14);
        }
        if (this.f7630z) {
            if (this.O == null) {
                this.P = new Paint();
                this.O = new Rect();
                this.P.set(this.f7605a);
                this.Q = this.P.getTextSize();
            }
            this.B = f15;
            this.C = f16;
            Paint paint = this.P;
            String str = this.f7619o;
            paint.getTextBounds(str, 0, str.length(), this.O);
            int iWidth = this.O.width();
            float fHeight = this.O.height() * 1.3f;
            float f17 = (f15 - this.f7623s) - this.f7622r;
            float f18 = (f16 - this.f7625u) - this.f7624t;
            float f19 = iWidth;
            if (f19 * f18 > fHeight * f17) {
                this.f7605a.setTextSize((this.Q * f17) / f19);
            } else {
                this.f7605a.setTextSize((this.Q * f18) / fHeight);
            }
            if (this.f7609e || !Float.isNaN(this.f7615k)) {
                e(Float.isNaN(this.f7615k) ? 1.0f : this.f7614j / this.f7615k);
            }
        }
    }

    @Override // android.view.View
    public void layout(int i11, int i12, int i13, int i14) {
        super.layout(i11, i12, i13, i14);
        boolean zIsNaN = Float.isNaN(this.f7615k);
        float f11 = zIsNaN ? 1.0f : this.f7614j / this.f7615k;
        this.B = i13 - i11;
        this.C = i14 - i12;
        if (this.f7630z) {
            if (this.O == null) {
                this.P = new Paint();
                this.O = new Rect();
                this.P.set(this.f7605a);
                this.Q = this.P.getTextSize();
            }
            Paint paint = this.P;
            String str = this.f7619o;
            paint.getTextBounds(str, 0, str.length(), this.O);
            int iWidth = this.O.width();
            int iHeight = (int) (this.O.height() * 1.3f);
            float f12 = (this.B - this.f7623s) - this.f7622r;
            float f13 = (this.C - this.f7625u) - this.f7624t;
            if (zIsNaN) {
                float f14 = iWidth;
                float f15 = iHeight;
                if (f14 * f13 > f15 * f12) {
                    this.f7605a.setTextSize((this.Q * f12) / f14);
                } else {
                    this.f7605a.setTextSize((this.Q * f13) / f15);
                }
            } else {
                float f16 = iWidth;
                float f17 = iHeight;
                f11 = f16 * f13 > f17 * f12 ? f12 / f16 : f13 / f17;
            }
        }
        if (this.f7609e || !zIsNaN) {
            c(i11, i12, i13, i14);
            e(f11);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f11 = Float.isNaN(this.f7615k) ? 1.0f : this.f7614j / this.f7615k;
        super.onDraw(canvas);
        if (!this.f7609e && f11 == 1.0f) {
            canvas.drawText(this.f7619o, this.A + this.f7622r + getHorizontalOffset(), this.f7624t + getVerticalOffset(), this.f7605a);
            return;
        }
        if (this.f7620p) {
            e(f11);
        }
        if (this.E == null) {
            this.E = new Matrix();
        }
        if (!this.f7609e) {
            float horizontalOffset = this.f7622r + getHorizontalOffset();
            float verticalOffset = this.f7624t + getVerticalOffset();
            this.E.reset();
            this.E.preTranslate(horizontalOffset, verticalOffset);
            this.f7606b.transform(this.E);
            this.f7605a.setColor(this.f7607c);
            this.f7605a.setStyle(Paint.Style.FILL_AND_STROKE);
            this.f7605a.setStrokeWidth(this.f7618n);
            canvas.drawPath(this.f7606b, this.f7605a);
            this.E.reset();
            this.E.preTranslate(-horizontalOffset, -verticalOffset);
            this.f7606b.transform(this.E);
            return;
        }
        this.M.set(this.f7605a);
        this.E.reset();
        float horizontalOffset2 = this.f7622r + getHorizontalOffset();
        float verticalOffset2 = this.f7624t + getVerticalOffset();
        this.E.postTranslate(horizontalOffset2, verticalOffset2);
        this.E.preScale(f11, f11);
        this.f7606b.transform(this.E);
        if (this.G != null) {
            this.f7605a.setFilterBitmap(true);
            this.f7605a.setShader(this.G);
        } else {
            this.f7605a.setColor(this.f7607c);
        }
        this.f7605a.setStyle(Paint.Style.FILL);
        this.f7605a.setStrokeWidth(this.f7618n);
        canvas.drawPath(this.f7606b, this.f7605a);
        if (this.G != null) {
            this.f7605a.setShader(null);
        }
        this.f7605a.setColor(this.f7608d);
        this.f7605a.setStyle(Paint.Style.STROKE);
        this.f7605a.setStrokeWidth(this.f7618n);
        canvas.drawPath(this.f7606b, this.f7605a);
        this.E.reset();
        this.E.postTranslate(-horizontalOffset2, -verticalOffset2);
        this.f7606b.transform(this.E);
        this.f7605a.set(this.M);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i12);
        this.f7630z = false;
        this.f7622r = getPaddingLeft();
        this.f7623s = getPaddingRight();
        this.f7624t = getPaddingTop();
        this.f7625u = getPaddingBottom();
        if (mode != 1073741824 || mode2 != 1073741824) {
            TextPaint textPaint = this.f7605a;
            String str = this.f7619o;
            textPaint.getTextBounds(str, 0, str.length(), this.f7621q);
            if (mode != 1073741824) {
                size = (int) (this.f7621q.width() + 0.99999f);
            }
            size += this.f7622r + this.f7623s;
            if (mode2 != 1073741824) {
                int fontMetricsInt = (int) (this.f7605a.getFontMetricsInt(null) + 0.99999f);
                if (mode2 == Integer.MIN_VALUE) {
                    fontMetricsInt = Math.min(size2, fontMetricsInt);
                }
                size2 = this.f7624t + this.f7625u + fontMetricsInt;
            }
        } else if (this.f7629y != 0) {
            this.f7630z = true;
        }
        setMeasuredDimension(size, size2);
    }

    @SuppressLint({"RtlHardcoded"})
    public void setGravity(int i11) {
        if ((i11 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 0) {
            i11 |= GravityCompat.START;
        }
        if ((i11 & 112) == 0) {
            i11 |= 48;
        }
        if (i11 != this.f7628x) {
            invalidate();
        }
        this.f7628x = i11;
        int i12 = i11 & 112;
        if (i12 == 48) {
            this.L = -1.0f;
        } else if (i12 != 80) {
            this.L = 0.0f;
        } else {
            this.L = 1.0f;
        }
        int i13 = i11 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i13 != 3) {
            if (i13 != 5) {
                if (i13 != 8388611) {
                    if (i13 != 8388613) {
                        this.K = 0.0f;
                        return;
                    }
                }
            }
            this.K = 1.0f;
            return;
        }
        this.K = -1.0f;
    }

    public void setRound(float f11) {
        if (Float.isNaN(f11)) {
            this.f7611g = f11;
            float f12 = this.f7610f;
            this.f7610f = -1.0f;
            setRoundPercent(f12);
            return;
        }
        boolean z10 = this.f7611g != f11;
        this.f7611g = f11;
        if (f11 != 0.0f) {
            if (this.f7606b == null) {
                this.f7606b = new Path();
            }
            if (this.f7613i == null) {
                this.f7613i = new RectF();
            }
            if (this.f7612h == null) {
                b bVar = new b();
                this.f7612h = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f7613i.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f7606b.reset();
            Path path = this.f7606b;
            RectF rectF = this.f7613i;
            float f13 = this.f7611g;
            path.addRoundRect(rectF, f13, f13, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f11) {
        boolean z10 = this.f7610f != f11;
        this.f7610f = f11;
        if (f11 != 0.0f) {
            if (this.f7606b == null) {
                this.f7606b = new Path();
            }
            if (this.f7613i == null) {
                this.f7613i = new RectF();
            }
            if (this.f7612h == null) {
                a aVar = new a();
                this.f7612h = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f7610f) / 2.0f;
            this.f7613i.set(0.0f, 0.0f, width, height);
            this.f7606b.reset();
            this.f7606b.addRoundRect(this.f7613i, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setScaleFromTextSize(float f11) {
        this.f7615k = f11;
    }

    public void setText(CharSequence charSequence) {
        this.f7619o = charSequence.toString();
        invalidate();
    }

    public void setTextBackgroundPanX(float f11) {
        this.R = f11;
        k();
        invalidate();
    }

    public void setTextBackgroundPanY(float f11) {
        this.S = f11;
        k();
        invalidate();
    }

    public void setTextBackgroundRotate(float f11) {
        this.U = f11;
        k();
        invalidate();
    }

    public void setTextBackgroundZoom(float f11) {
        this.T = f11;
        k();
        invalidate();
    }

    public void setTextFillColor(int i11) {
        this.f7607c = i11;
        invalidate();
    }

    public void setTextOutlineColor(int i11) {
        this.f7608d = i11;
        this.f7609e = true;
        invalidate();
    }

    public void setTextOutlineThickness(float f11) {
        this.f7618n = f11;
        this.f7609e = true;
        if (Float.isNaN(f11)) {
            this.f7618n = 1.0f;
            this.f7609e = false;
        }
        invalidate();
    }

    public void setTextPanX(float f11) {
        this.K = f11;
        invalidate();
    }

    public void setTextPanY(float f11) {
        this.L = f11;
        invalidate();
    }

    public void setTextSize(float f11) {
        this.f7614j = f11;
        Log.v(V, androidx.constraintlayout.motion.widget.a.a() + "  " + f11 + " / " + this.f7615k);
        TextPaint textPaint = this.f7605a;
        if (!Float.isNaN(this.f7615k)) {
            f11 = this.f7615k;
        }
        textPaint.setTextSize(f11);
        e(Float.isNaN(this.f7615k) ? 1.0f : this.f7614j / this.f7615k);
        requestLayout();
        invalidate();
    }

    public void setTextureHeight(float f11) {
        this.I = f11;
        k();
        invalidate();
    }

    public void setTextureWidth(float f11) {
        this.J = f11;
        k();
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        if (this.f7605a.getTypeface() != typeface) {
            this.f7605a.setTypeface(typeface);
            if (this.f7627w != null) {
                this.f7627w = null;
                requestLayout();
                invalidate();
            }
        }
    }
}
