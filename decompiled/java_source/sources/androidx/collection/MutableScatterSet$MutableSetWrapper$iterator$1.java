package androidx.collection;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
public final class MutableScatterSet$MutableSetWrapper$iterator$1 implements Iterator, KMutableIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2241a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Iterator f2242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ MutableScatterSet f2243c;

    MutableScatterSet$MutableSetWrapper$iterator$1(MutableScatterSet mutableScatterSet) {
        this.f2243c = mutableScatterSet;
        this.f2242b = SequencesKt.a(new MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1(mutableScatterSet, this, null));
    }

    public final void a(int i11) {
        this.f2241a = i11;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f2242b.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return this.f2242b.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        int i11 = this.f2241a;
        if (i11 != -1) {
            this.f2243c.y(i11);
            this.f2241a = -1;
        }
    }
}
