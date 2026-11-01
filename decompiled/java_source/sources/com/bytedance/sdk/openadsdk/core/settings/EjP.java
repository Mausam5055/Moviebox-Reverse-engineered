package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import androidx.annotation.Keep;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {
    private static volatile int EjP = 0;
    private static volatile String Sj = "";
    private static String TKC = null;
    private static volatile String sP = "";

    public static String EjP() {
        if (TextUtils.isEmpty(TKC)) {
            TKC = dNu.Sj().getPackageManager().getInstallerPackageName(Mts.HiB());
        }
        if (TKC == null) {
            TKC = "";
        }
        return TKC;
    }

    public static void Sj() {
        try {
            AppSet.getClient(dNu.Sj()).getAppSetIdInfo().addOnSuccessListener(new OnSuccessListener<AppSetIdInfo>() { // from class: com.bytedance.sdk.openadsdk.core.settings.AppSetIdAndScope$1
                @Override // com.google.android.gms.tasks.OnSuccessListener
                @Keep
                public void onSuccess(AppSetIdInfo appSetIdInfo) {
                    String unused = EjP.Sj = Integer.toString(appSetIdInfo.getScope());
                    String unused2 = EjP.sP = appSetIdInfo.getId();
                    int unused3 = EjP.EjP = 1;
                }
            });
        } catch (Throwable unused) {
            EjP = 2;
        }
    }

    public static String TKC() {
        if (EjP != 0) {
            return sP;
        }
        Sj();
        return sP;
    }

    public static String sP() {
        if (EjP != 0) {
            return Sj;
        }
        Sj();
        return Sj;
    }
}
