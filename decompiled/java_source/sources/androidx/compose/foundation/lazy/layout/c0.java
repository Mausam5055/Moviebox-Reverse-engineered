package androidx.compose.foundation.lazy.layout;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class c0 implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f3034a = new androidx.compose.runtime.collection.b(new b.a[16], 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b.a f3036c;

    private final void c(int i11) {
        if (i11 < 0 || i11 >= getSize()) {
            throw new IndexOutOfBoundsException("Index " + i11 + ", size " + getSize());
        }
    }

    private final boolean d(b.a aVar, int i11) {
        return i11 < aVar.b() + aVar.a() && aVar.b() <= i11;
    }

    private final b.a e(int i11) {
        b.a aVar = this.f3036c;
        if (aVar != null && d(aVar, i11)) {
            return aVar;
        }
        androidx.compose.runtime.collection.b bVar = this.f3034a;
        b.a aVar2 = (b.a) bVar.m()[c.b(bVar, i11)];
        this.f3036c = aVar2;
        return aVar2;
    }

    @Override // androidx.compose.foundation.lazy.layout.b
    public void a(int i11, int i12, Function1 function1) {
        c(i11);
        c(i12);
        if (i12 < i11) {
            throw new IllegalArgumentException(("toIndex (" + i12 + ") should be not smaller than fromIndex (" + i11 + ')').toString());
        }
        int iB = c.b(this.f3034a, i11);
        int iB2 = ((b.a) this.f3034a.m()[iB]).b();
        while (iB2 <= i12) {
            b.a aVar = (b.a) this.f3034a.m()[iB];
            function1.invoke(aVar);
            iB2 += aVar.a();
            iB++;
        }
    }

    public final void b(int i11, Object obj) {
        if (i11 < 0) {
            throw new IllegalArgumentException(("size should be >=0, but was " + i11).toString());
        }
        if (i11 == 0) {
            return;
        }
        b.a aVar = new b.a(getSize(), i11, obj);
        this.f3035b = getSize() + i11;
        this.f3034a.b(aVar);
    }

    @Override // androidx.compose.foundation.lazy.layout.b
    public b.a get(int i11) {
        c(i11);
        return e(i11);
    }

    @Override // androidx.compose.foundation.lazy.layout.b
    public int getSize() {
        return this.f3035b;
    }
}
