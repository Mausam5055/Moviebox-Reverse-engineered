package com.bytedance.sdk.component.Jcg.sP;

import android.text.TextUtils;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TKC {
    String HiB;
    protected Ym TKC;
    int vS;
    protected String EjP = null;
    protected final Map<String, String> Jcg = new HashMap();
    protected String Dq = null;
    protected boolean uA = false;

    public TKC(Ym ym2) {
        this.TKC = ym2;
        try {
            TKC(UUID.randomUUID().toString());
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public String EjP() {
        return this.Dq;
    }

    public void EjP(Map<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.Jcg.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public void Sj(int i11) {
        this.vS = i11;
    }

    protected void Sj(Fmk.Sj sj2) {
        if (sj2 != null && this.Jcg.size() > 0) {
            for (Map.Entry<String, String> entry : this.Jcg.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key)) {
                    String value = entry.getValue();
                    if (value == null) {
                        value = "";
                    }
                    sj2.sP(key, value);
                }
            }
        }
    }

    public void Sj(String str) {
        this.HiB = str;
    }

    public String TKC() {
        return this.EjP;
    }

    public void TKC(String str) {
        this.EjP = str;
    }

    public void sP() {
        Ym ym2;
        if (this.EjP == null || (ym2 = this.TKC) == null) {
            return;
        }
        com.bytedance.sdk.component.sP.Sj.EjP ejPSj = ym2.Sj();
        synchronized (ejPSj) {
            try {
                for (com.bytedance.sdk.component.sP.Sj.sP sPVar : ejPSj.TKC()) {
                    if (this.EjP.equals(sPVar.Sj().Sj())) {
                        sPVar.TKC();
                    }
                }
                for (com.bytedance.sdk.component.sP.Sj.sP sPVar2 : ejPSj.EjP()) {
                    if (this.EjP.equals(sPVar2.Sj().Sj())) {
                        sPVar2.TKC();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void sP(String str) {
        this.Dq = str;
    }

    public void sP(String str, String str2) {
        this.Jcg.put(str, str2);
    }
}
