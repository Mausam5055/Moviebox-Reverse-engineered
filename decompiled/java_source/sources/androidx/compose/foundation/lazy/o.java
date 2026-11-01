package androidx.compose.foundation.lazy;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class o implements androidx.compose.foundation.lazy.layout.t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f3135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.compose.foundation.lazy.layout.q f3136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f3137c;

    private o(long j11, boolean z10, k kVar, androidx.compose.foundation.lazy.layout.q qVar) {
        this.f3135a = kVar;
        this.f3136b = qVar;
        this.f3137c = o0.c.b(0, z10 ? o0.b.l(j11) : Integer.MAX_VALUE, 0, z10 ? Integer.MAX_VALUE : o0.b.k(j11), 5, null);
    }

    public /* synthetic */ o(long j11, boolean z10, k kVar, androidx.compose.foundation.lazy.layout.q qVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, z10, kVar, qVar);
    }

    public static /* synthetic */ n e(o oVar, int i11, long j11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAndMeasure-0kLqBqw");
        }
        if ((i12 & 2) != 0) {
            j11 = oVar.f3137c;
        }
        return oVar.d(i11, j11);
    }

    public abstract n b(int i11, Object obj, Object obj2, List list, long j11);

    @Override // androidx.compose.foundation.lazy.layout.t
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n a(int i11, int i12, int i13, long j11) {
        return d(i11, j11);
    }

    public final n d(int i11, long j11) {
        return b(i11, this.f3135a.b(i11), this.f3135a.c(i11), this.f3136b.S(i11, j11), j11);
    }

    public final long f() {
        return this.f3137c;
    }

    public final androidx.compose.foundation.lazy.layout.p g() {
        return this.f3135a.e();
    }
}
