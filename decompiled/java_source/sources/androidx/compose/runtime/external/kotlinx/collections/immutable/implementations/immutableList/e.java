package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class e extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f3711c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f3712d;

    public e(Object[] objArr, Object[] objArr2, int i11, int i12, int i13) {
        super(i11, i12);
        this.f3711c = objArr2;
        int iD = j.d(i12);
        this.f3712d = new i(objArr, RangesKt.i(i11, iD), iD, i13);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Object next() {
        a();
        if (this.f3712d.hasNext()) {
            h(e() + 1);
            return this.f3712d.next();
        }
        Object[] objArr = this.f3711c;
        int iE = e();
        h(iE + 1);
        return objArr[iE - this.f3712d.f()];
    }

    @Override // java.util.ListIterator
    public Object previous() {
        c();
        if (e() <= this.f3712d.f()) {
            h(e() - 1);
            return this.f3712d.previous();
        }
        Object[] objArr = this.f3711c;
        h(e() - 1);
        return objArr[e() - this.f3712d.f()];
    }
}
