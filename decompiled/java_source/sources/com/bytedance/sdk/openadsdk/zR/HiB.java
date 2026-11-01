package com.bytedance.sdk.openadsdk.zR;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class HiB implements EjP {
    Handler Sj = null;
    private EjP sP;

    HiB(EjP ejP) {
        this.sP = ejP;
    }

    private Context Dq() {
        try {
            Method method = Class.forName(ProcessUtils.ACTIVITY_THREAD).getMethod(ProcessUtils.CURRENT_ACTIVITY_THREAD, null);
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, null);
            return (Application) objInvoke.getClass().getMethod("getApplication", null).invoke(objInvoke, null);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.zR.EjP
    public Handler EjP() {
        EjP ejP = this.sP;
        if (ejP != null && ejP.Jcg() != null) {
            return this.sP.EjP();
        }
        Handler handler = new Handler(Sj("pag_strategy", -1).getLooper());
        this.Sj = handler;
        return handler;
    }

    @Override // com.bytedance.sdk.openadsdk.zR.EjP
    public String HiB() {
        EjP ejP = this.sP;
        if (ejP != null) {
            return ejP.HiB();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.zR.EjP
    public Map<String, String> Jcg() {
        EjP ejP = this.sP;
        return (ejP == null || ejP.Jcg() == null) ? new HashMap() : this.sP.Jcg();
    }

    @Override // com.bytedance.sdk.openadsdk.zR.EjP
    public HandlerThread Sj(String str, int i11) {
        HandlerThread handlerThreadSj;
        EjP ejP = this.sP;
        if (ejP != null && (handlerThreadSj = ejP.Sj(str, i11)) != null) {
            return handlerThreadSj;
        }
        HandlerThread handlerThread = new HandlerThread("pag_strategy", -1);
        handlerThread.start();
        return handlerThread;
    }

    @Override // com.bytedance.sdk.openadsdk.zR.EjP
    public ExecutorService Sj() {
        EjP ejP = this.sP;
        return (ejP == null || ejP.Sj() == null) ? Executors.newCachedThreadPool() : this.sP.Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.zR.EjP
    public JSONObject Sj(JSONObject jSONObject) {
        EjP ejP = this.sP;
        return ejP != null ? ejP.Sj(jSONObject) : jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.zR.EjP
    public String TKC() {
        EjP ejP = this.sP;
        return (ejP == null || TextUtils.isEmpty(ejP.TKC())) ? "null" : this.sP.TKC();
    }

    @Override // com.bytedance.sdk.openadsdk.zR.EjP
    public Context sP() {
        EjP ejP = this.sP;
        return (ejP == null || ejP.sP() == null) ? Dq() : this.sP.sP();
    }

    @Override // com.bytedance.sdk.openadsdk.zR.EjP
    public JSONObject vS() {
        EjP ejP = this.sP;
        if (ejP != null) {
            return ejP.vS();
        }
        return null;
    }
}
