package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class CarouselLayoutManager extends RecyclerView.m implements com.google.android.material.carousel.b, RecyclerView.x.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f28573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f28574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f28575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f28576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f28577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.google.android.material.carousel.d f28578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g f28579g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private f f28580h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f28581i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map f28582j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.google.android.material.carousel.c f28583k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final View.OnLayoutChangeListener f28584l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f28585m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f28586n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f28587o;

    class a extends androidx.recyclerview.widget.h {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.x
        public PointF a(int i11) {
            return CarouselLayoutManager.this.computeScrollVectorForPosition(i11);
        }

        @Override // androidx.recyclerview.widget.h
        public int t(View view, int i11) {
            if (CarouselLayoutManager.this.f28579g == null || !CarouselLayoutManager.this.d()) {
                return 0;
            }
            CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
            return carouselLayoutManager.A(carouselLayoutManager.getPosition(view));
        }

        @Override // androidx.recyclerview.widget.h
        public int u(View view, int i11) {
            if (CarouselLayoutManager.this.f28579g == null || CarouselLayoutManager.this.d()) {
                return 0;
            }
            CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
            return carouselLayoutManager.A(carouselLayoutManager.getPosition(view));
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final View f28589a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float f28590b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final float f28591c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final d f28592d;

        b(View view, float f11, float f12, d dVar) {
            this.f28589a = view;
            this.f28590b = f11;
            this.f28591c = f12;
            this.f28592d = dVar;
        }
    }

    private static class c extends RecyclerView.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Paint f28593a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List f28594b;

        c() {
            Paint paint = new Paint();
            this.f28593a = paint;
            this.f28594b = Collections.unmodifiableList(new ArrayList());
            paint.setStrokeWidth(5.0f);
            paint.setColor(-65281);
        }

        void d(List list) {
            this.f28594b = Collections.unmodifiableList(list);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.y yVar) {
            super.onDrawOver(canvas, recyclerView, yVar);
            this.f28593a.setStrokeWidth(recyclerView.getResources().getDimension(R$dimen.m3_carousel_debug_keyline_width));
            for (f.c cVar : this.f28594b) {
                this.f28593a.setColor(z0.b.d(-65281, -16776961, cVar.f28630c));
                if (((CarouselLayoutManager) recyclerView.getLayoutManager()).d()) {
                    canvas.drawLine(cVar.f28629b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).S(), cVar.f28629b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).N(), this.f28593a);
                } else {
                    canvas.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).P(), cVar.f28629b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).Q(), cVar.f28629b, this.f28593a);
                }
            }
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final f.c f28595a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final f.c f28596b;

        d(f.c cVar, f.c cVar2) {
            androidx.core.util.i.a(cVar.f28628a <= cVar2.f28628a);
            this.f28595a = cVar;
            this.f28596b = cVar2;
        }
    }

    public CarouselLayoutManager() {
        this(new i());
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i11, int i12) {
        this.f28576d = false;
        this.f28577e = new c();
        this.f28581i = 0;
        this.f28584l = new View.OnLayoutChangeListener() { // from class: qa.a
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20) {
                this.f73537a.a0(view, i13, i14, i15, i16, i17, i18, i19, i20);
            }
        };
        this.f28586n = -1;
        this.f28587o = 0;
        k0(new i());
        j0(context, attributeSet);
    }

    public CarouselLayoutManager(com.google.android.material.carousel.d dVar) {
        this(dVar, 0);
    }

    public CarouselLayoutManager(com.google.android.material.carousel.d dVar, int i11) {
        this.f28576d = false;
        this.f28577e = new c();
        this.f28581i = 0;
        this.f28584l = new View.OnLayoutChangeListener() { // from class: qa.a
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20) {
                this.f73537a.a0(view, i13, i14, i15, i16, i17, i18, i19, i20);
            }
        };
        this.f28586n = -1;
        this.f28587o = 0;
        k0(dVar);
        setOrientation(i11);
    }

    private static int B(int i11, int i12, int i13, int i14) {
        int i15 = i12 + i11;
        if (i15 < i13) {
            return i13 - i12;
        }
        return i15 > i14 ? i14 - i12 : i11;
    }

    private int C(g gVar) {
        boolean zX = X();
        f fVarH = zX ? gVar.h() : gVar.l();
        return (int) (R() - t((zX ? fVarH.h() : fVarH.a()).f28628a, fVarH.f() / 2.0f));
    }

    private void D(RecyclerView.t tVar, RecyclerView.y yVar) {
        g0(tVar);
        if (getChildCount() == 0) {
            w(tVar, this.f28581i - 1);
            v(tVar, yVar, this.f28581i);
        } else {
            int position = getPosition(getChildAt(0));
            int position2 = getPosition(getChildAt(getChildCount() - 1));
            w(tVar, position - 1);
            v(tVar, yVar, position2 + 1);
        }
        o0();
    }

    private View E() {
        return getChildAt(X() ? 0 : getChildCount() - 1);
    }

    private View F() {
        return getChildAt(X() ? getChildCount() - 1 : 0);
    }

    private int G() {
        return d() ? a() : b();
    }

    private float H(View view) {
        Rect rect = new Rect();
        super.getDecoratedBoundsWithMargins(view, rect);
        return d() ? rect.centerX() : rect.centerY();
    }

    private int I() {
        int i11;
        int i12;
        if (getChildCount() <= 0) {
            return 0;
        }
        RecyclerView.n nVar = (RecyclerView.n) getChildAt(0).getLayoutParams();
        if (this.f28583k.f28610a == 0) {
            i11 = ((ViewGroup.MarginLayoutParams) nVar).leftMargin;
            i12 = ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
        } else {
            i11 = ((ViewGroup.MarginLayoutParams) nVar).topMargin;
            i12 = ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        }
        return i11 + i12;
    }

    private f J(int i11) {
        f fVar;
        Map map = this.f28582j;
        return (map == null || (fVar = (f) map.get(Integer.valueOf(d1.a.b(i11, 0, Math.max(0, getItemCount() + (-1)))))) == null) ? this.f28579g.g() : fVar;
    }

    private int K() {
        if (getClipToPadding() || !this.f28578f.f()) {
            return 0;
        }
        return getOrientation() == 1 ? getPaddingTop() : getPaddingLeft();
    }

    private float L(float f11, d dVar) {
        f.c cVar = dVar.f28595a;
        float f12 = cVar.f28631d;
        f.c cVar2 = dVar.f28596b;
        return oa.a.b(f12, cVar2.f28631d, cVar.f28629b, cVar2.f28629b, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int N() {
        return this.f28583k.g();
    }

    private int O() {
        return this.f28583k.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int P() {
        return this.f28583k.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int Q() {
        return this.f28583k.j();
    }

    private int R() {
        return this.f28583k.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int S() {
        return this.f28583k.l();
    }

    private int T() {
        if (getClipToPadding() || !this.f28578f.f()) {
            return 0;
        }
        return getOrientation() == 1 ? getPaddingBottom() : getPaddingRight();
    }

    private int U(int i11, f fVar) {
        return X() ? (int) (((G() - fVar.h().f28628a) - (i11 * fVar.f())) - (fVar.f() / 2.0f)) : (int) (((i11 * fVar.f()) - fVar.a().f28628a) + (fVar.f() / 2.0f));
    }

    private int V(int i11, f fVar) {
        int i12 = Integer.MAX_VALUE;
        for (f.c cVar : fVar.e()) {
            float f11 = (i11 * fVar.f()) + (fVar.f() / 2.0f);
            int iG = (X() ? (int) ((G() - cVar.f28628a) - f11) : (int) (f11 - cVar.f28628a)) - this.f28573a;
            if (Math.abs(i12) > Math.abs(iG)) {
                i12 = iG;
            }
        }
        return i12;
    }

    private static d W(List list, float f11, boolean z10) {
        float f12 = Float.MAX_VALUE;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        float f13 = -3.4028235E38f;
        float f14 = Float.MAX_VALUE;
        float f15 = Float.MAX_VALUE;
        for (int i15 = 0; i15 < list.size(); i15++) {
            f.c cVar = (f.c) list.get(i15);
            float f16 = z10 ? cVar.f28629b : cVar.f28628a;
            float fAbs = Math.abs(f16 - f11);
            if (f16 <= f11 && fAbs <= f12) {
                i11 = i15;
                f12 = fAbs;
            }
            if (f16 > f11 && fAbs <= f14) {
                i13 = i15;
                f14 = fAbs;
            }
            if (f16 <= f15) {
                i12 = i15;
                f15 = f16;
            }
            if (f16 > f13) {
                i14 = i15;
                f13 = f16;
            }
        }
        if (i11 == -1) {
            i11 = i12;
        }
        if (i13 == -1) {
            i13 = i14;
        }
        return new d((f.c) list.get(i11), (f.c) list.get(i13));
    }

    private boolean Y(float f11, d dVar) {
        float fT = t(f11, L(f11, dVar) / 2.0f);
        if (X()) {
            if (fT >= 0.0f) {
                return false;
            }
        } else if (fT <= G()) {
            return false;
        }
        return true;
    }

    private boolean Z(float f11, d dVar) {
        float fS = s(f11, L(f11, dVar) / 2.0f);
        if (X()) {
            if (fS <= G()) {
                return false;
            }
        } else if (fS >= 0.0f) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a0(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        if (i11 == i15 && i12 == i16 && i13 == i17 && i14 == i18) {
            return;
        }
        view.post(new Runnable() { // from class: qa.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f73538a.f0();
            }
        });
    }

    private void b0() {
        if (this.f28576d && Log.isLoggable("CarouselLayoutManager", 3)) {
            for (int i11 = 0; i11 < getChildCount(); i11++) {
                View childAt = getChildAt(i11);
                float fH = H(childAt);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("item position ");
                sb2.append(getPosition(childAt));
                sb2.append(", center:");
                sb2.append(fH);
                sb2.append(", child index:");
                sb2.append(i11);
            }
        }
    }

    private b c0(RecyclerView.t tVar, float f11, int i11) {
        View viewO = tVar.o(i11);
        measureChildWithMargins(viewO, 0, 0);
        float fS = s(f11, this.f28580h.f() / 2.0f);
        d dVarW = W(this.f28580h.g(), fS, false);
        return new b(viewO, fS, x(viewO, fS, dVarW), dVarW);
    }

    private int convertFocusDirectionToLayoutDirection(int i11) {
        int orientation = getOrientation();
        if (i11 == 1) {
            return -1;
        }
        if (i11 == 2) {
            return 1;
        }
        if (i11 == 17) {
            if (orientation == 0) {
                return X() ? 1 : -1;
            }
            return Integer.MIN_VALUE;
        }
        if (i11 == 33) {
            return orientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i11 == 66) {
            if (orientation == 0) {
                return X() ? -1 : 1;
            }
            return Integer.MIN_VALUE;
        }
        if (i11 == 130) {
            return orientation == 1 ? 1 : Integer.MIN_VALUE;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unknown focus request:");
        sb2.append(i11);
        return Integer.MIN_VALUE;
    }

    private float d0(View view, float f11, float f12, Rect rect) {
        float fS = s(f11, f12);
        d dVarW = W(this.f28580h.g(), fS, false);
        float fX = x(view, fS, dVarW);
        super.getDecoratedBoundsWithMargins(view, rect);
        l0(view, fS, dVarW);
        this.f28583k.o(view, rect, f12, fX);
        return fX;
    }

    private void e0(RecyclerView.t tVar) {
        View viewO = tVar.o(0);
        measureChildWithMargins(viewO, 0, 0);
        f fVarG = this.f28578f.g(this, viewO);
        if (X()) {
            fVarG = f.n(fVarG, G());
        }
        this.f28579g = g.f(this, fVarG, I(), K(), T());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0() {
        this.f28579g = null;
        requestLayout();
    }

    private void g0(RecyclerView.t tVar) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            float fH = H(childAt);
            if (!Z(fH, W(this.f28580h.g(), fH, true))) {
                break;
            } else {
                removeAndRecycleView(childAt, tVar);
            }
        }
        while (getChildCount() - 1 >= 0) {
            View childAt2 = getChildAt(getChildCount() - 1);
            float fH2 = H(childAt2);
            if (!Y(fH2, W(this.f28580h.g(), fH2, true))) {
                return;
            } else {
                removeAndRecycleView(childAt2, tVar);
            }
        }
    }

    private void h0(RecyclerView recyclerView, int i11) {
        if (d()) {
            recyclerView.scrollBy(i11, 0);
        } else {
            recyclerView.scrollBy(0, i11);
        }
    }

    private void j0(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Carousel);
            i0(typedArrayObtainStyledAttributes.getInt(R$styleable.Carousel_carousel_alignment, 0));
            setOrientation(typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_orientation, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void l0(View view, float f11, d dVar) {
        if (view instanceof h) {
            f.c cVar = dVar.f28595a;
            float f12 = cVar.f28630c;
            f.c cVar2 = dVar.f28596b;
            float fB = oa.a.b(f12, cVar2.f28630c, cVar.f28628a, cVar2.f28628a, f11);
            float height = view.getHeight();
            float width = view.getWidth();
            RectF rectFF = this.f28583k.f(height, width, oa.a.b(0.0f, height / 2.0f, 0.0f, 1.0f, fB), oa.a.b(0.0f, width / 2.0f, 0.0f, 1.0f, fB));
            float fX = x(view, f11, dVar);
            RectF rectF = new RectF(fX - (rectFF.width() / 2.0f), fX - (rectFF.height() / 2.0f), fX + (rectFF.width() / 2.0f), (rectFF.height() / 2.0f) + fX);
            RectF rectF2 = new RectF(P(), S(), Q(), N());
            if (this.f28578f.f()) {
                this.f28583k.a(rectFF, rectF, rectF2);
            }
            this.f28583k.n(rectFF, rectF, rectF2);
            ((h) view).setMaskRectF(rectFF);
        }
    }

    private void m0(g gVar) {
        int i11 = this.f28575c;
        int i12 = this.f28574b;
        if (i11 <= i12) {
            this.f28580h = X() ? gVar.h() : gVar.l();
        } else {
            this.f28580h = gVar.j(this.f28573a, i12, i11);
        }
        this.f28577e.d(this.f28580h.g());
    }

    private void n0() {
        int itemCount = getItemCount();
        int i11 = this.f28585m;
        if (itemCount == i11 || this.f28579g == null) {
            return;
        }
        if (this.f28578f.h(this, i11)) {
            f0();
        }
        this.f28585m = itemCount;
    }

    private void o0() {
        if (!this.f28576d || getChildCount() < 1) {
            return;
        }
        int i11 = 0;
        while (i11 < getChildCount() - 1) {
            int position = getPosition(getChildAt(i11));
            int i12 = i11 + 1;
            int position2 = getPosition(getChildAt(i12));
            if (position > position2) {
                b0();
                throw new IllegalStateException("Detected invalid child order. Child at index [" + i11 + "] had adapter position [" + position + "] and child at index [" + i12 + "] had adapter position [" + position2 + "].");
            }
            i11 = i12;
        }
    }

    private void r(View view, int i11, b bVar) {
        float f11 = this.f28580h.f() / 2.0f;
        addView(view, i11);
        float f12 = bVar.f28591c;
        this.f28583k.m(view, (int) (f12 - f11), (int) (f12 + f11));
        l0(view, bVar.f28590b, bVar.f28592d);
    }

    private float s(float f11, float f12) {
        return X() ? f11 - f12 : f11 + f12;
    }

    private int scrollBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (getChildCount() == 0 || i11 == 0) {
            return 0;
        }
        if (this.f28579g == null) {
            e0(tVar);
        }
        int iB = B(i11, this.f28573a, this.f28574b, this.f28575c);
        this.f28573a += iB;
        m0(this.f28579g);
        float f11 = this.f28580h.f() / 2.0f;
        float fY = y(getPosition(getChildAt(0)));
        Rect rect = new Rect();
        float f12 = X() ? this.f28580h.h().f28629b : this.f28580h.a().f28629b;
        float f13 = Float.MAX_VALUE;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            float fAbs = Math.abs(f12 - d0(childAt, fY, f11, rect));
            if (childAt != null && fAbs < f13) {
                this.f28586n = getPosition(childAt);
                f13 = fAbs;
            }
            fY = s(fY, this.f28580h.f());
        }
        D(tVar, yVar);
        return iB;
    }

    private float t(float f11, float f12) {
        return X() ? f11 + f12 : f11 - f12;
    }

    private void u(RecyclerView.t tVar, int i11, int i12) {
        if (i11 < 0 || i11 >= getItemCount()) {
            return;
        }
        b bVarC0 = c0(tVar, y(i11), i11);
        r(bVarC0.f28589a, i12, bVarC0);
    }

    private void v(RecyclerView.t tVar, RecyclerView.y yVar, int i11) {
        float fY = y(i11);
        while (i11 < yVar.b()) {
            b bVarC0 = c0(tVar, fY, i11);
            if (Y(bVarC0.f28591c, bVarC0.f28592d)) {
                return;
            }
            fY = s(fY, this.f28580h.f());
            if (!Z(bVarC0.f28591c, bVarC0.f28592d)) {
                r(bVarC0.f28589a, -1, bVarC0);
            }
            i11++;
        }
    }

    private void w(RecyclerView.t tVar, int i11) {
        float fY = y(i11);
        while (i11 >= 0) {
            b bVarC0 = c0(tVar, fY, i11);
            if (Z(bVarC0.f28591c, bVarC0.f28592d)) {
                return;
            }
            fY = t(fY, this.f28580h.f());
            if (!Y(bVarC0.f28591c, bVarC0.f28592d)) {
                r(bVarC0.f28589a, 0, bVarC0);
            }
            i11--;
        }
    }

    private float x(View view, float f11, d dVar) {
        f.c cVar = dVar.f28595a;
        float f12 = cVar.f28629b;
        f.c cVar2 = dVar.f28596b;
        float fB = oa.a.b(f12, cVar2.f28629b, cVar.f28628a, cVar2.f28628a, f11);
        if (dVar.f28596b != this.f28580h.c() && dVar.f28595a != this.f28580h.j()) {
            return fB;
        }
        float fE = this.f28583k.e((RecyclerView.n) view.getLayoutParams()) / this.f28580h.f();
        f.c cVar3 = dVar.f28596b;
        return fB + ((f11 - cVar3.f28628a) * ((1.0f - cVar3.f28630c) + fE));
    }

    private float y(int i11) {
        return s(R() - this.f28573a, this.f28580h.f() * i11);
    }

    private int z(RecyclerView.y yVar, g gVar) {
        boolean zX = X();
        f fVarL = zX ? gVar.l() : gVar.h();
        f.c cVarA = zX ? fVarL.a() : fVarL.h();
        int iB = (int) (((((yVar.b() - 1) * fVarL.f()) * (zX ? -1.0f : 1.0f)) - (cVarA.f28628a - R())) + (O() - cVarA.f28628a) + (zX ? -cVarA.f28634g : cVarA.f28635h));
        return zX ? Math.min(0, iB) : Math.max(0, iB);
    }

    int A(int i11) {
        return (int) (this.f28573a - U(i11, J(i11)));
    }

    int M(int i11, f fVar) {
        return U(i11, fVar) - this.f28573a;
    }

    boolean X() {
        return d() && getLayoutDirection() == 1;
    }

    @Override // com.google.android.material.carousel.b
    public int a() {
        return getWidth();
    }

    @Override // com.google.android.material.carousel.b
    public int b() {
        return getHeight();
    }

    @Override // com.google.android.material.carousel.b
    public int c() {
        return this.f28587o;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollHorizontally() {
        return d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollVertically() {
        return !d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollExtent(RecyclerView.y yVar) {
        if (getChildCount() == 0 || this.f28579g == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getWidth() * (this.f28579g.g().f() / computeHorizontalScrollRange(yVar)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollOffset(RecyclerView.y yVar) {
        return this.f28573a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollRange(RecyclerView.y yVar) {
        return this.f28575c - this.f28574b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x.b
    public PointF computeScrollVectorForPosition(int i11) {
        if (this.f28579g == null) {
            return null;
        }
        int iM = M(i11, J(i11));
        return d() ? new PointF(iM, 0.0f) : new PointF(0.0f, iM);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollExtent(RecyclerView.y yVar) {
        if (getChildCount() == 0 || this.f28579g == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getHeight() * (this.f28579g.g().f() / computeVerticalScrollRange(yVar)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollOffset(RecyclerView.y yVar) {
        return this.f28573a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollRange(RecyclerView.y yVar) {
        return this.f28575c - this.f28574b;
    }

    @Override // com.google.android.material.carousel.b
    public boolean d() {
        return this.f28583k.f28610a == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n generateDefaultLayoutParams() {
        return new RecyclerView.n(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        float fCenterY = rect.centerY();
        if (d()) {
            fCenterY = rect.centerX();
        }
        float fL = L(fCenterY, W(this.f28580h.g(), fCenterY, true));
        float fWidth = d() ? (rect.width() - fL) / 2.0f : 0.0f;
        float fHeight = d() ? 0.0f : (rect.height() - fL) / 2.0f;
        rect.set((int) (rect.left + fWidth), (int) (rect.top + fHeight), (int) (rect.right - fWidth), (int) (rect.bottom - fHeight));
    }

    public int getOrientation() {
        return this.f28583k.f28610a;
    }

    public void i0(int i11) {
        this.f28587o = i11;
        f0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public void k0(com.google.android.material.carousel.d dVar) {
        this.f28578f = dVar;
        f0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void measureChildWithMargins(View view, int i11, int i12) {
        if (!(view instanceof h)) {
            throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        }
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        Rect rect = new Rect();
        calculateItemDecorationsForChild(view, rect);
        int i13 = i11 + rect.left + rect.right;
        int i14 = i12 + rect.top + rect.bottom;
        g gVar = this.f28579g;
        float f11 = (gVar == null || this.f28583k.f28610a != 0) ? ((ViewGroup.MarginLayoutParams) nVar).width : gVar.g().f();
        g gVar2 = this.f28579g;
        view.measure(RecyclerView.m.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin + i13, (int) f11, canScrollHorizontally()), RecyclerView.m.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin + i14, (int) ((gVar2 == null || this.f28583k.f28610a != 1) ? ((ViewGroup.MarginLayoutParams) nVar).height : gVar2.g().f()), canScrollVertically()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f28578f.e(recyclerView.getContext());
        f0();
        recyclerView.addOnLayoutChangeListener(this.f28584l);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.t tVar) {
        super.onDetachedFromWindow(recyclerView, tVar);
        recyclerView.removeOnLayoutChangeListener(this.f28584l);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public View onFocusSearchFailed(View view, int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        int iConvertFocusDirectionToLayoutDirection;
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i11)) == Integer.MIN_VALUE) {
            return null;
        }
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            if (getPosition(view) == 0) {
                return null;
            }
            u(tVar, getPosition(getChildAt(0)) - 1, 0);
            return F();
        }
        if (getPosition(view) == getItemCount() - 1) {
            return null;
        }
        u(tVar, getPosition(getChildAt(getChildCount() - 1)) + 1, -1);
        return E();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsAdded(RecyclerView recyclerView, int i11, int i12) {
        super.onItemsAdded(recyclerView, i11, i12);
        n0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsRemoved(RecyclerView recyclerView, int i11, int i12) {
        super.onItemsRemoved(recyclerView, i11, i12);
        n0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutChildren(RecyclerView.t tVar, RecyclerView.y yVar) {
        if (yVar.b() <= 0 || G() <= 0.0f) {
            removeAndRecycleAllViews(tVar);
            this.f28581i = 0;
            return;
        }
        boolean zX = X();
        boolean z10 = this.f28579g == null;
        if (z10) {
            e0(tVar);
        }
        int iC = C(this.f28579g);
        int iZ = z(yVar, this.f28579g);
        this.f28574b = zX ? iZ : iC;
        if (zX) {
            iZ = iC;
        }
        this.f28575c = iZ;
        if (z10) {
            this.f28573a = iC;
            this.f28582j = this.f28579g.i(getItemCount(), this.f28574b, this.f28575c, X());
            int i11 = this.f28586n;
            if (i11 != -1) {
                this.f28573a = U(i11, J(i11));
            }
        }
        int i12 = this.f28573a;
        this.f28573a = i12 + B(0, i12, this.f28574b, this.f28575c);
        this.f28581i = d1.a.b(this.f28581i, 0, yVar.b());
        m0(this.f28579g);
        detachAndScrapAttachedViews(tVar);
        D(tVar, yVar);
        this.f28585m = getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutCompleted(RecyclerView.y yVar) {
        super.onLayoutCompleted(yVar);
        if (getChildCount() == 0) {
            this.f28581i = 0;
        } else {
            this.f28581i = getPosition(getChildAt(0));
        }
        o0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
        int iV;
        if (this.f28579g == null || (iV = V(getPosition(view), J(getPosition(view)))) == 0) {
            return false;
        }
        h0(recyclerView, V(getPosition(view), this.f28579g.j(this.f28573a + B(iV, this.f28573a, this.f28574b, this.f28575c), this.f28574b, this.f28575c)));
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int scrollHorizontallyBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (canScrollHorizontally()) {
            return scrollBy(i11, tVar, yVar);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void scrollToPosition(int i11) {
        this.f28586n = i11;
        if (this.f28579g == null) {
            return;
        }
        this.f28573a = U(i11, J(i11));
        this.f28581i = d1.a.b(i11, 0, Math.max(0, getItemCount() - 1));
        m0(this.f28579g);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int scrollVerticallyBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (canScrollVertically()) {
            return scrollBy(i11, tVar, yVar);
        }
        return 0;
    }

    public void setOrientation(int i11) {
        if (i11 != 0 && i11 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i11);
        }
        assertNotInLayoutOrScroll(null);
        com.google.android.material.carousel.c cVar = this.f28583k;
        if (cVar == null || i11 != cVar.f28610a) {
            this.f28583k = com.google.android.material.carousel.c.c(this, i11);
            f0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.y yVar, int i11) {
        a aVar = new a(recyclerView.getContext());
        aVar.p(i11);
        startSmoothScroll(aVar);
    }
}
