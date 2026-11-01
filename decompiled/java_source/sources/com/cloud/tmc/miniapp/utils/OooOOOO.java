package com.cloud.tmc.miniapp.utils;

import com.cloud.tmc.integration.callback.ISubpackageLoadCheckCallback;
import com.cloud.tmc.integration.model.PrepareData;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.utils.toast.ToastUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooOOOO extends com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO00o {
    public final /* synthetic */ String OooO00o;
    public final /* synthetic */ ISubpackageLoadCheckCallback OooO0O0;
    public final /* synthetic */ String OooO0OO;

    public OooOOOO(String str, ISubpackageLoadCheckCallback iSubpackageLoadCheckCallback, String str2) {
        this.OooO00o = str;
        this.OooO0O0 = iSubpackageLoadCheckCallback;
        this.OooO0OO = str2;
    }

    public static final void OooO00o(ISubpackageLoadCheckCallback loadCheckCallback, String path) {
        Intrinsics.h(loadCheckCallback, "$loadCheckCallback");
        Intrinsics.h(path, "$path");
        ToastUtils.hideLoading();
        loadCheckCallback.onLoadSuccess(path);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO00o, com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void onPackageLoadFailed(PrepareData prepareData, PrepareException prepareException) {
        OooOOO.OooO00o.OooO00o().remove(this.OooO00o);
        ToastUtils.hideLoading();
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO00o, com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void onPackageLoadSuccess() {
        OooOOO.OooO00o.OooO00o().remove(this.OooO00o);
        final ISubpackageLoadCheckCallback iSubpackageLoadCheckCallback = this.OooO0O0;
        final String str = this.OooO0OO;
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.utils.q
            @Override // java.lang.Runnable
            public final void run() {
                OooOOOO.OooO00o(iSubpackageLoadCheckCallback, str);
            }
        });
    }
}
