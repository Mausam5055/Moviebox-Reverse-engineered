package androidx.collection;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class a1 {

    public static final class a implements Iterator, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f2261a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ y0 f2262b;

        a(y0 y0Var) {
            this.f2262b = y0Var;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2261a < this.f2262b.p();
        }

        @Override // java.util.Iterator
        public Object next() {
            y0 y0Var = this.f2262b;
            int i11 = this.f2261a;
            this.f2261a = i11 + 1;
            return y0Var.q(i11);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final Iterator a(y0 y0Var) {
        Intrinsics.h(y0Var, "<this>");
        return new a(y0Var);
    }
}
