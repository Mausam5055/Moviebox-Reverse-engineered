package com.google.android.gms.internal.play_billing;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzy {
    public static String zza(String str, Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String string;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            length = objArr.length;
            if (i12 >= length) {
                break;
            }
            Object obj = objArr[i12];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e11) {
                    String str2 = obj.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(str2), (Throwable) e11);
                    string = "<" + str2 + " threw " + e11.getClass().getName() + ">";
                }
            }
            objArr[i12] = string;
            i12++;
        }
        StringBuilder sb2 = new StringBuilder(str.length() + (length * 16));
        int i13 = 0;
        while (true) {
            length2 = objArr.length;
            if (i11 >= length2 || (iIndexOf = str.indexOf("%s", i13)) == -1) {
                break;
            }
            sb2.append((CharSequence) str, i13, iIndexOf);
            sb2.append(objArr[i11]);
            i13 = iIndexOf + 2;
            i11++;
        }
        sb2.append((CharSequence) str, i13, str.length());
        if (i11 < length2) {
            sb2.append(" [");
            sb2.append(objArr[i11]);
            for (int i14 = i11 + 1; i14 < objArr.length; i14++) {
                sb2.append(", ");
                sb2.append(objArr[i14]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }

    public static String zzb(String str) {
        int i11 = zzw.zza;
        return str == null ? "" : str;
    }
}
