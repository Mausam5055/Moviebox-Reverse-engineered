package q7;

/* JADX INFO: loaded from: classes4.dex */
public class c {
    public static String a(int i11) {
        if (i11 == 2) {
            return "VERBOSE";
        }
        if (i11 == 3) {
            return "DEBUG";
        }
        if (i11 == 4) {
            return "INFO";
        }
        if (i11 == 5) {
            return "WARN";
        }
        if (i11 == 6) {
            return "ERROR";
        }
        if (i11 < 2) {
            return "VERBOSE-" + (2 - i11);
        }
        return "ERROR+" + (i11 - 6);
    }

    public static String b(int i11) {
        if (i11 == 2) {
            return "V";
        }
        if (i11 == 3) {
            return "D";
        }
        if (i11 == 4) {
            return "I";
        }
        if (i11 == 5) {
            return "W";
        }
        if (i11 == 6) {
            return "E";
        }
        if (i11 < 2) {
            return "V-" + (2 - i11);
        }
        return "E+" + (i11 - 6);
    }
}
