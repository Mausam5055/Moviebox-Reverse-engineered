package com.cloud.tmc.kernel.proxy.storage;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.defaultImpl.TmcKVStorageImpl")
public interface KVStorageProxy extends Proxiable {
    void clear(@NonNull Context context, @NonNull String str);

    String[] getAllKeys(@NonNull Context context, @NonNull String str);

    @Nullable
    boolean getBoolean(@NonNull Context context, @NonNull String str, @NonNull String str2, @Nullable boolean z10);

    int getInt(@NonNull Context context, @NonNull String str, @NonNull String str2);

    long getKVSize(@NonNull Context context, @NonNull String str);

    long getLong(@NonNull Context context, @NonNull String str, @NonNull String str2);

    String[] getMMKVFileAllKeys(@NonNull Context context, @NonNull String str);

    @Nullable
    String getString(@NonNull Context context, @NonNull String str, @NonNull String str2);

    @Nullable
    void putBoolean(@NonNull Context context, @NonNull String str, @NonNull String str2, boolean z10);

    void putInt(@NonNull Context context, @NonNull String str, @NonNull String str2, int i11);

    void putLong(@NonNull Context context, @NonNull String str, @NonNull String str2, long j11);

    void putString(@NonNull Context context, @NonNull String str, @NonNull String str2, @NonNull String str3);

    void remove(@NonNull Context context, @NonNull String str, @NonNull String str2);

    void warmUpMMKVFile(@NonNull Context context, @NonNull String str);
}
