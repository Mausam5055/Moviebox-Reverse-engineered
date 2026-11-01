package com.transsion.shorttv.base.widget.shimmer;

import android.content.res.TypedArray;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import com.transsion.shorttv.R$styleable;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final float[] f52934a = new float[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int[] f52935b = new int[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final RectF f52936c = new RectF();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f52937d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f52938e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f52939f = 1291845631;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f52940g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f52941h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f52942i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f52943j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    float f52944k = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    float f52945l = 0.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f52946m = 0.5f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    float f52947n = 20.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f52948o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    boolean f52949p = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f52950q = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f52951r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f52952s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f52953t = 1000;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    long f52954u;

    /* JADX INFO: renamed from: com.transsion.shorttv.base.widget.shimmer.a$a, reason: collision with other inner class name */
    public static class C0660a extends b {
        public C0660a() {
            this.f52955a.f52950q = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.transsion.shorttv.base.widget.shimmer.a.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public C0660a d() {
            return this;
        }
    }

    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a f52955a = new a();

        private static float b(float f11, float f12, float f13) {
            return Math.min(f12, Math.max(f11, f13));
        }

        public a a() {
            this.f52955a.b();
            this.f52955a.c();
            return this.f52955a;
        }

        b c(TypedArray typedArray) {
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_clip_to_children)) {
                g(typedArray.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_clip_to_children, this.f52955a.f52948o));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_auto_start)) {
                e(typedArray.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_auto_start, this.f52955a.f52949p));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_alpha)) {
                f(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_alpha, 0.3f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_alpha)) {
                n(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_alpha, 1.0f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_duration)) {
                j(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_duration, (int) this.f52955a.f52953t));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_count)) {
                p(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_count, this.f52955a.f52951r));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_delay)) {
                q(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_delay, (int) this.f52955a.f52954u));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_mode)) {
                r(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_mode, this.f52955a.f52952s));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_direction)) {
                int i11 = typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_direction, this.f52955a.f52937d);
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
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_shape)) {
                if (typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_shape, this.f52955a.f52940g) != 1) {
                    s(0);
                } else {
                    s(1);
                }
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_dropoff)) {
                i(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_dropoff, this.f52955a.f52946m));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_width)) {
                l(typedArray.getDimensionPixelSize(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_width, this.f52955a.f52941h));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_height)) {
                k(typedArray.getDimensionPixelSize(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_height, this.f52955a.f52942i));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_intensity)) {
                o(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_intensity, this.f52955a.f52945l));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_width_ratio)) {
                u(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_width_ratio, this.f52955a.f52943j));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_height_ratio)) {
                m(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_height_ratio, this.f52955a.f52944k));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_tilt)) {
                t(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_tilt, this.f52955a.f52947n));
            }
            return d();
        }

        protected abstract b d();

        public b e(boolean z10) {
            this.f52955a.f52949p = z10;
            return d();
        }

        public b f(float f11) {
            int iB = (int) (b(0.0f, 1.0f, f11) * 255.0f);
            a aVar = this.f52955a;
            aVar.f52939f = (iB << 24) | (aVar.f52939f & 16777215);
            return d();
        }

        public b g(boolean z10) {
            this.f52955a.f52948o = z10;
            return d();
        }

        public b h(int i11) {
            this.f52955a.f52937d = i11;
            return d();
        }

        public b i(float f11) {
            if (f11 >= 0.0f) {
                this.f52955a.f52946m = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid dropoff value: " + f11);
        }

        public b j(long j11) {
            if (j11 >= 0) {
                this.f52955a.f52953t = j11;
                return d();
            }
            throw new IllegalArgumentException("Given a negative duration: " + j11);
        }

        public b k(int i11) {
            if (i11 >= 0) {
                this.f52955a.f52942i = i11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height: " + i11);
        }

        public b l(int i11) {
            if (i11 >= 0) {
                this.f52955a.f52941h = i11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width: " + i11);
        }

        public b m(float f11) {
            if (f11 >= 0.0f) {
                this.f52955a.f52944k = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height ratio: " + f11);
        }

        public b n(float f11) {
            int iB = (int) (b(0.0f, 1.0f, f11) * 255.0f);
            a aVar = this.f52955a;
            aVar.f52938e = (iB << 24) | (aVar.f52938e & 16777215);
            return d();
        }

        public b o(float f11) {
            if (f11 >= 0.0f) {
                this.f52955a.f52945l = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid intensity value: " + f11);
        }

        public b p(int i11) {
            this.f52955a.f52951r = i11;
            return d();
        }

        public b q(long j11) {
            if (j11 >= 0) {
                this.f52955a.f52954u = j11;
                return d();
            }
            throw new IllegalArgumentException("Given a negative repeat delay: " + j11);
        }

        public b r(int i11) {
            this.f52955a.f52952s = i11;
            return d();
        }

        public b s(int i11) {
            this.f52955a.f52940g = i11;
            return d();
        }

        public b t(float f11) {
            this.f52955a.f52947n = f11;
            return d();
        }

        public b u(float f11) {
            if (f11 >= 0.0f) {
                this.f52955a.f52943j = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width ratio: " + f11);
        }
    }

    public static class c extends b {
        public c() {
            this.f52955a.f52950q = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.transsion.shorttv.base.widget.shimmer.a.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public c c(TypedArray typedArray) {
            super.c(typedArray);
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_color)) {
                x(typedArray.getColor(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_color, this.f52955a.f52939f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_color)) {
                y(typedArray.getColor(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_color, this.f52955a.f52938e));
            }
            return d();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.transsion.shorttv.base.widget.shimmer.a.b
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public c d() {
            return this;
        }

        public c x(int i11) {
            a aVar = this.f52955a;
            aVar.f52939f = (i11 & 16777215) | (aVar.f52939f & ViewCompat.MEASURED_STATE_MASK);
            return d();
        }

        public c y(int i11) {
            this.f52955a.f52938e = i11;
            return d();
        }
    }

    a() {
    }

    int a(int i11) {
        int i12 = this.f52942i;
        return i12 > 0 ? i12 : Math.round(this.f52944k * i11);
    }

    void b() {
        if (this.f52940g != 1) {
            int[] iArr = this.f52935b;
            int i11 = this.f52939f;
            iArr[0] = i11;
            int i12 = this.f52938e;
            iArr[1] = i12;
            iArr[2] = i12;
            iArr[3] = i11;
            return;
        }
        int[] iArr2 = this.f52935b;
        int i13 = this.f52938e;
        iArr2[0] = i13;
        iArr2[1] = i13;
        int i14 = this.f52939f;
        iArr2[2] = i14;
        iArr2[3] = i14;
    }

    void c() {
        if (this.f52940g != 1) {
            this.f52934a[0] = Math.max(((1.0f - this.f52945l) - this.f52946m) / 2.0f, 0.0f);
            this.f52934a[1] = Math.max(((1.0f - this.f52945l) - 0.001f) / 2.0f, 0.0f);
            this.f52934a[2] = Math.min(((this.f52945l + 1.0f) + 0.001f) / 2.0f, 1.0f);
            this.f52934a[3] = Math.min(((this.f52945l + 1.0f) + this.f52946m) / 2.0f, 1.0f);
            return;
        }
        float[] fArr = this.f52934a;
        fArr[0] = 0.0f;
        fArr[1] = Math.min(this.f52945l, 1.0f);
        this.f52934a[2] = Math.min(this.f52945l + this.f52946m, 1.0f);
        this.f52934a[3] = 1.0f;
    }

    int d(int i11) {
        int i12 = this.f52941h;
        return i12 > 0 ? i12 : Math.round(this.f52943j * i11);
    }
}
