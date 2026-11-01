package com.google.android.libraries.places.api;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.libraries.places.api.net.PlacesClient;
import com.google.android.libraries.places.internal.zzjo;
import com.google.android.libraries.places.internal.zzjp;
import com.google.android.libraries.places.internal.zzjq;
import com.google.android.libraries.places.internal.zzjs;
import com.google.android.libraries.places.internal.zzkb;
import com.google.android.libraries.places.internal.zzkd;
import com.google.android.libraries.places.internal.zzmt;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class Places {
    private static final zzjs zza = new zzjs();

    @Nullable
    private static volatile zzjq zzb;

    private Places() {
    }

    @RecentlyNonNull
    public static synchronized PlacesClient createClient(@RecentlyNonNull Context context) {
        try {
            zzmt.zzc(context, "Context must not be null.");
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
        return zza(context, zzkb.zzd(context).zze());
    }

    public static synchronized void deinitialize() {
        zza.zzc();
    }

    public static void initialize(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        try {
            zzb(context, str, null, false, false);
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    public static void initialize(@RecentlyNonNull Context context, @RecentlyNonNull String str, @Nullable Locale locale) {
        try {
            zzb(context, str, locale, false, false);
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    public static void initializeWithNewPlacesApiEnabled(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        try {
            zzb(context, str, null, false, true);
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    public static void initializeWithNewPlacesApiEnabled(@RecentlyNonNull Context context, @RecentlyNonNull String str, @Nullable Locale locale) {
        try {
            zzb(context, str, locale, false, true);
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    public static synchronized boolean isInitialized() {
        try {
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
        return zza.zzg();
    }

    public static synchronized PlacesClient zza(Context context, zzkb zzkbVar) {
        zzjp zzjpVarZza;
        try {
            zzmt.zzc(context, "Context must not be null.");
            zzmt.zzp(isInitialized(), "Places must be initialized first.");
            zzjpVarZza = zzjo.zza();
            zzjpVarZza.zzc(context);
            zzjpVarZza.zza(zza);
            zzjpVarZza.zzb(zzkbVar);
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
        return zzjpVarZza.zzd().zza();
    }

    public static synchronized void zzb(@RecentlyNonNull Context context, @RecentlyNonNull String str, @Nullable Locale locale, boolean z10, boolean z11) {
        try {
            try {
                zzmt.zzc(context, "Application context must not be null.");
                zzmt.zzc(str, "API Key must not be null.");
                zzmt.zzf(!str.isEmpty(), "API Key must not be empty.");
                zzkd.zza(context.getApplicationContext(), false);
                if (z11) {
                    zza.zze(str, locale, false);
                } else {
                    zza.zzd(str, locale, false);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    public static synchronized zzjs zzc() {
        return zza;
    }
}
