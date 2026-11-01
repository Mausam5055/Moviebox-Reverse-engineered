package com.cloud.tmc.storage;

import android.content.Context;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/storage/TmcStorageModule;", "", "()V", "sInit", "", "optionalInitCalls", "", "context", "Landroid/content/Context;", "storage_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TmcStorageModule {
    public static final TmcStorageModule INSTANCE = new TmcStorageModule();
    private static volatile boolean sInit;

    private TmcStorageModule() {
    }

    @JvmStatic
    public static final void optionalInitCalls(Context context) {
        if (context != null) {
            try {
                if (context.getApplicationContext() == null || sInit) {
                    return;
                }
                synchronized (TmcStorageModule.class) {
                    try {
                        if (!sInit) {
                            MMKV.C(context.getApplicationContext());
                            sInit = true;
                        }
                        Unit unit = Unit.f67061a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                TmcStorageModuleLogger.e(GlobalConfig.TAG, "", th3);
            }
        }
    }
}
