package com.cloud.tmc.kernel.proxy.network;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;
import okhttp3.Cookie;

/* JADX INFO: loaded from: classes3.dex */
public interface IResponseCallback {
    void onFailure(String str, @Nullable String str2, @Nullable String str3);

    void onSuccess(int i11, @Nullable String str, Map<String, String> map, List<Cookie> list, @Nullable String str2);
}
