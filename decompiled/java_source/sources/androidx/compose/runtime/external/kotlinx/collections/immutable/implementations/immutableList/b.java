package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f3705c;

    public b(Object[] objArr, int i11, int i12) {
        super(i11, i12);
        this.f3705c = objArr;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f3705c;
        int iE = e();
        h(iE + 1);
        return objArr[iE];
    }

    @Override // java.util.ListIterator
    public Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f3705c;
        h(e() - 1);
        return objArr[e()];
    }
}
