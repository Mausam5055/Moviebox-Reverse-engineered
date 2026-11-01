package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l0 extends j {
    private static final String[] O = {"android:visibility:visibility", "android:visibility:parent"};
    private int N = 3;

    private static class a extends AnimatorListenerAdapter implements j.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f15079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f15080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ViewGroup f15081c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f15082d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f15083e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f15084f = false;

        a(View view, int i11, boolean z10) {
            this.f15079a = view;
            this.f15080b = i11;
            this.f15081c = (ViewGroup) view.getParent();
            this.f15082d = z10;
            i(true);
        }

        private void h() {
            if (!this.f15084f) {
                z.f(this.f15079a, this.f15080b);
                ViewGroup viewGroup = this.f15081c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            i(false);
        }

        private void i(boolean z10) {
            ViewGroup viewGroup;
            if (!this.f15082d || this.f15083e == z10 || (viewGroup = this.f15081c) == null) {
                return;
            }
            this.f15083e = z10;
            y.b(viewGroup, z10);
        }

        @Override // androidx.transition.j.f
        public void a(j jVar) {
            i(true);
            if (this.f15084f) {
                return;
            }
            z.f(this.f15079a, 0);
        }

        @Override // androidx.transition.j.f
        public void b(j jVar) {
        }

        @Override // androidx.transition.j.f
        public void c(j jVar) {
            i(false);
            if (this.f15084f) {
                return;
            }
            z.f(this.f15079a, this.f15080b);
        }

        @Override // androidx.transition.j.f
        public /* synthetic */ void d(j jVar, boolean z10) {
            k.a(this, jVar, z10);
        }

        @Override // androidx.transition.j.f
        public void e(j jVar) {
            jVar.S(this);
        }

        @Override // androidx.transition.j.f
        public void f(j jVar) {
        }

        @Override // androidx.transition.j.f
        public /* synthetic */ void g(j jVar, boolean z10) {
            k.b(this, jVar, z10);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f15084f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            h();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (z10) {
                return;
            }
            h();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator, boolean z10) {
            if (z10) {
                z.f(this.f15079a, 0);
                ViewGroup viewGroup = this.f15081c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
        }
    }

    private class b extends AnimatorListenerAdapter implements j.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ViewGroup f15085a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f15086b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final View f15087c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f15088d = true;

        b(ViewGroup viewGroup, View view, View view2) {
            this.f15085a = viewGroup;
            this.f15086b = view;
            this.f15087c = view2;
        }

        private void h() {
            this.f15087c.setTag(R$id.save_overlay_view, null);
            this.f15085a.getOverlay().remove(this.f15086b);
            this.f15088d = false;
        }

        @Override // androidx.transition.j.f
        public void a(j jVar) {
        }

        @Override // androidx.transition.j.f
        public void b(j jVar) {
        }

        @Override // androidx.transition.j.f
        public void c(j jVar) {
        }

        @Override // androidx.transition.j.f
        public /* synthetic */ void d(j jVar, boolean z10) {
            k.a(this, jVar, z10);
        }

        @Override // androidx.transition.j.f
        public void e(j jVar) {
            jVar.S(this);
        }

        @Override // androidx.transition.j.f
        public void f(j jVar) {
            if (this.f15088d) {
                h();
            }
        }

        @Override // androidx.transition.j.f
        public /* synthetic */ void g(j jVar, boolean z10) {
            k.b(this, jVar, z10);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            h();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (z10) {
                return;
            }
            h();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            this.f15085a.getOverlay().remove(this.f15086b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            if (this.f15086b.getParent() == null) {
                this.f15085a.getOverlay().add(this.f15086b);
            } else {
                l0.this.cancel();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator, boolean z10) {
            if (z10) {
                this.f15087c.setTag(R$id.save_overlay_view, this.f15086b);
                this.f15085a.getOverlay().add(this.f15086b);
                this.f15088d = true;
            }
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f15090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f15091b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f15092c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f15093d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ViewGroup f15094e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ViewGroup f15095f;

        c() {
        }
    }

    private void f0(w wVar) {
        wVar.f15109a.put("android:visibility:visibility", Integer.valueOf(wVar.f15110b.getVisibility()));
        wVar.f15109a.put("android:visibility:parent", wVar.f15110b.getParent());
        int[] iArr = new int[2];
        wVar.f15110b.getLocationOnScreen(iArr);
        wVar.f15109a.put("android:visibility:screenLocation", iArr);
    }

    private c g0(w wVar, w wVar2) {
        c cVar = new c();
        cVar.f15090a = false;
        cVar.f15091b = false;
        if (wVar == null || !wVar.f15109a.containsKey("android:visibility:visibility")) {
            cVar.f15092c = -1;
            cVar.f15094e = null;
        } else {
            cVar.f15092c = ((Integer) wVar.f15109a.get("android:visibility:visibility")).intValue();
            cVar.f15094e = (ViewGroup) wVar.f15109a.get("android:visibility:parent");
        }
        if (wVar2 == null || !wVar2.f15109a.containsKey("android:visibility:visibility")) {
            cVar.f15093d = -1;
            cVar.f15095f = null;
        } else {
            cVar.f15093d = ((Integer) wVar2.f15109a.get("android:visibility:visibility")).intValue();
            cVar.f15095f = (ViewGroup) wVar2.f15109a.get("android:visibility:parent");
        }
        if (wVar != null && wVar2 != null) {
            int i11 = cVar.f15092c;
            int i12 = cVar.f15093d;
            if (i11 == i12 && cVar.f15094e == cVar.f15095f) {
                return cVar;
            }
            if (i11 != i12) {
                if (i11 == 0) {
                    cVar.f15091b = false;
                    cVar.f15090a = true;
                } else if (i12 == 0) {
                    cVar.f15091b = true;
                    cVar.f15090a = true;
                }
            } else if (cVar.f15095f == null) {
                cVar.f15091b = false;
                cVar.f15090a = true;
            } else if (cVar.f15094e == null) {
                cVar.f15091b = true;
                cVar.f15090a = true;
            }
        } else if (wVar == null && cVar.f15093d == 0) {
            cVar.f15091b = true;
            cVar.f15090a = true;
        } else if (wVar2 == null && cVar.f15092c == 0) {
            cVar.f15091b = false;
            cVar.f15090a = true;
        }
        return cVar;
    }

    @Override // androidx.transition.j
    public String[] E() {
        return O;
    }

    @Override // androidx.transition.j
    public boolean G(w wVar, w wVar2) {
        if (wVar == null && wVar2 == null) {
            return false;
        }
        if (wVar != null && wVar2 != null && wVar2.f15109a.containsKey("android:visibility:visibility") != wVar.f15109a.containsKey("android:visibility:visibility")) {
            return false;
        }
        c cVarG0 = g0(wVar, wVar2);
        if (cVarG0.f15090a) {
            return cVarG0.f15092c == 0 || cVarG0.f15093d == 0;
        }
        return false;
    }

    @Override // androidx.transition.j
    public void f(w wVar) {
        f0(wVar);
    }

    public Animator h0(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        return null;
    }

    public Animator i0(ViewGroup viewGroup, w wVar, int i11, w wVar2, int i12) {
        if ((this.N & 1) != 1 || wVar2 == null) {
            return null;
        }
        if (wVar == null) {
            View view = (View) wVar2.f15110b.getParent();
            if (g0(t(view, false), F(view, false)).f15090a) {
                return null;
            }
        }
        return h0(viewGroup, wVar2.f15110b, wVar, wVar2);
    }

    @Override // androidx.transition.j
    public void j(w wVar) {
        f0(wVar);
    }

    public Animator j0(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0036  */
    public Animator k0(ViewGroup viewGroup, w wVar, int i11, w wVar2, int i12) {
        View view;
        boolean z10;
        boolean z11;
        View view2;
        if ((this.N & 2) != 2 || wVar == null) {
            return null;
        }
        View view3 = wVar.f15110b;
        View viewA = wVar2 != null ? wVar2.f15110b : null;
        View view4 = (View) view3.getTag(R$id.save_overlay_view);
        if (view4 != null) {
            view2 = null;
            z11 = true;
        } else {
            if (viewA == null || viewA.getParent() == null) {
                if (viewA != null) {
                    view = null;
                    z10 = false;
                } else {
                    viewA = null;
                    view = null;
                    z10 = true;
                }
            } else if (i12 == 4 || view3 == viewA) {
                view = viewA;
                z10 = false;
                viewA = null;
            } else {
                viewA = null;
                view = null;
                z10 = true;
            }
            if (z10) {
                if (view3.getParent() != null) {
                    if (view3.getParent() instanceof View) {
                        View view5 = (View) view3.getParent();
                        if (g0(F(view5, true), t(view5, true)).f15090a) {
                            int id2 = view5.getId();
                            if (view5.getParent() != null || id2 == -1 || viewGroup.findViewById(id2) == null || !this.f15060w) {
                            }
                        } else {
                            viewA = v.a(viewGroup, view3, view5);
                        }
                    }
                    z11 = false;
                    View view6 = view;
                    view4 = viewA;
                    view2 = view6;
                }
                view2 = view;
                z11 = false;
                view4 = view3;
            } else {
                z11 = false;
                View view7 = view;
                view4 = viewA;
                view2 = view7;
            }
        }
        if (view4 == null) {
            if (view2 == null) {
                return null;
            }
            int visibility = view2.getVisibility();
            z.f(view2, 0);
            Animator animatorJ0 = j0(viewGroup, view2, wVar, wVar2);
            if (animatorJ0 != null) {
                a aVar = new a(view2, i12, true);
                animatorJ0.addListener(aVar);
                x().a(aVar);
            } else {
                z.f(view2, visibility);
            }
            return animatorJ0;
        }
        if (!z11) {
            int[] iArr = (int[]) wVar.f15109a.get("android:visibility:screenLocation");
            int i13 = iArr[0];
            int i14 = iArr[1];
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            view4.offsetLeftAndRight((i13 - iArr2[0]) - view4.getLeft());
            view4.offsetTopAndBottom((i14 - iArr2[1]) - view4.getTop());
            viewGroup.getOverlay().add(view4);
        }
        Animator animatorJ1 = j0(viewGroup, view4, wVar, wVar2);
        if (!z11) {
            if (animatorJ1 == null) {
                viewGroup.getOverlay().remove(view4);
            } else {
                view3.setTag(R$id.save_overlay_view, view4);
                b bVar = new b(viewGroup, view4, view3);
                animatorJ1.addListener(bVar);
                animatorJ1.addPauseListener(bVar);
                x().a(bVar);
            }
        }
        return animatorJ1;
    }

    public void l0(int i11) {
        if ((i11 & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.N = i11;
    }

    @Override // androidx.transition.j
    public Animator n(ViewGroup viewGroup, w wVar, w wVar2) {
        c cVarG0 = g0(wVar, wVar2);
        if (!cVarG0.f15090a) {
            return null;
        }
        if (cVarG0.f15094e == null && cVarG0.f15095f == null) {
            return null;
        }
        return cVarG0.f15091b ? i0(viewGroup, wVar, cVarG0.f15092c, wVar2, cVarG0.f15093d) : k0(viewGroup, wVar, cVarG0.f15092c, wVar2, cVarG0.f15093d);
    }
}
