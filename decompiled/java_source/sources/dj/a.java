package dj;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    public static String a(long j11) {
        long j12;
        long j13;
        Object objValueOf;
        Object objValueOf2;
        String str;
        long j14 = j11 / 1000;
        try {
            long j15 = j14 % 3600;
            if (j14 > 3600) {
                j13 = j14 / 3600;
                if (j15 == 0) {
                    j12 = 0;
                    j15 = 0;
                } else if (j15 > 60) {
                    j12 = j15 / 60;
                    j15 = j15 % 60 != 0 ? j15 % 60 : 0L;
                } else {
                    j12 = 0;
                }
            } else {
                j12 = j14 / 60;
                if (j14 % 60 != 0) {
                    j15 = j14 % 60;
                    j13 = 0;
                } else {
                    j13 = 0;
                    j15 = 0;
                }
            }
            StringBuilder sb2 = new StringBuilder();
            if (j13 < 10) {
                objValueOf = "0" + j13;
            } else {
                objValueOf = Long.valueOf(j13);
            }
            sb2.append(objValueOf);
            sb2.append(":");
            String string = sb2.toString();
            StringBuilder sb3 = new StringBuilder();
            if (j12 < 10) {
                objValueOf2 = "0" + j12;
            } else {
                objValueOf2 = Long.valueOf(j12);
            }
            sb3.append(objValueOf2);
            sb3.append(":");
            String string2 = sb3.toString();
            if (j15 < 10) {
                str = "0" + j15;
            } else {
                str = j15 + "";
            }
            if (j13 == 0) {
                string = "";
            }
            if (j13 == 0 && j12 == 60) {
                string = "01:";
                string2 = "00:";
            }
            return string + string2 + str;
        } catch (Exception unused) {
            return "";
        }
    }
}
