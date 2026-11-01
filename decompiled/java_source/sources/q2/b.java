package q2;

import java.util.Objects;
import l2.b0;
import l2.e;
import l2.f;
import l2.s;
import l2.y;

/* JADX INFO: loaded from: classes2.dex */
final class b extends e {

    /* JADX INFO: renamed from: q2.b$b, reason: collision with other inner class name */
    private static final class C0888b implements e.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b0 f73054a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f73055b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final y.a f73056c;

        private C0888b(b0 b0Var, int i11) {
            this.f73054a = b0Var;
            this.f73055b = i11;
            this.f73056c = new y.a();
        }

        private long c(s sVar) {
            while (sVar.getPeekPosition() < sVar.getLength() - 6 && !y.h(sVar, this.f73054a, this.f73055b, this.f73056c)) {
                sVar.advancePeekPosition(1);
            }
            if (sVar.getPeekPosition() < sVar.getLength() - 6) {
                return this.f73056c.f68713a;
            }
            sVar.advancePeekPosition((int) (sVar.getLength() - sVar.getPeekPosition()));
            return this.f73054a.f68510j;
        }

        @Override // l2.e.f
        public /* synthetic */ void a() {
            f.a(this);
        }

        @Override // l2.e.f
        public e.C0825e b(s sVar, long j11) {
            long position = sVar.getPosition();
            long jC = c(sVar);
            long peekPosition = sVar.getPeekPosition();
            sVar.advancePeekPosition(Math.max(6, this.f73054a.f68503c));
            long jC2 = c(sVar);
            long peekPosition2 = sVar.getPeekPosition();
            if (jC > j11 || jC2 <= j11) {
                return jC2 <= j11 ? e.C0825e.f(jC2, peekPosition2) : e.C0825e.d(jC, position);
            }
            return e.C0825e.e(peekPosition);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final b0 b0Var, int i11, long j11, long j12) {
        super(new e.d() { // from class: q2.a
            @Override // l2.e.d
            public final long a(long j13) {
                return b0Var.i(j13);
            }
        }, new C0888b(b0Var, i11), b0Var.f(), 0L, b0Var.f68510j, j11, j12, b0Var.d(), Math.max(6, b0Var.f68503c));
        Objects.requireNonNull(b0Var);
    }
}
