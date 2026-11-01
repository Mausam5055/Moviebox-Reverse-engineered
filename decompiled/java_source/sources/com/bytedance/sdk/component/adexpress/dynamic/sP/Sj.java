package com.bytedance.sdk.component.adexpress.dynamic.sP;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static int Sj(Jcg jcg) {
        if (jcg == null) {
            return 0;
        }
        String strWjd = jcg.Wjd();
        String strKF = jcg.kF();
        if (TextUtils.isEmpty(strKF) || TextUtils.isEmpty(strWjd) || !strKF.equals("creative")) {
            return 0;
        }
        if (strWjd.equals("shake")) {
            return 2;
        }
        if (strWjd.equals("twist")) {
            return 3;
        }
        return strWjd.equals("slide") ? 1 : 0;
    }
}
