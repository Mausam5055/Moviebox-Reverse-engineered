package ka;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f66734a = Pattern.compile("^NOTE([ \t].*)?$");

    public static Matcher a(d0 d0Var) {
        String strP;
        while (true) {
            String strP2 = d0Var.p();
            if (strP2 == null) {
                return null;
            }
            if (f66734a.matcher(strP2).matches()) {
                do {
                    strP = d0Var.p();
                    if (strP == null) {
                        break;
                    }
                } while (!strP.isEmpty());
            } else {
                Matcher matcher = f.f66708a.matcher(strP2);
                if (matcher.matches()) {
                    return matcher;
                }
            }
        }
    }

    public static boolean b(d0 d0Var) {
        String strP = d0Var.p();
        return strP != null && strP.startsWith("WEBVTT");
    }

    public static float c(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long d(String str) {
        String[] strArrT0 = p0.T0(str, "\\.");
        long j11 = 0;
        for (String str2 : p0.S0(strArrT0[0], ":")) {
            j11 = (j11 * 60) + Long.parseLong(str2);
        }
        long j12 = j11 * 1000;
        if (strArrT0.length == 2) {
            j12 += Long.parseLong(strArrT0[1]);
        }
        return j12 * 1000;
    }

    public static void e(d0 d0Var) throws ParserException {
        int iE = d0Var.e();
        if (b(d0Var)) {
            return;
        }
        d0Var.P(iE);
        throw ParserException.createForMalformedContainer("Expected WEBVTT. Got " + d0Var.p(), null);
    }
}
