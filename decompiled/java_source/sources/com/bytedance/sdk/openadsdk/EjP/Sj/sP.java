package com.bytedance.sdk.openadsdk.EjP.Sj;

import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    public int EjP;
    public AtomicInteger Sj = new AtomicInteger(0);
    public AtomicInteger sP = new AtomicInteger(0);
    public AtomicLong TKC = new AtomicLong(0);
    public AtomicInteger HiB = new AtomicInteger(0);
    public Map<Integer, Integer> vS = new HashMap();
    public AtomicBoolean Jcg = new AtomicBoolean(false);

    public sP(int i11) {
        this.EjP = i11;
    }

    JSONObject Sj() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, this.Sj.get());
            jSONObject.put("fail", this.sP.get());
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, this.EjP);
            jSONObject.put("duration", this.TKC.get() / ((long) this.Sj.get()));
            JSONObject jSONObject2 = new JSONObject();
            if (this.vS.size() > 0) {
                for (Map.Entry<Integer, Integer> entry : this.vS.entrySet()) {
                    jSONObject2.put(String.valueOf(entry.getKey()), entry.getValue());
                }
            }
            jSONObject.put("fail_error_code", jSONObject2);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    JSONObject sP() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, this.Sj.get());
            jSONObject.put("fail", this.sP.get());
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, this.EjP);
            jSONObject.put(EventConstants.KEY_TIME, this.HiB.get());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }
}
