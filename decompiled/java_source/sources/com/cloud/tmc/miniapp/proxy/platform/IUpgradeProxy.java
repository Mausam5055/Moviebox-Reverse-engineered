package com.cloud.tmc.miniapp.proxy.platform;

import android.content.Context;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.UpgradeImpl")
public interface IUpgradeProxy extends Proxiable {
    void showFwUpdateTipsDialog(Context context, String str, o000oOoO o000oooo);
}
