package androidx.navigation;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f13863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f13864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f13865c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f13866d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private o f13867a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f13868b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Object f13869c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f13870d;

        public final d a() {
            o oVarC = this.f13867a;
            if (oVarC == null) {
                oVarC = o.f13936c.c(this.f13869c);
            }
            return new d(oVarC, this.f13868b, this.f13869c, this.f13870d);
        }

        public final a b(Object obj) {
            this.f13869c = obj;
            this.f13870d = true;
            return this;
        }

        public final a c(boolean z10) {
            this.f13868b = z10;
            return this;
        }

        public final a d(o type) {
            Intrinsics.h(type, "type");
            this.f13867a = type;
            return this;
        }
    }

    public d(o type, boolean z10, Object obj, boolean z11) {
        Intrinsics.h(type, "type");
        if (!type.c() && z10) {
            throw new IllegalArgumentException(Intrinsics.q(type.b(), " does not allow nullable values").toString());
        }
        if (!z10 && z11 && obj == null) {
            throw new IllegalArgumentException(("Argument with type " + type.b() + " has null value but is not nullable.").toString());
        }
        this.f13863a = type;
        this.f13864b = z10;
        this.f13866d = obj;
        this.f13865c = z11;
    }

    public final o a() {
        return this.f13863a;
    }

    public final boolean b() {
        return this.f13865c;
    }

    public final boolean c() {
        return this.f13864b;
    }

    public final void d(String name, Bundle bundle) {
        Intrinsics.h(name, "name");
        Intrinsics.h(bundle, "bundle");
        if (this.f13865c) {
            this.f13863a.f(bundle, name, this.f13866d);
        }
    }

    public final boolean e(String name, Bundle bundle) {
        Intrinsics.h(name, "name");
        Intrinsics.h(bundle, "bundle");
        if (!this.f13864b && bundle.containsKey(name) && bundle.get(name) == null) {
            return false;
        }
        try {
            this.f13863a.a(bundle, name);
            return true;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(d.class, obj.getClass())) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f13864b != dVar.f13864b || this.f13865c != dVar.f13865c || !Intrinsics.c(this.f13863a, dVar.f13863a)) {
            return false;
        }
        Object obj2 = this.f13866d;
        if (obj2 != null) {
            return Intrinsics.c(obj2, dVar.f13866d);
        }
        return dVar.f13866d == null;
    }

    public int hashCode() {
        int iHashCode = ((((this.f13863a.hashCode() * 31) + (this.f13864b ? 1 : 0)) * 31) + (this.f13865c ? 1 : 0)) * 31;
        Object obj = this.f13866d;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }
}
