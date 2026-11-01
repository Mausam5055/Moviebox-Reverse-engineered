package androidx.compose.runtime;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
final class y2 implements androidx.compose.runtime.tooling.b, Iterable, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j2 f4074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l0 f4076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x2 f4077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f4078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Iterable f4079f = this;

    public y2(j2 j2Var, int i11, l0 l0Var, x2 x2Var) {
        this.f4074a = j2Var;
        this.f4075b = i11;
        this.f4077d = x2Var;
        this.f4078e = Integer.valueOf(l0Var.c());
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new w2(this.f4074a, this.f4075b, this.f4076c, this.f4077d);
    }
}
