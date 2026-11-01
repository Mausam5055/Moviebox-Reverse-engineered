package com.cloud.tmc.miniapp.prepare.steps;

import android.os.Bundle;
import com.cloud.tmc.integration.model.PrepareContext;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class OooO0O0 {
    public static void OooO00o(PrepareContext prepareContext, String str, String str2, Bundle bundle, String str3) {
        bundle.putString(str3, prepareContext.getStartParams().getString(str, str2));
    }
}
