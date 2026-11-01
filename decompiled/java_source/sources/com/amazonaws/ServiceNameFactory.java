package com.amazonaws;

import com.amazonaws.internal.config.HttpClientConfig;
import com.amazonaws.internal.config.InternalConfig;

/* JADX INFO: loaded from: classes2.dex */
enum ServiceNameFactory {
    ;

    static String getServiceName(String str) {
        HttpClientConfig httpClientConfigH = InternalConfig.Factory.a().h(str);
        if (httpClientConfigH == null) {
            return null;
        }
        return httpClientConfigH.a();
    }
}
