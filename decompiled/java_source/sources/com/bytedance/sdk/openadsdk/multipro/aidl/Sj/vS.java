package com.bytedance.sdk.openadsdk.multipro.aidl.Sj;

import android.content.ContentValues;
import android.net.Uri;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.settings.uA;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class vS extends com.bytedance.sdk.component.vS.Sj.vS.Sj {
    private static volatile vS Sj;

    public static vS sP() {
        if (Sj == null) {
            synchronized (vS.class) {
                try {
                    if (Sj == null) {
                        Sj = new vS();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS
    public int Sj(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (uA.Sj()) {
            return com.bytedance.sdk.openadsdk.multipro.HiB.Sj(dNu.Sj()).Sj(uri, contentValues, str, strArr);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS
    public int Sj(Uri uri, String str, String[] strArr) {
        if (uA.Sj()) {
            return com.bytedance.sdk.openadsdk.multipro.HiB.Sj(dNu.Sj()).Sj(uri, str, strArr);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS
    public String Sj(Uri uri) {
        if (uA.Sj()) {
            return com.bytedance.sdk.openadsdk.multipro.HiB.Sj(dNu.Sj()).Sj(uri);
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS
    public String Sj(Uri uri, ContentValues contentValues) {
        Uri uriSj;
        if (uA.Sj() && (uriSj = com.bytedance.sdk.openadsdk.multipro.HiB.Sj(dNu.Sj()).Sj(uri, contentValues)) != null) {
            return uriSj.toString();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS
    public Map Sj(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (!uA.Sj()) {
            return null;
        }
        try {
            return com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(com.bytedance.sdk.openadsdk.multipro.HiB.Sj(dNu.Sj()).Sj(uri, strArr, str, strArr2, str2));
        } catch (Throwable unused) {
            return null;
        }
    }
}
