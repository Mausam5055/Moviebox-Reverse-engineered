package ak;

import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes5.dex */
public abstract class i {
    public static final String a(int i11) {
        return "E" + new DecimalFormat("00").format(Integer.valueOf(i11));
    }

    public static final String b(int i11, int i12, Integer num) {
        DecimalFormat decimalFormat = new DecimalFormat("00");
        boolean z10 = (num != null && num.intValue() == 2) || (num != null && num.intValue() == 3) || (num != null && num.intValue() == 6);
        if (num != null && num.intValue() == 5) {
            return "Lesson " + i11;
        }
        if (i12 <= 0) {
            return (z10 ? "E" : "Ch") + decimalFormat.format(Integer.valueOf(i11));
        }
        return "S" + decimalFormat.format(Integer.valueOf(i12)) + (z10 ? " E" : " Ch") + decimalFormat.format(Integer.valueOf(i11));
    }

    public static final String c(int i11, boolean z10) {
        return (z10 ? " E" : " Ch") + new DecimalFormat("00").format(Integer.valueOf(i11));
    }

    public static final String d(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        return " · " + str;
    }
}
