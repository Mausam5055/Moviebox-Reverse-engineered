package kotlin.text;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class c extends b {
    public static char f(int i11, int i12) {
        if (2 > i12 || i12 >= 37) {
            throw new IllegalArgumentException("Invalid radix: " + i12 + ". Valid radix values are in range 2..36");
        }
        if (i11 >= 0 && i11 < i12) {
            return (char) (i11 < 10 ? i11 + 48 : ((char) (i11 + 65)) - '\n');
        }
        throw new IllegalArgumentException("Digit " + i11 + " does not represent a valid digit in radix " + i12);
    }

    public static final boolean g(char c11, char c12, boolean z10) {
        if (c11 == c12) {
            return true;
        }
        if (!z10) {
            return false;
        }
        char upperCase = Character.toUpperCase(c11);
        char upperCase2 = Character.toUpperCase(c12);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static String h(char c11) {
        return _OneToManyTitlecaseMappingsKt.a(c11);
    }
}
