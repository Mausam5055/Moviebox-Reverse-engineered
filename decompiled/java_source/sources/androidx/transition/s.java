package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class s {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static j f15096c = new androidx.transition.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ThreadLocal f15097d = new ThreadLocal();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static ArrayList f15098e = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.collection.a f15099a = new androidx.collection.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.collection.a f15100b = new androidx.collection.a();

    private static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        j f15101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewGroup f15102b;

        /* JADX INFO: renamed from: androidx.transition.s$a$a, reason: collision with other inner class name */
        class C0127a extends r {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ androidx.collection.a f15103a;

            C0127a(androidx.collection.a aVar) {
                this.f15103a = aVar;
            }

            @Override // androidx.transition.r, androidx.transition.j.f
            public void e(j jVar) {
                ((ArrayList) this.f15103a.get(a.this.f15102b)).remove(jVar);
                jVar.S(this);
            }
        }

        a(j jVar, ViewGroup viewGroup) {
            this.f15101a = jVar;
            this.f15102b = viewGroup;
        }

        private void a() {
            this.f15102b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f15102b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!s.f15098e.remove(this.f15102b)) {
                return true;
            }
            androidx.collection.a aVarB = s.b();
            ArrayList arrayList = (ArrayList) aVarB.get(this.f15102b);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList();
                aVarB.put(this.f15102b, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f15101a);
            this.f15101a.a(new C0127a(aVarB));
            this.f15101a.k(this.f15102b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((j) it.next()).U(this.f15102b);
                }
            }
            this.f15101a.R(this.f15102b);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            s.f15098e.remove(this.f15102b);
            ArrayList arrayList = (ArrayList) s.b().get(this.f15102b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((j) it.next()).U(this.f15102b);
                }
            }
            this.f15101a.l(true);
        }
    }

    public static void a(ViewGroup viewGroup, j jVar) {
        if (f15098e.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        f15098e.add(viewGroup);
        if (jVar == null) {
            jVar = f15096c;
        }
        j jVarClone = jVar.clone();
        d(viewGroup, jVarClone);
        i.b(viewGroup, null);
        c(viewGroup, jVarClone);
    }

    static androidx.collection.a b() {
        androidx.collection.a aVar;
        WeakReference weakReference = (WeakReference) f15097d.get();
        if (weakReference != null && (aVar = (androidx.collection.a) weakReference.get()) != null) {
            return aVar;
        }
        androidx.collection.a aVar2 = new androidx.collection.a();
        f15097d.set(new WeakReference(aVar2));
        return aVar2;
    }

    private static void c(ViewGroup viewGroup, j jVar) {
        if (jVar == null || viewGroup == null) {
            return;
        }
        a aVar = new a(jVar, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    private static void d(ViewGroup viewGroup, j jVar) {
        ArrayList arrayList = (ArrayList) b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((j) it.next()).Q(viewGroup);
            }
        }
        if (jVar != null) {
            jVar.k(viewGroup, true);
        }
        i.a(viewGroup);
    }
}
