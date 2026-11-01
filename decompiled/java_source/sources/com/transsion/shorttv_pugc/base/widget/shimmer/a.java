package com.transsion.shorttv_pugc.base.widget.shimmer;

import android.content.res.TypedArray;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import com.transsion.shorttv.R$styleable;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final float[] f53914a = new float[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int[] f53915b = new int[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final RectF f53916c = new RectF();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f53917d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f53918e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f53919f = 1291845631;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f53920g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f53921h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f53922i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f53923j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    float f53924k = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    float f53925l = 0.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f53926m = 0.5f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    float f53927n = 20.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f53928o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    boolean f53929p = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f53930q = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f53931r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f53932s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f53933t = 1000;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    long f53934u;

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.base.widget.shimmer.a$a, reason: collision with other inner class name */
    public static class C0669a extends b {
        public C0669a() {
            this.f53935a.f53930q = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.transsion.shorttv_pugc.base.widget.shimmer.a.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public C0669a d() {
            return this;
        }
    }

    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a f53935a = new a();

        private static float b(float f11, float f12, float f13) {
            return Math.min(f12, Math.max(f11, f13));
        }

        public a a() {
            this.f53935a.b();
            this.f53935a.c();
            return this.f53935a;
        }

        b c(TypedArray typedArray) {
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_clip_to_children)) {
                g(typedArray.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_clip_to_children, this.f53935a.f53928o));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_auto_start)) {
                e(typedArray.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_auto_start, this.f53935a.f53929p));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_alpha)) {
                f(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_alpha, 0.3f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_alpha)) {
                n(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_alpha, 1.0f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_duration)) {
                j(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_duration, (int) this.f53935a.f53933t));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_count)) {
                p(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_count, this.f53935a.f53931r));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_delay)) {
                q(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_delay, (int) this.f53935a.f53934u));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_mode)) {
                r(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_mode, this.f53935a.f53932s));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_direction)) {
                int i11 = typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_direction, this.f53935a.f53917d);
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
                if (typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_shape, this.f53935a.f53920g) != 1) {
                    s(0);
                } else {
                    s(1);
                }
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_dropoff)) {
                i(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_dropoff, this.f53935a.f53926m));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_width)) {
                l(typedArray.getDimensionPixelSize(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_width, this.f53935a.f53921h));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_height)) {
                k(typedArray.getDimensionPixelSize(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_height, this.f53935a.f53922i));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_intensity)) {
                o(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_intensity, this.f53935a.f53925l));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_width_ratio)) {
                u(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_width_ratio, this.f53935a.f53923j));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_height_ratio)) {
                m(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_height_ratio, this.f53935a.f53924k));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_tilt)) {
                t(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_tilt, this.f53935a.f53927n));
            }
            return d();
        }

        protected abstract b d();

        public b e(boolean z10) {
            this.f53935a.f53929p = z10;
            return d();
        }

        public b f(float f11) {
            int iB = (int) (b(0.0f, 1.0f, f11) * 255.0f);
            a aVar = this.f53935a;
            aVar.f53919f = (iB << 24) | (aVar.f53919f & 16777215);
            return d();
        }

        public b g(boolean z10) {
            this.f53935a.f53928o = z10;
            return d();
        }

        public b h(int i11) {
            this.f53935a.f53917d = i11;
            return d();
        }

        public b i(float f11) {
            if (f11 >= 0.0f) {
                this.f53935a.f53926m = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid dropoff value: " + f11);
        }

        public b j(long j11) {
            if (j11 >= 0) {
                this.f53935a.f53933t = j11;
                return d();
            }
            throw new IllegalArgumentException("Given a negative duration: " + j11);
        }

        public b k(int i11) {
            if (i11 >= 0) {
                this.f53935a.f53922i = i11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height: " + i11);
        }

        public b l(int i11) {
            if (i11 >= 0) {
                this.f53935a.f53921h = i11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width: " + i11);
        }

        public b m(float f11) {
            if (f11 >= 0.0f) {
                this.f53935a.f53924k = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height ratio: " + f11);
        }

        public b n(float f11) {
            int iB = (int) (b(0.0f, 1.0f, f11) * 255.0f);
            a aVar = this.f53935a;
            aVar.f53918e = (iB << 24) | (aVar.f53918e & 16777215);
            return d();
        }

        public b o(float f11) {
            if (f11 >= 0.0f) {
                this.f53935a.f53925l = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid intensity value: " + f11);
        }

        public b p(int i11) {
            this.f53935a.f53931r = i11;
            return d();
        }

        public b q(long j11) {
            if (j11 >= 0) {
                this.f53935a.f53934u = j11;
                return d();
            }
            throw new IllegalArgumentException("Given a negative repeat delay: " + j11);
        }

        public b r(int i11) {
            this.f53935a.f53932s = i11;
            return d();
        }

        public b s(int i11) {
            this.f53935a.f53920g = i11;
            return d();
        }

        public b t(float f11) {
            this.f53935a.f53927n = f11;
            return d();
        }

        public b u(float f11) {
            if (f11 >= 0.0f) {
                this.f53935a.f53923j = f11;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width ratio: " + f11);
        }
    }

    public static class c extends b {
        public c() {
            this.f53935a.f53930q = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.transsion.shorttv_pugc.base.widget.shimmer.a.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public c c(TypedArray typedArray) {
            super.c(typedArray);
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_color)) {
                x(typedArray.getColor(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_color, this.f53935a.f53919f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_color)) {
                y(typedArray.getColor(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_color, this.f53935a.f53918e));
            }
            return d();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.transsion.shorttv_pugc.base.widget.shimmer.a.b
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public c d() {
            return this;
        }

        public c x(int i11) {
            a aVar = this.f53935a;
            aVar.f53919f = (i11 & 16777215) | (aVar.f53919f & ViewCompat.MEASURED_STATE_MASK);
            return d();
        }

        public c y(int i11) {
            this.f53935a.f53918e = i11;
            return d();
        }
    }

    a() {
    }

    int a(int i11) {
        int i12 = this.f53922i;
        return i12 > 0 ? i12 : Math.round(this.f53924k * i11);
    }

    void b() {
        if (this.f53920g != 1) {
            int[] iArr = this.f53915b;
            int i11 = this.f53919f;
            iArr[0] = i11;
            int i12 = this.f53918e;
            iArr[1] = i12;
            iArr[2] = i12;
            iArr[3] = i11;
            return;
        }
        int[] iArr2 = this.f53915b;
        int i13 = this.f53918e;
        iArr2[0] = i13;
        iArr2[1] = i13;
        int i14 = this.f53919f;
        iArr2[2] = i14;
        iArr2[3] = i14;
    }

    void c() {
        if (this.f53920g != 1) {
            this.f53914a[0] = Math.max(((1.0f - this.f53925l) - this.f53926m) / 2.0f, 0.0f);
            this.f53914a[1] = Math.max(((1.0f - this.f53925l) - 0.001f) / 2.0f, 0.0f);
            this.f53914a[2] = Math.min(((this.f53925l + 1.0f) + 0.001f) / 2.0f, 1.0f);
            this.f53914a[3] = Math.min(((this.f53925l + 1.0f) + this.f53926m) / 2.0f, 1.0f);
            return;
        }
        float[] fArr = this.f53914a;
        fArr[0] = 0.0f;
        fArr[1] = Math.min(this.f53925l, 1.0f);
        this.f53914a[2] = Math.min(this.f53925l + this.f53926m, 1.0f);
        this.f53914a[3] = 1.0f;
    }

    int d(int i11) {
        int i12 = this.f53921h;
        return i12 > 0 ? i12 : Math.round(this.f53923j * i11);
    }
}
