package com.google.firebase.remoteconfig.internal;

import android.os.Bundle;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ic.b f32573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f32574b = Collections.synchronizedMap(new HashMap());

    public u(ic.b bVar) {
        this.f32573a = bVar;
    }

    public void a(String str, f fVar) {
        JSONObject jSONObjectOptJSONObject;
        kb.a aVar = (kb.a) this.f32573a.get();
        if (aVar == null) {
            return;
        }
        JSONObject jSONObjectI = fVar.i();
        if (jSONObjectI.length() < 1) {
            return;
        }
        JSONObject jSONObjectG = fVar.g();
        if (jSONObjectG.length() >= 1 && (jSONObjectOptJSONObject = jSONObjectI.optJSONObject(str)) != null) {
            String strOptString = jSONObjectOptJSONObject.optString("choiceId");
            if (strOptString.isEmpty()) {
                return;
            }
            synchronized (this.f32574b) {
                try {
                    if (strOptString.equals(this.f32574b.get(str))) {
                        return;
                    }
                    this.f32574b.put(str, strOptString);
                    Bundle bundle = new Bundle();
                    bundle.putString("arm_key", str);
                    bundle.putString("arm_value", jSONObjectG.optString(str));
                    bundle.putString("personalization_id", jSONObjectOptJSONObject.optString("personalizationId"));
                    bundle.putInt("arm_index", jSONObjectOptJSONObject.optInt("armIndex", -1));
                    bundle.putString("group", jSONObjectOptJSONObject.optString("group"));
                    aVar.b("fp", "personalization_assignment", bundle);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_fpid", strOptString);
                    aVar.b("fp", "_fpc", bundle2);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
