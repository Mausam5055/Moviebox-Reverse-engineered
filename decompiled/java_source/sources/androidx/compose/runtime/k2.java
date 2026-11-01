package androidx.compose.runtime;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
final class k2 implements androidx.compose.runtime.tooling.b, Iterable, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j2 f3800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3802c;

    public k2(j2 j2Var, int i11, int i12) {
        this.f3800a = j2Var;
        this.f3801b = i11;
        this.f3802c = i12;
    }

    private final void a() {
        if (this.f3800a.t() != this.f3802c) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        a();
        this.f3800a.A(this.f3801b);
        j2 j2Var = this.f3800a;
        int i11 = this.f3801b;
        return new j0(j2Var, i11 + 1, i11 + l2.I(j2Var.o(), this.f3801b));
    }
}
