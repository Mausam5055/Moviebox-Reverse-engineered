package androidx.compose.ui.input.pointer;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.collection.x f5069a = new androidx.collection.x(0, 1, null);

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f5070a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f5071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f5072c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f5073d;

        private a(long j11, long j12, boolean z10, int i11) {
            this.f5070a = j11;
            this.f5071b = j12;
            this.f5072c = z10;
            this.f5073d = i11;
        }

        public /* synthetic */ a(long j11, long j12, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(j11, j12, z10, i11);
        }

        public final boolean a() {
            return this.f5072c;
        }

        public final long b() {
            return this.f5071b;
        }

        public final long c() {
            return this.f5070a;
        }
    }

    public final void a() {
        this.f5069a.b();
    }

    public final g b(y yVar, i0 i0Var) {
        long jK;
        boolean zA;
        long jMo117screenToLocalMKHz9U;
        androidx.collection.x xVar = new androidx.collection.x(yVar.b().size());
        List listB = yVar.b();
        int size = listB.size();
        for (int i11 = 0; i11 < size; i11++) {
            z zVar = (z) listB.get(i11);
            a aVar = (a) this.f5069a.e(zVar.d());
            if (aVar == null) {
                jK = zVar.k();
                jMo117screenToLocalMKHz9U = zVar.f();
                zA = false;
            } else {
                long jC = aVar.c();
                jK = jC;
                zA = aVar.a();
                jMo117screenToLocalMKHz9U = i0Var.mo117screenToLocalMKHz9U(aVar.b());
            }
            xVar.k(zVar.d(), new w(zVar.d(), zVar.k(), zVar.f(), zVar.b(), zVar.h(), jK, jMo117screenToLocalMKHz9U, zA, false, zVar.j(), zVar.c(), zVar.i(), zVar.e(), null));
            if (zVar.b()) {
                this.f5069a.k(zVar.d(), new a(zVar.k(), zVar.g(), zVar.b(), zVar.j(), null));
            } else {
                this.f5069a.l(zVar.d());
            }
        }
        return new g(xVar, yVar);
    }
}
