package k5;

import com.cloud.tmc.miniutils.constant.TimeConstants;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f66654a;

    public c(String str, String str2) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (str.equalsIgnoreCase("hh:mm:ss,ms")) {
            int i15 = Integer.parseInt(str2.substring(0, 2));
            this.f66654a = Integer.parseInt(str2.substring(9, 12)) + (Integer.parseInt(str2.substring(6, 8)) * 1000) + (Integer.parseInt(str2.substring(3, 5)) * 60000) + (i15 * TimeConstants.HOUR);
            return;
        }
        if (!str.equalsIgnoreCase("h:mm:ss.cs")) {
            if (str.equalsIgnoreCase("h:m:s:f/fps")) {
                String[] strArrSplit = str2.split("/");
                float f11 = Float.parseFloat(strArrSplit[1]);
                String[] strArrSplit2 = strArrSplit[0].split(":");
                int i16 = Integer.parseInt(strArrSplit2[0]);
                this.f66654a = ((int) ((Integer.parseInt(strArrSplit2[3]) * 1000) / f11)) + (Integer.parseInt(strArrSplit2[2]) * 1000) + (Integer.parseInt(strArrSplit2[1]) * 60000) + (i16 * TimeConstants.HOUR);
                return;
            }
            return;
        }
        String[] strArrSplit3 = str2.split(":");
        if (strArrSplit3.length == 4) {
            i13 = Integer.parseInt(strArrSplit3[0]);
            i11 = Integer.parseInt(strArrSplit3[1]);
            i12 = Integer.parseInt(strArrSplit3[2]);
            i14 = Integer.parseInt(strArrSplit3[3]);
        } else {
            int i17 = Integer.parseInt(str2.substring(0, 1));
            i11 = Integer.parseInt(str2.substring(2, 4));
            int i18 = Integer.parseInt(str2.substring(5, 7));
            int i19 = Integer.parseInt(str2.substring(8, 10));
            i12 = i18;
            i13 = i17;
            i14 = i19;
        }
        this.f66654a = (i14 * 10) + (i12 * 1000) + (i11 * 60000) + (i13 * TimeConstants.HOUR);
    }
}
