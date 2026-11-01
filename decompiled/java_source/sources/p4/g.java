package p4;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f72301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f72302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f72303c;

    public g(String str, float f11, float f12) {
        this.f72301a = str;
        this.f72303c = f12;
        this.f72302b = f11;
    }

    public boolean a(String str) {
        if (this.f72301a.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.f72301a.endsWith("\r")) {
            String str2 = this.f72301a;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
