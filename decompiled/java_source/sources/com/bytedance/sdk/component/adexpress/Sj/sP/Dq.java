package com.bytedance.sdk.component.adexpress.Sj.sP;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Dq {
    private static com.bytedance.sdk.component.adexpress.Sj.TKC.Sj Sj;

    public static void EjP() {
        TKC.sP(HiB.Dq(), sP(), "temp_pkg_info.json");
        Sj = null;
    }

    public static void Sj() {
        FileInputStream fileInputStream = null;
        try {
            File file = new File(HiB.Dq(), "temp_pkg_info.json");
            long length = file.length();
            Long lValueOf = Long.valueOf(length);
            if (length > 0 && file.exists() && file.isFile()) {
                byte[] bArr = new byte[lValueOf.intValue()];
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    fileInputStream2.read(bArr);
                    com.bytedance.sdk.component.adexpress.Sj.TKC.Sj Sj2 = com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.Sj(new JSONObject(new String(bArr, "utf-8")));
                    if (Sj2 != null) {
                        Sj = Sj2;
                        Sj.TKC();
                    }
                    fileInputStream = fileInputStream2;
                } catch (Throwable unused) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                            return;
                        } catch (IOException unused2) {
                            return;
                        }
                    }
                    return;
                }
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException unused3) {
                }
            }
        } catch (Throwable unused4) {
        }
    }

    public static synchronized void Sj(com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2) {
        if (sj2 != null) {
            if (sj2.Dq()) {
                Sj = sj2;
            }
        }
    }

    public static boolean Sj(String str) {
        return TKC.Sj(sP(), str);
    }

    public static void TKC() {
        TKC.Sj(HiB.Dq(), sP(), "temp_pkg_info.json");
    }

    public static synchronized com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sP() {
        return Sj;
    }

    public static boolean sP(com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2) {
        return TKC.TKC(sP(), sj2);
    }
}
