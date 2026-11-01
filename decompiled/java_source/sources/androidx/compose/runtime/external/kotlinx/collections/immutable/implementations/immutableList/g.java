package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

/* JADX INFO: loaded from: classes.dex */
public final class g extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f3717c;

    public g(Object obj, int i11) {
        super(i11, 1);
        this.f3717c = obj;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Object next() {
        a();
        h(e() + 1);
        return this.f3717c;
    }

    @Override // java.util.ListIterator
    public Object previous() {
        c();
        h(e() - 1);
        return this.f3717c;
    }
}
