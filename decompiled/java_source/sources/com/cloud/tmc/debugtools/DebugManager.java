package com.cloud.tmc.debugtools;

import android.app.Application;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/debugtools/DebugManager;", "", "()V", "register", "", MimeTypes.BASE_TYPE_APPLICATION, "Landroid/app/Application;", "clazz", "Ljava/lang/Class;", "updateData", "contentData", "Lcom/cloud/tmc/debugtools/ContentData;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DebugManager {
    public static final DebugManager INSTANCE = new DebugManager();

    private DebugManager() {
    }

    public final void register(Application application, Class<?> clazz) {
        Intrinsics.h(application, "application");
        Intrinsics.h(clazz, "clazz");
    }

    public final void updateData(ContentData contentData) {
        Intrinsics.h(contentData, "contentData");
    }
}
