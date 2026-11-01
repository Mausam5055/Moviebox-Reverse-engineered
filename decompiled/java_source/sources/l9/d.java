package l9;

import g9.b0;
import g9.c0;
import g9.e0;
import g9.n;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f68771a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f68772b;

    class a implements b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b0 f68773a;

        a(b0 b0Var) {
            this.f68773a = b0Var;
        }

        @Override // g9.b0
        public long getDurationUs() {
            return this.f68773a.getDurationUs();
        }

        @Override // g9.b0
        public b0.a getSeekPoints(long j11) {
            b0.a seekPoints = this.f68773a.getSeekPoints(j11);
            c0 c0Var = seekPoints.f63370a;
            c0 c0Var2 = new c0(c0Var.f63375a, c0Var.f63376b + d.this.f68771a);
            c0 c0Var3 = seekPoints.f63371b;
            return new b0.a(c0Var2, new c0(c0Var3.f63375a, c0Var3.f63376b + d.this.f68771a));
        }

        @Override // g9.b0
        public boolean isSeekable() {
            return this.f68773a.isSeekable();
        }
    }

    public d(long j11, n nVar) {
        this.f68771a = j11;
        this.f68772b = nVar;
    }

    @Override // g9.n
    public void d(b0 b0Var) {
        this.f68772b.d(new a(b0Var));
    }

    @Override // g9.n
    public void endTracks() {
        this.f68772b.endTracks();
    }

    @Override // g9.n
    public e0 track(int i11, int i12) {
        return this.f68772b.track(i11, i12);
    }
}
