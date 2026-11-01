package com.transsion.ad.strategy;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class AppManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AppManager f42217a = new AppManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AppEnum f42218b;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/ad/strategy/AppManager$AppEnum;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "APP_MOVIE_BOX", "APP_NOVEL_HUB", "APP_WOW_FM", "APP_MB_TV", "APP_HOLA", "APP_GO_DRAMA", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum AppEnum {
        APP_MOVIE_BOX("movie_box"),
        APP_NOVEL_HUB("novel_hub"),
        APP_WOW_FM("wow_fm"),
        APP_MB_TV("movie_tv"),
        APP_HOLA(TmcConstants.START_FROM_HOLA),
        APP_GO_DRAMA("go_drama");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String value;

        AppEnum(String str) {
            this.value = str;
        }

        public static EnumEntries<AppEnum> getEntries() {
            return $ENTRIES;
        }

        public final String getValue() {
            return this.value;
        }
    }

    private AppManager() {
    }

    public final String a() {
        String value;
        AppEnum appEnum = f42218b;
        if (appEnum != null && (value = appEnum.getValue()) != null) {
            return value;
        }
        String string = f.f42232a.c().getString("mmkv_key_app_name", "none");
        return string == null ? "default_null" : string;
    }

    public final void b(AppEnum app) {
        Intrinsics.h(app, "app");
        f42218b = app;
        f.f42232a.c().putString("mmkv_key_app_name", app.getValue());
    }
}
