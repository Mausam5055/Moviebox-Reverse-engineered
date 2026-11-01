package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.transsion.gslb.Utils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class MBCusRoundImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f34547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f34550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Xfermode f34551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f34552f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f34553g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f34554h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f34555i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f34556j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f34557k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f34558l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f34559m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f34560n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float[] f34561o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f34562p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private RectF f34563q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private RectF f34564r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f34565s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f34566t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Path f34567u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Paint f34568v;

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.baseview.cusview.MBCusRoundImageView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34569a;

        static {
            int[] iArr = new int[c.values().length];
            f34569a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34569a[c.src.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34569a[c.background.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34569a[c.contentDescription.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34569a[c.tag.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34569a[c.visibility.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34569a[c.scaleType.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34569a[c.padding.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34569a[c.paddingTop.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f34569a[c.paddingBottom.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f34569a[c.paddingLeft.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f34569a[c.paddingRight.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f34569a[c.layout_width.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f34569a[c.layout_height.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f34569a[c.gravity.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f34569a[c.layout_gravity.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public MBCusRoundImageView(Context context) {
        this(context, null);
    }

    public MBCusRoundImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, null, 0);
        try {
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(context, attributeSet));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public MBCusRoundImageView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34567u = new Path();
        this.f34568v = new Paint();
        this.f34561o = new float[8];
        this.f34562p = new float[8];
        this.f34564r = new RectF();
        this.f34563q = new RectF();
        this.f34551e = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
    }

    private void a() {
        if (this.f34561o == null || this.f34562p == null) {
            return;
        }
        int i11 = 0;
        while (true) {
            try {
                float[] fArr = this.f34561o;
                if (i11 >= fArr.length) {
                    return;
                }
                float f11 = this.f34554h;
                fArr[i11] = f11;
                this.f34562p[i11] = f11 - (this.f34559m / 2.0f);
                i11++;
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
    }

    private void a(int i11, int i12) {
        Path path = this.f34567u;
        if (path != null) {
            path.reset();
        }
        Paint paint = this.f34568v;
        if (paint != null) {
            paint.setStrokeWidth(i11);
            this.f34568v.setColor(i12);
            this.f34568v.setStyle(Paint.Style.STROKE);
        }
    }

    private void a(Canvas canvas) {
        a(canvas, this.f34559m, this.f34560n, this.f34564r, this.f34561o);
    }

    private void a(Canvas canvas, int i11, int i12, RectF rectF, float[] fArr) {
        try {
            a(i11, i12);
            Path path = this.f34567u;
            if (path != null) {
                path.addRoundRect(rectF, fArr, Path.Direction.CCW);
            }
            if (canvas != null) {
                canvas.drawPath(this.f34567u, this.f34568v);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void b() {
        int i11;
        int i12;
        int i13;
        try {
            if (this.f34561o == null || this.f34562p == null) {
                return;
            }
            int i14 = 0;
            while (true) {
                i11 = 2;
                if (i14 >= 2) {
                    break;
                }
                float[] fArr = this.f34561o;
                float f11 = this.f34555i;
                fArr[i14] = f11;
                this.f34562p[i14] = f11 - (this.f34559m / 2.0f);
                i14++;
            }
            while (true) {
                i12 = 4;
                if (i11 >= 4) {
                    break;
                }
                float[] fArr2 = this.f34561o;
                float f12 = this.f34556j;
                fArr2[i11] = f12;
                this.f34562p[i11] = f12 - (this.f34559m / 2.0f);
                i11++;
            }
            while (true) {
                if (i12 >= 6) {
                    break;
                }
                float[] fArr3 = this.f34561o;
                float f13 = this.f34557k;
                fArr3[i12] = f13;
                this.f34562p[i12] = f13 - (this.f34559m / 2.0f);
                i12++;
            }
            for (i13 = 6; i13 < 8; i13++) {
                float[] fArr4 = this.f34561o;
                float f14 = this.f34558l;
                fArr4[i13] = f14;
                this.f34562p[i13] = f14 - (this.f34559m / 2.0f);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void c() {
        RectF rectF = this.f34564r;
        if (rectF != null) {
            float f11 = this.f34559m / 2.0f;
            rectF.set(f11, f11, this.f34552f - f11, this.f34553g - f11);
        }
    }

    private void d() {
        RectF rectF = this.f34563q;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, this.f34552f, this.f34553g);
        }
    }

    public ViewGroup.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i11));
            if (cVar != null) {
                int i12 = AnonymousClass1.f34569a[cVar.ordinal()];
                if (i12 == 6) {
                    String attributeValue = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue)) {
                        if (attributeValue.equals("invisible")) {
                            setVisibility(4);
                        } else if (attributeValue.equalsIgnoreCase("gone")) {
                            setVisibility(8);
                        }
                    }
                } else if (i12 == 13) {
                    String attributeValue2 = attributeSet.getAttributeValue(i11);
                    if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                        layoutParams.width = -1;
                    } else if (attributeValue2.startsWith("wrap")) {
                        layoutParams.width = -2;
                    } else {
                        layoutParams.width = b.a().a(attributeValue2);
                    }
                } else if (i12 == 14) {
                    String attributeValue3 = attributeSet.getAttributeValue(i11);
                    if (attributeValue3.startsWith("f") || attributeValue3.startsWith("m")) {
                        layoutParams.height = -1;
                    } else if (attributeValue3.startsWith("wrap")) {
                        layoutParams.height = -2;
                    } else {
                        layoutParams.height = b.a().a(attributeValue3);
                    }
                }
            }
        }
        return layoutParams;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (canvas == null) {
            return;
        }
        try {
            canvas.saveLayer(this.f34563q, null, 31);
            int i11 = this.f34552f;
            int i12 = this.f34559m * 2;
            float f11 = (i11 - i12) * 1.0f;
            float f12 = i11;
            int i13 = this.f34553g;
            float f13 = i13;
            canvas.scale(f11 / f12, ((i13 - i12) * 1.0f) / f13, f12 / 2.0f, f13 / 2.0f);
            super.onDraw(canvas);
            Paint paint = this.f34568v;
            if (paint != null) {
                paint.reset();
                this.f34568v.setAntiAlias(true);
                this.f34568v.setStyle(Paint.Style.FILL);
                this.f34568v.setXfermode(this.f34551e);
            }
            Path path = this.f34567u;
            if (path != null) {
                path.reset();
                this.f34567u.addRoundRect(this.f34563q, this.f34562p, Path.Direction.CCW);
            }
            canvas.drawPath(this.f34567u, this.f34568v);
            Paint paint2 = this.f34568v;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restore();
            if (this.f34565s) {
                a(canvas);
            }
        } catch (Exception e11) {
            o0.a("MBridgeImageView", e11.getMessage());
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        try {
            this.f34552f = i11;
            this.f34553g = i12;
            if (this.f34566t) {
                b();
            } else {
                a();
            }
            c();
            d();
        } catch (Exception e11) {
            o0.b("MBridgeImageView", e11.getMessage());
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        String[] strArrSplit;
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i11));
            if (cVar != null) {
                switch (AnonymousClass1.f34569a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i11);
                        if (attributeValue.startsWith("@+id/")) {
                            setId(attributeValue.substring(5).hashCode());
                        }
                        break;
                    case 2:
                        b.a().a(attributeSet.getAttributeValue(i11), this);
                        break;
                    case 3:
                        String attributeValue2 = attributeSet.getAttributeValue(i11);
                        if (attributeValue2.startsWith(Utils.SEPARATOR)) {
                            try {
                                strArrSplit = attributeValue2.split("-");
                            } catch (Exception unused) {
                                strArrSplit = null;
                            }
                            if (strArrSplit != null && strArrSplit.length <= 2) {
                                setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i11)));
                            } else if (strArrSplit == null || strArrSplit.length != 3) {
                                setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i11)));
                            } else {
                                try {
                                    GradientDrawable gradientDrawable = new GradientDrawable(GradientOrientationUtils.getOrientation(strArrSplit[2]), new int[]{Color.parseColor(strArrSplit[0]), Color.parseColor(strArrSplit[1])});
                                    gradientDrawable.setGradientType(0);
                                    setBackground(gradientDrawable);
                                } catch (Exception unused2) {
                                    setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i11)));
                                }
                            }
                        } else {
                            if (attributeValue2.startsWith("@drawable/")) {
                                attributeValue2 = attributeValue2.substring(10);
                            }
                            setBackgroundResource(getResources().getIdentifier(attributeValue2, "drawable", getContext().getPackageName()));
                        }
                        break;
                    case 4:
                        String attributeValue3 = attributeSet.getAttributeValue(i11);
                        if (!TextUtils.isEmpty(attributeValue3)) {
                            CharSequence charSequence = (String) com.mbridge.msdk.dycreator.utils.b.f34895a.get(attributeValue3.substring(8));
                            if (!TextUtils.isEmpty(charSequence)) {
                                setContentDescription(charSequence);
                            }
                        }
                        break;
                    case 5:
                        String attributeValue4 = attributeSet.getAttributeValue(i11);
                        if (!TextUtils.isEmpty(attributeValue4)) {
                            String str = com.mbridge.msdk.dycreator.utils.b.f34895a.get(attributeValue4.substring(8));
                            if (!TextUtils.isEmpty(str)) {
                                setTag(str);
                            }
                        }
                        break;
                    case 6:
                        String attributeValue5 = attributeSet.getAttributeValue(i11);
                        if (!TextUtils.isEmpty(attributeValue5)) {
                            if (attributeValue5.equals("invisible")) {
                                setVisibility(4);
                            } else if (attributeValue5.equalsIgnoreCase("gone")) {
                                setVisibility(8);
                            }
                        }
                        break;
                    case 7:
                        String attributeValue6 = attributeSet.getAttributeValue(i11);
                        if (!TextUtils.isEmpty(attributeValue6)) {
                            if (attributeValue6.equals("fitXY")) {
                                setScaleType(ImageView.ScaleType.FIT_XY);
                            } else if (attributeValue6.equals("centerInside")) {
                                setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                            } else if (attributeValue6.equals("centerCrop")) {
                                setScaleType(ImageView.ScaleType.CENTER_CROP);
                            }
                        }
                        break;
                    case 8:
                        int iA = b.a().a(attributeSet.getAttributeValue(i11));
                        this.f34550d = iA;
                        this.f34549c = iA;
                        this.f34548b = iA;
                        this.f34547a = iA;
                        setPadding(iA, iA, iA, iA);
                        break;
                    case 9:
                        int iA2 = b.a().a(attributeSet.getAttributeValue(i11));
                        this.f34548b = iA2;
                        setPadding(this.f34547a, iA2, this.f34549c, this.f34550d);
                        break;
                    case 10:
                        int iA3 = b.a().a(attributeSet.getAttributeValue(i11));
                        this.f34550d = iA3;
                        setPadding(this.f34547a, this.f34548b, this.f34549c, iA3);
                        break;
                    case 11:
                        int iA4 = b.a().a(attributeSet.getAttributeValue(i11));
                        this.f34547a = iA4;
                        setPadding(iA4, this.f34548b, this.f34549c, this.f34550d);
                        break;
                    case 12:
                        int iA5 = b.a().a(attributeSet.getAttributeValue(i11));
                        this.f34549c = iA5;
                        setPadding(this.f34547a, this.f34548b, iA5, this.f34550d);
                        break;
                }
            }
        }
    }

    public void setBorder(int i11, int i12, int i13) {
        this.f34565s = true;
        this.f34559m = i12;
        this.f34560n = i13;
        this.f34554h = i11;
    }

    public void setCornerRadius(int i11) {
        this.f34554h = i11;
    }

    public void setCustomBorder(int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f34565s = true;
        this.f34566t = true;
        this.f34559m = i15;
        this.f34560n = i16;
        this.f34555i = i11;
        this.f34557k = i13;
        this.f34556j = i12;
        this.f34558l = i14;
    }
}
