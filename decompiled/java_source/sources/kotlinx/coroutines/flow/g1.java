package kotlinx.coroutines.flow;

/* JADX INFO: loaded from: classes7.dex */
public interface g1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f67783a = a.f67784a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f67784a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final g1 f67785b = new h1();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final g1 f67786c = new StartedLazily();

        private a() {
        }

        public static /* synthetic */ g1 b(a aVar, long j11, long j12, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                j11 = 0;
            }
            if ((i11 & 2) != 0) {
                j12 = Long.MAX_VALUE;
            }
            return aVar.a(j11, j12);
        }

        public final g1 a(long j11, long j12) {
            return new StartedWhileSubscribed(j11, j12);
        }

        public final g1 c() {
            return f67785b;
        }

        public final g1 d() {
            return f67786c;
        }
    }

    b a(i1 i1Var);
}
