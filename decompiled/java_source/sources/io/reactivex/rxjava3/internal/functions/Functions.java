package io.reactivex.rxjava3.internal.functions;

import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import java.util.Comparator;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class Functions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final lz.h f65320a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Runnable f65321b = new EmptyRunnable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final lz.a f65322c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final lz.f f65323d = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final lz.f f65324e = new e();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final lz.f f65325f = new k();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final lz.i f65326g = new d();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final lz.j f65327h = new l();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final lz.j f65328i = new f();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final lz.k f65329j = new j();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final lz.f f65330k = new i();

    static final class EmptyRunnable implements Runnable {
        EmptyRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    enum NaturalComparator implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    static final class a implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final lz.g f65331a;

        a(lz.g gVar) {
            this.f65331a = gVar;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Object apply(Object[] objArr) {
            if (objArr.length == 3) {
                return this.f65331a.a(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    static final class b implements lz.a {
        b() {
        }

        @Override // lz.a
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    static final class c implements lz.f {
        c() {
        }

        @Override // lz.f
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    static final class d implements lz.i {
        d() {
        }
    }

    static final class e implements lz.f {
        e() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Throwable th2) {
            pz.a.r(th2);
        }
    }

    static final class f implements lz.j {
        f() {
        }

        @Override // lz.j
        public boolean a(Object obj) {
            return false;
        }
    }

    static final class g implements lz.h {
        g() {
        }

        @Override // lz.h
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    static final class h implements Callable, lz.k, lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f65332a;

        h(Object obj) {
            this.f65332a = obj;
        }

        @Override // lz.h
        public Object apply(Object obj) {
            return this.f65332a;
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return this.f65332a;
        }

        @Override // lz.k
        public Object get() {
            return this.f65332a;
        }
    }

    static final class i implements lz.f {
        i() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(u10.d dVar) {
            dVar.request(Long.MAX_VALUE);
        }
    }

    static final class j implements lz.k {
        j() {
        }

        @Override // lz.k
        public Object get() {
            return null;
        }
    }

    static final class k implements lz.f {
        k() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Throwable th2) {
            pz.a.r(new OnErrorNotImplementedException(th2));
        }
    }

    static final class l implements lz.j {
        l() {
        }

        @Override // lz.j
        public boolean a(Object obj) {
            return true;
        }
    }

    public static lz.f a() {
        return f65323d;
    }

    public static lz.k b(Object obj) {
        return new h(obj);
    }

    public static lz.h c(lz.g gVar) {
        return new a(gVar);
    }
}
