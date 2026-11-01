package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f14422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f14423b = new a();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f14424a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14425b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f14426c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f14427d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f14428e;

        a() {
        }

        void a(int i11) {
            this.f14424a = i11 | this.f14424a;
        }

        boolean b() {
            int i11 = this.f14424a;
            if ((i11 & 7) != 0 && (i11 & c(this.f14427d, this.f14425b)) == 0) {
                return false;
            }
            int i12 = this.f14424a;
            if ((i12 & 112) != 0 && (i12 & (c(this.f14427d, this.f14426c) << 4)) == 0) {
                return false;
            }
            int i13 = this.f14424a;
            if ((i13 & 1792) != 0 && (i13 & (c(this.f14428e, this.f14425b) << 8)) == 0) {
                return false;
            }
            int i14 = this.f14424a;
            return (i14 & 28672) == 0 || (i14 & (c(this.f14428e, this.f14426c) << 12)) != 0;
        }

        int c(int i11, int i12) {
            if (i11 > i12) {
                return 1;
            }
            return i11 == i12 ? 2 : 4;
        }

        void d() {
            this.f14424a = 0;
        }

        void e(int i11, int i12, int i13, int i14) {
            this.f14425b = i11;
            this.f14426c = i12;
            this.f14427d = i13;
            this.f14428e = i14;
        }
    }

    interface b {
        int a(View view);

        int b();

        int c();

        int d(View view);

        View getChildAt(int i11);
    }

    t(b bVar) {
        this.f14422a = bVar;
    }

    View a(int i11, int i12, int i13, int i14) {
        int iB = this.f14422a.b();
        int iC = this.f14422a.c();
        int i15 = i12 > i11 ? 1 : -1;
        View view = null;
        while (i11 != i12) {
            View childAt = this.f14422a.getChildAt(i11);
            this.f14423b.e(iB, iC, this.f14422a.a(childAt), this.f14422a.d(childAt));
            if (i13 != 0) {
                this.f14423b.d();
                this.f14423b.a(i13);
                if (this.f14423b.b()) {
                    return childAt;
                }
            }
            if (i14 != 0) {
                this.f14423b.d();
                this.f14423b.a(i14);
                if (this.f14423b.b()) {
                    view = childAt;
                }
            }
            i11 += i15;
        }
        return view;
    }

    boolean b(View view, int i11) {
        this.f14423b.e(this.f14422a.b(), this.f14422a.c(), this.f14422a.a(view), this.f14422a.d(view));
        if (i11 == 0) {
            return false;
        }
        this.f14423b.d();
        this.f14423b.a(i11);
        return this.f14423b.b();
    }
}
