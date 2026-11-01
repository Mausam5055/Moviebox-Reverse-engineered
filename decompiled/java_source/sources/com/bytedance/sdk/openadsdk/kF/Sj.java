package com.bytedance.sdk.openadsdk.kF;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private static int Sj(int i11) {
        int i12 = 2;
        if (i11 != 2) {
            i12 = 3;
            if (i11 != 3) {
                i12 = 4;
                if (i11 != 4) {
                    i12 = 5;
                    if (i11 != 5 && i11 != 15) {
                        return -1;
                    }
                }
            }
        }
        return i12;
    }

    private static String Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return str.replace("[ss_random]", String.valueOf(new SecureRandom().nextLong())).replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
        } catch (Exception e11) {
            sU.sP("TrackAdUrlUtils", e11.getMessage());
            return str;
        }
    }

    public static List<String> Sj(List<String> list, boolean z10) {
        String strSj = aa.Sj(dNu.Sj());
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.contains("{TS}") || next.contains("__TS__")) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                next = next.replace("{TS}", String.valueOf(jCurrentTimeMillis)).replace("__TS__", String.valueOf(jCurrentTimeMillis));
            }
            if ((next.contains("{UID}") || next.contains("__UID__")) && !TextUtils.isEmpty(strSj)) {
                next = next.replace("{UID}", strSj).replace("__UID__", strSj);
            }
            if (z10) {
                next = Sj(next);
            }
            arrayList.add(next);
        }
        return arrayList;
    }

    public static List<String> Sj(List<String> list, boolean z10, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        String strSj = aa.Sj(dNu.Sj());
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.contains("{TS}") || next.contains("__TS__")) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                next = next.replace("{TS}", String.valueOf(jCurrentTimeMillis)).replace("__TS__", String.valueOf(jCurrentTimeMillis));
            }
            if ((next.contains("{UID}") || next.contains("__UID__")) && !TextUtils.isEmpty(strSj)) {
                next = next.replace("{UID}", strSj).replace("__UID__", strSj);
            }
            if (next.contains("__CID__") && sUVar != null && !TextUtils.isEmpty(sUVar.aZ())) {
                next = next.replace("__CID__", sUVar.aZ());
            }
            if (next.contains("__CTYPE__") && sUVar != null) {
                next = next.replace("__CTYPE__", String.valueOf(Sj(sUVar.HcZ())));
            }
            if (next.contains("__GAID__")) {
                next = next.replace("__GAID__", com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
            }
            if (next.contains("__OS__")) {
                next = next.replace("__OS__", "0");
            }
            if (next.contains("__UA1__")) {
                next = next.replace("__UA1__", URLEncoder.encode(Mts.TKC()));
            }
            if (z10) {
                next = Sj(next);
            }
            arrayList.add(next);
        }
        return arrayList;
    }
}
