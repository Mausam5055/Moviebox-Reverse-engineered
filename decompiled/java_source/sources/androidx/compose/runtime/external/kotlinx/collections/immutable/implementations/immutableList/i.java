package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f3723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3724e;

    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public i(Object[] objArr, int i11, int i12, int i13) {
        super(i11, i12);
        this.f3722c = i13;
        Object[] objArr2 = new Object[i13];
        this.f3723d = objArr2;
        ?? r11 = i11 == i12 ? 1 : 0;
        this.f3724e = r11;
        objArr2[0] = objArr;
        l(i11 - r11, 1);
    }

    private final Object j() {
        int iE = e() & 31;
        Object obj = this.f3723d[this.f3722c - 1];
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.TrieIterator>");
        return ((Object[]) obj)[iE];
    }

    private final void l(int i11, int i12) {
        int i13 = (this.f3722c - i12) * 5;
        while (i12 < this.f3722c) {
            Object[] objArr = this.f3723d;
            Object obj = objArr[i12 - 1];
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr[i12] = ((Object[]) obj)[j.a(i11, i13)];
            i13 -= 5;
            i12++;
        }
    }

    private final void m(int i11) {
        int i12 = 0;
        while (j.a(e(), i12) == i11) {
            i12 += 5;
        }
        if (i12 > 0) {
            l(e(), ((this.f3722c - 1) - (i12 / 5)) + 1);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    public final void n(Object[] objArr, int i11, int i12, int i13) {
        h(i11);
        i(i12);
        this.f3722c = i13;
        if (this.f3723d.length < i13) {
            this.f3723d = new Object[i13];
        }
        this.f3723d[0] = objArr;
        ?? r11 = i11 == i12 ? 1 : 0;
        this.f3724e = r11;
        l(i11 - r11, 1);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objJ = j();
        h(e() + 1);
        if (e() == f()) {
            this.f3724e = true;
            return objJ;
        }
        m(0);
        return objJ;
    }

    @Override // java.util.ListIterator
    public Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        h(e() - 1);
        if (this.f3724e) {
            this.f3724e = false;
            return j();
        }
        m(31);
        return j();
    }
}
