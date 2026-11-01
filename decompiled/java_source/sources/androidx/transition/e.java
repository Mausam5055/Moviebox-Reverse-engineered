package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransitionImpl;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e extends FragmentTransitionImpl {

    class a extends j.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Rect f15018a;

        a(Rect rect) {
            this.f15018a = rect;
        }
    }

    class b implements j.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f15020a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f15021b;

        b(View view, ArrayList arrayList) {
            this.f15020a = view;
            this.f15021b = arrayList;
        }

        @Override // androidx.transition.j.f
        public void a(j jVar) {
        }

        @Override // androidx.transition.j.f
        public void b(j jVar) {
            jVar.S(this);
            jVar.a(this);
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
            this.f15020a.setVisibility(8);
            int size = this.f15021b.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((View) this.f15021b.get(i11)).setVisibility(0);
            }
        }

        @Override // androidx.transition.j.f
        public void f(j jVar) {
        }

        @Override // androidx.transition.j.f
        public /* synthetic */ void g(j jVar, boolean z10) {
            k.b(this, jVar, z10);
        }
    }

    class c extends r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f15023a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f15024b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f15025c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ArrayList f15026d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f15027e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f15028f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f15023a = obj;
            this.f15024b = arrayList;
            this.f15025c = obj2;
            this.f15026d = arrayList2;
            this.f15027e = obj3;
            this.f15028f = arrayList3;
        }

        @Override // androidx.transition.r, androidx.transition.j.f
        public void b(j jVar) {
            Object obj = this.f15023a;
            if (obj != null) {
                e.this.y(obj, this.f15024b, null);
            }
            Object obj2 = this.f15025c;
            if (obj2 != null) {
                e.this.y(obj2, this.f15026d, null);
            }
            Object obj3 = this.f15027e;
            if (obj3 != null) {
                e.this.y(obj3, this.f15028f, null);
            }
        }

        @Override // androidx.transition.r, androidx.transition.j.f
        public void e(j jVar) {
            jVar.S(this);
        }
    }

    class d implements j.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Runnable f15030a;

        d(Runnable runnable) {
            this.f15030a = runnable;
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
            this.f15030a.run();
        }

        @Override // androidx.transition.j.f
        public void f(j jVar) {
        }

        @Override // androidx.transition.j.f
        public /* synthetic */ void g(j jVar, boolean z10) {
            k.b(this, jVar, z10);
        }
    }

    /* JADX INFO: renamed from: androidx.transition.e$e, reason: collision with other inner class name */
    class C0126e extends j.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Rect f15032a;

        C0126e(Rect rect) {
            this.f15032a = rect;
        }
    }

    private static boolean w(j jVar) {
        return (FragmentTransitionImpl.i(jVar.A()) && FragmentTransitionImpl.i(jVar.B()) && FragmentTransitionImpl.i(jVar.C())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x(Runnable runnable, j jVar, Runnable runnable2) {
        if (runnable != null) {
            runnable.run();
        } else {
            jVar.cancel();
            runnable2.run();
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void a(Object obj, View view) {
        if (obj != null) {
            ((j) obj).b(view);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void b(Object obj, ArrayList arrayList) {
        j jVar = (j) obj;
        if (jVar == null) {
            return;
        }
        int i11 = 0;
        if (jVar instanceof u) {
            u uVar = (u) jVar;
            int iK0 = uVar.k0();
            while (i11 < iK0) {
                b(uVar.j0(i11), arrayList);
                i11++;
            }
            return;
        }
        if (w(jVar) || !FragmentTransitionImpl.i(jVar.D())) {
            return;
        }
        int size = arrayList.size();
        while (i11 < size) {
            jVar.b((View) arrayList.get(i11));
            i11++;
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void c(ViewGroup viewGroup, Object obj) {
        s.a(viewGroup, (j) obj);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public boolean e(Object obj) {
        return obj instanceof j;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public Object f(Object obj) {
        if (obj != null) {
            return ((j) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public Object j(Object obj, Object obj2, Object obj3) {
        j jVarP0 = (j) obj;
        j jVar = (j) obj2;
        j jVar2 = (j) obj3;
        if (jVarP0 != null && jVar != null) {
            jVarP0 = new u().h0(jVarP0).h0(jVar).p0(1);
        } else if (jVarP0 == null) {
            jVarP0 = jVar != null ? jVar : null;
        }
        if (jVar2 == null) {
            return jVarP0;
        }
        u uVar = new u();
        if (jVarP0 != null) {
            uVar.h0(jVarP0);
        }
        uVar.h0(jVar2);
        return uVar;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public Object k(Object obj, Object obj2, Object obj3) {
        u uVar = new u();
        if (obj != null) {
            uVar.h0((j) obj);
        }
        if (obj2 != null) {
            uVar.h0((j) obj2);
        }
        if (obj3 != null) {
            uVar.h0((j) obj3);
        }
        return uVar;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void m(Object obj, View view, ArrayList arrayList) {
        ((j) obj).a(new b(view, arrayList));
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void n(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3) {
        ((j) obj).a(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void o(Object obj, Rect rect) {
        if (obj != null) {
            ((j) obj).Y(new C0126e(rect));
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void p(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            h(view, rect);
            ((j) obj).Y(new a(rect));
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void q(Fragment fragment, Object obj, androidx.core.os.e eVar, Runnable runnable) {
        z(fragment, obj, eVar, null, runnable);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void s(Object obj, View view, ArrayList arrayList) {
        u uVar = (u) obj;
        List listD = uVar.D();
        listD.clear();
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            FragmentTransitionImpl.d(listD, (View) arrayList.get(i11));
        }
        listD.add(view);
        arrayList.add(view);
        b(uVar, arrayList);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void t(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        u uVar = (u) obj;
        if (uVar != null) {
            uVar.D().clear();
            uVar.D().addAll(arrayList2);
            y(uVar, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public Object u(Object obj) {
        if (obj == null) {
            return null;
        }
        u uVar = new u();
        uVar.h0((j) obj);
        return uVar;
    }

    public void y(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        j jVar = (j) obj;
        int i11 = 0;
        if (jVar instanceof u) {
            u uVar = (u) jVar;
            int iK0 = uVar.k0();
            while (i11 < iK0) {
                y(uVar.j0(i11), arrayList, arrayList2);
                i11++;
            }
            return;
        }
        if (w(jVar)) {
            return;
        }
        List listD = jVar.D();
        if (listD.size() == arrayList.size() && listD.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i11 < size) {
                jVar.b((View) arrayList2.get(i11));
                i11++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                jVar.T((View) arrayList.get(size2));
            }
        }
    }

    public void z(Fragment fragment, Object obj, androidx.core.os.e eVar, final Runnable runnable, final Runnable runnable2) {
        final j jVar = (j) obj;
        eVar.b(new androidx.core.os.e.a() { // from class: androidx.transition.d
            @Override // androidx.core.os.e.a
            public final void onCancel() {
                e.x(runnable, jVar, runnable2);
            }
        });
        jVar.a(new d(runnable2));
    }
}
