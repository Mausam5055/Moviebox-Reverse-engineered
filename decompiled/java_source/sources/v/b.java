package v;

import java.util.Iterator;
import kotlin.collections.AbstractSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import t.h;
import u.d;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends AbstractSet implements h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f76958e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f76959f = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final b f76960g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f76961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f76962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f76963d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            return b.f76960g;
        }
    }

    static {
        w.c cVar = w.c.f77487a;
        f76960g = new b(cVar, cVar, d.f76491f.a());
    }

    public b(Object obj, Object obj2, d dVar) {
        this.f76961b = obj;
        this.f76962c = obj2;
        this.f76963d = dVar;
    }

    @Override // java.util.Collection, java.util.Set, t.h
    public h add(Object obj) {
        if (this.f76963d.containsKey(obj)) {
            return this;
        }
        if (isEmpty()) {
            return new b(obj, obj, this.f76963d.w(obj, new v.a()));
        }
        Object obj2 = this.f76962c;
        Object obj3 = this.f76963d.get(obj2);
        Intrinsics.e(obj3);
        return new b(this.f76961b, obj, this.f76963d.w(obj2, ((v.a) obj3).e(obj)).w(obj, new v.a(obj2)));
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.f76963d.containsKey(obj);
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public int get_size() {
        return this.f76963d.size();
    }

    @Override // kotlin.collections.AbstractSet, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new c(this.f76961b, this.f76963d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.Set, t.h
    public h remove(Object obj) {
        v.a aVar = (v.a) this.f76963d.get(obj);
        if (aVar == null) {
            return this;
        }
        d dVarX = this.f76963d.x(obj);
        if (aVar.b()) {
            V v11 = dVarX.get(aVar.d());
            Intrinsics.e(v11);
            dVarX = dVarX.w(aVar.d(), ((v.a) v11).e(aVar.c()));
        }
        if (aVar.a()) {
            V v12 = dVarX.get(aVar.c());
            Intrinsics.e(v12);
            dVarX = dVarX.w(aVar.c(), ((v.a) v12).f(aVar.d()));
        }
        return new b(!aVar.b() ? aVar.c() : this.f76961b, !aVar.a() ? aVar.d() : this.f76962c, dVarX);
    }
}
