package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.R;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.internal.zzah;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@Deprecated
public final class GoogleServices {
    private static final Object zza = new Object();

    @Nullable
    private static GoogleServices zzb;

    @Nullable
    private final String zzc;
    private final Status zzd;
    private final boolean zze;
    private final boolean zzf;

    @KeepForSdk
    GoogleServices(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue));
        boolean z10 = true;
        if (identifier != 0) {
            int integer = resources.getInteger(identifier);
            boolean z11 = integer == 0;
            z10 = integer != 0;
            this.zzf = z11;
        } else {
            this.zzf = false;
        }
        this.zze = z10;
        String strZzb = zzah.zzb(context);
        strZzb = strZzb == null ? new StringResourceValueReader(context).getString("google_app_id") : strZzb;
        if (TextUtils.isEmpty(strZzb)) {
            this.zzd = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.zzc = null;
        } else {
            this.zzc = strZzb;
            this.zzd = Status.RESULT_SUCCESS;
        }
    }

    @KeepForSdk
    GoogleServices(String str, boolean z10) {
        this.zzc = str;
        this.zzd = Status.RESULT_SUCCESS;
        this.zze = z10;
        this.zzf = !z10;
    }

    @KeepForSdk
    private static GoogleServices checkInitialized(String str) {
        GoogleServices googleServices;
        synchronized (zza) {
            try {
                googleServices = zzb;
                if (googleServices == null) {
                    throw new IllegalStateException("Initialize must be called before " + str + ".");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return googleServices;
    }

    @KeepForSdk
    static void clearInstanceForTest() {
        synchronized (zza) {
            zzb = null;
        }
    }

    @Nullable
    @KeepForSdk
    public static String getGoogleAppId() {
        return checkInitialized("getGoogleAppId").zzc;
    }

    @NonNull
    @KeepForSdk
    public static Status initialize(@NonNull Context context) {
        Status status;
        Preconditions.checkNotNull(context, "Context must not be null.");
        synchronized (zza) {
            try {
                if (zzb == null) {
                    zzb = new GoogleServices(context);
                }
                status = zzb.zzd;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return status;
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static Status initialize(@NonNull Context context, @NonNull String str, boolean z10) {
        Preconditions.checkNotNull(context, "Context must not be null.");
        Preconditions.checkNotEmpty(str, "App ID must be nonempty.");
        synchronized (zza) {
            try {
                GoogleServices googleServices = zzb;
                if (googleServices != null) {
                    return googleServices.checkGoogleAppId(str);
                }
                GoogleServices googleServices2 = new GoogleServices(str, z10);
                zzb = googleServices2;
                return googleServices2.zzd;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @KeepForSdk
    public static boolean isMeasurementEnabled() {
        GoogleServices googleServicesCheckInitialized = checkInitialized("isMeasurementEnabled");
        return googleServicesCheckInitialized.zzd.isSuccess() && googleServicesCheckInitialized.zze;
    }

    @KeepForSdk
    public static boolean isMeasurementExplicitlyDisabled() {
        return checkInitialized("isMeasurementExplicitlyDisabled").zzf;
    }

    @KeepForSdk
    Status checkGoogleAppId(String str) {
        String str2 = this.zzc;
        if (str2 == null || str2.equals(str)) {
            return Status.RESULT_SUCCESS;
        }
        return new Status(10, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: '" + this.zzc + "'.");
    }
}
