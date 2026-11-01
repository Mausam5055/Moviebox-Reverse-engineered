package com.apm.insight;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public interface IOOMCallback {
    void onCrash(@NonNull CrashType crashType, @Nullable Throwable th2, @Nullable Thread thread, long j11);
}
