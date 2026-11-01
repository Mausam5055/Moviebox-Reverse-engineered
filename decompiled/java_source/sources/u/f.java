package u;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.collections.AbstractMutableMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class f extends AbstractMutableMap implements t.g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f76499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private w.e f76500b = new w.e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private t f76501c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f76502d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f76503e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f76504f;

    public f(d dVar) {
        this.f76499a = dVar;
        this.f76501c = this.f76499a.u();
        this.f76504f = this.f76499a.size();
    }

    @Override // kotlin.collections.AbstractMutableMap
    public Set a() {
        return new h(this);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public Set c() {
        return new j(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        t tVarA = t.f76516e.a();
        Intrinsics.f(tVarA, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>");
        this.f76501c = tVarA;
        p(0);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.f76501c.k(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public int e() {
        return this.f76504f;
    }

    @Override // kotlin.collections.AbstractMutableMap
    public Collection f() {
        return new l(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        return this.f76501c.o(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // t.g.a, androidx.compose.runtime.n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public d build() {
        d dVar;
        if (this.f76501c == this.f76499a.u()) {
            dVar = this.f76499a;
        } else {
            this.f76500b = new w.e();
            dVar = new d(this.f76501c, size());
        }
        this.f76499a = dVar;
        return dVar;
    }

    public final int i() {
        return this.f76503e;
    }

    public final t j() {
        return this.f76501c;
    }

    public final w.e l() {
        return this.f76500b;
    }

    public final void m(int i11) {
        this.f76503e = i11;
    }

    public final void n(Object obj) {
        this.f76502d = obj;
    }

    protected final void o(w.e eVar) {
        this.f76500b = eVar;
    }

    public void p(int i11) {
        this.f76504f = i11;
        this.f76503e++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        this.f76502d = null;
        this.f76501c = this.f76501c.D(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        return this.f76502d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map map) {
        d dVarBuild = map instanceof d ? (d) map : null;
        if (dVarBuild == null) {
            f fVar = map instanceof f ? (f) map : null;
            dVarBuild = fVar != null ? fVar.build() : null;
        }
        if (dVarBuild == null) {
            super.putAll(map);
            return;
        }
        w.b bVar = new w.b(0, 1, null);
        int size = size();
        t tVar = this.f76501c;
        t tVarU = dVarBuild.u();
        Intrinsics.f(tVarU, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>");
        this.f76501c = tVar.E(tVarU, 0, bVar, this);
        int size2 = (dVarBuild.size() + size) - bVar.a();
        if (size != size2) {
            p(size2);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        this.f76502d = null;
        t tVarG = this.f76501c.G(obj != null ? obj.hashCode() : 0, obj, 0, this);
        if (tVarG == null) {
            tVarG = t.f76516e.a();
            Intrinsics.f(tVarG, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>");
        }
        this.f76501c = tVarG;
        return this.f76502d;
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        int size = size();
        t tVarH = this.f76501c.H(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        if (tVarH == null) {
            tVarH = t.f76516e.a();
            Intrinsics.f(tVarH, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>");
        }
        this.f76501c = tVarH;
        return size != size();
    }
}
