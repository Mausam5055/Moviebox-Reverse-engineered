package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f14362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a f14363b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List f14364c = new ArrayList();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f14365a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        a f14366b;

        a() {
        }

        private void c() {
            if (this.f14366b == null) {
                this.f14366b = new a();
            }
        }

        void a(int i11) {
            if (i11 < 64) {
                this.f14365a &= ~(1 << i11);
                return;
            }
            a aVar = this.f14366b;
            if (aVar != null) {
                aVar.a(i11 - 64);
            }
        }

        int b(int i11) {
            a aVar = this.f14366b;
            if (aVar == null) {
                return i11 >= 64 ? Long.bitCount(this.f14365a) : Long.bitCount(this.f14365a & ((1 << i11) - 1));
            }
            return i11 < 64 ? Long.bitCount(this.f14365a & ((1 << i11) - 1)) : aVar.b(i11 - 64) + Long.bitCount(this.f14365a);
        }

        boolean d(int i11) {
            if (i11 < 64) {
                return (this.f14365a & (1 << i11)) != 0;
            }
            c();
            return this.f14366b.d(i11 - 64);
        }

        void e(int i11, boolean z10) {
            if (i11 >= 64) {
                c();
                this.f14366b.e(i11 - 64, z10);
                return;
            }
            long j11 = this.f14365a;
            boolean z11 = (Long.MIN_VALUE & j11) != 0;
            long j12 = (1 << i11) - 1;
            this.f14365a = ((j11 & (~j12)) << 1) | (j11 & j12);
            if (z10) {
                h(i11);
            } else {
                a(i11);
            }
            if (z11 || this.f14366b != null) {
                c();
                this.f14366b.e(0, z11);
            }
        }

        boolean f(int i11) {
            if (i11 >= 64) {
                c();
                return this.f14366b.f(i11 - 64);
            }
            long j11 = 1 << i11;
            long j12 = this.f14365a;
            boolean z10 = (j12 & j11) != 0;
            long j13 = j12 & (~j11);
            this.f14365a = j13;
            long j14 = j11 - 1;
            this.f14365a = (j13 & j14) | Long.rotateRight((~j14) & j13, 1);
            a aVar = this.f14366b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.f14366b.f(0);
            }
            return z10;
        }

        void g() {
            this.f14365a = 0L;
            a aVar = this.f14366b;
            if (aVar != null) {
                aVar.g();
            }
        }

        void h(int i11) {
            if (i11 < 64) {
                this.f14365a |= 1 << i11;
            } else {
                c();
                this.f14366b.h(i11 - 64);
            }
        }

        public String toString() {
            if (this.f14366b == null) {
                return Long.toBinaryString(this.f14365a);
            }
            return this.f14366b.toString() + "xx" + Long.toBinaryString(this.f14365a);
        }
    }

    interface b {
        void a(View view);

        RecyclerView.b0 b(View view);

        void c(int i11);

        void d(View view, int i11);

        void e();

        int f(View view);

        void g(View view);

        View getChildAt(int i11);

        int getChildCount();

        void h(int i11);

        void i(View view, int i11, ViewGroup.LayoutParams layoutParams);
    }

    e(b bVar) {
        this.f14362a = bVar;
    }

    private int h(int i11) {
        if (i11 < 0) {
            return -1;
        }
        int childCount = this.f14362a.getChildCount();
        int i12 = i11;
        while (i12 < childCount) {
            int iB = i11 - (i12 - this.f14363b.b(i12));
            if (iB == 0) {
                while (this.f14363b.d(i12)) {
                    i12++;
                }
                return i12;
            }
            i12 += iB;
        }
        return -1;
    }

    private void l(View view) {
        this.f14364c.add(view);
        this.f14362a.a(view);
    }

    private boolean t(View view) {
        if (!this.f14364c.remove(view)) {
            return false;
        }
        this.f14362a.g(view);
        return true;
    }

    void a(View view, int i11, boolean z10) {
        int childCount = i11 < 0 ? this.f14362a.getChildCount() : h(i11);
        this.f14363b.e(childCount, z10);
        if (z10) {
            l(view);
        }
        this.f14362a.d(view, childCount);
    }

    void b(View view, boolean z10) {
        a(view, -1, z10);
    }

    void c(View view, int i11, ViewGroup.LayoutParams layoutParams, boolean z10) {
        int childCount = i11 < 0 ? this.f14362a.getChildCount() : h(i11);
        this.f14363b.e(childCount, z10);
        if (z10) {
            l(view);
        }
        this.f14362a.i(view, childCount, layoutParams);
    }

    void d(int i11) {
        int iH = h(i11);
        this.f14363b.f(iH);
        this.f14362a.c(iH);
    }

    View e(int i11) {
        int size = this.f14364c.size();
        for (int i12 = 0; i12 < size; i12++) {
            View view = (View) this.f14364c.get(i12);
            RecyclerView.b0 b0VarB = this.f14362a.b(view);
            if (b0VarB.getLayoutPosition() == i11 && !b0VarB.isInvalid() && !b0VarB.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    View f(int i11) {
        return this.f14362a.getChildAt(h(i11));
    }

    int g() {
        return this.f14362a.getChildCount() - this.f14364c.size();
    }

    View i(int i11) {
        return this.f14362a.getChildAt(i11);
    }

    int j() {
        return this.f14362a.getChildCount();
    }

    void k(View view) {
        int iF = this.f14362a.f(view);
        if (iF >= 0) {
            this.f14363b.h(iF);
            l(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    int m(View view) {
        int iF = this.f14362a.f(view);
        if (iF == -1 || this.f14363b.d(iF)) {
            return -1;
        }
        return iF - this.f14363b.b(iF);
    }

    boolean n(View view) {
        return this.f14364c.contains(view);
    }

    void o() {
        this.f14363b.g();
        for (int size = this.f14364c.size() - 1; size >= 0; size--) {
            this.f14362a.g((View) this.f14364c.get(size));
            this.f14364c.remove(size);
        }
        this.f14362a.e();
    }

    void p(View view) {
        int iF = this.f14362a.f(view);
        if (iF < 0) {
            return;
        }
        if (this.f14363b.f(iF)) {
            t(view);
        }
        this.f14362a.h(iF);
    }

    void q(int i11) {
        int iH = h(i11);
        View childAt = this.f14362a.getChildAt(iH);
        if (childAt == null) {
            return;
        }
        if (this.f14363b.f(iH)) {
            t(childAt);
        }
        this.f14362a.h(iH);
    }

    boolean r(View view) {
        int iF = this.f14362a.f(view);
        if (iF == -1) {
            t(view);
            return true;
        }
        if (!this.f14363b.d(iF)) {
            return false;
        }
        this.f14363b.f(iF);
        t(view);
        this.f14362a.h(iF);
        return true;
    }

    void s(View view) {
        int iF = this.f14362a.f(view);
        if (iF < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.f14363b.d(iF)) {
            this.f14363b.a(iF);
            t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f14363b.toString() + ", hidden list:" + this.f14364c.size();
    }
}
