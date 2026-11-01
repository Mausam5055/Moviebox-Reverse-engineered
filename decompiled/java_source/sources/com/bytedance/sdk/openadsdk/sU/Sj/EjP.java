package com.bytedance.sdk.openadsdk.sU.Sj;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.aa.vS;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {
    private static volatile EjP sP;
    private final Handler Sj;
    private int TKC = 0;
    private int EjP = 2;
    private int HiB = TimeConstants.HOUR;
    private final ArrayList<sP> vS = new ArrayList<>();

    private EjP() {
        JcM.sP(new Dq("pag_pre_render_init") { // from class: com.bytedance.sdk.openadsdk.sU.Sj.EjP.1
            @Override // java.lang.Runnable
            public void run() {
                EjP.this.TKC = com.bytedance.sdk.openadsdk.dx.Sj.Sj("plb_pre_render_enable", 0);
                EjP.this.EjP = com.bytedance.sdk.openadsdk.dx.Sj.Sj("plb_pre_render_max_count", 2);
                if (EjP.this.EjP <= 0 || EjP.this.EjP > 4) {
                    EjP.this.EjP = 2;
                }
                EjP.this.HiB = com.bytedance.sdk.openadsdk.dx.Sj.Sj("plb_pre_render_alive_time", TimeConstants.HOUR);
                if (EjP.this.HiB <= 0 || EjP.this.HiB > 3600000) {
                    EjP.this.HiB = TimeConstants.HOUR;
                }
            }
        });
        this.Sj = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.EjP.2
            @Override // android.os.Handler.Callback
            public boolean handleMessage(@NonNull Message message) {
                if (!(message.obj instanceof sP)) {
                    return false;
                }
                EjP.this.vS.remove(message.obj);
                ((sP) message.obj).EjP();
                return true;
            }
        });
    }

    public static EjP Sj() {
        if (sP == null) {
            synchronized (EjP.class) {
                try {
                    if (sP == null) {
                        sP = new EjP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    public sP Sj(@NonNull sU sUVar, FrameLayout frameLayout, vS vSVar) {
        sP sPVar;
        if (sP() && sUVar.xD() != null && !TextUtils.isEmpty(sUVar.xD().getBidAdm()) && uP.vS(sUVar) && frameLayout != null) {
            String strCKW = sUVar.cKW();
            if (TextUtils.isEmpty(strCKW)) {
                return null;
            }
            int i11 = 0;
            while (true) {
                if (i11 >= this.vS.size()) {
                    i11 = -1;
                    sPVar = null;
                    break;
                }
                sPVar = this.vS.get(i11);
                if (strCKW.equals(sPVar.Dq())) {
                    break;
                }
                i11++;
            }
            if (sPVar != null) {
                this.Sj.removeMessages(strCKW.hashCode());
                this.vS.remove(i11);
                this.vS.size();
                sUVar.TEQ(true);
                sPVar.Sj(frameLayout, vSVar);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, Mts.TKC(sUVar.xD().getDurationSlotType()), "PL_use_pre_render", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.EjP.4
                    @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                    public JSONObject Sj() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("is_pre_render", 1);
                        } catch (JSONException unused) {
                        }
                        return jSONObject;
                    }
                });
                return sPVar;
            }
        }
        return null;
    }

    public void Sj(@Nullable final sU sUVar) {
        if (sP() && sUVar != null && uP.vS(sUVar)) {
            final String strCKW = sUVar.cKW();
            if (TextUtils.isEmpty(strCKW)) {
                return;
            }
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.EjP.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (EjP.this.vS.size() >= EjP.this.EjP) {
                            EjP.this.vS.size();
                            sP sPVar = (sP) EjP.this.vS.remove(0);
                            if (sPVar != null) {
                                EjP.this.Sj.removeMessages(sPVar.Dq().hashCode());
                                sPVar.EjP();
                            }
                        }
                        sUVar.TEQ(true);
                        Context contextSj = dNu.Sj();
                        sU sUVar2 = sUVar;
                        final sP sPVar2 = new sP(contextSj, sUVar2, sUVar2.liH(), true, new FrameLayout(dNu.Sj()), strCKW);
                        EjP.this.vS.add(sPVar2);
                        sPVar2.Jcg();
                        Message messageObtain = Message.obtain();
                        messageObtain.what = strCKW.hashCode();
                        messageObtain.obj = sPVar2;
                        EjP.this.Sj.sendMessageDelayed(messageObtain, EjP.this.HiB);
                        sPVar2.Sj(new Sj.InterfaceC0288Sj() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.EjP.3.1
                            @Override // com.bytedance.sdk.openadsdk.sU.Sj.Sj.InterfaceC0288Sj
                            public void Sj() {
                                EjP.this.Sj.removeMessages(strCKW.hashCode());
                                EjP.this.vS.remove(sPVar2);
                                sPVar2.EjP();
                            }
                        });
                        sU sUVar3 = sUVar;
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar3, Mts.TKC(sUVar3.xD().getDurationSlotType()), "PL_start_pre_render", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.EjP.3.2
                            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                            public JSONObject Sj() {
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.put("is_pre_render", 1);
                                } catch (JSONException unused) {
                                }
                                return jSONObject;
                            }
                        });
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
            });
        }
    }

    public boolean sP() {
        return this.TKC == 1;
    }
}
