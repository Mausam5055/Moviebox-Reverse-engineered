package com.cloud.tmc.integration.proxy;

import android.content.Context;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.callback.CommonDialogCallback;
import com.cloud.tmc.integration.callback.CommonDialogOperate;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.google.gson.JsonArray;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.ToastImp")
public interface ToastProxy extends Proxiable {
    void showActionSheet(JsonArray jsonArray, String str, String str2, String str3, String str4, boolean z10, String str5, String str6, Context context, String str7, BridgeCallback bridgeCallback);

    void showAddHomeSuccessfulToast();

    void showCommonDialog(String str, String str2, int i11, Boolean bool, String str3, String str4, String str5, String str6, Context context, CommonDialogCallback commonDialogCallback);

    CommonDialogOperate showCommonDialogWithOperate(String str, String str2, int i11, Boolean bool, String str3, String str4, String str5, String str6, Context context, CommonDialogCallback commonDialogCallback);

    void showModal(String str, String str2, boolean z10, boolean z11, String str3, String str4, String str5, String str6, String str7, @NonNull Context context, BridgeCallback bridgeCallback);

    void toast(int i11);

    void toast(String str);

    void toast(String str, int i11);
}
