package androidx.compose.runtime.internal;

import androidx.compose.runtime.g3;
import androidx.compose.runtime.m1;
import androidx.compose.runtime.n1;
import androidx.compose.runtime.q;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import u.t;

/* JADX INFO: loaded from: classes.dex */
public final class d extends u.d implements n1 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f3764i = new b(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final d f3765j;

    public static final class a extends u.f implements n1.a {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private d f3766g;

        public a(d dVar) {
            super(dVar);
            this.f3766g = dVar;
        }

        @Override // u.f, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (obj instanceof q) {
                return r((q) obj);
            }
            return false;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof g3) {
                return s((g3) obj);
            }
            return false;
        }

        @Override // u.f, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            if (obj instanceof q) {
                return t((q) obj);
            }
            return null;
        }

        @Override // java.util.Map
        public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof q) ? obj2 : u((q) obj, (g3) obj2);
        }

        @Override // u.f
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public d build() {
            d dVar;
            if (j() == this.f3766g.u()) {
                dVar = this.f3766g;
            } else {
                o(new w.e());
                dVar = new d(j(), size());
            }
            this.f3766g = dVar;
            return dVar;
        }

        public /* bridge */ boolean r(q qVar) {
            return super.containsKey(qVar);
        }

        @Override // u.f, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object remove(Object obj) {
            if (obj instanceof q) {
                return v((q) obj);
            }
            return null;
        }

        public /* bridge */ boolean s(g3 g3Var) {
            return super.containsValue(g3Var);
        }

        public /* bridge */ g3 t(q qVar) {
            return (g3) super.get(qVar);
        }

        public /* bridge */ g3 u(q qVar, g3 g3Var) {
            return (g3) super.getOrDefault(qVar, g3Var);
        }

        public /* bridge */ g3 v(q qVar) {
            return (g3) super.remove(qVar);
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return d.f3765j;
        }
    }

    static {
        t tVarA = t.f76516e.a();
        Intrinsics.f(tVarA, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.ValueHolder<kotlin.Any?>>");
        f3765j = new d(tVarA, 0);
    }

    public d(t tVar, int i11) {
        super(tVar, i11);
    }

    public /* bridge */ boolean A(q qVar) {
        return super.containsKey(qVar);
    }

    public /* bridge */ boolean B(g3 g3Var) {
        return super.containsValue(g3Var);
    }

    public /* bridge */ g3 C(q qVar) {
        return (g3) super.get(qVar);
    }

    public /* bridge */ g3 D(q qVar, g3 g3Var) {
        return (g3) super.getOrDefault(qVar, g3Var);
    }

    @Override // androidx.compose.runtime.s
    public Object a(q qVar) {
        return androidx.compose.runtime.t.b(this, qVar);
    }

    @Override // androidx.compose.runtime.n1
    public n1 b(q qVar, g3 g3Var) {
        t.b bVarP = u().P(qVar.hashCode(), qVar, g3Var, 0);
        return bVarP == null ? this : new d(bVarP.a(), size() + bVarP.b());
    }

    @Override // androidx.compose.runtime.r
    public /* synthetic */ Object c(q qVar) {
        return m1.a(this, qVar);
    }

    @Override // u.d, kotlin.collections.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof q) {
            return A((q) obj);
        }
        return false;
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof g3) {
            return B((g3) obj);
        }
        return false;
    }

    @Override // u.d, kotlin.collections.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        if (obj instanceof q) {
            return C((q) obj);
        }
        return null;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof q) ? obj2 : D((q) obj, (g3) obj2);
    }

    @Override // u.d
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public a builder() {
        return new a(this);
    }
}
