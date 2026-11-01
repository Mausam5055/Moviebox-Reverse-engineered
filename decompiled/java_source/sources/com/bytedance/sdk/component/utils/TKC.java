package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.content.pm.Signature;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {
    private static HashMap<String, ArrayList<String>> Sj = new HashMap<>();

    public static String Sj(Context context) {
        StringBuilder sb2 = new StringBuilder();
        ArrayList<String> arrayListSj = Sj(context, "SHA1");
        if (arrayListSj != null && arrayListSj.size() != 0) {
            for (int i11 = 0; i11 < arrayListSj.size(); i11++) {
                sb2.append(arrayListSj.get(i11));
                if (i11 < arrayListSj.size() - 1) {
                    sb2.append(",");
                }
            }
        }
        return sb2.toString();
    }

    private static String Sj(Signature signature, String str) {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest == null) {
                return "error!";
            }
            byte[] bArrDigest = messageDigest.digest(byteArray);
            StringBuilder sb2 = new StringBuilder();
            for (byte b11 : bArrDigest) {
                sb2.append(Integer.toHexString((b11 & 255) | 256).substring(1, 3).toUpperCase());
                sb2.append(":");
            }
            return sb2.substring(0, sb2.length() - 1).toString();
        } catch (Exception unused) {
            return "error!";
        }
    }

    public static ArrayList<String> Sj(Context context, String str) {
        ArrayList<String> arrayList = null;
        if (context != null && str != null) {
            String packageName = context.getPackageName();
            if (packageName == null) {
                return null;
            }
            if (Sj.get(str) != null) {
                return Sj.get(str);
            }
            arrayList = new ArrayList<>();
            try {
                for (Signature signature : sP(context, packageName)) {
                    String strSj = "error!";
                    if ("MD5".equals(str)) {
                        strSj = Sj(signature, "MD5");
                    } else if ("SHA1".equals(str)) {
                        strSj = Sj(signature, "SHA1");
                    } else if ("SHA256".equals(str)) {
                        strSj = Sj(signature, "SHA256");
                    }
                    arrayList.add(strSj);
                }
            } catch (Exception unused) {
            }
            Sj.put(str, arrayList);
        }
        return arrayList;
    }

    private static Signature[] sP(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (Exception unused) {
            return null;
        }
    }
}
