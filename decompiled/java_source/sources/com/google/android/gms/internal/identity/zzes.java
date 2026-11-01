package com.google.android.gms.internal.identity;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzes {
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
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
                    sb2.append(name);
                    sb2.append("@");
                    sb2.append(hexString);
                    String string2 = sb2.toString();
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(string2), (Throwable) e11);
                    String name2 = e11.getClass().getName();
                    StringBuilder sb3 = new StringBuilder(string2.length() + 8 + name2.length() + 1);
                    sb3.append("<");
                    sb3.append(string2);
                    sb3.append(" threw ");
                    sb3.append(name2);
                    sb3.append(">");
                    string = sb3.toString();
                }
            }
            objArr[i12] = string;
            i12++;
        }
        StringBuilder sb4 = new StringBuilder(str.length() + (length * 16));
        int i13 = 0;
        while (true) {
            length2 = objArr.length;
            if (i11 >= length2 || (iIndexOf = str.indexOf("%s", i13)) == -1) {
                break;
            }
            sb4.append((CharSequence) str, i13, iIndexOf);
            sb4.append(objArr[i11]);
            i13 = iIndexOf + 2;
            i11++;
        }
        sb4.append((CharSequence) str, i13, str.length());
        if (i11 < length2) {
            sb4.append(" [");
            sb4.append(objArr[i11]);
            for (int i14 = i11 + 1; i14 < objArr.length; i14++) {
                sb4.append(", ");
                sb4.append(objArr[i14]);
            }
            sb4.append(']');
        }
        return sb4.toString();
    }
}
