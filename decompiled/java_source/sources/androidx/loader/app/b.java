package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.collection.y0;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.w0;
import androidx.p009lifecycle.x0;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
class b extends androidx.loader.app.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static boolean f9679c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f9680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f9681b;

    public static class a extends b0 implements androidx.loader.content.a.b {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f9682l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final Bundle f9683m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final androidx.loader.content.a f9684n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private u f9685o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private C0085b f9686p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private androidx.loader.content.a f9687q;

        a(int i11, Bundle bundle, androidx.loader.content.a aVar, androidx.loader.content.a aVar2) {
            this.f9682l = i11;
            this.f9683m = bundle;
            this.f9684n = aVar;
            this.f9687q = aVar2;
            aVar.registerListener(i11, this);
        }

        @Override // androidx.loader.content.a.b
        public void a(androidx.loader.content.a aVar, Object obj) {
            if (b.f9679c) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                q(obj);
                return;
            }
            if (b.f9679c) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            n(obj);
        }

        @Override // androidx.p009lifecycle.LiveData
        protected void l() {
            if (b.f9679c) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.f9684n.startLoading();
        }

        @Override // androidx.p009lifecycle.LiveData
        protected void m() {
            if (b.f9679c) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f9684n.stopLoading();
        }

        @Override // androidx.p009lifecycle.LiveData
        public void o(c0 c0Var) {
            super.o(c0Var);
            this.f9685o = null;
            this.f9686p = null;
        }

        @Override // androidx.p009lifecycle.b0, androidx.p009lifecycle.LiveData
        public void q(Object obj) {
            super.q(obj);
            androidx.loader.content.a aVar = this.f9687q;
            if (aVar != null) {
                aVar.reset();
                this.f9687q = null;
            }
        }

        androidx.loader.content.a r(boolean z10) {
            if (b.f9679c) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f9684n.cancelLoad();
            this.f9684n.abandon();
            C0085b c0085b = this.f9686p;
            if (c0085b != null) {
                o(c0085b);
                if (z10) {
                    c0085b.c();
                }
            }
            this.f9684n.unregisterListener(this);
            if ((c0085b == null || c0085b.b()) && !z10) {
                return this.f9684n;
            }
            this.f9684n.reset();
            return this.f9687q;
        }

        public void s(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f9682l);
            printWriter.print(" mArgs=");
            printWriter.println(this.f9683m);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f9684n);
            this.f9684n.dump(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f9686p != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f9686p);
                this.f9686p.a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(t().dataToString(f()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(h());
        }

        androidx.loader.content.a t() {
            return this.f9684n;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append("LoaderInfo{");
            sb2.append(Integer.toHexString(System.identityHashCode(this)));
            sb2.append(" #");
            sb2.append(this.f9682l);
            sb2.append(" : ");
            androidx.core.util.b.a(this.f9684n, sb2);
            sb2.append("}}");
            return sb2.toString();
        }

        void u() {
            u uVar = this.f9685o;
            C0085b c0085b = this.f9686p;
            if (uVar == null || c0085b == null) {
                return;
            }
            super.o(c0085b);
            j(uVar, c0085b);
        }

        androidx.loader.content.a v(u uVar, androidx.loader.app.a.InterfaceC0084a interfaceC0084a) {
            C0085b c0085b = new C0085b(this.f9684n, interfaceC0084a);
            j(uVar, c0085b);
            c0 c0Var = this.f9686p;
            if (c0Var != null) {
                o(c0Var);
            }
            this.f9685o = uVar;
            this.f9686p = c0085b;
            return this.f9684n;
        }
    }

    /* JADX INFO: renamed from: androidx.loader.app.b$b, reason: collision with other inner class name */
    static class C0085b implements c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.loader.content.a f9688a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.loader.app.a.InterfaceC0084a f9689b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f9690c = false;

        C0085b(androidx.loader.content.a aVar, androidx.loader.app.a.InterfaceC0084a interfaceC0084a) {
            this.f9688a = aVar;
            this.f9689b = interfaceC0084a;
        }

        public void a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f9690c);
        }

        boolean b() {
            return this.f9690c;
        }

        void c() {
            if (this.f9690c) {
                if (b.f9679c) {
                    Log.v("LoaderManager", "  Resetting: " + this.f9688a);
                }
                this.f9689b.onLoaderReset(this.f9688a);
            }
        }

        @Override // androidx.p009lifecycle.c0
        public void onChanged(Object obj) {
            if (b.f9679c) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f9688a + ": " + this.f9688a.dataToString(obj));
            }
            this.f9689b.onLoadFinished(this.f9688a, obj);
            this.f9690c = true;
        }

        public String toString() {
            return this.f9689b.toString();
        }
    }

    static class c extends t0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final v0.c f9691c = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private y0 f9692a = new y0();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f9693b = false;

        static class a implements v0.c {
            a() {
            }

            @Override // androidx.lifecycle.v0.c
            public t0 create(Class cls) {
                return new c();
            }

            @Override // androidx.lifecycle.v0.c
            public /* synthetic */ t0 create(Class cls, p1.a aVar) {
                return w0.b(this, cls, aVar);
            }

            @Override // androidx.lifecycle.v0.c
            public /* synthetic */ t0 create(KClass kClass, p1.a aVar) {
                return w0.c(this, kClass, aVar);
            }
        }

        c() {
        }

        static c d(x0 x0Var) {
            return (c) new v0(x0Var, f9691c).a(c.class);
        }

        public void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f9692a.p() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i11 = 0; i11 < this.f9692a.p(); i11++) {
                    a aVar = (a) this.f9692a.q(i11);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f9692a.k(i11));
                    printWriter.print(": ");
                    printWriter.println(aVar.toString());
                    aVar.s(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        void c() {
            this.f9693b = false;
        }

        a e(int i11) {
            return (a) this.f9692a.f(i11);
        }

        boolean f() {
            return this.f9693b;
        }

        void g() {
            int iP = this.f9692a.p();
            for (int i11 = 0; i11 < iP; i11++) {
                ((a) this.f9692a.q(i11)).u();
            }
        }

        void h(int i11, a aVar) {
            this.f9692a.l(i11, aVar);
        }

        void i() {
            this.f9693b = true;
        }

        @Override // androidx.p009lifecycle.t0
        protected void onCleared() {
            super.onCleared();
            int iP = this.f9692a.p();
            for (int i11 = 0; i11 < iP; i11++) {
                ((a) this.f9692a.q(i11)).r(true);
            }
            this.f9692a.b();
        }
    }

    b(u uVar, x0 x0Var) {
        this.f9680a = uVar;
        this.f9681b = c.d(x0Var);
    }

    private androidx.loader.content.a e(int i11, Bundle bundle, androidx.loader.app.a.InterfaceC0084a interfaceC0084a, androidx.loader.content.a aVar) {
        try {
            this.f9681b.i();
            androidx.loader.content.a aVarOnCreateLoader = interfaceC0084a.onCreateLoader(i11, bundle);
            if (aVarOnCreateLoader == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (aVarOnCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(aVarOnCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + aVarOnCreateLoader);
            }
            a aVar2 = new a(i11, bundle, aVarOnCreateLoader, aVar);
            if (f9679c) {
                Log.v("LoaderManager", "  Created new loader " + aVar2);
            }
            this.f9681b.h(i11, aVar2);
            this.f9681b.c();
            return aVar2.v(this.f9680a, interfaceC0084a);
        } catch (Throwable th2) {
            this.f9681b.c();
            throw th2;
        }
    }

    @Override // androidx.loader.app.a
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f9681b.b(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.loader.app.a
    public androidx.loader.content.a c(int i11, Bundle bundle, androidx.loader.app.a.InterfaceC0084a interfaceC0084a) {
        if (this.f9681b.f()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        a aVarE = this.f9681b.e(i11);
        if (f9679c) {
            Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
        }
        if (aVarE == null) {
            return e(i11, bundle, interfaceC0084a, null);
        }
        if (f9679c) {
            Log.v("LoaderManager", "  Re-using existing loader " + aVarE);
        }
        return aVarE.v(this.f9680a, interfaceC0084a);
    }

    @Override // androidx.loader.app.a
    public void d() {
        this.f9681b.g();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("LoaderManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        androidx.core.util.b.a(this.f9680a, sb2);
        sb2.append("}}");
        return sb2.toString();
    }
}
