package androidx.compose.ui.input.pointer;

/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4991a;

    private /* synthetic */ g0(int i11) {
        this.f4991a = i11;
    }

    public static final /* synthetic */ g0 a(int i11) {
        return new g0(i11);
    }

    public static int b(int i11) {
        return i11;
    }

    public static boolean c(int i11, Object obj) {
        return (obj instanceof g0) && i11 == ((g0) obj).f();
    }

    public static int d(int i11) {
        return i11;
    }

    public static String e(int i11) {
        return "PointerKeyboardModifiers(packedValue=" + i11 + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f4991a, obj);
    }

    public final /* synthetic */ int f() {
        return this.f4991a;
    }

    public int hashCode() {
        return d(this.f4991a);
    }

    public String toString() {
        return e(this.f4991a);
    }
}
