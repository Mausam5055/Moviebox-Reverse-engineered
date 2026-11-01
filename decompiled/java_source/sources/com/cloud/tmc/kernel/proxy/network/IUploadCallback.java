package com.cloud.tmc.kernel.proxy.network;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public interface IUploadCallback {
    void onFailed(String str, String str2, String str3, String str4);

    void onFinish(@Nullable String str, String str2, String str3);

    void progressUpdate(String str, int i11, String str2, long j11, long j12);
}
