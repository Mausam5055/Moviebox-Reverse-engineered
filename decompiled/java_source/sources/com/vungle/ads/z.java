package com.vungle.ads;

import android.app.Application;
import android.content.Context;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.VungleInitializer;
import com.vungle.ads.internal.VungleInternal;
import kotlin.Deprecated;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class z {
    public static final String TAG = "VungleAds";
    public static final a Companion = new a(null);
    private static VungleInternal vungleInternal = new VungleInternal();
    private static VungleInitializer initializer = new VungleInitializer();

    @JvmField
    public static final ez.b firstPartyData = new ez.b();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void deInit(Context context) {
            Intrinsics.h(context, "context");
            z.initializer.deInit$vungle_ads_release();
        }

        @Deprecated
        @JvmStatic
        public final String getBiddingToken(Context context) {
            Intrinsics.h(context, "context");
            return z.vungleInternal.getAvailableBidTokens(context);
        }

        @JvmStatic
        public final void getBiddingToken(Context context, i callback) {
            Intrinsics.h(context, "context");
            Intrinsics.h(callback, "callback");
            z.vungleInternal.getAvailableBidTokensAsync(context, callback);
        }

        @JvmStatic
        public final String getSdkVersion() {
            return z.vungleInternal.getSdkVersion();
        }

        @JvmStatic
        public final void init(Context appContext, String appId, m callback) {
            Intrinsics.h(appContext, "context");
            Intrinsics.h(appId, "appId");
            Intrinsics.h(callback, "callback");
            if (!(appContext instanceof Application)) {
                appContext = appContext.getApplicationContext();
            }
            VungleInitializer vungleInitializer = z.initializer;
            Intrinsics.g(appContext, "appContext");
            vungleInitializer.init(appId, appContext, callback);
        }

        @JvmStatic
        public final boolean isInitialized() {
            return z.initializer.isInitialized();
        }

        @JvmStatic
        public final boolean isInline(String placementId) {
            Intrinsics.h(placementId, "placementId");
            com.vungle.ads.internal.model.g placement = ConfigManager.INSTANCE.getPlacement(placementId);
            if (placement != null) {
                return placement.isInline();
            }
            return false;
        }

        @JvmStatic
        public final void setIntegrationName(VungleWrapperFramework wrapperFramework, String wrapperFrameworkVersion) {
            Intrinsics.h(wrapperFramework, "wrapperFramework");
            Intrinsics.h(wrapperFrameworkVersion, "wrapperFrameworkVersion");
            z.initializer.setIntegrationName(wrapperFramework, wrapperFrameworkVersion);
        }
    }

    @JvmStatic
    public static final void deInit(Context context) {
        Companion.deInit(context);
    }

    @Deprecated
    @JvmStatic
    public static final String getBiddingToken(Context context) {
        return Companion.getBiddingToken(context);
    }

    @JvmStatic
    public static final void getBiddingToken(Context context, i iVar) {
        Companion.getBiddingToken(context, iVar);
    }

    @JvmStatic
    public static final String getSdkVersion() {
        return Companion.getSdkVersion();
    }

    @JvmStatic
    public static final void init(Context context, String str, m mVar) {
        Companion.init(context, str, mVar);
    }

    @JvmStatic
    public static final boolean isInitialized() {
        return Companion.isInitialized();
    }

    @JvmStatic
    public static final boolean isInline(String str) {
        return Companion.isInline(str);
    }

    @JvmStatic
    public static final void setIntegrationName(VungleWrapperFramework vungleWrapperFramework, String str) {
        Companion.setIntegrationName(vungleWrapperFramework, str);
    }
}
