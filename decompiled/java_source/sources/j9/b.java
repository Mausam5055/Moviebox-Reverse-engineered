package j9;

import g9.m;
import g9.s;
import g9.v;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class b extends g9.a {

    /* JADX INFO: renamed from: j9.b$b, reason: collision with other inner class name */
    private static final class C0799b implements g9.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final v f65954a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f65955b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final s.a f65956c;

        private C0799b(v vVar, int i11) {
            this.f65954a = vVar;
            this.f65955b = i11;
            this.f65956c = new s.a();
        }

        private long c(m mVar) {
            while (mVar.getPeekPosition() < mVar.getLength() - 6 && !s.h(mVar, this.f65954a, this.f65955b, this.f65956c)) {
                mVar.advancePeekPosition(1);
            }
            if (mVar.getPeekPosition() < mVar.getLength() - 6) {
                return this.f65956c.f63455a;
            }
            mVar.advancePeekPosition((int) (mVar.getLength() - mVar.getPeekPosition()));
            return this.f65954a.f63468j;
        }

        @Override // g9.a.f
        public /* synthetic */ void a() {
            g9.b.a(this);
        }

        @Override // g9.a.f
        public g9.a.e b(m mVar, long j11) {
            long position = mVar.getPosition();
            long jC = c(mVar);
            long peekPosition = mVar.getPeekPosition();
            mVar.advancePeekPosition(Math.max(6, this.f65954a.f63461c));
            long jC2 = c(mVar);
            long peekPosition2 = mVar.getPeekPosition();
            if (jC > j11 || jC2 <= j11) {
                return jC2 <= j11 ? g9.a.e.f(jC2, peekPosition2) : g9.a.e.d(jC, position);
            }
            return g9.a.e.e(peekPosition);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final v vVar, int i11, long j11, long j12) {
        super(new g9.a.d() { // from class: j9.a
            @Override // g9.a.d
            public final long a(long j13) {
                return vVar.i(j13);
            }
        }, new C0799b(vVar, i11), vVar.f(), 0L, vVar.f63468j, j11, j12, vVar.d(), Math.max(6, vVar.f63461c));
        Objects.requireNonNull(vVar);
    }
}
