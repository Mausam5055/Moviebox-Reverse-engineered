package u;

import java.util.Set;
import kotlin.collections.AbstractMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class d extends AbstractMap implements t.g {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f76491f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f76492g = 8;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final d f76493h = new d(t.f76516e.a(), 0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final t f76494d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f76495e;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            d dVar = d.f76493h;
            Intrinsics.f(dVar, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap.Companion.emptyOf, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap.Companion.emptyOf>");
            return dVar;
        }
    }

    public d(t tVar, int i11) {
        this.f76494d = tVar;
        this.f76495e = i11;
    }

    private final t.e s() {
        return new n(this);
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.f76494d.k(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map
    public Object get(Object obj) {
        return this.f76494d.o(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // kotlin.collections.AbstractMap
    public final Set h() {
        return s();
    }

    @Override // kotlin.collections.AbstractMap
    public int j() {
        return this.f76495e;
    }

    @Override // t.g, androidx.compose.runtime.n1
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public f builder() {
        return new f(this);
    }

    @Override // kotlin.collections.AbstractMap
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public t.e i() {
        return new p(this);
    }

    public final t u() {
        return this.f76494d;
    }

    @Override // kotlin.collections.AbstractMap
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public t.b l() {
        return new r(this);
    }

    public d w(Object obj, Object obj2) {
        t.b bVarP = this.f76494d.P(obj != null ? obj.hashCode() : 0, obj, obj2, 0);
        return bVarP == null ? this : new d(bVarP.a(), size() + bVarP.b());
    }

    public d x(Object obj) {
        t tVarQ = this.f76494d.Q(obj != null ? obj.hashCode() : 0, obj, 0);
        if (this.f76494d == tVarQ) {
            return this;
        }
        return tVarQ == null ? f76491f.a() : new d(tVarQ, size() - 1);
    }
}
