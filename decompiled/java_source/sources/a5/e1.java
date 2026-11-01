package a5;

/* JADX INFO: loaded from: classes2.dex */
public class e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e1 f194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f197d;

    public e1(e1 e1Var, Object obj, Object obj2, int i11, int i12) {
        this.f194a = e1Var;
        this.f195b = obj;
        this.f196c = obj2;
        this.f197d = i11;
    }

    protected void a(StringBuilder sb2) {
        e1 e1Var = this.f194a;
        if (e1Var == null) {
            sb2.append('$');
            return;
        }
        e1Var.a(sb2);
        Object obj = this.f196c;
        if (obj == null) {
            sb2.append(".null");
            return;
        }
        if (obj instanceof Integer) {
            sb2.append('[');
            sb2.append(((Integer) this.f196c).intValue());
            sb2.append(']');
            return;
        }
        sb2.append('.');
        String string = this.f196c.toString();
        for (int i11 = 0; i11 < string.length(); i11++) {
            char cCharAt = string.charAt(i11);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt < 'a' || cCharAt > 'z') && cCharAt <= 128))) {
                for (int i12 = 0; i12 < string.length(); i12++) {
                    char cCharAt2 = string.charAt(i12);
                    if (cCharAt2 == '\\') {
                        sb2.append('\\');
                        sb2.append('\\');
                        sb2.append('\\');
                    } else {
                        if ((cCharAt2 >= '0' && cCharAt2 <= '9') || ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || ((cCharAt2 >= 'a' && cCharAt2 <= 'z') || cCharAt2 > 128))) {
                            sb2.append(cCharAt2);
                        } else if (cCharAt2 == '\"') {
                            sb2.append('\\');
                            sb2.append('\\');
                            sb2.append('\\');
                        } else {
                            sb2.append('\\');
                            sb2.append('\\');
                        }
                    }
                    sb2.append(cCharAt2);
                }
                return;
            }
        }
        sb2.append(string);
    }

    public String toString() {
        if (this.f194a == null) {
            return "$";
        }
        StringBuilder sb2 = new StringBuilder();
        a(sb2);
        return sb2.toString();
    }
}
