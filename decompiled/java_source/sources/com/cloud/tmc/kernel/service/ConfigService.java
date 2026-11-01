package com.cloud.tmc.kernel.service;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.defaultImpl.ConfigServiceImpl")
public interface ConfigService extends Proxiable {

    public interface OnConfigChangeListener {
        void onChange(String str);
    }

    void clearProcessCache();

    @Nullable
    String getConfig(String str, @Nullable String str2);

    <T> void getConfig(String str, @Nullable String str2, OnConfigChangeListener onConfigChangeListener);

    boolean getConfigBoolean(String str, boolean z10);

    int getConfigInt(String str, int i11);

    @Nullable
    JsonArray getConfigJsonArray(@NonNull String str);

    @Nullable
    JsonObject getConfigJsonObject(@NonNull String str);

    String getConfigString(@NonNull String str, @NonNull String str2);

    String getConfigWithProcessCache(String str, String str2);

    void loadPreService(@NonNull Context context);

    void loadPreService(@NonNull Context context, @Nullable String str);

    void loadPreService(@NonNull Context context, @Nullable String str, @Nullable Function1<Boolean, Unit> function1);

    void loadService(@NonNull Context context);

    void loadService(@NonNull Context context, @Nullable String str);

    void loadService(@NonNull Context context, @Nullable String str, @Nullable Function1<Boolean, Unit> function1);

    void putConfigCache(String str, String str2);
}
