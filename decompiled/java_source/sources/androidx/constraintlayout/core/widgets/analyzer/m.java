package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static int f6978g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f6980b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f6982d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList f6979a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f6981c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList f6983e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6984f = -1;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference f6985a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f6986b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f6987c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f6988d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f6989e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f6990f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f6991g;

        public a(ConstraintWidget constraintWidget, androidx.constraintlayout.core.d dVar, int i11) {
            this.f6985a = new WeakReference(constraintWidget);
            this.f6986b = dVar.y(constraintWidget.Q);
            this.f6987c = dVar.y(constraintWidget.R);
            this.f6988d = dVar.y(constraintWidget.S);
            this.f6989e = dVar.y(constraintWidget.T);
            this.f6990f = dVar.y(constraintWidget.U);
            this.f6991g = i11;
        }
    }

    public m(int i11) {
        int i12 = f6978g;
        f6978g = i12 + 1;
        this.f6980b = i12;
        this.f6982d = i11;
    }

    private String e() {
        int i11 = this.f6982d;
        if (i11 == 0) {
            return "Horizontal";
        }
        if (i11 == 1) {
            return "Vertical";
        }
        return i11 == 2 ? "Both" : "Unknown";
    }

    private int j(androidx.constraintlayout.core.d dVar, ArrayList arrayList, int i11) {
        int iY;
        int iY2;
        androidx.constraintlayout.core.widgets.d dVar2 = (androidx.constraintlayout.core.widgets.d) ((ConstraintWidget) arrayList.get(0)).M();
        dVar.E();
        dVar2.g(dVar, false);
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            ((ConstraintWidget) arrayList.get(i12)).g(dVar, false);
        }
        if (i11 == 0 && dVar2.f7022h1 > 0) {
            androidx.constraintlayout.core.widgets.b.b(dVar2, dVar, arrayList, 0);
        }
        if (i11 == 1 && dVar2.f7023i1 > 0) {
            androidx.constraintlayout.core.widgets.b.b(dVar2, dVar, arrayList, 1);
        }
        try {
            dVar.A();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        this.f6983e = new ArrayList();
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            this.f6983e.add(new a((ConstraintWidget) arrayList.get(i13), dVar, i11));
        }
        if (i11 == 0) {
            iY = dVar.y(dVar2.Q);
            iY2 = dVar.y(dVar2.S);
            dVar.E();
        } else {
            iY = dVar.y(dVar2.R);
            iY2 = dVar.y(dVar2.T);
            dVar.E();
        }
        return iY2 - iY;
    }

    public boolean a(ConstraintWidget constraintWidget) {
        if (this.f6979a.contains(constraintWidget)) {
            return false;
        }
        this.f6979a.add(constraintWidget);
        return true;
    }

    public void b(ArrayList arrayList) {
        int size = this.f6979a.size();
        if (this.f6984f != -1 && size > 0) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                m mVar = (m) arrayList.get(i11);
                if (this.f6984f == mVar.f6980b) {
                    g(this.f6982d, mVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public int c() {
        return this.f6980b;
    }

    public int d() {
        return this.f6982d;
    }

    public int f(androidx.constraintlayout.core.d dVar, int i11) {
        if (this.f6979a.size() == 0) {
            return 0;
        }
        return j(dVar, this.f6979a, i11);
    }

    public void g(int i11, m mVar) {
        for (ConstraintWidget constraintWidget : this.f6979a) {
            mVar.a(constraintWidget);
            if (i11 == 0) {
                constraintWidget.S0 = mVar.c();
            } else {
                constraintWidget.T0 = mVar.c();
            }
        }
        this.f6984f = mVar.f6980b;
    }

    public void h(boolean z10) {
        this.f6981c = z10;
    }

    public void i(int i11) {
        this.f6982d = i11;
    }

    public String toString() {
        String str = e() + " [" + this.f6980b + "] <";
        Iterator it = this.f6979a.iterator();
        while (it.hasNext()) {
            str = str + " " + ((ConstraintWidget) it.next()).v();
        }
        return str + " >";
    }
}
