package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b extends j {
    private static final String[] O = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static final Property P = new a(PointF.class, "topLeft");
    private static final Property Q = new C0125b(PointF.class, "bottomRight");
    private static final Property R = new c(PointF.class, "bottomRight");
    private static final Property S = new d(PointF.class, "topLeft");
    private static final Property T = new e(PointF.class, RequestParameters.POSITION);
    private static final androidx.transition.h U = new androidx.transition.h();
    private boolean N = false;

    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(i iVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(i iVar, PointF pointF) {
            iVar.c(pointF);
        }
    }

    /* JADX INFO: renamed from: androidx.transition.b$b, reason: collision with other inner class name */
    class C0125b extends Property {
        C0125b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(i iVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(i iVar, PointF pointF) {
            iVar.a(pointF);
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            z.d(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    class d extends Property {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            z.d(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    class e extends Property {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            z.d(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    }

    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f14985a;
        private final i mViewBounds;

        f(i iVar) {
            this.f14985a = iVar;
            this.mViewBounds = iVar;
        }
    }

    private static class g extends AnimatorListenerAdapter implements j.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f14987a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Rect f14988b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f14989c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Rect f14990d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f14991e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f14992f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f14993g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f14994h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f14995i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f14996j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f14997k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f14998l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final int f14999m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f15000n;

        g(View view, Rect rect, boolean z10, Rect rect2, boolean z11, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            this.f14987a = view;
            this.f14988b = rect;
            this.f14989c = z10;
            this.f14990d = rect2;
            this.f14991e = z11;
            this.f14992f = i11;
            this.f14993g = i12;
            this.f14994h = i13;
            this.f14995i = i14;
            this.f14996j = i15;
            this.f14997k = i16;
            this.f14998l = i17;
            this.f14999m = i18;
        }

        @Override // androidx.transition.j.f
        public void a(j jVar) {
            Rect rect = (Rect) this.f14987a.getTag(R$id.transition_clip);
            this.f14987a.setTag(R$id.transition_clip, null);
            this.f14987a.setClipBounds(rect);
        }

        @Override // androidx.transition.j.f
        public void b(j jVar) {
        }

        @Override // androidx.transition.j.f
        public void c(j jVar) {
            this.f14987a.setTag(R$id.transition_clip, this.f14987a.getClipBounds());
            this.f14987a.setClipBounds(this.f14991e ? null : this.f14990d);
        }

        @Override // androidx.transition.j.f
        public /* synthetic */ void d(j jVar, boolean z10) {
            k.a(this, jVar, z10);
        }

        @Override // androidx.transition.j.f
        public void e(j jVar) {
        }

        @Override // androidx.transition.j.f
        public void f(j jVar) {
            this.f15000n = true;
        }

        @Override // androidx.transition.j.f
        public /* synthetic */ void g(j jVar, boolean z10) {
            k.b(this, jVar, z10);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (this.f15000n) {
                return;
            }
            Rect rect = null;
            if (z10) {
                if (!this.f14989c) {
                    rect = this.f14988b;
                }
            } else if (!this.f14991e) {
                rect = this.f14990d;
            }
            this.f14987a.setClipBounds(rect);
            if (z10) {
                z.d(this.f14987a, this.f14992f, this.f14993g, this.f14994h, this.f14995i);
            } else {
                z.d(this.f14987a, this.f14996j, this.f14997k, this.f14998l, this.f14999m);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            onAnimationStart(animator, false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator, boolean z10) {
            int iMax = Math.max(this.f14994h - this.f14992f, this.f14998l - this.f14996j);
            int iMax2 = Math.max(this.f14995i - this.f14993g, this.f14999m - this.f14997k);
            int i11 = z10 ? this.f14996j : this.f14992f;
            int i12 = z10 ? this.f14997k : this.f14993g;
            z.d(this.f14987a, i11, i12, iMax + i11, iMax2 + i12);
            this.f14987a.setClipBounds(z10 ? this.f14990d : this.f14988b);
        }
    }

    private static class h extends r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f15001a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ViewGroup f15002b;

        h(ViewGroup viewGroup) {
            this.f15002b = viewGroup;
        }

        @Override // androidx.transition.r, androidx.transition.j.f
        public void a(j jVar) {
            y.b(this.f15002b, true);
        }

        @Override // androidx.transition.r, androidx.transition.j.f
        public void c(j jVar) {
            y.b(this.f15002b, false);
        }

        @Override // androidx.transition.r, androidx.transition.j.f
        public void e(j jVar) {
            if (!this.f15001a) {
                y.b(this.f15002b, false);
            }
            jVar.S(this);
        }

        @Override // androidx.transition.r, androidx.transition.j.f
        public void f(j jVar) {
            y.b(this.f15002b, false);
            this.f15001a = true;
        }
    }

    private static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f15003a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f15004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f15005c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15006d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final View f15007e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f15008f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f15009g;

        i(View view) {
            this.f15007e = view;
        }

        private void b() {
            z.d(this.f15007e, this.f15003a, this.f15004b, this.f15005c, this.f15006d);
            this.f15008f = 0;
            this.f15009g = 0;
        }

        void a(PointF pointF) {
            this.f15005c = Math.round(pointF.x);
            this.f15006d = Math.round(pointF.y);
            int i11 = this.f15009g + 1;
            this.f15009g = i11;
            if (this.f15008f == i11) {
                b();
            }
        }

        void c(PointF pointF) {
            this.f15003a = Math.round(pointF.x);
            this.f15004b = Math.round(pointF.y);
            int i11 = this.f15008f + 1;
            this.f15008f = i11;
            if (i11 == this.f15009g) {
                b();
            }
        }
    }

    private void f0(w wVar) {
        View view = wVar.f15110b;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        wVar.f15109a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        wVar.f15109a.put("android:changeBounds:parent", wVar.f15110b.getParent());
        if (this.N) {
            wVar.f15109a.put("android:changeBounds:clip", view.getClipBounds());
        }
    }

    @Override // androidx.transition.j
    public String[] E() {
        return O;
    }

    @Override // androidx.transition.j
    public void f(w wVar) {
        f0(wVar);
    }

    @Override // androidx.transition.j
    public void j(w wVar) {
        Rect rect;
        f0(wVar);
        if (!this.N || (rect = (Rect) wVar.f15110b.getTag(R$id.transition_clip)) == null) {
            return;
        }
        wVar.f15109a.put("android:changeBounds:clip", rect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.transition.j
    public Animator n(ViewGroup viewGroup, w wVar, w wVar2) {
        int i11;
        View view;
        int i12;
        ObjectAnimator objectAnimatorOfObject;
        Animator animatorC;
        if (wVar == null || wVar2 == null) {
            return null;
        }
        Map map = wVar.f15109a;
        Map map2 = wVar2.f15109a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = wVar2.f15110b;
        Rect rect = (Rect) wVar.f15109a.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) wVar2.f15109a.get("android:changeBounds:bounds");
        int i13 = rect.left;
        int i14 = rect2.left;
        int i15 = rect.top;
        int i16 = rect2.top;
        int i17 = rect.right;
        int i18 = rect2.right;
        int i19 = rect.bottom;
        int i20 = rect2.bottom;
        int i21 = i17 - i13;
        int i22 = i19 - i15;
        int i23 = i18 - i14;
        int i24 = i20 - i16;
        Rect rect3 = (Rect) wVar.f15109a.get("android:changeBounds:clip");
        Rect rect4 = (Rect) wVar2.f15109a.get("android:changeBounds:clip");
        if ((i21 == 0 || i22 == 0) && (i23 == 0 || i24 == 0)) {
            i11 = 0;
        } else {
            i11 = (i13 == i14 && i15 == i16) ? 0 : 1;
            if (i17 != i18 || i19 != i20) {
                i11++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i11++;
        }
        if (i11 <= 0) {
            return null;
        }
        if (this.N) {
            view = view2;
            z.d(view, i13, i15, Math.max(i21, i23) + i13, i15 + Math.max(i22, i24));
            ObjectAnimator objectAnimatorA = (i13 == i14 && i15 == i16) ? null : androidx.transition.f.a(view, T, v().a(i13, i15, i14, i16));
            boolean z10 = rect3 == null;
            if (z10) {
                i12 = 0;
                rect3 = new Rect(0, 0, i21, i22);
            } else {
                i12 = 0;
            }
            Rect rect5 = rect3;
            int i25 = rect4 == null ? 1 : i12;
            Rect rect6 = i25 != 0 ? new Rect(i12, i12, i23, i24) : rect4;
            if (rect5.equals(rect6)) {
                objectAnimatorOfObject = null;
            } else {
                view.setClipBounds(rect5);
                androidx.transition.h hVar = U;
                Object[] objArr = new Object[2];
                objArr[i12] = rect5;
                objArr[1] = rect6;
                objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", hVar, objArr);
                g gVar = new g(view, rect5, z10, rect6, i25, i13, i15, i17, i19, i14, i16, i18, i20);
                objectAnimatorOfObject.addListener(gVar);
                a(gVar);
            }
            animatorC = v.c(objectAnimatorA, objectAnimatorOfObject);
        } else {
            view = view2;
            z.d(view, i13, i15, i17, i19);
            if (i11 != 2) {
                animatorC = (i13 == i14 && i15 == i16) ? androidx.transition.f.a(view, R, v().a(i17, i19, i18, i20)) : androidx.transition.f.a(view, S, v().a(i13, i15, i14, i16));
            } else if (i21 == i23 && i22 == i24) {
                animatorC = androidx.transition.f.a(view, T, v().a(i13, i15, i14, i16));
            } else {
                i iVar = new i(view);
                ObjectAnimator objectAnimatorA2 = androidx.transition.f.a(iVar, P, v().a(i13, i15, i14, i16));
                ObjectAnimator objectAnimatorA3 = androidx.transition.f.a(iVar, Q, v().a(i17, i19, i18, i20));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorA2, objectAnimatorA3);
                animatorSet.addListener(new f(iVar));
                animatorC = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            y.b(viewGroup4, true);
            x().a(new h(viewGroup4));
        }
        return animatorC;
    }
}
