package tc;

import com.google.firebase.perf.v1.f;

/* JADX INFO: loaded from: classes5.dex */
final class b extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f76177a;

    b(f fVar) {
        this.f76177a = fVar;
    }

    @Override // tc.e
    public boolean c() {
        return this.f76177a.u() && (this.f76177a.q() > 0 || this.f76177a.p() > 0 || (this.f76177a.t() && this.f76177a.s().l()));
    }
}
