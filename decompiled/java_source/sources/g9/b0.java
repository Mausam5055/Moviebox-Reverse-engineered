package g9;

/* JADX INFO: loaded from: classes4.dex */
public interface b0 {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c0 f63370a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final c0 f63371b;

        public a(c0 c0Var) {
            this(c0Var, c0Var);
        }

        public a(c0 c0Var, c0 c0Var2) {
            this.f63370a = (c0) com.google.android.exoplayer2.util.a.e(c0Var);
            this.f63371b = (c0) com.google.android.exoplayer2.util.a.e(c0Var2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f63370a.equals(aVar.f63370a) && this.f63371b.equals(aVar.f63371b);
        }

        public int hashCode() {
            return (this.f63370a.hashCode() * 31) + this.f63371b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(this.f63370a);
            if (this.f63370a.equals(this.f63371b)) {
                str = "";
            } else {
                str = ", " + this.f63371b;
            }
            sb2.append(str);
            sb2.append("]");
            return sb2.toString();
        }
    }

    public static class b implements b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f63372a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a f63373b;

        public b(long j11) {
            this(j11, 0L);
        }

        public b(long j11, long j12) {
            this.f63372a = j11;
            this.f63373b = new a(j12 == 0 ? c0.f63374c : new c0(0L, j12));
        }

        @Override // g9.b0
        public long getDurationUs() {
            return this.f63372a;
        }

        @Override // g9.b0
        public a getSeekPoints(long j11) {
            return this.f63373b;
        }

        @Override // g9.b0
        public boolean isSeekable() {
            return false;
        }
    }

    long getDurationUs();

    a getSeekPoints(long j11);

    boolean isSeekable();
}
