package com.bytedance.sdk.openadsdk.zR;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public interface EjP {
    Handler EjP();

    String HiB();

    Map<String, String> Jcg();

    HandlerThread Sj(String str, int i11);

    ExecutorService Sj();

    JSONObject Sj(JSONObject jSONObject);

    String TKC();

    Context sP();

    JSONObject vS();
}
