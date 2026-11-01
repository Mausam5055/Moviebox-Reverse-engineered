package com.bytedance.sdk.openadsdk.EjP.Sj;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.ib;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ implements com.bytedance.sdk.component.vS.Sj.sP.TKC {
    public RiZ<com.bytedance.sdk.openadsdk.EjP.Sj> Sj;
    private final TKC sP = TKC.Sj();

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj>> EjP(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        HashMap<String, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj>> map = new HashMap<>();
        new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 = list.get(i11);
            JSONObject jSONObjectJcg = sj2.Jcg();
            if (jSONObjectJcg != null) {
                String strOptString = jSONObjectJcg.optString("app_log_url");
                List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> arrayList = map.get(strOptString);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    map.put(strOptString, arrayList);
                }
                arrayList.add(sj2);
            }
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Sj(List<com.bytedance.sdk.openadsdk.EjP.Sj> list, com.bytedance.sdk.openadsdk.EjP.HiB hiB) {
        int i11;
        return !TKC(list) && (i11 = hiB.sP) >= 400 && i11 < 500;
    }

    private boolean TKC(List<com.bytedance.sdk.openadsdk.EjP.Sj> list) {
        JSONObject jSONObjectTKC;
        if (list == null || list.size() == 0 || (jSONObjectTKC = list.get(0).TKC()) == null) {
            return true;
        }
        return TextUtils.isEmpty(jSONObjectTKC.optString("app_log_url"));
    }

    public com.bytedance.sdk.openadsdk.EjP.HiB Sj(List<com.bytedance.sdk.openadsdk.EjP.Sj> list) {
        if (this.Sj == null) {
            this.Sj = dNu.TKC();
        }
        if (this.Sj == null) {
            return null;
        }
        int iGY = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().gY();
        if (3 == iGY) {
            return this.Sj.Sj(this.sP.Sj(this.sP.Sj(list, false), System.currentTimeMillis(), this.sP.sP(), true), this.sP.Sj(list), true);
        }
        if (2 != iGY) {
            return this.Sj.Sj(this.sP.Sj(list, System.currentTimeMillis(), this.sP.sP(), false), this.sP.Sj(list), false);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObjectSP = this.sP.sP();
        this.Sj.Sj(this.sP.Sj(this.sP.Sj(list, true), jCurrentTimeMillis, jSONObjectSP, true), this.sP.Sj(list), true);
        return this.Sj.Sj(this.sP.Sj(this.sP.sP(list), jCurrentTimeMillis, jSONObjectSP, false), this.sP.Sj(list), false);
    }

    @Override // com.bytedance.sdk.component.vS.Sj.sP.TKC
    public void Sj(final List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list, @Nullable final com.bytedance.sdk.component.vS.Sj.sP.sP sPVar) {
        com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2;
        if (list == null || list.isEmpty() || !dNu.EjP().zwV() || (sj2 = list.get(0)) == null) {
            return;
        }
        byte bEjP = sj2.EjP();
        final ArrayList arrayList = new ArrayList();
        if (bEjP == 0) {
            com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.1
                @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj3.sP("applog");
                    return sj3;
                }
            });
            JcM.Sj(new com.bytedance.sdk.component.Dq.TKC.sP(7, "upload_ad_event") { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.2
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it;
                    try {
                        it = TEQ.this.EjP(list).entrySet().iterator();
                    } catch (Throwable th2) {
                        sU.sP("OverSeaEventUploadImp", th2.getMessage());
                        it = null;
                    }
                    if (it == null) {
                        com.bytedance.sdk.component.vS.Sj.sP.sP sPVar2 = sPVar;
                        if (sPVar2 != null) {
                            sPVar2.Sj(arrayList);
                            return;
                        }
                        return;
                    }
                    while (it.hasNext()) {
                        try {
                            Sj.Sj(Sj.EjP);
                            List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list2 = (List) ((Map.Entry) it.next()).getValue();
                            ArrayList arrayList2 = new ArrayList();
                            for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj3 : list2) {
                                arrayList2.add(new com.bytedance.sdk.openadsdk.EjP.Sj(sj3.TKC(), sj3.Jcg()));
                            }
                            com.bytedance.sdk.openadsdk.EjP.HiB hiBSj = TEQ.this.Sj(arrayList2);
                            if (sPVar != null && hiBSj != null) {
                                boolean z10 = hiBSj.EjP;
                                if (TEQ.this.Sj(arrayList2, hiBSj)) {
                                    z10 = true;
                                }
                                arrayList.add(new com.bytedance.sdk.component.vS.Sj.sP.TKC.Sj(new com.bytedance.sdk.component.vS.Sj.sP.TKC.sP(hiBSj.Sj, hiBSj.sP, hiBSj.TKC, z10, ""), list2));
                                if (hiBSj.sP == 200) {
                                    Sj.Sj(Sj.EjP, true);
                                    com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.2.1
                                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                            sj4.sP("applog");
                                            return sj4;
                                        }
                                    });
                                } else if (z10) {
                                    Sj.Sj(Sj.EjP, false);
                                    com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.2.2
                                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                            sj4.sP("applog");
                                            return sj4;
                                        }
                                    });
                                } else {
                                    com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.2.3
                                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                            sj4.sP("applog");
                                            return sj4;
                                        }
                                    });
                                }
                            }
                            if (sPVar != null && hiBSj == null) {
                                com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.2.4
                                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                        sj4.sP("applog");
                                        return sj4;
                                    }
                                });
                            }
                        } catch (Throwable th3) {
                            sU.sP("OverSeaEventUploadImp", th3.getMessage());
                        }
                    }
                    com.bytedance.sdk.component.vS.Sj.sP.sP sPVar3 = sPVar;
                    if (sPVar3 != null) {
                        sPVar3.Sj(arrayList);
                    }
                }
            });
            return;
        }
        if (bEjP == 1) {
            final ArrayList arrayList2 = new ArrayList();
            for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj3 : list) {
                arrayList2.add(new com.bytedance.sdk.openadsdk.Zq.TKC.TKC.Sj(sj3.TKC(), sj3.Jcg()));
            }
            Sj.Sj(Sj.HiB);
            if (arrayList2.size() > 0) {
                com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.3
                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                        sj4.sP("stats");
                        return sj4;
                    }
                });
                JcM.Sj(new com.bytedance.sdk.component.Dq.TKC.sP(6, "upload_stats_event") { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.4
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.sdk.openadsdk.EjP.HiB hiBSP = TEQ.this.sP(arrayList2);
                        if (sPVar != null && hiBSP != null) {
                            arrayList.add(new com.bytedance.sdk.component.vS.Sj.sP.TKC.Sj(new com.bytedance.sdk.component.vS.Sj.sP.TKC.sP(hiBSP.Sj, hiBSP.sP, hiBSP.TKC, hiBSP.EjP, ""), list));
                            sPVar.Sj(arrayList);
                            if (hiBSP.sP == 200) {
                                Sj.Sj(Sj.HiB, true);
                                com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.4.1
                                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                        sj4.sP("stats");
                                        return sj4;
                                    }
                                });
                            } else if (hiBSP.EjP) {
                                Sj.Sj(Sj.HiB, false);
                                com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.4.2
                                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                        sj4.sP("stats");
                                        return sj4;
                                    }
                                });
                            } else {
                                com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.4.3
                                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                        sj4.sP("stats");
                                        return sj4;
                                    }
                                });
                            }
                        }
                        if (sPVar == null || hiBSP != null) {
                            return;
                        }
                        com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.TEQ.4.4
                            @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj4.sP("stats");
                                return sj4;
                            }
                        });
                    }
                });
            }
        }
    }

    public com.bytedance.sdk.openadsdk.EjP.HiB sP(List<com.bytedance.sdk.openadsdk.Zq.TKC.TKC.Sj> list) {
        if (this.Sj == null) {
            this.Sj = dNu.TKC();
        }
        if (list != null && list.size() != 0 && com.bytedance.sdk.openadsdk.core.settings.uA.Sj()) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                Iterator<com.bytedance.sdk.openadsdk.Zq.TKC.TKC.Sj> it = list.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().sP);
                }
                jSONObject.put("stats_list", jSONArray);
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j11 = jCurrentTimeMillis / 1000;
                jSONObject.put("ts", j11);
                jSONObject.put("ts_ms", jCurrentTimeMillis);
                String strEjP = com.bytedance.sdk.openadsdk.core.uA.sP().EjP();
                if (strEjP == null) {
                    strEjP = "";
                }
                StringBuilder sb2 = new StringBuilder(ib.Sj());
                sb2.append("-");
                sb2.append(jCurrentTimeMillis);
                jSONObject.put("req_sign", com.bytedance.sdk.component.utils.HiB.Sj(strEjP + j11 + BuildConfig.VERSION_NAME));
                jSONObject.put("req_uniq", com.bytedance.sdk.component.utils.HiB.Sj(sb2.toString()));
                return this.Sj.sP(jSONObject);
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
