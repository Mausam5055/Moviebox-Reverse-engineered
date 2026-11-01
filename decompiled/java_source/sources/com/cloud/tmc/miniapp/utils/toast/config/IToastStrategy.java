package com.cloud.tmc.miniapp.utils.toast.config;

import android.app.Application;
import com.cloud.tmc.miniapp.utils.toast.ToastParams;

/* JADX INFO: loaded from: classes3.dex */
public interface IToastStrategy {
    void cancelToast();

    IToast createToast(IToastStyle<?> iToastStyle);

    void registerStrategy(Application application);

    void showToast(ToastParams toastParams);
}
