package com.contrarywind.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.contrarywind.timer.InertiaTimerTask;
import com.contrarywind.timer.SmoothScrollTimerTask;
import com.google.android.material.timepicker.TimeModel;
import com.tn.lib.view.FlowLayout;
import java.text.DateFormatSymbols;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import m7.a;
import n7.b;

/* JADX INFO: loaded from: classes3.dex */
public class WheelView extends View {
    private float A;
    private float B;
    private float C;
    private float D;
    private int E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;
    private float N;
    private long O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private float T;
    private final float U;
    private final List V;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DividerType f23988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f23989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f23990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private GestureDetector f23991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f23992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f23993f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f23994g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ScheduledExecutorService f23995h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ScheduledFuture f23996i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f23997j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f23998k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Paint f23999l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private a f24000m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f24001n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Boolean f24002o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f24003p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f24004q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f24005r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f24006s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f24007t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Typeface f24008u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f24009v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f24010w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f24011x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f24012y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f24013z;

    public enum ACTION {
        CLICK,
        FLING,
        DAGGLE
    }

    public enum DividerType {
        FILL,
        WRAP
    }

    public WheelView(Context context) {
        this(context, null);
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23993f = false;
        this.f23994g = true;
        this.f23995h = Executors.newSingleThreadScheduledExecutor();
        this.f24002o = Boolean.FALSE;
        this.f24008u = Typeface.MONOSPACE;
        this.f24012y = 4.0f;
        this.I = 5;
        this.M = 0;
        this.N = 0.0f;
        this.O = 0L;
        this.Q = 17;
        this.R = 0;
        this.S = 0;
        this.U = 0.5f;
        this.V = Arrays.asList(new DateFormatSymbols(Locale.getDefault()).getShortMonths());
        this.f24003p = getResources().getDimensionPixelSize(R$dimen.pickerview_textsize);
        float f11 = getResources().getDisplayMetrics().density;
        if (f11 < 1.0f) {
            this.T = 2.4f;
        } else if (1.0f <= f11 && f11 < 2.0f) {
            this.T = 3.6f;
        } else if (1.0f <= f11 && f11 < 2.0f) {
            this.T = 4.5f;
        } else if (2.0f <= f11 && f11 < 3.0f) {
            this.T = 6.0f;
        } else if (f11 >= 3.0f) {
            this.T = f11 * 2.5f;
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.pickerview, 0, 0);
            this.Q = typedArrayObtainStyledAttributes.getInt(R$styleable.pickerview_wheelview_gravity, 17);
            this.f24009v = typedArrayObtainStyledAttributes.getColor(R$styleable.pickerview_wheelview_textColorOut, FlowLayout.SPACING_AUTO);
            this.f24010w = typedArrayObtainStyledAttributes.getColor(R$styleable.pickerview_wheelview_textColorCenter, -16711936);
            this.f24011x = typedArrayObtainStyledAttributes.getColor(R$styleable.pickerview_wheelview_dividerColor, 855638016);
            this.f24003p = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.pickerview_wheelview_textSize, this.f24003p);
            this.f24012y = typedArrayObtainStyledAttributes.getFloat(R$styleable.pickerview_wheelview_lineSpacingMultiplier, this.f24012y);
            typedArrayObtainStyledAttributes.recycle();
        }
        h();
        f(context);
    }

    private String b(int i11) {
        try {
            return (String) this.V.get(i11 - 1);
        } catch (Exception unused) {
            return String.valueOf(i11);
        }
    }

    private String c(Object obj) {
        if (obj == null) {
            return "";
        }
        return obj instanceof Integer ? String.format(Locale.getDefault(), TimeModel.ZERO_LEADING_NUMBER_FORMAT, (Integer) obj) : obj.toString();
    }

    private int d(int i11) {
        if (i11 < 0) {
            return d(i11 + this.f24000m.a());
        }
        return i11 > this.f24000m.a() + (-1) ? d(i11 - this.f24000m.a()) : i11;
    }

    private String e(String str) {
        try {
            int i11 = Integer.parseInt(str);
            return i11 > 12 ? str : b(i11);
        } catch (Exception unused) {
            return str;
        }
    }

    private void f(Context context) {
        this.f23989b = context;
        this.f23990c = new o7.a(this);
        GestureDetector gestureDetector = new GestureDetector(context, new n7.a(this));
        this.f23991d = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.f24013z = true;
        this.D = 0.0f;
        this.E = -1;
        g();
    }

    private void g() {
        Paint paint = new Paint();
        this.f23997j = paint;
        paint.setColor(this.f24009v);
        this.f23997j.setAntiAlias(true);
        this.f23997j.setTypeface(this.f24008u);
        this.f23997j.setTextSize(this.f24003p);
        Paint paint2 = new Paint();
        this.f23998k = paint2;
        paint2.setColor(this.f24010w);
        this.f23998k.setAntiAlias(true);
        this.f23998k.setTextScaleX(1.1f);
        this.f23998k.setTypeface(this.f24008u);
        this.f23998k.setTextSize(this.f24003p);
        Paint paint3 = new Paint();
        this.f23999l = paint3;
        paint3.setColor(this.f24011x);
        this.f23999l.setAntiAlias(true);
        setLayerType(1, null);
    }

    private void h() {
        float f11 = this.f24012y;
        if (f11 < 1.0f) {
            this.f24012y = 1.0f;
        } else if (f11 > 4.0f) {
            this.f24012y = 4.0f;
        }
    }

    private void i() {
        Rect rect = new Rect();
        for (int i11 = 0; i11 < this.f24000m.a(); i11++) {
            String strC = c(this.f24000m.getItem(i11));
            this.f23998k.getTextBounds(strC, 0, strC.length(), rect);
            int iWidth = rect.width();
            if (iWidth > this.f24004q) {
                this.f24004q = iWidth;
            }
            this.f23998k.getTextBounds("星期", 0, 2, rect);
            this.f24005r = rect.height() + 2;
        }
        this.f24007t = this.f24005r * 3;
    }

    private void j(String str) {
        String str2;
        Rect rect = new Rect();
        this.f23998k.getTextBounds(str, 0, str.length(), rect);
        int i11 = this.Q;
        if (i11 == 3) {
            this.R = 0;
            return;
        }
        if (i11 == 5) {
            this.R = (this.K - rect.width()) - ((int) this.T);
            return;
        }
        if (i11 != 17) {
            return;
        }
        if (this.f23993f || (str2 = this.f24001n) == null || str2.equals("") || !this.f23994g) {
            this.R = (int) (((double) (this.K - rect.width())) * 0.5d);
        } else {
            this.R = (int) (((double) (this.K - rect.width())) * 0.25d);
        }
    }

    private void k(String str) {
        String str2;
        Rect rect = new Rect();
        this.f23997j.getTextBounds(str, 0, str.length(), rect);
        int i11 = this.Q;
        if (i11 == 3) {
            this.S = 0;
            return;
        }
        if (i11 == 5) {
            this.S = (this.K - rect.width()) - ((int) this.T);
            return;
        }
        if (i11 != 17) {
            return;
        }
        if (this.f23993f || (str2 = this.f24001n) == null || str2.equals("") || !this.f23994g) {
            this.S = (int) (((double) (this.K - rect.width())) * 0.5d);
        } else {
            this.S = (int) (((double) (this.K - rect.width())) * 0.25d);
        }
    }

    private void l(String str) {
        Rect rect = new Rect();
        this.f23998k.getTextBounds(str, 0, str.length(), rect);
        int i11 = this.f24003p;
        for (int iWidth = rect.width(); iWidth > this.K; iWidth = rect.width()) {
            i11--;
            this.f23998k.setTextSize(i11);
            this.f23998k.getTextBounds(str, 0, str.length(), rect);
        }
        this.f23997j.setTextSize(i11);
    }

    private void m() {
        if (this.f24000m == null) {
            return;
        }
        i();
        int i11 = (int) (this.f24007t * (this.I - 1));
        this.J = (int) (((double) (i11 * 2)) / 3.141592653589793d);
        this.L = (int) (((double) i11) / 3.141592653589793d);
        this.K = View.MeasureSpec.getSize(this.P);
        int i12 = this.J;
        float f11 = this.f24007t;
        this.A = (i12 - f11) / 2.0f;
        float f12 = (i12 + f11) / 2.0f;
        this.B = f12;
        this.C = (f12 - ((f11 - this.f24005r) / 2.0f)) - this.T;
        if (this.E == -1) {
            if (this.f24013z) {
                this.E = (this.f24000m.a() + 1) / 2;
            } else {
                this.E = 0;
            }
        }
        this.G = this.E;
    }

    public void cancelFuture() {
        ScheduledFuture scheduledFuture = this.f23996i;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f23996i.cancel(true);
        this.f23996i = null;
    }

    public final a getAdapter() {
        return this.f24000m;
    }

    public final int getCurrentItem() {
        int i11;
        a aVar = this.f24000m;
        if (aVar == null) {
            return 0;
        }
        return (!this.f24013z || ((i11 = this.F) >= 0 && i11 < aVar.a())) ? Math.max(0, Math.min(this.F, this.f24000m.a() - 1)) : Math.max(0, Math.min(Math.abs(Math.abs(this.F) - this.f24000m.a()), this.f24000m.a() - 1));
    }

    @Override // android.view.View
    public Handler getHandler() {
        return this.f23990c;
    }

    public int getInitPosition() {
        return this.E;
    }

    public float getItemHeight() {
        return this.f24007t;
    }

    public int getItemsCount() {
        a aVar = this.f24000m;
        if (aVar != null) {
            return aVar.a();
        }
        return 0;
    }

    public int getTextWidth(Paint paint, String str) {
        if (str == null || str.length() <= 0) {
            return 0;
        }
        int length = str.length();
        float[] fArr = new float[length];
        paint.getTextWidths(str, fArr);
        int iCeil = 0;
        for (int i11 = 0; i11 < length; i11++) {
            iCeil += (int) Math.ceil(fArr[i11]);
        }
        return iCeil;
    }

    public float getTotalScrollY() {
        return this.D;
    }

    public void isCenterLabel(boolean z10) {
        this.f23994g = z10;
    }

    public boolean isLoop() {
        return this.f24013z;
    }

    /* JADX WARN: Code duplicated, block: B:99:0x0303  */
    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i11;
        float f11;
        boolean z10;
        String strC;
        int i12;
        if (this.f24000m == null) {
            return;
        }
        boolean z11 = false;
        int iMin = Math.min(Math.max(0, this.E), this.f24000m.a() - 1);
        this.E = iMin;
        Object[] objArr = new Object[this.I];
        int i13 = (int) (this.D / this.f24007t);
        this.H = i13;
        try {
            this.G = iMin + (i13 % this.f24000m.a());
            while (true) {
                int i14 = this.I;
                if (i11 >= i14) {
                    break;
                }
                int i15 = this.G - ((i14 / 2) - i11);
                if (this.f24013z) {
                    objArr[i11] = this.f24000m.getItem(d(i15));
                } else if (i15 < 0) {
                    objArr[i11] = "";
                } else if (i15 > this.f24000m.a() - 1) {
                    objArr[i11] = "";
                } else {
                    objArr[i11] = this.f24000m.getItem(i15);
                }
                i11++;
            }
        } catch (ArithmeticException unused) {
            Log.e("WheelView", "出错了！adapter.getItemsCount() == 0，联动数据不匹配");
        }
        if (this.f24013z) {
            if (this.G < 0) {
                this.G = this.f24000m.a() + this.G;
            }
            if (this.G > this.f24000m.a() - 1) {
                this.G -= this.f24000m.a();
            }
        } else {
            if (this.G < 0) {
                this.G = 0;
            }
            if (this.G > this.f24000m.a() - 1) {
                this.G = this.f24000m.a() - 1;
            }
        }
        float f12 = this.D % this.f24007t;
        i11 = 0;
        float f13 = 0.0f;
        if (this.f23988a == DividerType.WRAP) {
            float f14 = (TextUtils.isEmpty(this.f24001n) ? (this.K - this.f24004q) / 2 : (this.K - this.f24004q) / 4) - 12;
            if (f14 <= 0.0f) {
                f14 = 10.0f;
            }
            float f15 = f14;
            float f16 = this.K - f15;
            float f17 = this.A;
            canvas.drawLine(f15, f17, f16, f17, this.f23999l);
            float f18 = this.B;
            canvas.drawLine(f15, f18, f16, f18, this.f23999l);
        } else {
            float f19 = this.A;
            canvas.drawLine(0.0f, f19, this.K, f19, this.f23999l);
            float f20 = this.B;
            canvas.drawLine(0.0f, f20, this.K, f20, this.f23999l);
        }
        if (!TextUtils.isEmpty(this.f24001n) && this.f23994g) {
            canvas.drawText(this.f24001n, (this.K - getTextWidth(this.f23998k, this.f24001n)) - this.T, this.C, this.f23998k);
        }
        int i16 = 0;
        while (i16 < this.I) {
            canvas.save();
            double d11 = ((this.f24007t * i16) - f12) / this.L;
            float f21 = (float) (90.0d - ((d11 / 3.141592653589793d) * 180.0d));
            if (f21 >= 90.0f || f21 <= -90.0f) {
                f11 = f13;
                z10 = z11;
                canvas.restore();
            } else {
                float fPow = (float) Math.pow(Math.abs(f21) / 90.0f, 2.2d);
                if (this.f23994g || TextUtils.isEmpty(this.f24001n) || TextUtils.isEmpty(c(objArr[i16]))) {
                    strC = c(objArr[i16]);
                } else {
                    strC = c(objArr[i16]) + this.f24001n;
                }
                if (this.f24002o.booleanValue()) {
                    strC = e(strC);
                }
                l(strC);
                j(strC);
                k(strC);
                float fCos = (float) ((((double) this.L) - (Math.cos(d11) * ((double) this.L))) - ((Math.sin(d11) * ((double) this.f24005r)) / 2.0d));
                canvas.translate(0.0f, fCos);
                float f22 = this.A;
                if (fCos > f22 || this.f24005r + fCos < f22) {
                    float f23 = this.B;
                    if (fCos > f23 || this.f24005r + fCos < f23) {
                        if (fCos >= f22) {
                            int i17 = this.f24005r;
                            if (i17 + fCos <= f23) {
                                canvas.drawText(strC, this.R, i17 - this.T, this.f23998k);
                                this.F = this.G - ((this.I / 2) - i16);
                            }
                            canvas.restore();
                            this.f23998k.setTextSize(this.f24003p);
                        }
                        canvas.save();
                        z10 = false;
                        canvas.clipRect(0, 0, this.K, (int) this.f24007t);
                        canvas.scale(1.0f, ((float) Math.sin(d11)) * 1.0f);
                        Paint paint = this.f23997j;
                        int i18 = this.f24006s;
                        if (i18 == 0) {
                            i12 = 0;
                        } else {
                            if (i18 > 0) {
                                f11 = 0.0f;
                                i12 = 1;
                            } else {
                                i12 = -1;
                            }
                            paint.setTextSkewX(i12 * (f21 <= f11 ? 1 : -1) * 0.5f * fPow);
                            this.f23997j.setAlpha((int) ((1.0f - fPow) * 255.0f));
                            canvas.drawText(strC, this.S + (this.f24006s * fPow), this.f24005r, this.f23997j);
                            canvas.restore();
                            canvas.restore();
                            this.f23998k.setTextSize(this.f24003p);
                        }
                        f11 = 0.0f;
                        paint.setTextSkewX(i12 * (f21 <= f11 ? 1 : -1) * 0.5f * fPow);
                        this.f23997j.setAlpha((int) ((1.0f - fPow) * 255.0f));
                        canvas.drawText(strC, this.S + (this.f24006s * fPow), this.f24005r, this.f23997j);
                        canvas.restore();
                        canvas.restore();
                        this.f23998k.setTextSize(this.f24003p);
                    } else {
                        canvas.save();
                        canvas.clipRect(0.0f, 0.0f, this.K, this.B - fCos);
                        canvas.scale(1.0f, ((float) Math.sin(d11)) * 1.0f);
                        canvas.drawText(strC, this.R, this.f24005r - this.T, this.f23998k);
                        canvas.restore();
                        canvas.save();
                        canvas.clipRect(0.0f, this.B - fCos, this.K, (int) this.f24007t);
                        canvas.scale(1.0f, ((float) Math.sin(d11)) * 1.0f);
                        canvas.drawText(strC, this.S, this.f24005r, this.f23997j);
                        canvas.restore();
                    }
                } else {
                    canvas.save();
                    canvas.clipRect(0.0f, 0.0f, this.K, this.A - fCos);
                    canvas.scale(1.0f, ((float) Math.sin(d11)) * 1.0f);
                    canvas.drawText(strC, this.S, this.f24005r, this.f23997j);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0.0f, this.A - fCos, this.K, (int) this.f24007t);
                    canvas.scale(1.0f, ((float) Math.sin(d11)) * 1.0f);
                    canvas.drawText(strC, this.R, this.f24005r - this.T, this.f23998k);
                    canvas.restore();
                }
                f11 = 0.0f;
                z10 = false;
                canvas.restore();
                this.f23998k.setTextSize(this.f24003p);
            }
            i16++;
            z11 = z10;
            f13 = f11;
        }
    }

    public final void onItemSelected() {
        if (this.f23992e != null) {
            postDelayed(new Runnable() { // from class: com.contrarywind.view.WheelView.1
                @Override // java.lang.Runnable
                public void run() {
                    WheelView.this.f23992e.a(WheelView.this.getCurrentItem());
                }
            }, 200L);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        this.P = i11;
        m();
        setMeasuredDimension(this.K, this.J);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = this.f23991d.onTouchEvent(motionEvent);
        float f11 = (-this.E) * this.f24007t;
        float fA = ((this.f24000m.a() - 1) - this.E) * this.f24007t;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.O = System.currentTimeMillis();
            cancelFuture();
            this.N = motionEvent.getRawY();
        } else {
            if (action == 2) {
                float rawY = this.N - motionEvent.getRawY();
                this.N = motionEvent.getRawY();
                float f12 = this.D + rawY;
                this.D = f12;
                if (!this.f24013z) {
                    float f13 = this.f24007t;
                    if ((f12 - (f13 * 0.25f) < f11 && rawY < 0.0f) || ((f13 * 0.25f) + f12 > fA && rawY > 0.0f)) {
                        this.D = f12 - rawY;
                    }
                }
                return true;
            }
            if (!zOnTouchEvent) {
                float y10 = motionEvent.getY();
                int i11 = this.L;
                double dAcos = Math.acos((i11 - y10) / i11) * ((double) this.L);
                float f14 = this.f24007t;
                this.M = (int) (((((int) ((dAcos + ((double) (f14 / 2.0f))) / ((double) f14))) - (this.I / 2)) * f14) - (((this.D % f14) + f14) % f14));
                if (System.currentTimeMillis() - this.O > 120) {
                    smoothScroll(ACTION.DAGGLE);
                } else {
                    smoothScroll(ACTION.CLICK);
                }
            }
        }
        if (motionEvent.getAction() != 0) {
            invalidate();
        }
        return true;
    }

    public final void scrollBy(float f11) {
        cancelFuture();
        this.f23996i = this.f23995h.scheduleWithFixedDelay(new InertiaTimerTask(this, f11), 0L, 5L, TimeUnit.MILLISECONDS);
    }

    public final void setAdapter(a aVar) {
        this.f24000m = aVar;
        m();
        invalidate();
    }

    public void setConvertMonth(boolean z10) {
        this.f24002o = Boolean.valueOf(z10);
    }

    public final void setCurrentItem(int i11) {
        this.F = i11;
        this.E = i11;
        this.D = 0.0f;
        invalidate();
    }

    public final void setCyclic(boolean z10) {
        this.f24013z = z10;
    }

    public void setDividerColor(int i11) {
        this.f24011x = i11;
        this.f23999l.setColor(i11);
    }

    public void setDividerType(DividerType dividerType) {
        this.f23988a = dividerType;
    }

    public void setGravity(int i11) {
        this.Q = i11;
    }

    public void setIsOptions(boolean z10) {
        this.f23993f = z10;
    }

    public void setLabel(String str) {
        this.f24001n = str;
    }

    public void setLineSpacingMultiplier(float f11) {
        if (f11 != 0.0f) {
            this.f24012y = f11;
            h();
        }
    }

    public final void setOnItemSelectedListener(b bVar) {
        this.f23992e = bVar;
    }

    public void setTextColorCenter(int i11) {
        this.f24010w = i11;
        this.f23998k.setColor(i11);
    }

    public void setTextColorOut(int i11) {
        this.f24009v = i11;
        this.f23997j.setColor(i11);
    }

    public final void setTextSize(float f11) {
        if (f11 > 0.0f) {
            int i11 = (int) (this.f23989b.getResources().getDisplayMetrics().density * f11);
            this.f24003p = i11;
            this.f23997j.setTextSize(i11);
            this.f23998k.setTextSize(this.f24003p);
        }
    }

    public void setTextXOffset(int i11) {
        this.f24006s = i11;
        if (i11 != 0) {
            this.f23998k.setTextScaleX(1.0f);
        }
    }

    public void setTotalScrollY(float f11) {
        this.D = f11;
    }

    public final void setTypeface(Typeface typeface) {
        this.f24008u = typeface;
        this.f23997j.setTypeface(typeface);
        this.f23998k.setTypeface(this.f24008u);
    }

    public void smoothScroll(ACTION action) {
        cancelFuture();
        if (action == ACTION.FLING || action == ACTION.DAGGLE) {
            float f11 = this.D;
            float f12 = this.f24007t;
            int i11 = (int) (((f11 % f12) + f12) % f12);
            this.M = i11;
            if (i11 > f12 / 2.0f) {
                this.M = (int) (f12 - i11);
            } else {
                this.M = -i11;
            }
        }
        this.f23996i = this.f23995h.scheduleWithFixedDelay(new SmoothScrollTimerTask(this, this.M), 0L, 10L, TimeUnit.MILLISECONDS);
    }
}
