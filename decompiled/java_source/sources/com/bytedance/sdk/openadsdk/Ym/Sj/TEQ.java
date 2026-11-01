package com.bytedance.sdk.openadsdk.Ym.Sj;

import com.bytedance.sdk.component.Sj.dNu;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ extends com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.component.uA.vS> Sj;

    public TEQ(com.bytedance.sdk.component.uA.vS vSVar) {
        this.Sj = new WeakReference<>(vSVar);
    }

    public static void Sj(dNu dnu, com.bytedance.sdk.component.uA.vS vSVar) {
        dnu.Sj("preventTouchEvent", new TEQ(vSVar));
    }

    @Override // com.bytedance.sdk.component.Sj.HiB
    public JSONObject Sj(JSONObject jSONObject, com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        try {
            boolean zOptBoolean = jSONObject.optBoolean("isPrevent", false);
            com.bytedance.sdk.component.uA.vS vSVar2 = this.Sj.get();
            if (vSVar2 != null) {
                vSVar2.setIsPreventTouchEvent(zOptBoolean);
                jSONObject2.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, true);
            } else {
                jSONObject2.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, false);
            }
        } catch (Throwable unused) {
            jSONObject2.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, false);
        }
        return jSONObject2;
    }
}
