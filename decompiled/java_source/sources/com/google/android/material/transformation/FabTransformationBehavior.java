package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import oa.h;
import oa.i;
import oa.j;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f30162c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f30163d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f30164e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f30165f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f30166g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f30167h;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f30168a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f30169b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f30170c;

        a(boolean z10, View view, View view2) {
            this.f30168a = z10;
            this.f30169b = view;
            this.f30170c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f30168a) {
                return;
            }
            this.f30169b.setVisibility(4);
            this.f30170c.setAlpha(1.0f);
            this.f30170c.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f30168a) {
                this.f30169b.setVisibility(0);
                this.f30170c.setAlpha(0.0f);
                this.f30170c.setVisibility(4);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f30172a;

        b(View view) {
            this.f30172a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f30172a.invalidate();
        }
    }

    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.circularreveal.c f30174a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Drawable f30175b;

        c(com.google.android.material.circularreveal.c cVar, Drawable drawable) {
            this.f30174a = cVar;
            this.f30175b = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f30174a.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f30174a.setCircularRevealOverlayDrawable(this.f30175b);
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.circularreveal.c f30177a;

        d(com.google.android.material.circularreveal.c cVar) {
            this.f30177a = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            com.google.android.material.circularreveal.c.e revealInfo = this.f30177a.getRevealInfo();
            revealInfo.f28758c = Float.MAX_VALUE;
            this.f30177a.setRevealInfo(revealInfo);
        }
    }

    protected static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public h f30179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public j f30180b;

        protected e() {
        }
    }

    public FabTransformationBehavior() {
        this.f30162c = new Rect();
        this.f30163d = new RectF();
        this.f30164e = new RectF();
        this.f30165f = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30162c = new Rect();
        this.f30163d = new RectF();
        this.f30164e = new RectF();
        this.f30165f = new int[2];
    }

    private ViewGroup K(View view) {
        View viewFindViewById = view.findViewById(R$id.mtrl_child_content_container);
        if (viewFindViewById != null) {
            return f0(viewFindViewById);
        }
        return ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? f0(((ViewGroup) view).getChildAt(0)) : f0(view);
    }

    private void L(View view, e eVar, i iVar, i iVar2, float f11, float f12, float f13, float f14, RectF rectF) {
        float fS = S(eVar, iVar, f11, f13);
        float fS2 = S(eVar, iVar2, f12, f14);
        Rect rect = this.f30162c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f30163d;
        rectF2.set(rect);
        RectF rectF3 = this.f30164e;
        T(view, rectF3);
        rectF3.offset(fS, fS2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private void M(View view, RectF rectF) {
        T(view, rectF);
        rectF.offset(this.f30166g, this.f30167h);
    }

    private Pair N(float f11, float f12, boolean z10, e eVar) {
        i iVarH;
        i iVarH2;
        if (f11 == 0.0f || f12 == 0.0f) {
            iVarH = eVar.f30179a.h("translationXLinear");
            iVarH2 = eVar.f30179a.h("translationYLinear");
        } else if ((!z10 || f12 >= 0.0f) && (z10 || f12 <= 0.0f)) {
            iVarH = eVar.f30179a.h("translationXCurveDownwards");
            iVarH2 = eVar.f30179a.h("translationYCurveDownwards");
        } else {
            iVarH = eVar.f30179a.h("translationXCurveUpwards");
            iVarH2 = eVar.f30179a.h("translationYCurveUpwards");
        }
        return new Pair(iVarH, iVarH2);
    }

    private float O(View view, View view2, j jVar) {
        RectF rectF = this.f30163d;
        RectF rectF2 = this.f30164e;
        M(view, rectF);
        T(view2, rectF2);
        rectF2.offset(-Q(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float P(View view, View view2, j jVar) {
        RectF rectF = this.f30163d;
        RectF rectF2 = this.f30164e;
        M(view, rectF);
        T(view2, rectF2);
        rectF2.offset(0.0f, -R(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    private float Q(View view, View view2, j jVar) {
        float fCenterX;
        float fCenterX2;
        float f11;
        RectF rectF = this.f30163d;
        RectF rectF2 = this.f30164e;
        M(view, rectF);
        T(view2, rectF2);
        int i11 = jVar.f70938a & 7;
        if (i11 == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else {
            if (i11 != 3) {
                if (i11 != 5) {
                    f11 = 0.0f;
                } else {
                    fCenterX = rectF2.right;
                    fCenterX2 = rectF.right;
                }
                return f11 + jVar.f70939b;
            }
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        }
        f11 = fCenterX - fCenterX2;
        return f11 + jVar.f70939b;
    }

    private float R(View view, View view2, j jVar) {
        float fCenterY;
        float fCenterY2;
        float f11;
        RectF rectF = this.f30163d;
        RectF rectF2 = this.f30164e;
        M(view, rectF);
        T(view2, rectF2);
        int i11 = jVar.f70938a & 112;
        if (i11 == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else {
            if (i11 != 48) {
                if (i11 != 80) {
                    f11 = 0.0f;
                } else {
                    fCenterY = rectF2.bottom;
                    fCenterY2 = rectF.bottom;
                }
                return f11 + jVar.f70940c;
            }
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        }
        f11 = fCenterY - fCenterY2;
        return f11 + jVar.f70940c;
    }

    private float S(e eVar, i iVar, float f11, float f12) {
        long jC = iVar.c();
        long jD = iVar.d();
        i iVarH = eVar.f30179a.h("expansion");
        return oa.a.a(f11, f12, iVar.e().getInterpolation((((iVarH.c() + iVarH.d()) + 17) - jC) / jD));
    }

    private void T(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f30165f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private void U(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ViewGroup viewGroupK;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof com.google.android.material.circularreveal.c) && com.google.android.material.circularreveal.b.f28742j == 0) || (viewGroupK = K(view2)) == null) {
                return;
            }
            if (z10) {
                if (!z11) {
                    oa.d.f70924a.set(viewGroupK, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupK, (Property<ViewGroup, Float>) oa.d.f70924a, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupK, (Property<ViewGroup, Float>) oa.d.f70924a, 0.0f);
            }
            eVar.f30179a.h("contentFade").a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void V(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof com.google.android.material.circularreveal.c) {
            com.google.android.material.circularreveal.c cVar = (com.google.android.material.circularreveal.c) view2;
            int iD0 = d0(view);
            int i11 = 16777215 & iD0;
            if (z10) {
                if (!z11) {
                    cVar.setCircularRevealScrimColor(iD0);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(cVar, (Property<com.google.android.material.circularreveal.c, Integer>) com.google.android.material.circularreveal.c.d.f28755a, i11);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(cVar, (Property<com.google.android.material.circularreveal.c, Integer>) com.google.android.material.circularreveal.c.d.f28755a, iD0);
            }
            objectAnimatorOfInt.setEvaluator(oa.c.b());
            eVar.f30179a.h(TtmlNode.ATTR_TTS_COLOR).a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    private void W(View view, View view2, boolean z10, e eVar, List list) {
        float fQ = Q(view, view2, eVar.f30180b);
        float fR = R(view, view2, eVar.f30180b);
        Pair pairN = N(fQ, fR, z10, eVar);
        i iVar = (i) pairN.first;
        i iVar2 = (i) pairN.second;
        Property property = View.TRANSLATION_X;
        if (!z10) {
            fQ = this.f30166g;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fQ);
        Property property2 = View.TRANSLATION_Y;
        if (!z10) {
            fR = this.f30167h;
        }
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fR);
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    private void X(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z10) {
            if (!z11) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        eVar.f30179a.h("elevation").a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void Y(View view, View view2, boolean z10, boolean z11, e eVar, float f11, float f12, List list, List list2) {
        Animator animatorA;
        if (view2 instanceof com.google.android.material.circularreveal.c) {
            com.google.android.material.circularreveal.c cVar = (com.google.android.material.circularreveal.c) view2;
            float fO = O(view, view2, eVar.f30180b);
            float fP = P(view, view2, eVar.f30180b);
            ((FloatingActionButton) view).getContentRect(this.f30162c);
            float fWidth = this.f30162c.width() / 2.0f;
            i iVarH = eVar.f30179a.h("expansion");
            if (z10) {
                if (!z11) {
                    cVar.setRevealInfo(new com.google.android.material.circularreveal.c.e(fO, fP, fWidth));
                }
                if (z11) {
                    fWidth = cVar.getRevealInfo().f28758c;
                }
                animatorA = com.google.android.material.circularreveal.a.a(cVar, fO, fP, va.a.b(fO, fP, 0.0f, 0.0f, f11, f12));
                animatorA.addListener(new d(cVar));
                b0(view2, iVarH.c(), (int) fO, (int) fP, fWidth, list);
            } else {
                float f13 = cVar.getRevealInfo().f28758c;
                Animator animatorA2 = com.google.android.material.circularreveal.a.a(cVar, fO, fP, fWidth);
                int i11 = (int) fO;
                int i12 = (int) fP;
                b0(view2, iVarH.c(), i11, i12, f13, list);
                a0(view2, iVarH.c(), iVarH.d(), eVar.f30179a.i(), i11, i12, fWidth, list);
                animatorA = animatorA2;
            }
            iVarH.a(animatorA);
            list.add(animatorA);
            list2.add(com.google.android.material.circularreveal.a.b(cVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void Z(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof com.google.android.material.circularreveal.c) && (view instanceof ImageView)) {
            com.google.android.material.circularreveal.c cVar = (com.google.android.material.circularreveal.c) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z10) {
                if (!z11) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, (Property<Drawable, Integer>) oa.e.f70925b, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, (Property<Drawable, Integer>) oa.e.f70925b, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new b(view2));
            eVar.f30179a.h("iconFade").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new c(cVar, drawable));
        }
    }

    private void a0(View view, long j11, long j12, long j13, int i11, int i12, float f11, List list) {
        long j14 = j11 + j12;
        if (j14 < j13) {
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i11, i12, f11, f11);
            animatorCreateCircularReveal.setStartDelay(j14);
            animatorCreateCircularReveal.setDuration(j13 - j14);
            list.add(animatorCreateCircularReveal);
        }
    }

    private void b0(View view, long j11, int i11, int i12, float f11, List list) {
        if (j11 > 0) {
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i11, i12, f11, f11);
            animatorCreateCircularReveal.setStartDelay(0L);
            animatorCreateCircularReveal.setDuration(j11);
            list.add(animatorCreateCircularReveal);
        }
    }

    private void c0(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2, RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fQ = Q(view, view2, eVar.f30180b);
        float fR = R(view, view2, eVar.f30180b);
        Pair pairN = N(fQ, fR, z10, eVar);
        i iVar = (i) pairN.first;
        i iVar2 = (i) pairN.second;
        if (z10) {
            if (!z11) {
                view2.setTranslationX(-fQ);
                view2.setTranslationY(-fR);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            L(view2, eVar, iVar, iVar2, -fQ, -fR, 0.0f, 0.0f, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fQ);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fR);
        }
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    private int d0(View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    private ViewGroup f0(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    protected AnimatorSet J(View view, View view2, boolean z10, boolean z11) {
        e eVarE0 = e0(view2.getContext(), z10);
        if (z10) {
            this.f30166g = view.getTranslationX();
            this.f30167h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        X(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        RectF rectF = this.f30163d;
        c0(view, view2, z10, z11, eVarE0, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        W(view, view2, z10, eVarE0, arrayList);
        Z(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        Y(view, view2, z10, z11, eVarE0, fWidth, fHeight, arrayList, arrayList2);
        V(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        U(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        oa.b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z10, view2, view));
        int size = arrayList2.size();
        for (int i11 = 0; i11 < size; i11++) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList2.get(i11));
        }
        return animatorSet;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    protected abstract e e0(Context context, boolean z10);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void g(CoordinatorLayout.f fVar) {
        if (fVar.f7914h == 0) {
            fVar.f7914h = 80;
        }
    }
}
