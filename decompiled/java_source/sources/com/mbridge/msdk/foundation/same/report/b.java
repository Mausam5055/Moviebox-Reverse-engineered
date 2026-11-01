package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f35520a = "DomainReport";

    public static boolean a(com.mbridge.msdk.setting.g gVar, String str) {
        if (gVar == null) {
            return true;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            int iK = gVar.K();
            JSONArray jSONArrayI = gVar.I();
            JSONArray jSONArrayH = gVar.H();
            if (jSONArrayH != null) {
                for (int i11 = 0; i11 < jSONArrayH.length(); i11++) {
                    if (str.contains(jSONArrayH.getString(i11))) {
                        return false;
                    }
                }
            }
            if (iK != 2) {
                return true;
            }
            if (jSONArrayI != null) {
                for (int i12 = 0; i12 < jSONArrayI.length(); i12++) {
                    if (str.contains(jSONArrayI.getString(i12))) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e11) {
            o0.b(f35520a, e11.getMessage());
            return true;
        }
    }
}
