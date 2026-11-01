package com.cloud.tmc.kernel.proxy.network;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface PackageDownloadCallback {
    void onCancel(String str, String str2);

    void onFailed(String str, String str2, String str3, IOException iOException, String str4);

    void onFinish(@Nullable String str, String str2);

    void onPrepare(String str, String str2);

    void onProgress(String str, int i11, String str2);

    void progressUpdate(String str, int i11, String str2, long j11, long j12);
}
