package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
final class w2 implements Iterator, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j2 f4058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l0 f4060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x2 f4061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4063f;

    public w2(j2 j2Var, int i11, l0 l0Var, x2 x2Var) {
        this.f4058a = j2Var;
        this.f4059b = i11;
        this.f4061d = x2Var;
        this.f4062e = j2Var.t();
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public androidx.compose.runtime.tooling.b next() {
        Object obj;
        ArrayList arrayListB = this.f4060c.b();
        if (arrayListB != null) {
            int i11 = this.f4063f;
            this.f4063f = i11 + 1;
            obj = arrayListB.get(i11);
        } else {
            obj = null;
        }
        if (obj instanceof c) {
            return new k2(this.f4058a, ((c) obj).a(), this.f4062e);
        }
        if (obj instanceof l0) {
            return new y2(this.f4058a, this.f4059b, (l0) obj, new z1(this.f4061d, this.f4063f - 1));
        }
        k.s("Unexpected group information structure");
        throw new KotlinNothingValueException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        ArrayList arrayListB = this.f4060c.b();
        return arrayListB != null && this.f4063f < arrayListB.size();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
