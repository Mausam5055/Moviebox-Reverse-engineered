package mb;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f69437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f69438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f69439c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f69440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f69441e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f69442f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set f69443g;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f69444a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set f69445b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Set f69446c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f69447d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f69448e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private h f69449f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Set f69450g;

        private b(Class cls, Class... clsArr) {
            this.f69444a = null;
            HashSet hashSet = new HashSet();
            this.f69445b = hashSet;
            this.f69446c = new HashSet();
            this.f69447d = 0;
            this.f69448e = 0;
            this.f69450g = new HashSet();
            a0.c(cls, "Null interface");
            hashSet.add(b0.b(cls));
            for (Class cls2 : clsArr) {
                a0.c(cls2, "Null interface");
                this.f69445b.add(b0.b(cls2));
            }
        }

        private b(b0 b0Var, b0... b0VarArr) {
            this.f69444a = null;
            HashSet hashSet = new HashSet();
            this.f69445b = hashSet;
            this.f69446c = new HashSet();
            this.f69447d = 0;
            this.f69448e = 0;
            this.f69450g = new HashSet();
            a0.c(b0Var, "Null interface");
            hashSet.add(b0Var);
            for (b0 b0Var2 : b0VarArr) {
                a0.c(b0Var2, "Null interface");
            }
            Collections.addAll(this.f69445b, b0VarArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public b g() {
            this.f69448e = 1;
            return this;
        }

        private b i(int i11) {
            a0.d(this.f69447d == 0, "Instantiation type has already been set.");
            this.f69447d = i11;
            return this;
        }

        private void j(b0 b0Var) {
            a0.a(!this.f69445b.contains(b0Var), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b b(r rVar) {
            a0.c(rVar, "Null dependency");
            j(rVar.c());
            this.f69446c.add(rVar);
            return this;
        }

        public b c() {
            return i(1);
        }

        public c d() {
            a0.d(this.f69449f != null, "Missing required property: factory.");
            return new c(this.f69444a, new HashSet(this.f69445b), new HashSet(this.f69446c), this.f69447d, this.f69448e, this.f69449f, this.f69450g);
        }

        public b e() {
            return i(2);
        }

        public b f(h hVar) {
            this.f69449f = (h) a0.c(hVar, "Null factory");
            return this;
        }

        public b h(String str) {
            this.f69444a = str;
            return this;
        }
    }

    private c(String str, Set set, Set set2, int i11, int i12, h hVar, Set set3) {
        this.f69437a = str;
        this.f69438b = Collections.unmodifiableSet(set);
        this.f69439c = Collections.unmodifiableSet(set2);
        this.f69440d = i11;
        this.f69441e = i12;
        this.f69442f = hVar;
        this.f69443g = Collections.unmodifiableSet(set3);
    }

    public static b c(Class cls) {
        return new b(cls, new Class[0]);
    }

    public static b d(Class cls, Class... clsArr) {
        return new b(cls, clsArr);
    }

    public static b e(b0 b0Var) {
        return new b(b0Var, new b0[0]);
    }

    public static b f(b0 b0Var, b0... b0VarArr) {
        return new b(b0Var, b0VarArr);
    }

    public static c l(final Object obj, Class cls) {
        return m(cls).f(new h() { // from class: mb.a
            @Override // mb.h
            public final Object a(e eVar) {
                return c.q(obj, eVar);
            }
        }).d();
    }

    public static b m(Class cls) {
        return c(cls).g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object q(Object obj, e eVar) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object r(Object obj, e eVar) {
        return obj;
    }

    public static c s(final Object obj, Class cls, Class... clsArr) {
        return d(cls, clsArr).f(new h() { // from class: mb.b
            @Override // mb.h
            public final Object a(e eVar) {
                return c.r(obj, eVar);
            }
        }).d();
    }

    public Set g() {
        return this.f69439c;
    }

    public h h() {
        return this.f69442f;
    }

    public String i() {
        return this.f69437a;
    }

    public Set j() {
        return this.f69438b;
    }

    public Set k() {
        return this.f69443g;
    }

    public boolean n() {
        return this.f69440d == 1;
    }

    public boolean o() {
        return this.f69440d == 2;
    }

    public boolean p() {
        return this.f69441e == 0;
    }

    public c t(h hVar) {
        return new c(this.f69437a, this.f69438b, this.f69439c, this.f69440d, this.f69441e, hVar, this.f69443g);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f69438b.toArray()) + ">{" + this.f69440d + ", type=" + this.f69441e + ", deps=" + Arrays.toString(this.f69439c.toArray()) + "}";
    }
}
