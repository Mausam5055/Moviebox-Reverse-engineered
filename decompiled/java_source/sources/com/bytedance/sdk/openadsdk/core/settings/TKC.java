package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.LD;
import java.io.File;
import java.io.FileWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    private static final ConcurrentHashMap<String, sP> Sj = new ConcurrentHashMap<>();

    @NonNull
    public static sP Sj(String str) {
        sP sPVar = Sj.get(str);
        return sPVar == null ? sP(str) : sPVar;
    }

    private static sP Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new sP(jSONObject);
    }

    public static void Sj() {
        File fileSP = sP();
        if (fileSP.exists()) {
            fileSP.delete();
        }
    }

    public static void Sj(JSONArray jSONArray) throws Throwable {
        if (jSONArray == null) {
            return;
        }
        File fileSP = sP();
        File file = new File(fileSP.getParent(), fileSP.getName() + ".tmp");
        FileWriter fileWriter = null;
        try {
            try {
                if (file.exists()) {
                    file.delete();
                }
                FileWriter fileWriter2 = new FileWriter(file);
                try {
                    fileWriter2.write(jSONArray.toString());
                    file.renameTo(fileSP);
                    LD.Sj("tt_sdk_settings", dNu.Sj()).Sj("ad_slot_conf");
                    if (file.exists()) {
                        file.delete();
                    }
                    com.bytedance.sdk.openadsdk.utils.aa.Sj(fileWriter2);
                } catch (Exception e11) {
                    e = e11;
                    fileWriter = fileWriter2;
                    Log.e("SdkSettings.AdSlot", "saveAdSlotToLocal: ", e);
                    if (file.exists()) {
                        file.delete();
                    }
                    com.bytedance.sdk.openadsdk.utils.aa.Sj(fileWriter);
                } catch (Throwable th2) {
                    th = th2;
                    fileWriter = fileWriter2;
                    if (file.exists()) {
                        file.delete();
                    }
                    com.bytedance.sdk.openadsdk.utils.aa.Sj(fileWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e12) {
            e = e12;
        }
        HashMap<String, sP> mapSP = sP(jSONArray);
        if (mapSP.isEmpty()) {
            return;
        }
        for (Map.Entry<String, sP> entry : mapSP.entrySet()) {
            Sj.put(entry.getKey(), entry.getValue());
        }
    }

    public static void Sj(boolean z10) {
        File fileSP = sP();
        if (fileSP.exists()) {
            try {
                HashMap<String, sP> mapSP = sP(new JSONArray(new String(com.bytedance.sdk.component.utils.Jcg.EjP(fileSP))));
                if (mapSP.isEmpty()) {
                    return;
                }
                for (Map.Entry<String, sP> entry : mapSP.entrySet()) {
                    Sj.put(entry.getKey(), entry.getValue());
                }
                return;
            } catch (Exception unused) {
                return;
            }
        }
        String strSP = com.bytedance.sdk.openadsdk.multipro.sP.TKC() ? com.bytedance.sdk.openadsdk.multipro.EjP.Sj.sP("tt_sdk_settings", "ad_slot_conf", null) : LD.Sj("tt_sdk_settings", dNu.Sj()).Sj("ad_slot_conf", (String) null);
        if (TextUtils.isEmpty(strSP)) {
            return;
        }
        try {
            HashMap<String, sP> mapSP2 = sP(new JSONArray(strSP));
            if (mapSP2.isEmpty()) {
                return;
            }
            ConcurrentHashMap<String, sP> concurrentHashMap = Sj;
            concurrentHashMap.clear();
            concurrentHashMap.putAll(mapSP2);
        } catch (Exception unused2) {
        }
    }

    private static sP sP(String str) {
        return new sP(str, 1);
    }

    @NonNull
    private static File sP() {
        return new File(dNu.Sj().getFilesDir(), "tt_ads_conf_sr");
    }

    @NonNull
    private static HashMap<String, sP> sP(JSONArray jSONArray) {
        HashMap<String, sP> map = new HashMap<>();
        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
            try {
                sP sPVarSj = Sj(jSONArray.getJSONObject(i11));
                if (sPVarSj != null) {
                    map.put(sPVarSj.Sj, sPVarSj);
                }
            } catch (Exception unused) {
            }
        }
        return map;
    }
}
