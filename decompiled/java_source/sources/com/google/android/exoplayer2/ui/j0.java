package com.google.android.exoplayer2.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes3.dex */
final class j0 {
    private int A;
    private int B;
    private int C;
    private int D;
    private StaticLayout E;
    private StaticLayout F;
    private int G;
    private int H;
    private int I;
    private Rect J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f27166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f27167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f27168c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f27169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f27170e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TextPaint f27171f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f27172g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f27173h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private CharSequence f27174i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Layout.Alignment f27175j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Bitmap f27176k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f27177l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f27178m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f27179n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f27180o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f27181p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f27182q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f27183r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f27184s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f27185t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f27186u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f27187v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f27188w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f27189x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f27190y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f27191z;

    public j0(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f27170e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f27169d = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f27166a = fRound;
        this.f27167b = fRound;
        this.f27168c = fRound;
        TextPaint textPaint = new TextPaint();
        this.f27171f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f27172g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f27173h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    private static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    private void c(Canvas canvas) {
        canvas.drawBitmap(this.f27176k, (Rect) null, this.J, this.f27173h);
    }

    private void d(Canvas canvas, boolean z10) {
        if (z10) {
            e(canvas);
            return;
        }
        com.google.android.exoplayer2.util.a.e(this.J);
        com.google.android.exoplayer2.util.a.e(this.f27176k);
        c(canvas);
    }

    private void e(Canvas canvas) {
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.G, this.H);
        if (Color.alpha(this.f27186u) > 0) {
            this.f27172g.setColor(this.f27186u);
            canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f27172g);
        }
        int i11 = this.f27188w;
        if (i11 == 1) {
            this.f27171f.setStrokeJoin(Paint.Join.ROUND);
            this.f27171f.setStrokeWidth(this.f27166a);
            this.f27171f.setColor(this.f27187v);
            this.f27171f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else if (i11 == 2) {
            TextPaint textPaint = this.f27171f;
            float f11 = this.f27167b;
            float f12 = this.f27168c;
            textPaint.setShadowLayer(f11, f12, f12, this.f27187v);
        } else if (i11 == 3 || i11 == 4) {
            boolean z10 = i11 == 3;
            int i12 = z10 ? -1 : this.f27187v;
            int i13 = z10 ? this.f27187v : -1;
            float f13 = this.f27167b / 2.0f;
            this.f27171f.setColor(this.f27184s);
            this.f27171f.setStyle(Paint.Style.FILL);
            float f14 = -f13;
            this.f27171f.setShadowLayer(this.f27167b, f14, f14, i12);
            staticLayout2.draw(canvas);
            this.f27171f.setShadowLayer(this.f27167b, f13, f13, i13);
        }
        this.f27171f.setColor(this.f27184s);
        this.f27171f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f27171f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0056  */
    /* JADX WARN: Code duplicated, block: B:16:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x005b  */
    private void f() {
        float f11;
        int i11;
        float f12;
        Bitmap bitmap = this.f27176k;
        int i12 = this.C;
        int i13 = this.A;
        int i14 = this.D;
        int i15 = this.B;
        float f13 = i12 - i13;
        float f14 = i13 + (this.f27180o * f13);
        float f15 = i14 - i15;
        float f16 = i15 + (this.f27177l * f15);
        int iRound = Math.round(f13 * this.f27182q);
        float f17 = this.f27183r;
        int iRound2 = f17 != -3.4028235E38f ? Math.round(f15 * f17) : Math.round(iRound * (bitmap.getHeight() / bitmap.getWidth()));
        int i16 = this.f27181p;
        if (i16 != 2) {
            if (i16 == 1) {
                f11 = iRound / 2;
            }
            int iRound3 = Math.round(f14);
            i11 = this.f27179n;
            if (i11 == 2) {
                if (i11 == 1) {
                    f12 = iRound2 / 2;
                }
                int iRound4 = Math.round(f16);
                this.J = new Rect(iRound3, iRound4, iRound + iRound3, iRound2 + iRound4);
            }
            f12 = iRound2;
            f16 -= f12;
            int iRound5 = Math.round(f16);
            this.J = new Rect(iRound3, iRound5, iRound + iRound3, iRound2 + iRound5);
        }
        f11 = iRound;
        f14 -= f11;
        int iRound6 = Math.round(f14);
        i11 = this.f27179n;
        if (i11 == 2) {
            if (i11 == 1) {
                f12 = iRound2 / 2;
            }
            int iRound7 = Math.round(f16);
            this.J = new Rect(iRound6, iRound7, iRound + iRound6, iRound2 + iRound7);
        }
        f12 = iRound2;
        f16 -= f12;
        int iRound8 = Math.round(f16);
        this.J = new Rect(iRound6, iRound8, iRound + iRound6, iRound2 + iRound8);
    }

    private void g() {
        int i11;
        int i12;
        int iMax;
        int iMin;
        int iRound;
        int i13;
        CharSequence charSequence = this.f27174i;
        SpannableStringBuilder spannableStringBuilder = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(this.f27174i);
        int i14 = this.C - this.A;
        int i15 = this.D - this.B;
        this.f27171f.setTextSize(this.f27189x);
        int i16 = (int) ((this.f27189x * 0.125f) + 0.5f);
        int i17 = i16 * 2;
        int i18 = i14 - i17;
        float f11 = this.f27182q;
        if (f11 != -3.4028235E38f) {
            i18 = (int) (i18 * f11);
        }
        int i19 = i18;
        if (i19 <= 0) {
            com.google.android.exoplayer2.util.s.i("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
            return;
        }
        if (this.f27190y > 0.0f) {
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) this.f27190y), 0, spannableStringBuilder.length(), 16711680);
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
        if (this.f27188w == 1) {
            for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), ForegroundColorSpan.class)) {
                spannableStringBuilder2.removeSpan(foregroundColorSpan);
            }
        }
        if (Color.alpha(this.f27185t) > 0) {
            int i20 = this.f27188w;
            if (i20 == 0 || i20 == 2) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f27185t), 0, spannableStringBuilder.length(), 16711680);
            } else {
                spannableStringBuilder2.setSpan(new BackgroundColorSpan(this.f27185t), 0, spannableStringBuilder2.length(), 16711680);
            }
        }
        Layout.Alignment alignment = this.f27175j;
        if (alignment == null) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        }
        Layout.Alignment alignment2 = alignment;
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, this.f27171f, i19, alignment2, this.f27169d, this.f27170e, true);
        this.E = staticLayout;
        int height = staticLayout.getHeight();
        int lineCount = this.E.getLineCount();
        int iMax2 = 0;
        for (int i21 = 0; i21 < lineCount; i21++) {
            iMax2 = Math.max((int) Math.ceil(this.E.getLineWidth(i21)), iMax2);
        }
        if (this.f27182q == -3.4028235E38f || iMax2 >= i19) {
            i19 = iMax2;
        }
        int i22 = i19 + i17;
        float f12 = this.f27180o;
        if (f12 != -3.4028235E38f) {
            int iRound2 = Math.round(i14 * f12);
            int i23 = this.A;
            int i24 = iRound2 + i23;
            int i25 = this.f27181p;
            i11 = 1;
            if (i25 != 1) {
                i12 = 2;
                if (i25 == 2) {
                    i24 -= i22;
                }
            } else {
                i12 = 2;
                i24 = ((i24 * 2) - i22) / 2;
            }
            iMax = Math.max(i24, i23);
            iMin = Math.min(i22 + iMax, this.C);
        } else {
            i11 = 1;
            i12 = 2;
            iMax = ((i14 - i22) / 2) + this.A;
            iMin = iMax + i22;
        }
        int i26 = iMin - iMax;
        if (i26 <= 0) {
            com.google.android.exoplayer2.util.s.i("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
            return;
        }
        float f13 = this.f27177l;
        if (f13 != -3.4028235E38f) {
            if (this.f27178m == 0) {
                iRound = Math.round(i15 * f13) + this.B;
                int i27 = this.f27179n;
                if (i27 == i12) {
                    iRound -= height;
                } else if (i27 == i11) {
                    iRound = ((iRound * 2) - height) / i12;
                }
            } else {
                int lineBottom = this.E.getLineBottom(0) - this.E.getLineTop(0);
                float f14 = this.f27177l;
                if (f14 >= 0.0f) {
                    iRound = Math.round(f14 * lineBottom) + this.B;
                } else {
                    iRound = Math.round((f14 + 1.0f) * lineBottom) + this.D;
                    iRound -= height;
                }
            }
            int i28 = iRound + height;
            int i29 = this.D;
            if (i28 <= i29) {
                int i30 = this.B;
                if (iRound < i30) {
                    i13 = i30;
                }
                this.E = new StaticLayout(spannableStringBuilder, this.f27171f, i26, alignment2, this.f27169d, this.f27170e, true);
                this.F = new StaticLayout(spannableStringBuilder2, this.f27171f, i26, alignment2, this.f27169d, this.f27170e, true);
                this.G = iMax;
                this.H = i13;
                this.I = i16;
            }
            iRound = i29 - height;
        } else {
            iRound = (this.D - height) - ((int) (i15 * this.f27191z));
        }
        i13 = iRound;
        this.E = new StaticLayout(spannableStringBuilder, this.f27171f, i26, alignment2, this.f27169d, this.f27170e, true);
        this.F = new StaticLayout(spannableStringBuilder2, this.f27171f, i26, alignment2, this.f27169d, this.f27170e, true);
        this.G = iMax;
        this.H = i13;
        this.I = i16;
    }

    public void b(ba.b bVar, c cVar, float f11, float f12, float f13, Canvas canvas, int i11, int i12, int i13, int i14) {
        int i15;
        boolean z10 = bVar.f16254d == null;
        if (!z10) {
            i15 = ViewCompat.MEASURED_STATE_MASK;
        } else if (TextUtils.isEmpty(bVar.f16251a)) {
            return;
        } else {
            i15 = bVar.f16262l ? bVar.f16263m : cVar.f27113c;
        }
        if (a(this.f27174i, bVar.f16251a) && com.google.android.exoplayer2.util.p0.c(this.f27175j, bVar.f16252b) && this.f27176k == bVar.f16254d && this.f27177l == bVar.f16255e && this.f27178m == bVar.f16256f && com.google.android.exoplayer2.util.p0.c(Integer.valueOf(this.f27179n), Integer.valueOf(bVar.f16257g)) && this.f27180o == bVar.f16258h && com.google.android.exoplayer2.util.p0.c(Integer.valueOf(this.f27181p), Integer.valueOf(bVar.f16259i)) && this.f27182q == bVar.f16260j && this.f27183r == bVar.f16261k && this.f27184s == cVar.f27111a && this.f27185t == cVar.f27112b && this.f27186u == i15 && this.f27188w == cVar.f27114d && this.f27187v == cVar.f27115e && com.google.android.exoplayer2.util.p0.c(this.f27171f.getTypeface(), cVar.f27116f) && this.f27189x == f11 && this.f27190y == f12 && this.f27191z == f13 && this.A == i11 && this.B == i12 && this.C == i13 && this.D == i14) {
            d(canvas, z10);
            return;
        }
        this.f27174i = bVar.f16251a;
        this.f27175j = bVar.f16252b;
        this.f27176k = bVar.f16254d;
        this.f27177l = bVar.f16255e;
        this.f27178m = bVar.f16256f;
        this.f27179n = bVar.f16257g;
        this.f27180o = bVar.f16258h;
        this.f27181p = bVar.f16259i;
        this.f27182q = bVar.f16260j;
        this.f27183r = bVar.f16261k;
        this.f27184s = cVar.f27111a;
        this.f27185t = cVar.f27112b;
        this.f27186u = i15;
        this.f27188w = cVar.f27114d;
        this.f27187v = cVar.f27115e;
        this.f27171f.setTypeface(cVar.f27116f);
        this.f27189x = f11;
        this.f27190y = f12;
        this.f27191z = f13;
        this.A = i11;
        this.B = i12;
        this.C = i13;
        this.D = i14;
        if (z10) {
            com.google.android.exoplayer2.util.a.e(this.f27174i);
            g();
        } else {
            com.google.android.exoplayer2.util.a.e(this.f27176k);
            f();
        }
        d(canvas, z10);
    }
}
