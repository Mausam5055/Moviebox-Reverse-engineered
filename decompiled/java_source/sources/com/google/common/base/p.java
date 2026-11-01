package com.google.common.base;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class p {
    public static String a(String str) {
        return l.a(str);
    }

    public static boolean b(String str) {
        return l.e(str);
    }

    public static String c(String str, Object... objArr) {
        int iIndexOf;
        String strValueOf = String.valueOf(str);
        int i11 = 0;
        if (objArr == null) {
            objArr = new Object[]{"(Object[])null"};
        } else {
            for (int i12 = 0; i12 < objArr.length; i12++) {
                objArr[i12] = d(objArr[i12]);
            }
        }
        StringBuilder sb2 = new StringBuilder(strValueOf.length() + (objArr.length * 16));
        int i13 = 0;
        while (i11 < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i13)) != -1) {
            sb2.append((CharSequence) strValueOf, i13, iIndexOf);
            sb2.append(objArr[i11]);
            i13 = iIndexOf + 2;
            i11++;
        }
        sb2.append((CharSequence) strValueOf, i13, strValueOf.length());
        if (i11 < objArr.length) {
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

    private static String d(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return obj.toString();
        } catch (Exception e11) {
            String str = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
            Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str, (Throwable) e11);
            return "<" + str + " threw " + e11.getClass().getName() + ">";
        }
    }

    public static String e(String str) {
        return l.d(str);
    }
}
