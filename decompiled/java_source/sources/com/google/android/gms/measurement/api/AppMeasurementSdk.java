package com.google.android.gms.measurement.api;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.measurement.zzdy;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzjm;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@ShowFirstParty
@KeepForSdk
public class AppMeasurementSdk {
    private final zzdy zza;

    @KeepForSdk
    public static final class ConditionalUserProperty {

        @NonNull
        @KeepForSdk
        public static final String ACTIVE = "active";

        @NonNull
        @KeepForSdk
        public static final String CREATION_TIMESTAMP = "creation_timestamp";

        @NonNull
        @KeepForSdk
        public static final String EXPIRED_EVENT_NAME = "expired_event_name";

        @NonNull
        @KeepForSdk
        public static final String EXPIRED_EVENT_PARAMS = "expired_event_params";

        @NonNull
        @KeepForSdk
        public static final String NAME = "name";

        @NonNull
        @KeepForSdk
        public static final String ORIGIN = "origin";

        @NonNull
        @KeepForSdk
        public static final String TIMED_OUT_EVENT_NAME = "timed_out_event_name";

        @NonNull
        @KeepForSdk
        public static final String TIMED_OUT_EVENT_PARAMS = "timed_out_event_params";

        @NonNull
        @KeepForSdk
        public static final String TIME_TO_LIVE = "time_to_live";

        @NonNull
        @KeepForSdk
        public static final String TRIGGERED_EVENT_NAME = "triggered_event_name";

        @NonNull
        @KeepForSdk
        public static final String TRIGGERED_EVENT_PARAMS = "triggered_event_params";

        @NonNull
        @KeepForSdk
        public static final String TRIGGERED_TIMESTAMP = "triggered_timestamp";

        @NonNull
        @KeepForSdk
        public static final String TRIGGER_EVENT_NAME = "trigger_event_name";

        @NonNull
        @KeepForSdk
        public static final String TRIGGER_TIMEOUT = "trigger_timeout";

        @NonNull
        @KeepForSdk
        public static final String VALUE = "value";

        private ConditionalUserProperty() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public interface EventInterceptor extends zzjm {
        @Override // com.google.android.gms.measurement.internal.zzjm
        @ShowFirstParty
        @KeepForSdk
        void interceptEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, long j11);
    }

    @ShowFirstParty
    @KeepForSdk
    public interface OnEventListener extends zzjl {
        @Override // com.google.android.gms.measurement.internal.zzjl
        @ShowFirstParty
        @KeepForSdk
        void onEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, long j11);
    }

    public AppMeasurementSdk(zzdy zzdyVar) {
        this.zza = zzdyVar;
    }

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public static AppMeasurementSdk getInstance(@NonNull Context context) {
        return zzdy.zza(context).zzb();
    }

    @NonNull
    @KeepForSdk
    public static AppMeasurementSdk getInstance(@NonNull Context context, @NonNull String str, @NonNull String str2, @Nullable String str3, @NonNull Bundle bundle) {
        return zzdy.zza(context, str, str2, str3, bundle).zzb();
    }

    @KeepForSdk
    public void beginAdUnitExposure(@NonNull String str) {
        this.zza.zzb(str);
    }

    @KeepForSdk
    public void clearConditionalUserProperty(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.zza.zza(str, str2, bundle);
    }

    @KeepForSdk
    public void endAdUnitExposure(@NonNull String str) {
        this.zza.zzc(str);
    }

    @KeepForSdk
    public long generateEventId() {
        return this.zza.zza();
    }

    @Nullable
    @KeepForSdk
    public String getAppIdOrigin() {
        return this.zza.zzd();
    }

    @Nullable
    @KeepForSdk
    public String getAppInstanceId() {
        return this.zza.zzf();
    }

    @NonNull
    @KeepForSdk
    public List<Bundle> getConditionalUserProperties(@Nullable String str, @Nullable String str2) {
        return this.zza.zza(str, str2);
    }

    @Nullable
    @KeepForSdk
    public String getCurrentScreenClass() {
        return this.zza.zzg();
    }

    @Nullable
    @KeepForSdk
    public String getCurrentScreenName() {
        return this.zza.zzh();
    }

    @Nullable
    @KeepForSdk
    public String getGmpAppId() {
        return this.zza.zzi();
    }

    @KeepForSdk
    public int getMaxUserProperties(@NonNull String str) {
        return this.zza.zza(str);
    }

    @NonNull
    @KeepForSdk
    public Map<String, Object> getUserProperties(@Nullable String str, @Nullable String str2, boolean z10) {
        return this.zza.zza(str, str2, z10);
    }

    @KeepForSdk
    public void logEvent(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle) {
        this.zza.zzb(str, str2, bundle);
    }

    @KeepForSdk
    public void logEventNoInterceptor(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle, long j11) {
        this.zza.zza(str, str2, bundle, j11);
    }

    @KeepForSdk
    public void performAction(@NonNull Bundle bundle) {
        this.zza.zza(bundle, false);
    }

    @Nullable
    @KeepForSdk
    public Bundle performActionWithResponse(@NonNull Bundle bundle) {
        return this.zza.zza(bundle, true);
    }

    @ShowFirstParty
    @KeepForSdk
    public void registerOnMeasurementEventListener(@NonNull OnEventListener onEventListener) {
        this.zza.zza(onEventListener);
    }

    @KeepForSdk
    public void setConditionalUserProperty(@NonNull Bundle bundle) {
        this.zza.zza(bundle);
    }

    @KeepForSdk
    public void setConsent(@NonNull Bundle bundle) {
        this.zza.zzb(bundle);
    }

    @KeepForSdk
    public void setCurrentScreen(@NonNull Activity activity, @Nullable String str, @Nullable String str2) {
        this.zza.zza(activity, str, str2);
    }

    @ShowFirstParty
    @KeepForSdk
    public void setEventInterceptor(@NonNull EventInterceptor eventInterceptor) {
        this.zza.zza(eventInterceptor);
    }

    @KeepForSdk
    public void setMeasurementEnabled(@Nullable Boolean bool) {
        this.zza.zza(bool);
    }

    @KeepForSdk
    public void setMeasurementEnabled(boolean z10) {
        this.zza.zza(Boolean.valueOf(z10));
    }

    @KeepForSdk
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull Object obj) {
        this.zza.zza(str, str2, obj, true);
    }

    @ShowFirstParty
    @KeepForSdk
    public void unregisterOnMeasurementEventListener(@NonNull OnEventListener onEventListener) {
        this.zza.zzb(onEventListener);
    }

    public final void zza(boolean z10) {
        this.zza.zza(z10);
    }
}
