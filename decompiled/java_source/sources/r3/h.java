package r3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f74086a = Pattern.compile("^NOTE([ \t].*)?$");

    public static Matcher a(j0 j0Var) {
        String strS;
        while (true) {
            String strS2 = j0Var.s();
            if (strS2 == null) {
                return null;
            }
            if (f74086a.matcher(strS2).matches()) {
                do {
                    strS = j0Var.s();
                    if (strS == null) {
                        break;
                    }
                } while (!strS.isEmpty());
            } else {
                Matcher matcher = e.f74060a.matcher(strS2);
                if (matcher.matches()) {
                    return matcher;
                }
            }
        }
    }

    public static boolean b(j0 j0Var) {
        String strS = j0Var.s();
        return strS != null && strS.startsWith("WEBVTT");
    }

    public static float c(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long d(String str) {
        String[] strArrP1 = a1.p1(str, "\\.");
        long j11 = 0;
        for (String str2 : a1.o1(strArrP1[0], ":")) {
            j11 = (j11 * 60) + Long.parseLong(str2);
        }
        long j12 = j11 * 1000;
        if (strArrP1.length == 2) {
            String strTrim = strArrP1[1].trim();
            if (strTrim.length() != 3) {
                throw new IllegalArgumentException("Expected 3 decimal places, got: " + strTrim);
            }
            j12 += Long.parseLong(strTrim);
        }
        return j12 * 1000;
    }

    public static void e(j0 j0Var) throws ParserException {
        int iF = j0Var.f();
        if (b(j0Var)) {
            return;
        }
        j0Var.W(iF);
        throw ParserException.createForMalformedContainer("Expected WEBVTT. Got " + j0Var.s(), null);
    }
}
