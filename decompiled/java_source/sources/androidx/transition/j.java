package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j implements Cloneable {
    private static final Animator[] J = new Animator[0];
    private static final int[] K = {2, 1, 3, 4};
    private static final androidx.transition.g L = new a();
    private static ThreadLocal M = new ThreadLocal();
    t F;
    private e G;
    private androidx.collection.a H;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ArrayList f15057t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ArrayList f15058u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private f[] f15059v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f15038a = getClass().getName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f15039b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f15040c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TimeInterpolator f15041d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList f15042e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ArrayList f15043f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList f15044g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList f15045h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ArrayList f15046i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList f15047j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ArrayList f15048k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ArrayList f15049l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ArrayList f15050m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ArrayList f15051n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ArrayList f15052o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private x f15053p = new x();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private x f15054q = new x();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    u f15055r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int[] f15056s = K;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f15060w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    ArrayList f15061x = new ArrayList();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Animator[] f15062y = J;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    int f15063z = 0;
    private boolean A = false;
    boolean B = false;
    private j C = null;
    private ArrayList D = null;
    ArrayList E = new ArrayList();
    private androidx.transition.g I = L;

    class a extends androidx.transition.g {
        a() {
        }

        @Override // androidx.transition.g
        public Path a(float f11, float f12, float f13, float f14) {
            Path path = new Path();
            path.moveTo(f11, f12);
            path.lineTo(f13, f14);
            return path;
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.collection.a f15064a;

        b(androidx.collection.a aVar) {
            this.f15064a = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f15064a.remove(animator);
            j.this.f15061x.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.f15061x.add(animator);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j.this.p();
            animator.removeListener(this);
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f15067a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f15068b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        w f15069c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        WindowId f15070d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        j f15071e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Animator f15072f;

        d(View view, String str, j jVar, WindowId windowId, w wVar, Animator animator) {
            this.f15067a = view;
            this.f15068b = str;
            this.f15069c = wVar;
            this.f15070d = windowId;
            this.f15071e = jVar;
            this.f15072f = animator;
        }
    }

    public static abstract class e {
    }

    public interface f {
        void a(j jVar);

        void b(j jVar);

        void c(j jVar);

        void d(j jVar, boolean z10);

        void e(j jVar);

        void f(j jVar);

        void g(j jVar, boolean z10);
    }

    interface g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f15073a = new g() { // from class: androidx.transition.l
            @Override // androidx.transition.j.g
            public final void a(j.f fVar, j jVar, boolean z10) {
                fVar.g(jVar, z10);
            }
        };

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final g f15074b = new g() { // from class: androidx.transition.m
            @Override // androidx.transition.j.g
            public final void a(j.f fVar, j jVar, boolean z10) {
                fVar.d(jVar, z10);
            }
        };

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final g f15075c = new g() { // from class: androidx.transition.n
            @Override // androidx.transition.j.g
            public final void a(j.f fVar, j jVar, boolean z10) {
                fVar.f(jVar);
            }
        };

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final g f15076d = new g() { // from class: androidx.transition.o
            @Override // androidx.transition.j.g
            public final void a(j.f fVar, j jVar, boolean z10) {
                fVar.c(jVar);
            }
        };

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final g f15077e = new g() { // from class: androidx.transition.p
            @Override // androidx.transition.j.g
            public final void a(j.f fVar, j jVar, boolean z10) {
                fVar.a(jVar);
            }
        };

        void a(f fVar, j jVar, boolean z10);
    }

    private static boolean I(w wVar, w wVar2, String str) {
        Object obj = wVar.f15109a.get(str);
        Object obj2 = wVar2.f15109a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    private void J(androidx.collection.a aVar, androidx.collection.a aVar2, SparseArray sparseArray, SparseArray sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i11 = 0; i11 < size; i11++) {
            View view2 = (View) sparseArray.valueAt(i11);
            if (view2 != null && H(view2) && (view = (View) sparseArray2.get(sparseArray.keyAt(i11))) != null && H(view)) {
                w wVar = (w) aVar.get(view2);
                w wVar2 = (w) aVar2.get(view);
                if (wVar != null && wVar2 != null) {
                    this.f15057t.add(wVar);
                    this.f15058u.add(wVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void K(androidx.collection.a aVar, androidx.collection.a aVar2) {
        w wVar;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View view = (View) aVar.keyAt(size);
            if (view != null && H(view) && (wVar = (w) aVar2.remove(view)) != null && H(wVar.f15110b)) {
                this.f15057t.add((w) aVar.removeAt(size));
                this.f15058u.add(wVar);
            }
        }
    }

    private void L(androidx.collection.a aVar, androidx.collection.a aVar2, androidx.collection.x xVar, androidx.collection.x xVar2) {
        View view;
        int iN = xVar.n();
        for (int i11 = 0; i11 < iN; i11++) {
            View view2 = (View) xVar.o(i11);
            if (view2 != null && H(view2) && (view = (View) xVar2.e(xVar.j(i11))) != null && H(view)) {
                w wVar = (w) aVar.get(view2);
                w wVar2 = (w) aVar2.get(view);
                if (wVar != null && wVar2 != null) {
                    this.f15057t.add(wVar);
                    this.f15058u.add(wVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void M(androidx.collection.a aVar, androidx.collection.a aVar2, androidx.collection.a aVar3, androidx.collection.a aVar4) {
        View view;
        int size = aVar3.size();
        for (int i11 = 0; i11 < size; i11++) {
            View view2 = (View) aVar3.valueAt(i11);
            if (view2 != null && H(view2) && (view = (View) aVar4.get(aVar3.keyAt(i11))) != null && H(view)) {
                w wVar = (w) aVar.get(view2);
                w wVar2 = (w) aVar2.get(view);
                if (wVar != null && wVar2 != null) {
                    this.f15057t.add(wVar);
                    this.f15058u.add(wVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void N(x xVar, x xVar2) {
        androidx.collection.a aVar = new androidx.collection.a(xVar.f15112a);
        androidx.collection.a aVar2 = new androidx.collection.a(xVar2.f15112a);
        int i11 = 0;
        while (true) {
            int[] iArr = this.f15056s;
            if (i11 >= iArr.length) {
                c(aVar, aVar2);
                return;
            }
            int i12 = iArr[i11];
            if (i12 == 1) {
                K(aVar, aVar2);
            } else if (i12 == 2) {
                M(aVar, aVar2, xVar.f15115d, xVar2.f15115d);
            } else if (i12 == 3) {
                J(aVar, aVar2, xVar.f15113b, xVar2.f15113b);
            } else if (i12 == 4) {
                L(aVar, aVar2, xVar.f15114c, xVar2.f15114c);
            }
            i11++;
        }
    }

    private void O(j jVar, g gVar, boolean z10) {
        j jVar2 = this.C;
        if (jVar2 != null) {
            jVar2.O(jVar, gVar, z10);
        }
        ArrayList arrayList = this.D;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.D.size();
        f[] fVarArr = this.f15059v;
        if (fVarArr == null) {
            fVarArr = new f[size];
        }
        this.f15059v = null;
        f[] fVarArr2 = (f[]) this.D.toArray(fVarArr);
        for (int i11 = 0; i11 < size; i11++) {
            gVar.a(fVarArr2[i11], jVar, z10);
            fVarArr2[i11] = null;
        }
        this.f15059v = fVarArr2;
    }

    private void V(Animator animator, androidx.collection.a aVar) {
        if (animator != null) {
            animator.addListener(new b(aVar));
            e(animator);
        }
    }

    private void c(androidx.collection.a aVar, androidx.collection.a aVar2) {
        for (int i11 = 0; i11 < aVar.size(); i11++) {
            w wVar = (w) aVar.valueAt(i11);
            if (H(wVar.f15110b)) {
                this.f15057t.add(wVar);
                this.f15058u.add(null);
            }
        }
        for (int i12 = 0; i12 < aVar2.size(); i12++) {
            w wVar2 = (w) aVar2.valueAt(i12);
            if (H(wVar2.f15110b)) {
                this.f15058u.add(wVar2);
                this.f15057t.add(null);
            }
        }
    }

    private static void d(x xVar, View view, w wVar) {
        xVar.f15112a.put(view, wVar);
        int id2 = view.getId();
        if (id2 >= 0) {
            if (xVar.f15113b.indexOfKey(id2) >= 0) {
                xVar.f15113b.put(id2, null);
            } else {
                xVar.f15113b.put(id2, view);
            }
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            if (xVar.f15115d.containsKey(transitionName)) {
                xVar.f15115d.put(transitionName, null);
            } else {
                xVar.f15115d.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (xVar.f15114c.g(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    xVar.f15114c.k(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) xVar.f15114c.e(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    xVar.f15114c.k(itemIdAtPosition, null);
                }
            }
        }
    }

    private void g(View view, boolean z10) {
        if (view == null) {
            return;
        }
        int id2 = view.getId();
        ArrayList arrayList = this.f15046i;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id2))) {
            ArrayList arrayList2 = this.f15047j;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList arrayList3 = this.f15048k;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        if (((Class) this.f15048k.get(i11)).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    w wVar = new w(view);
                    if (z10) {
                        j(wVar);
                    } else {
                        f(wVar);
                    }
                    wVar.f15111c.add(this);
                    i(wVar);
                    if (z10) {
                        d(this.f15053p, view, wVar);
                    } else {
                        d(this.f15054q, view, wVar);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList arrayList4 = this.f15050m;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id2))) {
                        ArrayList arrayList5 = this.f15051n;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList arrayList6 = this.f15052o;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i12 = 0; i12 < size2; i12++) {
                                    if (((Class) this.f15052o.get(i12)).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i13 = 0; i13 < viewGroup.getChildCount(); i13++) {
                                g(viewGroup.getChildAt(i13), z10);
                            }
                        }
                    }
                }
            }
        }
    }

    private static androidx.collection.a y() {
        androidx.collection.a aVar = (androidx.collection.a) M.get();
        if (aVar != null) {
            return aVar;
        }
        androidx.collection.a aVar2 = new androidx.collection.a();
        M.set(aVar2);
        return aVar2;
    }

    public List A() {
        return this.f15042e;
    }

    public List B() {
        return this.f15044g;
    }

    public List C() {
        return this.f15045h;
    }

    public List D() {
        return this.f15043f;
    }

    public String[] E() {
        return null;
    }

    public w F(View view, boolean z10) {
        u uVar = this.f15055r;
        if (uVar != null) {
            return uVar.F(view, z10);
        }
        return (w) (z10 ? this.f15053p : this.f15054q).f15112a.get(view);
    }

    public boolean G(w wVar, w wVar2) {
        if (wVar == null || wVar2 == null) {
            return false;
        }
        String[] strArrE = E();
        if (strArrE == null) {
            Iterator it = wVar.f15109a.keySet().iterator();
            while (it.hasNext()) {
                if (I(wVar, wVar2, (String) it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrE) {
            if (!I(wVar, wVar2, str)) {
            }
        }
        return false;
        return true;
    }

    boolean H(View view) {
        ArrayList arrayList;
        ArrayList arrayList2;
        int id2 = view.getId();
        ArrayList arrayList3 = this.f15046i;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id2))) {
            return false;
        }
        ArrayList arrayList4 = this.f15047j;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList arrayList5 = this.f15048k;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i11 = 0; i11 < size; i11++) {
                if (((Class) this.f15048k.get(i11)).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.f15049l != null && ViewCompat.getTransitionName(view) != null && this.f15049l.contains(ViewCompat.getTransitionName(view))) {
            return false;
        }
        if ((this.f15042e.size() == 0 && this.f15043f.size() == 0 && (((arrayList = this.f15045h) == null || arrayList.isEmpty()) && ((arrayList2 = this.f15044g) == null || arrayList2.isEmpty()))) || this.f15042e.contains(Integer.valueOf(id2)) || this.f15043f.contains(view)) {
            return true;
        }
        ArrayList arrayList6 = this.f15044g;
        if (arrayList6 != null && arrayList6.contains(ViewCompat.getTransitionName(view))) {
            return true;
        }
        if (this.f15045h != null) {
            for (int i12 = 0; i12 < this.f15045h.size(); i12++) {
                if (((Class) this.f15045h.get(i12)).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    void P(g gVar, boolean z10) {
        O(this, gVar, z10);
    }

    public void Q(View view) {
        if (this.B) {
            return;
        }
        int size = this.f15061x.size();
        Animator[] animatorArr = (Animator[]) this.f15061x.toArray(this.f15062y);
        this.f15062y = J;
        for (int i11 = size - 1; i11 >= 0; i11--) {
            Animator animator = animatorArr[i11];
            animatorArr[i11] = null;
            animator.pause();
        }
        this.f15062y = animatorArr;
        P(g.f15076d, false);
        this.A = true;
    }

    void R(ViewGroup viewGroup) {
        d dVar;
        this.f15057t = new ArrayList();
        this.f15058u = new ArrayList();
        N(this.f15053p, this.f15054q);
        androidx.collection.a aVarY = y();
        int size = aVarY.size();
        WindowId windowId = viewGroup.getWindowId();
        for (int i11 = size - 1; i11 >= 0; i11--) {
            Animator animator = (Animator) aVarY.keyAt(i11);
            if (animator != null && (dVar = (d) aVarY.get(animator)) != null && dVar.f15067a != null && windowId.equals(dVar.f15070d)) {
                w wVar = dVar.f15069c;
                View view = dVar.f15067a;
                w wVarF = F(view, true);
                w wVarT = t(view, true);
                if (wVarF == null && wVarT == null) {
                    wVarT = (w) this.f15054q.f15112a.get(view);
                }
                if ((wVarF != null || wVarT != null) && dVar.f15071e.G(wVar, wVarT)) {
                    dVar.f15071e.x().getClass();
                    if (animator.isRunning() || animator.isStarted()) {
                        animator.cancel();
                    } else {
                        aVarY.remove(animator);
                    }
                }
            }
        }
        o(viewGroup, this.f15053p, this.f15054q, this.f15057t, this.f15058u);
        W();
    }

    public j S(f fVar) {
        j jVar;
        ArrayList arrayList = this.D;
        if (arrayList == null) {
            return this;
        }
        if (!arrayList.remove(fVar) && (jVar = this.C) != null) {
            jVar.S(fVar);
        }
        if (this.D.size() == 0) {
            this.D = null;
        }
        return this;
    }

    public j T(View view) {
        this.f15043f.remove(view);
        return this;
    }

    public void U(View view) {
        if (this.A) {
            if (!this.B) {
                int size = this.f15061x.size();
                Animator[] animatorArr = (Animator[]) this.f15061x.toArray(this.f15062y);
                this.f15062y = J;
                for (int i11 = size - 1; i11 >= 0; i11--) {
                    Animator animator = animatorArr[i11];
                    animatorArr[i11] = null;
                    animator.resume();
                }
                this.f15062y = animatorArr;
                P(g.f15077e, false);
            }
            this.A = false;
        }
    }

    protected void W() {
        d0();
        androidx.collection.a aVarY = y();
        for (Animator animator : this.E) {
            if (aVarY.containsKey(animator)) {
                d0();
                V(animator, aVarY);
            }
        }
        this.E.clear();
        p();
    }

    public j X(long j11) {
        this.f15040c = j11;
        return this;
    }

    public void Y(e eVar) {
        this.G = eVar;
    }

    public j Z(TimeInterpolator timeInterpolator) {
        this.f15041d = timeInterpolator;
        return this;
    }

    public j a(f fVar) {
        if (this.D == null) {
            this.D = new ArrayList();
        }
        this.D.add(fVar);
        return this;
    }

    public void a0(androidx.transition.g gVar) {
        if (gVar == null) {
            this.I = L;
        } else {
            this.I = gVar;
        }
    }

    public j b(View view) {
        this.f15043f.add(view);
        return this;
    }

    public void b0(t tVar) {
        this.F = tVar;
    }

    public j c0(long j11) {
        this.f15039b = j11;
        return this;
    }

    protected void cancel() {
        int size = this.f15061x.size();
        Animator[] animatorArr = (Animator[]) this.f15061x.toArray(this.f15062y);
        this.f15062y = J;
        for (int i11 = size - 1; i11 >= 0; i11--) {
            Animator animator = animatorArr[i11];
            animatorArr[i11] = null;
            animator.cancel();
        }
        this.f15062y = animatorArr;
        P(g.f15075c, false);
    }

    protected void d0() {
        if (this.f15063z == 0) {
            P(g.f15073a, false);
            this.B = false;
        }
        this.f15063z++;
    }

    protected void e(Animator animator) {
        if (animator == null) {
            p();
            return;
        }
        if (q() >= 0) {
            animator.setDuration(q());
        }
        if (z() >= 0) {
            animator.setStartDelay(z() + animator.getStartDelay());
        }
        if (s() != null) {
            animator.setInterpolator(s());
        }
        animator.addListener(new c());
        animator.start();
    }

    String e0(String str) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(getClass().getSimpleName());
        sb2.append("@");
        sb2.append(Integer.toHexString(hashCode()));
        sb2.append(": ");
        if (this.f15040c != -1) {
            sb2.append("dur(");
            sb2.append(this.f15040c);
            sb2.append(") ");
        }
        if (this.f15039b != -1) {
            sb2.append("dly(");
            sb2.append(this.f15039b);
            sb2.append(") ");
        }
        if (this.f15041d != null) {
            sb2.append("interp(");
            sb2.append(this.f15041d);
            sb2.append(") ");
        }
        if (this.f15042e.size() > 0 || this.f15043f.size() > 0) {
            sb2.append("tgts(");
            if (this.f15042e.size() > 0) {
                for (int i11 = 0; i11 < this.f15042e.size(); i11++) {
                    if (i11 > 0) {
                        sb2.append(", ");
                    }
                    sb2.append(this.f15042e.get(i11));
                }
            }
            if (this.f15043f.size() > 0) {
                for (int i12 = 0; i12 < this.f15043f.size(); i12++) {
                    if (i12 > 0) {
                        sb2.append(", ");
                    }
                    sb2.append(this.f15043f.get(i12));
                }
            }
            sb2.append(")");
        }
        return sb2.toString();
    }

    public abstract void f(w wVar);

    void i(w wVar) {
        String[] strArrB;
        if (this.F == null || wVar.f15109a.isEmpty() || (strArrB = this.F.b()) == null) {
            return;
        }
        for (String str : strArrB) {
            if (!wVar.f15109a.containsKey(str)) {
                this.F.a(wVar);
                return;
            }
        }
    }

    public abstract void j(w wVar);

    void k(ViewGroup viewGroup, boolean z10) {
        ArrayList arrayList;
        ArrayList arrayList2;
        androidx.collection.a aVar;
        l(z10);
        if ((this.f15042e.size() > 0 || this.f15043f.size() > 0) && (((arrayList = this.f15044g) == null || arrayList.isEmpty()) && ((arrayList2 = this.f15045h) == null || arrayList2.isEmpty()))) {
            for (int i11 = 0; i11 < this.f15042e.size(); i11++) {
                View viewFindViewById = viewGroup.findViewById(((Integer) this.f15042e.get(i11)).intValue());
                if (viewFindViewById != null) {
                    w wVar = new w(viewFindViewById);
                    if (z10) {
                        j(wVar);
                    } else {
                        f(wVar);
                    }
                    wVar.f15111c.add(this);
                    i(wVar);
                    if (z10) {
                        d(this.f15053p, viewFindViewById, wVar);
                    } else {
                        d(this.f15054q, viewFindViewById, wVar);
                    }
                }
            }
            for (int i12 = 0; i12 < this.f15043f.size(); i12++) {
                View view = (View) this.f15043f.get(i12);
                w wVar2 = new w(view);
                if (z10) {
                    j(wVar2);
                } else {
                    f(wVar2);
                }
                wVar2.f15111c.add(this);
                i(wVar2);
                if (z10) {
                    d(this.f15053p, view, wVar2);
                } else {
                    d(this.f15054q, view, wVar2);
                }
            }
        } else {
            g(viewGroup, z10);
        }
        if (z10 || (aVar = this.H) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i13 = 0; i13 < size; i13++) {
            arrayList3.add((View) this.f15053p.f15115d.remove((String) this.H.keyAt(i13)));
        }
        for (int i14 = 0; i14 < size; i14++) {
            View view2 = (View) arrayList3.get(i14);
            if (view2 != null) {
                this.f15053p.f15115d.put((String) this.H.valueAt(i14), view2);
            }
        }
    }

    void l(boolean z10) {
        if (z10) {
            this.f15053p.f15112a.clear();
            this.f15053p.f15113b.clear();
            this.f15053p.f15114c.b();
        } else {
            this.f15054q.f15112a.clear();
            this.f15054q.f15113b.clear();
            this.f15054q.f15114c.b();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: m */
    public j clone() {
        try {
            j jVar = (j) super.clone();
            jVar.E = new ArrayList();
            jVar.f15053p = new x();
            jVar.f15054q = new x();
            jVar.f15057t = null;
            jVar.f15058u = null;
            jVar.C = this;
            jVar.D = null;
            return jVar;
        } catch (CloneNotSupportedException e11) {
            throw new RuntimeException(e11);
        }
    }

    public Animator n(ViewGroup viewGroup, w wVar, w wVar2) {
        return null;
    }

    void o(ViewGroup viewGroup, x xVar, x xVar2, ArrayList arrayList, ArrayList arrayList2) {
        Animator animatorN;
        int i11;
        View view;
        Animator animator;
        w wVar;
        Animator animator2;
        w wVar2;
        androidx.collection.a aVarY = y();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        x().getClass();
        long jMin = Long.MAX_VALUE;
        int i12 = 0;
        while (i12 < size) {
            w wVar3 = (w) arrayList.get(i12);
            w wVar4 = (w) arrayList2.get(i12);
            if (wVar3 != null && !wVar3.f15111c.contains(this)) {
                wVar3 = null;
            }
            if (wVar4 != null && !wVar4.f15111c.contains(this)) {
                wVar4 = null;
            }
            if (!(wVar3 == null && wVar4 == null) && ((wVar3 == null || wVar4 == null || G(wVar3, wVar4)) && (animatorN = n(viewGroup, wVar3, wVar4)) != null)) {
                if (wVar4 != null) {
                    View view2 = wVar4.f15110b;
                    String[] strArrE = E();
                    if (strArrE != null && strArrE.length > 0) {
                        wVar2 = new w(view2);
                        i11 = size;
                        w wVar5 = (w) xVar2.f15112a.get(view2);
                        if (wVar5 != null) {
                            int i13 = 0;
                            while (i13 < strArrE.length) {
                                Map map = wVar2.f15109a;
                                String str = strArrE[i13];
                                map.put(str, wVar5.f15109a.get(str));
                                i13++;
                                strArrE = strArrE;
                            }
                        }
                        int size2 = aVarY.size();
                        int i14 = 0;
                        while (true) {
                            if (i14 >= size2) {
                                animator2 = animatorN;
                                break;
                            }
                            d dVar = (d) aVarY.get((Animator) aVarY.keyAt(i14));
                            if (dVar.f15069c != null && dVar.f15067a == view2 && dVar.f15068b.equals(u()) && dVar.f15069c.equals(wVar2)) {
                                animator2 = null;
                                break;
                            }
                            i14++;
                        }
                    } else {
                        i11 = size;
                        animator2 = animatorN;
                        wVar2 = null;
                    }
                    animator = animator2;
                    view = view2;
                    wVar = wVar2;
                } else {
                    i11 = size;
                    view = wVar3.f15110b;
                    animator = animatorN;
                    wVar = null;
                }
                if (animator != null) {
                    t tVar = this.F;
                    if (tVar != null) {
                        long jC = tVar.c(viewGroup, this, wVar3, wVar4);
                        sparseIntArray.put(this.E.size(), (int) jC);
                        jMin = Math.min(jC, jMin);
                    }
                    aVarY.put(animator, new d(view, u(), this, viewGroup.getWindowId(), wVar, animator));
                    this.E.add(animator);
                    jMin = jMin;
                }
            } else {
                i11 = size;
            }
            i12++;
            size = i11;
        }
        if (sparseIntArray.size() != 0) {
            for (int i15 = 0; i15 < sparseIntArray.size(); i15++) {
                d dVar2 = (d) aVarY.get((Animator) this.E.get(sparseIntArray.keyAt(i15)));
                dVar2.f15072f.setStartDelay((((long) sparseIntArray.valueAt(i15)) - jMin) + dVar2.f15072f.getStartDelay());
            }
        }
    }

    protected void p() {
        int i11 = this.f15063z - 1;
        this.f15063z = i11;
        if (i11 == 0) {
            P(g.f15074b, false);
            for (int i12 = 0; i12 < this.f15053p.f15114c.n(); i12++) {
                View view = (View) this.f15053p.f15114c.o(i12);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i13 = 0; i13 < this.f15054q.f15114c.n(); i13++) {
                View view2 = (View) this.f15054q.f15114c.o(i13);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.B = true;
        }
    }

    public long q() {
        return this.f15040c;
    }

    public e r() {
        return this.G;
    }

    public TimeInterpolator s() {
        return this.f15041d;
    }

    w t(View view, boolean z10) {
        u uVar = this.f15055r;
        if (uVar != null) {
            return uVar.t(view, z10);
        }
        ArrayList arrayList = z10 ? this.f15057t : this.f15058u;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                i11 = -1;
                break;
            }
            w wVar = (w) arrayList.get(i11);
            if (wVar == null) {
                return null;
            }
            if (wVar.f15110b == view) {
                break;
            }
            i11++;
        }
        if (i11 >= 0) {
            return (w) (z10 ? this.f15058u : this.f15057t).get(i11);
        }
        return null;
    }

    public String toString() {
        return e0("");
    }

    public String u() {
        return this.f15038a;
    }

    public androidx.transition.g v() {
        return this.I;
    }

    public t w() {
        return this.F;
    }

    public final j x() {
        u uVar = this.f15055r;
        return uVar != null ? uVar.x() : this;
    }

    public long z() {
        return this.f15039b;
    }
}
