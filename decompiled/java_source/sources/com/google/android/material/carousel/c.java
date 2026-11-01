package com.google.android.material.carousel;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f28610a;

    class a extends c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CarouselLayoutManager f28611b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i11, CarouselLayoutManager carouselLayoutManager) {
            super(i11, null);
            this.f28611b = carouselLayoutManager;
        }

        @Override // com.google.android.material.carousel.c
        public void a(RectF rectF, RectF rectF2, RectF rectF3) {
            float f11 = rectF2.top;
            float f12 = rectF3.top;
            if (f11 < f12 && rectF2.bottom > f12) {
                float f13 = f12 - f11;
                rectF.top += f13;
                rectF3.top += f13;
            }
            float f14 = rectF2.bottom;
            float f15 = rectF3.bottom;
            if (f14 <= f15 || rectF2.top >= f15) {
                return;
            }
            float f16 = f14 - f15;
            rectF.bottom = Math.max(rectF.bottom - f16, rectF.top);
            rectF2.bottom = Math.max(rectF2.bottom - f16, rectF2.top);
        }

        @Override // com.google.android.material.carousel.c
        public float e(RecyclerView.n nVar) {
            return ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        }

        @Override // com.google.android.material.carousel.c
        public RectF f(float f11, float f12, float f13, float f14) {
            return new RectF(0.0f, f13, f12, f11 - f13);
        }

        @Override // com.google.android.material.carousel.c
        int g() {
            return this.f28611b.getHeight();
        }

        @Override // com.google.android.material.carousel.c
        int h() {
            return g();
        }

        @Override // com.google.android.material.carousel.c
        int i() {
            return this.f28611b.getPaddingLeft();
        }

        @Override // com.google.android.material.carousel.c
        int j() {
            return this.f28611b.getWidth() - this.f28611b.getPaddingRight();
        }

        @Override // com.google.android.material.carousel.c
        int k() {
            return l();
        }

        @Override // com.google.android.material.carousel.c
        int l() {
            return 0;
        }

        @Override // com.google.android.material.carousel.c
        public void m(View view, int i11, int i12) {
            int i13 = i();
            this.f28611b.layoutDecoratedWithMargins(view, i13, i11, i13 + p(view), i12);
        }

        @Override // com.google.android.material.carousel.c
        public void n(RectF rectF, RectF rectF2, RectF rectF3) {
            if (rectF2.bottom <= rectF3.top) {
                float fFloor = ((float) Math.floor(rectF.bottom)) - 1.0f;
                rectF.bottom = fFloor;
                rectF.top = Math.min(rectF.top, fFloor);
            }
            if (rectF2.top >= rectF3.bottom) {
                float fCeil = ((float) Math.ceil(rectF.top)) + 1.0f;
                rectF.top = fCeil;
                rectF.bottom = Math.max(fCeil, rectF.bottom);
            }
        }

        @Override // com.google.android.material.carousel.c
        public void o(View view, Rect rect, float f11, float f12) {
            view.offsetTopAndBottom((int) (f12 - (rect.top + f11)));
        }

        int p(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f28611b.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
        }
    }

    class b extends c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CarouselLayoutManager f28612b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i11, CarouselLayoutManager carouselLayoutManager) {
            super(i11, null);
            this.f28612b = carouselLayoutManager;
        }

        @Override // com.google.android.material.carousel.c
        public void a(RectF rectF, RectF rectF2, RectF rectF3) {
            float f11 = rectF2.left;
            float f12 = rectF3.left;
            if (f11 < f12 && rectF2.right > f12) {
                float f13 = f12 - f11;
                rectF.left += f13;
                rectF2.left += f13;
            }
            float f14 = rectF2.right;
            float f15 = rectF3.right;
            if (f14 <= f15 || rectF2.left >= f15) {
                return;
            }
            float f16 = f14 - f15;
            rectF.right = Math.max(rectF.right - f16, rectF.left);
            rectF2.right = Math.max(rectF2.right - f16, rectF2.left);
        }

        @Override // com.google.android.material.carousel.c
        public float e(RecyclerView.n nVar) {
            return ((ViewGroup.MarginLayoutParams) nVar).rightMargin + ((ViewGroup.MarginLayoutParams) nVar).leftMargin;
        }

        @Override // com.google.android.material.carousel.c
        public RectF f(float f11, float f12, float f13, float f14) {
            return new RectF(f14, 0.0f, f12 - f14, f11);
        }

        @Override // com.google.android.material.carousel.c
        int g() {
            return this.f28612b.getHeight() - this.f28612b.getPaddingBottom();
        }

        @Override // com.google.android.material.carousel.c
        int h() {
            return this.f28612b.X() ? i() : j();
        }

        @Override // com.google.android.material.carousel.c
        int i() {
            return 0;
        }

        @Override // com.google.android.material.carousel.c
        int j() {
            return this.f28612b.getWidth();
        }

        @Override // com.google.android.material.carousel.c
        int k() {
            return this.f28612b.X() ? j() : i();
        }

        @Override // com.google.android.material.carousel.c
        int l() {
            return this.f28612b.getPaddingTop();
        }

        @Override // com.google.android.material.carousel.c
        public void m(View view, int i11, int i12) {
            int iL = l();
            this.f28612b.layoutDecoratedWithMargins(view, i11, iL, i12, iL + p(view));
        }

        @Override // com.google.android.material.carousel.c
        public void n(RectF rectF, RectF rectF2, RectF rectF3) {
            if (rectF2.right <= rectF3.left) {
                float fFloor = ((float) Math.floor(rectF.right)) - 1.0f;
                rectF.right = fFloor;
                rectF.left = Math.min(rectF.left, fFloor);
            }
            if (rectF2.left >= rectF3.right) {
                float fCeil = ((float) Math.ceil(rectF.left)) + 1.0f;
                rectF.left = fCeil;
                rectF.right = Math.max(fCeil, rectF.right);
            }
        }

        @Override // com.google.android.material.carousel.c
        public void o(View view, Rect rect, float f11, float f12) {
            view.offsetLeftAndRight((int) (f12 - (rect.left + f11)));
        }

        int p(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f28612b.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        }
    }

    private c(int i11) {
        this.f28610a = i11;
    }

    /* synthetic */ c(int i11, a aVar) {
        this(i11);
    }

    private static c b(CarouselLayoutManager carouselLayoutManager) {
        return new b(0, carouselLayoutManager);
    }

    static c c(CarouselLayoutManager carouselLayoutManager, int i11) {
        if (i11 == 0) {
            return b(carouselLayoutManager);
        }
        if (i11 == 1) {
            return d(carouselLayoutManager);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    private static c d(CarouselLayoutManager carouselLayoutManager) {
        return new a(1, carouselLayoutManager);
    }

    abstract void a(RectF rectF, RectF rectF2, RectF rectF3);

    abstract float e(RecyclerView.n nVar);

    abstract RectF f(float f11, float f12, float f13, float f14);

    abstract int g();

    abstract int h();

    abstract int i();

    abstract int j();

    abstract int k();

    abstract int l();

    abstract void m(View view, int i11, int i12);

    abstract void n(RectF rectF, RectF rectF2, RectF rectF3);

    abstract void o(View view, Rect rect, float f11, float f12);
}
