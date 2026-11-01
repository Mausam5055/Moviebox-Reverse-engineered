package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzjf;
import com.google.android.gms.measurement.internal.zzji;
import com.google.android.gms.measurement.internal.zzjj;
import com.google.android.gms.measurement.internal.zzlh;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ImmutableSet f31053a = ImmutableSet.of("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ImmutableList f31054b = ImmutableList.of("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ImmutableList f31055c = ImmutableList.of("auto", "app", "am");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ImmutableList f31056d = ImmutableList.of("_r", "_dbg");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ImmutableList f31057e = new ImmutableList.a().k(zzjj.zza).k(zzjj.zzb).e();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ImmutableList f31058f = ImmutableList.of("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static Bundle a(kb.a.c cVar) {
        Bundle bundle = new Bundle();
        String str = cVar.f66738a;
        if (str != null) {
            bundle.putString("origin", str);
        }
        String str2 = cVar.f66739b;
        if (str2 != null) {
            bundle.putString("name", str2);
        }
        Object obj = cVar.f66740c;
        if (obj != null) {
            zzjf.zza(bundle, obj);
        }
        String str3 = cVar.f66741d;
        if (str3 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str3);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, cVar.f66742e);
        String str4 = cVar.f66743f;
        if (str4 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, str4);
        }
        Bundle bundle2 = cVar.f66744g;
        if (bundle2 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, bundle2);
        }
        String str5 = cVar.f66745h;
        if (str5 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, str5);
        }
        Bundle bundle3 = cVar.f66746i;
        if (bundle3 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, bundle3);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, cVar.f66747j);
        String str6 = cVar.f66748k;
        if (str6 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str6);
        }
        Bundle bundle4 = cVar.f66749l;
        if (bundle4 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle4);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, cVar.f66750m);
        bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, cVar.f66751n);
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, cVar.f66752o);
        return bundle;
    }

    public static String b(String str) {
        String strZza = zzji.zza(str);
        return strZza != null ? strZza : str;
    }

    public static kb.a.c c(Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        kb.a.c cVar = new kb.a.c();
        cVar.f66738a = (String) Preconditions.checkNotNull((String) zzjf.zza(bundle, "origin", String.class, null));
        cVar.f66739b = (String) Preconditions.checkNotNull((String) zzjf.zza(bundle, "name", String.class, null));
        cVar.f66740c = zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
        cVar.f66741d = (String) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        cVar.f66742e = ((Long) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
        cVar.f66743f = (String) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        cVar.f66744g = (Bundle) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        cVar.f66745h = (String) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        cVar.f66746i = (Bundle) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        cVar.f66747j = ((Long) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
        cVar.f66748k = (String) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        cVar.f66749l = (Bundle) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        cVar.f66751n = ((Boolean) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.class, Boolean.FALSE)).booleanValue();
        cVar.f66750m = ((Long) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.class, 0L)).longValue();
        cVar.f66752o = ((Long) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.class, 0L)).longValue();
        return cVar;
    }

    public static void d(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean e(String str, Bundle bundle) {
        if (f31054b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        ImmutableList immutableList = f31056d;
        int size = immutableList.size();
        int i11 = 0;
        while (i11 < size) {
            E e11 = immutableList.get(i11);
            i11++;
            if (bundle.containsKey((String) e11)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean f(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals(AppMeasurement.FIAM_ORIGIN);
        }
        if (f31057e.contains(str2)) {
            return false;
        }
        ImmutableList immutableList = f31058f;
        int size = immutableList.size();
        int i11 = 0;
        while (i11 < size) {
            E e11 = immutableList.get(i11);
            i11++;
            if (str2.matches((String) e11)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean g(String str, String str2, Bundle bundle) {
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!j(str) || bundle == null) {
            return false;
        }
        ImmutableList immutableList = f31056d;
        int size = immutableList.size();
        int i11 = 0;
        while (i11 < size) {
            E e11 = immutableList.get(i11);
            i11++;
            if (bundle.containsKey((String) e11)) {
                return false;
            }
        }
        str.hashCode();
        switch (str) {
            case "fcm":
                bundle.putString("_cis", "fcm_integration");
                return true;
            case "fdl":
                bundle.putString("_cis", "fdl_integration");
                return true;
            case "fiam":
                bundle.putString("_cis", "fiam_integration");
                return true;
            default:
                return false;
        }
    }

    public static boolean h(kb.a.c cVar) {
        String str;
        if (cVar == null || (str = cVar.f66738a) == null || str.isEmpty()) {
            return false;
        }
        Object obj = cVar.f66740c;
        if ((obj != null && zzlh.zza(obj) == null) || !j(str) || !f(str, cVar.f66739b)) {
            return false;
        }
        String str2 = cVar.f66748k;
        if (str2 != null && (!e(str2, cVar.f66749l) || !g(str, cVar.f66748k, cVar.f66749l))) {
            return false;
        }
        String str3 = cVar.f66745h;
        if (str3 != null && (!e(str3, cVar.f66746i) || !g(str, cVar.f66745h, cVar.f66746i))) {
            return false;
        }
        String str4 = cVar.f66743f;
        if (str4 != null) {
            return e(str4, cVar.f66744g) && g(str, cVar.f66743f, cVar.f66744g);
        }
        return true;
    }

    public static boolean i(String str) {
        return !f31053a.contains(str);
    }

    public static boolean j(String str) {
        return !f31055c.contains(str);
    }
}
