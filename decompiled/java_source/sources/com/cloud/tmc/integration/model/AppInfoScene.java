package com.cloud.tmc.integration.model;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\u0001\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/AppInfoScene;", "", "(Ljava/lang/String;I)V", "isOnline", "", "()Z", "ONLINE", "DEBUG", "TRIAL", "REVIEW", "YUNTEST", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum AppInfoScene {
    ONLINE,
    DEBUG,
    TRIAL,
    REVIEW,
    YUNTEST;


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String PARAM_SCENE = "nbsn";
    private static final String PARAM_SCENE_VERSION = "nbsv";
    private static final String PARAM_SOURCE = "nbsource";

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0012\u0010\f\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\u000e\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;", "", "()V", "PARAM_SCENE", "", "PARAM_SCENE_VERSION", "PARAM_SOURCE", "extractScene", "Lcom/cloud/tmc/integration/model/AppInfoScene;", TmcConstants.EXTRA_START_PARAMS, "Landroid/os/Bundle;", "extractSceneVersion", "isDevSource", "", "parse", "str", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AppInfoScene extractScene(Bundle startParams) {
            String string = BundleUtils.getString(startParams, AppInfoScene.PARAM_SCENE);
            if (TextUtils.isEmpty(string)) {
                return AppInfoScene.ONLINE;
            }
            if (StringsKt.H("DEBUG", string, true)) {
                return AppInfoScene.DEBUG;
            }
            if (StringsKt.H("TRIAL", string, true)) {
                return AppInfoScene.TRIAL;
            }
            if (StringsKt.H("REVIEW", string, true)) {
                return AppInfoScene.REVIEW;
            }
            return StringsKt.H("YUNTEST", string, true) ? AppInfoScene.YUNTEST : AppInfoScene.DEBUG;
        }

        public final String extractSceneVersion(Bundle startParams) {
            String string = BundleUtils.getString(startParams, AppInfoScene.PARAM_SCENE_VERSION);
            if (TextUtils.isEmpty(string)) {
                return "*";
            }
            Intrinsics.g(string, "{\n                sceneVersion\n            }");
            return string;
        }

        @JvmStatic
        public final boolean isDevSource(Bundle startParams) {
            return StringsKt.H("DEBUG", BundleUtils.getString(startParams, AppInfoScene.PARAM_SOURCE), true);
        }

        public final AppInfoScene parse(String str) {
            if (TextUtils.isEmpty(str)) {
                return AppInfoScene.ONLINE;
            }
            try {
                Intrinsics.e(str);
                return AppInfoScene.valueOf(str);
            } catch (Throwable unused) {
                return AppInfoScene.ONLINE;
            }
        }
    }

    @JvmStatic
    public static final boolean isDevSource(Bundle bundle) {
        return INSTANCE.isDevSource(bundle);
    }

    public final boolean isOnline() {
        return this == ONLINE;
    }
}
