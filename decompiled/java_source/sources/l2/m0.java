package l2;

/* JADX INFO: loaded from: classes2.dex */
public interface m0 {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n0 f68644a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final n0 f68645b;

        public a(n0 n0Var) {
            this(n0Var, n0Var);
        }

        public a(n0 n0Var, n0 n0Var2) {
            this.f68644a = (n0) androidx.media3.common.util.a.e(n0Var);
            this.f68645b = (n0) androidx.media3.common.util.a.e(n0Var2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f68644a.equals(aVar.f68644a) && this.f68645b.equals(aVar.f68645b);
        }

        public int hashCode() {
            return (this.f68644a.hashCode() * 31) + this.f68645b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(this.f68644a);
            if (this.f68644a.equals(this.f68645b)) {
                str = "";
            } else {
                str = ", " + this.f68645b;
            }
            sb2.append(str);
            sb2.append("]");
            return sb2.toString();
        }
    }

    public static class b implements m0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f68646a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a f68647b;

        public b(long j11) {
            this(j11, 0L);
        }

        public b(long j11, long j12) {
            this.f68646a = j11;
            this.f68647b = new a(j12 == 0 ? n0.f68649c : new n0(0L, j12));
        }

        @Override // l2.m0
        public long getDurationUs() {
            return this.f68646a;
        }

        @Override // l2.m0
        public a getSeekPoints(long j11) {
            return this.f68647b;
        }

        @Override // l2.m0
        public boolean isSeekable() {
            return false;
        }
    }

    long getDurationUs();

    a getSeekPoints(long j11);

    boolean isSeekable();
}
