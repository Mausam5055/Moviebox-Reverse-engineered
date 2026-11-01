package com.bytedance.sdk.openadsdk.core.TEQ.Sj;

import android.text.TextUtils;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.google.android.gms.common.internal.ImagesContract;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    private static volatile sP Sj;

    public interface Sj {
        void Sj(int i11, String str, String str2);

        void Sj(JSONObject jSONObject, String str);
    }

    private com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj Sj(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return TKC.Sj().Sj(str, str2);
    }

    public static sP Sj() {
        if (Sj == null) {
            synchronized (sP.class) {
                try {
                    if (Sj == null) {
                        Sj = new sP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    private void Sj(final com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj sj2) {
        sj2.Sj(Long.valueOf(System.currentTimeMillis()));
        JcM.Sj(new Dq("updateTmplTime") { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.4
            @Override // java.lang.Runnable
            public void run() {
                TKC.Sj().Sj(sj2);
            }
        }, 10);
    }

    private void Sj(final String str, final String str2, final String str3, final String str4, final Sj sj2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            if (sj2 != null) {
                sj2.Sj(1, "template url or id  or md5 is empty", "net");
            }
        } else {
            com.bytedance.sdk.component.Jcg.sP.sP sPVarTKC = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().TKC();
            sPVarTKC.sP(str);
            sPVarTKC.Sj(7);
            sPVarTKC.Sj("load_ug_t");
            sPVarTKC.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.3
                @Override // com.bytedance.sdk.component.Jcg.Sj.Sj
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                    if (sPVar == null) {
                        return;
                    }
                    if (!sPVar.vS()) {
                        Sj sj3 = sj2;
                        if (sj3 != null) {
                            sj3.Sj(3, "net code error code is " + sPVar.Sj() + " message is " + sPVar.sP(), "net");
                            return;
                        }
                        return;
                    }
                    String strEjP = sPVar.EjP();
                    if (TextUtils.isEmpty(strEjP)) {
                        Sj sj4 = sj2;
                        if (sj4 != null) {
                            sj4.Sj(3, "net data is null", "net");
                            return;
                        }
                        return;
                    }
                    TKC.Sj().Sj(new com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj().Sj(str2).sP(str3).TKC(str).HiB(str4).EjP(strEjP).Sj(Long.valueOf(System.currentTimeMillis())));
                    sP.this.sP();
                    if (sj2 != null) {
                        try {
                            sj2.Sj(new JSONObject(strEjP), "net");
                        } catch (JSONException unused) {
                            sj2.Sj(2, "parse json exception data is".concat(String.valueOf(strEjP)), "net");
                        }
                    }
                }

                @Override // com.bytedance.sdk.component.Jcg.Sj.Sj
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                    Sj sj3 = sj2;
                    if (sj3 != null) {
                        sj3.Sj(3, "net error " + iOException.getMessage(), "net");
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(String str, String str2, String str3, String str4, String str5) {
        if (Sj(str, str3) != null) {
            if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
                return;
            }
            sP(str2, str3, str5, str4, str);
            return;
        }
        if (TextUtils.isEmpty(str4)) {
            Sj(str2, str, str3, str5, (Sj) null);
        } else {
            sP(str2, str3, str5, str4, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP() {
        int iEjP = dNu.EjP().EjP();
        if (iEjP <= 0) {
            iEjP = 100;
        }
        List<com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj> listSP = TKC.Sj().sP();
        if (listSP == null || listSP.isEmpty() || iEjP >= listSP.size()) {
            if (listSP == null) {
                return;
            }
            listSP.size();
            return;
        }
        int size = (int) (listSP.size() - (iEjP * 0.75f));
        if (size <= 0) {
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj sj2 : listSP) {
            treeMap.put(sj2.EjP(), sj2);
        }
        HashSet hashSet = new HashSet();
        int i11 = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i11 < size) {
                i11++;
                com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj sj3 = (com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj) entry.getValue();
                if (sj3 != null) {
                    hashSet.add(sj3.Sj());
                }
            }
        }
        Sj(hashSet);
    }

    private void sP(String str, String str2, String str3, String str4, String str5) {
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj sj2 = new com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj();
        sj2.TKC(str).HiB(str3).EjP(str4).sP(str2).Sj(str5).Sj(Long.valueOf(System.currentTimeMillis()));
        TKC.Sj().Sj(sj2);
        sP();
    }

    public String Sj(String str, String str2, String str3) {
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj Sj2 = Sj(str + "_" + str2, str3);
        if (Sj2 == null) {
            return null;
        }
        Sj(Sj2);
        return Sj2.HiB();
    }

    public Set<com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj> Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return TKC.Sj().Sj(str);
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sj2, String str) {
        if (sj2 == null || TextUtils.isEmpty(sj2.Sj())) {
            return;
        }
        final String str2 = str + "_" + sj2.Sj();
        final String strTKC = sj2.TKC();
        final String strSP = sj2.sP();
        final String strEjP = sj2.EjP();
        String strHiB = sj2.HiB();
        if (TextUtils.isEmpty(strHiB)) {
            if (str.equals(CommonLogUtil.TAG_AD)) {
                strHiB = uA.sP().EjP();
            } else if (str.equals("adv3")) {
                strHiB = uA.sP().EjP() + "_v3";
            }
        }
        final String str3 = strHiB;
        JcM.Sj(new Dq("saveUGenTemplate") { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.1
            @Override // java.lang.Runnable
            public void run() {
                sP.this.Sj(str2, strTKC, strSP, strEjP, str3);
            }
        }, 10);
    }

    public void Sj(String str, String str2, String str3, String str4, String str5, final Sj sj2) {
        if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
            if (sj2 != null) {
                sj2.Sj(1, "id  or md5 is empty", "net");
                return;
            }
            return;
        }
        String str6 = str + "_" + str3;
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj Sj2 = Sj(str6, str4);
        if (Sj2 == null || TextUtils.isEmpty(Sj2.HiB())) {
            Sj(str2, str6, str4, str5, new Sj() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.2
                @Override // com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj
                public void Sj(int i11, String str7, String str8) {
                    Sj sj3 = sj2;
                    if (sj3 != null) {
                        sj3.Sj(i11, str7, str8);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj
                public void Sj(JSONObject jSONObject, String str7) {
                    Sj sj3 = sj2;
                    if (sj3 != null) {
                        sj3.Sj(jSONObject, str7);
                    }
                }
            });
            return;
        }
        Sj(Sj2);
        if (sj2 != null) {
            try {
                sj2.Sj(new JSONObject(Sj2.HiB()), ImagesContract.LOCAL);
            } catch (JSONException unused) {
                sj2.Sj(2, "parse json exception data is " + Sj2.HiB(), ImagesContract.LOCAL);
            }
        }
    }

    public void Sj(Set<String> set) {
        try {
            TKC.Sj().Sj(set);
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }
}
