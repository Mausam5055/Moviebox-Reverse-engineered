package com.transsion.baseui.widget.shimmer;

import android.content.res.TypedArray;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import com.transsion.baseui.R$styleable;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final float[] f43690a = new float[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int[] f43691b = new int[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final RectF f43692c = new RectF();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f43693d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f43694e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f43695f = 1291845631;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f43696g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f43697h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f43698i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f43699j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    float f43700k = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    float f43701l = 0.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f43702m = 0.5f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    float f43703n = 20.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f43704o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    boolean f43705p = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f43706q = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f43707r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f43708s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f43709t = 1000;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    long f43710u;

    /* JADX INFO: renamed from: com.transsion.baseui.widget.shimmer.a$a, reason: collision with other inner class name */
    public static class C0613a extends b {
        public C0613a() {
            this.f43711a.f43706q = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.transsion.baseui.widget.shimmer.a.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public C0613a d() {
            return this;
        }
    }

    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a f43711a = new a();

        private static float b(float f11, float f12, float f13) {
            return Math.min(f12, Math.max(f11, f13));
        }

        public a a() {
            this.f43711a.b();
            this.f43711a.c();
            return this.f43711a;
        }

        b c(TypedArray typedArray) {
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_clip_to_children)) {
                g(typedArray.getBoolean(R$styleable.ShimmerFrameLayout_shimmer_clip_to_children, this.f43711a.f43704o));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_auto_start)) {
                e(typedArray.getBoolean(R$styleable.ShimmerFrameLayout_shimmer_auto_start, this.f43711a.f43705p));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_base_alpha)) {
                f(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_base_alpha, 0.3f));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_highlight_alpha)) {
                n(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_highlight_alpha, 1.0f));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_duration)) {
                j(typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_duration, (int) this.f43711a.f43709t));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_repeat_count)) {
                p(typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_repeat_count, this.f43711a.f43707r));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_repeat_delay)) {
                q(typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_repeat_delay, (int) this.f43711a.f43710u));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_repeat_mode)) {
                r(typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_repeat_mode, this.f43711a.f43708s));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_direction)) {
                int i11 = typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_direction, this.f43711a.f43693d);
                if (i11 == 1) {
                    h(1);
                } else if (i11 == 2) {
                    h(2);
                } else if (i11 != 3) {
                    h(0);
                } else {
                    h(3);
                }
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_shape)) {
                if (typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_shape, this.f43711a.f43696g) != 1) {
                    s(0);
                } else {
                    s(1);
                }
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_dropoff)) {
                i(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_dropoff, this.f43711a.f43702m));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_fixed_width)) {
                l(typedArray.getDimensionPixelSize(R$styleable.ShimmerFrameLayout_shimmer_fixed_width, this.f43711a.f43697h));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_fixed_height)) {
                k(typedArray.getDimensionPixelSize(R$styleable.ShimmerFrameLayout_shimmer_fixed_height, this.f43711a.f43698i));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_intensity)) {
                o(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_intensity, this.f43711a.f43701l));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_width_ratio)) {
                u(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_width_ratio, this.f43711a.f43699j));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_height_ratio)) {
                m(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_height_ratio, this.f43711a.f43700k));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_tilt)) {
                t(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_tilt, this.f43711a.f43703n));
            }
            return d();
        }

        protected abstract b d();

        public b e(boolean z10) {
            this.f43711a.f43705p = z10;
            return d();
        }

        public b f(float f11) {
            int iB = (int) (b(0.0f, 1.0f, f11) * 255.0f);
            a aVar = this.f43711a;
            aVar.f43695f = (iB << 24) | (aVar.f43695f & 16777215);
            return d();
        }

        public b g(boolean z10) {
            this.f43711a.f43704o = z10;
            return d();
        }

        public b h(int i11) {
            this.f43711a.f43693d = i11;
            return d();
        }

        public b i(float f11) {
            if (f11 >= 0.0f) {
                this.f43711a.f43702m = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid dropoff value: " + f11);
        }

        public b j(long j11) {
            if (j11 >= 0) {
                this.f43711a.f43709t = j11;
                return d();
            }
            throw new IllegalArgumentException("Given a negative duration: " + j11);
        }

        public b k(int i11) {
            if (i11 >= 0) {
                this.f43711a.f43698i = i11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height: " + i11);
        }

        public b l(int i11) {
            if (i11 >= 0) {
                this.f43711a.f43697h = i11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width: " + i11);
        }

        public b m(float f11) {
            if (f11 >= 0.0f) {
                this.f43711a.f43700k = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height ratio: " + f11);
        }

        public b n(float f11) {
            int iB = (int) (b(0.0f, 1.0f, f11) * 255.0f);
            a aVar = this.f43711a;
            aVar.f43694e = (iB << 24) | (aVar.f43694e & 16777215);
            return d();
        }

        public b o(float f11) {
            if (f11 >= 0.0f) {
                this.f43711a.f43701l = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid intensity value: " + f11);
        }

        public b p(int i11) {
            this.f43711a.f43707r = i11;
            return d();
        }

        public b q(long j11) {
            if (j11 >= 0) {
                this.f43711a.f43710u = j11;
                return d();
            }
            throw new IllegalArgumentException("Given a negative repeat delay: " + j11);
        }

        public b r(int i11) {
            this.f43711a.f43708s = i11;
            return d();
        }

        public b s(int i11) {
            this.f43711a.f43696g = i11;
            return d();
        }

        public b t(float f11) {
            this.f43711a.f43703n = f11;
            return d();
        }

        public b u(float f11) {
            if (f11 >= 0.0f) {
                this.f43711a.f43699j = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width ratio: " + f11);
        }
    }

    public static class c extends b {
        public c() {
            this.f43711a.f43706q = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.transsion.baseui.widget.shimmer.a.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public c c(TypedArray typedArray) {
            super.c(typedArray);
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_base_color)) {
                x(typedArray.getColor(R$styleable.ShimmerFrameLayout_shimmer_base_color, this.f43711a.f43695f));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_highlight_color)) {
                y(typedArray.getColor(R$styleable.ShimmerFrameLayout_shimmer_highlight_color, this.f43711a.f43694e));
            }
            return d();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.transsion.baseui.widget.shimmer.a.b
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public c d() {
            return this;
        }

        public c x(int i11) {
            a aVar = this.f43711a;
            aVar.f43695f = (i11 & 16777215) | (aVar.f43695f & ViewCompat.MEASURED_STATE_MASK);
            return d();
        }

        public c y(int i11) {
            this.f43711a.f43694e = i11;
            return d();
        }
    }

    a() {
    }

    int a(int i11) {
        int i12 = this.f43698i;
        return i12 > 0 ? i12 : Math.round(this.f43700k * i11);
    }

    void b() {
        if (this.f43696g != 1) {
            int[] iArr = this.f43691b;
            int i11 = this.f43695f;
            iArr[0] = i11;
            int i12 = this.f43694e;
            iArr[1] = i12;
            iArr[2] = i12;
            iArr[3] = i11;
            return;
        }
        int[] iArr2 = this.f43691b;
        int i13 = this.f43694e;
        iArr2[0] = i13;
        iArr2[1] = i13;
        int i14 = this.f43695f;
        iArr2[2] = i14;
        iArr2[3] = i14;
    }

    void c() {
        if (this.f43696g != 1) {
            this.f43690a[0] = Math.max(((1.0f - this.f43701l) - this.f43702m) / 2.0f, 0.0f);
            this.f43690a[1] = Math.max(((1.0f - this.f43701l) - 0.001f) / 2.0f, 0.0f);
            this.f43690a[2] = Math.min(((this.f43701l + 1.0f) + 0.001f) / 2.0f, 1.0f);
            this.f43690a[3] = Math.min(((this.f43701l + 1.0f) + this.f43702m) / 2.0f, 1.0f);
            return;
        }
        float[] fArr = this.f43690a;
        fArr[0] = 0.0f;
        fArr[1] = Math.min(this.f43701l, 1.0f);
        this.f43690a[2] = Math.min(this.f43701l + this.f43702m, 1.0f);
        this.f43690a[3] = 1.0f;
    }

    int d(int i11) {
        int i12 = this.f43697h;
        return i12 > 0 ? i12 : Math.round(this.f43699j * i11);
    }
}
