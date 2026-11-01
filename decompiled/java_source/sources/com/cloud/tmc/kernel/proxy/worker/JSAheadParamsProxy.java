package com.cloud.tmc.kernel.proxy.worker;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.JSAheadParamsProxyImp")
public interface JSAheadParamsProxy extends Proxiable {
    Map<String, String> getParasm();

    void setParams(Map<String, String> map);
}
