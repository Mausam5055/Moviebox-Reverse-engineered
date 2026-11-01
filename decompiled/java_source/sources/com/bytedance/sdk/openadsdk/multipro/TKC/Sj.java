package com.bytedance.sdk.openadsdk.multipro.TKC;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.vS.Sj.vS;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.multipro.EjP;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class Sj implements com.bytedance.sdk.openadsdk.multipro.Sj {
    private static vS EjP() {
        try {
            if (dNu.Sj() != null) {
                return com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(dNu.Sj());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String HiB() {
        return EjP.sP + "/t_frequent/";
    }

    public static boolean Sj(String str) {
        if (dNu.Sj() == null) {
            return false;
        }
        try {
            vS vSVarEjP = EjP();
            if (vSVarEjP != null) {
                return "true".equals(vSVarEjP.Sj(Uri.parse(HiB() + "checkFrequency?rit=" + str)));
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String TKC() {
        if (dNu.Sj() == null) {
            return null;
        }
        try {
            vS vSVarEjP = EjP();
            if (vSVarEjP != null) {
                return vSVarEjP.Sj(Uri.parse(HiB() + "maxRit"));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static boolean sP() {
        if (dNu.Sj() == null) {
            return false;
        }
        try {
            vS vSVarEjP = EjP();
            if (vSVarEjP != null) {
                return "true".equals(vSVarEjP.Sj(Uri.parse(HiB() + "isSilent")));
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public int Sj(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public int Sj(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public Cursor Sj(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public Uri Sj(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    @NonNull
    public String Sj() {
        return "t_frequent";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public String Sj(@NonNull Uri uri) {
        Objects.toString(uri);
        String str = uri.getPath().split("/")[2];
        if ("checkFrequency".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.Jcg.Sj.Sj().Sj(uri.getQueryParameter("rit")) ? "true" : "false";
        }
        if ("isSilent".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.Jcg.Sj.Sj().sP() ? "true" : "false";
        }
        if ("maxRit".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.Jcg.Sj.Sj().TKC();
        }
        return null;
    }
}
