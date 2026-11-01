package q;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f73039a = new a();

    public static final class a implements b {
        a() {
        }

        @Override // q.b
        public float a(long j11, o0.e eVar) {
            return 0.0f;
        }

        public String toString() {
            return "ZeroCornerSize";
        }
    }

    public static final b a(int i11) {
        return new e(i11);
    }

    public static final b b(float f11) {
        return new d(f11, null);
    }
}
