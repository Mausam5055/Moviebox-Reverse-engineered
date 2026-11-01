package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.kernel.proxy.worker.JSAheadParamsProxy;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class JSAheadParamsProxyImp implements JSAheadParamsProxy {
    public final Map<String, String> OooO00o = new LinkedHashMap();

    public final Map<String, String> getParams() {
        return this.OooO00o;
    }

    @Override // com.cloud.tmc.kernel.proxy.worker.JSAheadParamsProxy
    public Map<String, String> getParasm() {
        return this.OooO00o;
    }

    @Override // com.cloud.tmc.kernel.proxy.worker.JSAheadParamsProxy
    public void setParams(Map<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.OooO00o.put(entry.getKey(), entry.getValue());
            }
        }
    }
}
