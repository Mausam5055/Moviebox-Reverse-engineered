package sb;

import ob.f;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e {

    public static abstract class a {
        public static a b(String str, String str2, String str3, String str4, int i11, f fVar) {
            return new sb.b(str, str2, str3, str4, i11, fVar);
        }

        public abstract String a();

        public abstract int c();

        public abstract f d();

        public abstract String e();

        public abstract String f();

        public abstract String g();
    }

    public static abstract class b {
        public static b c(int i11, String str, int i12, long j11, long j12, boolean z10, int i13, String str2, String str3) {
            return new sb.c(i11, str, i12, j11, j12, z10, i13, str2, str3);
        }

        public abstract int a();

        public abstract int b();

        public abstract long d();

        public abstract boolean e();

        public abstract String f();

        public abstract String g();

        public abstract String h();

        public abstract int i();

        public abstract long j();
    }

    public static abstract class c {
        public static c a(String str, String str2, boolean z10) {
            return new d(str, str2, z10);
        }

        public abstract boolean b();

        public abstract String c();

        public abstract String d();
    }

    public static e b(a aVar, c cVar, b bVar) {
        return new sb.a(aVar, cVar, bVar);
    }

    public abstract a a();

    public abstract b c();

    public abstract c d();
}
