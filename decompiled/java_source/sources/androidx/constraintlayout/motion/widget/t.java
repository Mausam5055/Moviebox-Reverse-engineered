package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MotionLayout f7533a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashSet f7535c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList f7537e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList f7534b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7536d = "ViewTransitionController";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ArrayList f7538f = new ArrayList();

    class a implements androidx.constraintlayout.widget.d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ s f7539a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f7540b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f7541c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f7542d;

        a(s sVar, int i11, boolean z10, int i12) {
            this.f7539a = sVar;
            this.f7540b = i11;
            this.f7541c = z10;
            this.f7542d = i12;
        }
    }

    public t(MotionLayout motionLayout) {
        this.f7533a = motionLayout;
    }

    private void h(s sVar, boolean z10) {
        ConstraintLayout.getSharedValues().a(sVar.h(), new a(sVar, sVar.h(), z10, sVar.g()));
    }

    private void l(s sVar, View... viewArr) {
        int currentState = this.f7533a.getCurrentState();
        if (sVar.f7499e == 2) {
            sVar.c(this, this.f7533a, currentState, null, viewArr);
            return;
        }
        if (currentState != -1) {
            androidx.constraintlayout.widget.b constraintSet = this.f7533a.getConstraintSet(currentState);
            if (constraintSet == null) {
                return;
            }
            sVar.c(this, this.f7533a, currentState, constraintSet, viewArr);
            return;
        }
        Log.w(this.f7536d, "No support for ViewTransition within transition yet. Currently: " + this.f7533a.toString());
    }

    public void a(s sVar) {
        this.f7534b.add(sVar);
        this.f7535c = null;
        if (sVar.i() == 4) {
            h(sVar, true);
        } else if (sVar.i() == 5) {
            h(sVar, false);
        }
    }

    void b(s.b bVar) {
        if (this.f7537e == null) {
            this.f7537e = new ArrayList();
        }
        this.f7537e.add(bVar);
    }

    void c() {
        ArrayList arrayList = this.f7537e;
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((s.b) it.next()).a();
        }
        this.f7537e.removeAll(this.f7538f);
        this.f7538f.clear();
        if (this.f7537e.isEmpty()) {
            this.f7537e = null;
        }
    }

    boolean d(int i11, m mVar) {
        for (s sVar : this.f7534b) {
            if (sVar.e() == i11) {
                sVar.f7500f.a(mVar);
                return true;
            }
        }
        return false;
    }

    void e(int i11, boolean z10) {
        for (s sVar : this.f7534b) {
            if (sVar.e() == i11) {
                sVar.n(z10);
                return;
            }
        }
    }

    void f() {
        this.f7533a.invalidate();
    }

    boolean g(int i11) {
        for (s sVar : this.f7534b) {
            if (sVar.e() == i11) {
                return sVar.j();
            }
        }
        return false;
    }

    void i(s.b bVar) {
        this.f7538f.add(bVar);
    }

    void j(MotionEvent motionEvent) {
        int currentState = this.f7533a.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.f7535c == null) {
            this.f7535c = new HashSet();
            for (s sVar : this.f7534b) {
                int childCount = this.f7533a.getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = this.f7533a.getChildAt(i11);
                    if (sVar.l(childAt)) {
                        childAt.getId();
                        this.f7535c.add(childAt);
                    }
                }
            }
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        Rect rect = new Rect();
        int action = motionEvent.getAction();
        ArrayList arrayList = this.f7537e;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it = this.f7537e.iterator();
            while (it.hasNext()) {
                ((s.b) it.next()).d(action, x10, y10);
            }
        }
        if (action == 0 || action == 1) {
            androidx.constraintlayout.widget.b constraintSet = this.f7533a.getConstraintSet(currentState);
            for (s sVar2 : this.f7534b) {
                if (sVar2.o(action)) {
                    for (View view : this.f7535c) {
                        if (sVar2.l(view)) {
                            view.getHitRect(rect);
                            if (rect.contains((int) x10, (int) y10)) {
                                sVar2.c(this, this.f7533a, currentState, constraintSet, view);
                            }
                            sVar2 = sVar2;
                        }
                    }
                }
            }
        }
    }

    void k(int i11, View... viewArr) {
        ArrayList arrayList = new ArrayList();
        s sVar = null;
        for (s sVar2 : this.f7534b) {
            if (sVar2.e() == i11) {
                for (View view : viewArr) {
                    if (sVar2.d(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    l(sVar2, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
                sVar = sVar2;
            }
        }
        if (sVar == null) {
            Log.e(this.f7536d, " Could not find ViewTransition");
        }
    }
}
