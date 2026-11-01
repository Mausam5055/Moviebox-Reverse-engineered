package com.bytedance.sdk.component.vS.Sj.sP.sP;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.bytedance.sdk.component.vS.Sj.Sj.Sj.Jcg;
import com.bytedance.sdk.component.vS.Sj.Sj.Sj.vS;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private static String EjP() {
        return Jcg.sP + "/ad_log_event/";
    }

    public static void Sj() {
        if (Dq.Jcg().vS() == null) {
            return;
        }
        try {
            ContentResolver contentResolverTKC = TKC();
            if (contentResolverTKC != null) {
                contentResolverTKC.getType(Uri.parse(EjP() + "adLogStart"));
            }
        } catch (Throwable unused) {
        }
    }

    public static void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2) {
        if (sj2 == null) {
            return;
        }
        try {
            ContentResolver contentResolverTKC = TKC();
            if (contentResolverTKC != null) {
                contentResolverTKC.getType(Uri.parse(EjP() + "adLogDispatch?event=" + vS.Sj(sj2.vS())));
            }
        } catch (Throwable th2) {
            th2.toString();
        }
    }

    public static void Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver contentResolverTKC = TKC();
            if (contentResolverTKC != null) {
                contentResolverTKC.getType(Uri.parse(EjP() + "trackAdFailed?did=" + String.valueOf(str)));
            }
        } catch (Throwable unused) {
        }
    }

    public static void Sj(String str, List<String> list, boolean z10) {
        if (TextUtils.isEmpty(str) || list == null || list.isEmpty()) {
            return;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb2.append(vS.Sj(it.next()));
                sb2.append(",");
            }
            String str2 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(vS.Sj(sb2.toString())) + "&replace=" + String.valueOf(z10);
            ContentResolver contentResolverTKC = TKC();
            if (contentResolverTKC != null) {
                contentResolverTKC.getType(Uri.parse(EjP() + "trackAdUrl" + str2));
            }
        } catch (Throwable unused) {
        }
    }

    private static ContentResolver TKC() {
        try {
            if (Dq.Jcg().vS() != null) {
                return Dq.Jcg().vS().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void sP() {
        if (Dq.Jcg().vS() == null) {
            return;
        }
        try {
            ContentResolver contentResolverTKC = TKC();
            if (contentResolverTKC != null) {
                contentResolverTKC.getType(Uri.parse(EjP() + "adLogStop"));
            }
        } catch (Throwable unused) {
        }
    }
}
