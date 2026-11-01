package com.bytedance.sdk.openadsdk.core.act;

import android.content.Context;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.d;

/* JADX INFO: loaded from: classes3.dex */
public class TKC implements sP {
    public static void Sj(Context context, String str, d dVar, Uri uri) {
        dVar.f2166a.setPackage(str);
        dVar.a(context, uri);
    }

    @Override // com.bytedance.sdk.openadsdk.core.act.sP
    public void Sj() {
        throw null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.act.sP
    public void Sj(CustomTabsClient customTabsClient) {
        throw null;
    }
}
