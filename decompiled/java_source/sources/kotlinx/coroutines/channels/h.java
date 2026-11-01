package kotlinx.coroutines.channels;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f67690b = new b(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c f67691c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f67692a;

    public static final class a extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Throwable f67693a;

        public a(Throwable th2) {
            this.f67693a = th2;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && Intrinsics.c(this.f67693a, ((a) obj).f67693a);
        }

        public int hashCode() {
            Throwable th2 = this.f67693a;
            if (th2 != null) {
                return th2.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.h.c
        public String toString() {
            return "Closed(" + this.f67693a + ')';
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Object a(Throwable th2) {
            return h.c(new a(th2));
        }

        public final Object b() {
            return h.c(h.f67691c);
        }

        public final Object c(Object obj) {
            return h.c(obj);
        }
    }

    public static class c {
        public String toString() {
            return "Failed";
        }
    }

    private /* synthetic */ h(Object obj) {
        this.f67692a = obj;
    }

    public static final /* synthetic */ h b(Object obj) {
        return new h(obj);
    }

    public static Object c(Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof h) && Intrinsics.c(obj, ((h) obj2).k());
    }

    public static final Throwable e(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar != null) {
            return aVar.f67693a;
        }
        return null;
    }

    public static final Object f(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(Object obj) {
        return obj instanceof a;
    }

    public static final boolean i(Object obj) {
        return !(obj instanceof c);
    }

    public static String j(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f67692a, obj);
    }

    public int hashCode() {
        return g(this.f67692a);
    }

    public final /* synthetic */ Object k() {
        return this.f67692a;
    }

    public String toString() {
        return j(this.f67692a);
    }
}
