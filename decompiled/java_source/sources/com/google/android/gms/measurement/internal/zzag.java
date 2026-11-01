package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzag extends zzja {
    private Boolean zza;
    private String zzb;
    private zzai zzc;
    private Boolean zzd;

    zzag(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzc = new zzai() { // from class: com.google.android.gms.measurement.internal.zzaf
            @Override // com.google.android.gms.measurement.internal.zzai
            public final String zza(String str, String str2) {
                return null;
            }
        };
    }

    private final String zza(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
            Preconditions.checkNotNull(str3);
            return str3;
        } catch (ClassNotFoundException e11) {
            zzj().zzg().zza("Could not find SystemProperties class", e11);
            return str2;
        } catch (IllegalAccessException e12) {
            zzj().zzg().zza("Could not access SystemProperties.get()", e12);
            return str2;
        } catch (NoSuchMethodException e13) {
            zzj().zzg().zza("Could not find SystemProperties.get() method", e13);
            return str2;
        } catch (InvocationTargetException e14) {
            zzj().zzg().zza("SystemProperties.get() threw an exception", e14);
            return str2;
        }
    }

    private final Bundle zzaa() {
        try {
            if (zza().getPackageManager() == null) {
                zzj().zzg().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(zza()).getApplicationInfo(zza().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            zzj().zzg().zza("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e11) {
            zzj().zzg().zza("Failed to load metadata: Package name not found", e11);
            return null;
        }
    }

    public static long zzg() {
        return zzbh.zzd.zza(null).longValue();
    }

    public static long zzh() {
        return zzbh.zzk.zza(null).intValue();
    }

    public static long zzm() {
        return zzbh.zzae.zza(null).longValue();
    }

    public static long zzn() {
        return zzbh.zzz.zza(null).longValue();
    }

    public final double zza(String str, zzfz<Double> zzfzVar) {
        if (TextUtils.isEmpty(str)) {
            return zzfzVar.zza(null).doubleValue();
        }
        String strZza = this.zzc.zza(str, zzfzVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return zzfzVar.zza(null).doubleValue();
        }
        try {
            return zzfzVar.zza(Double.valueOf(Double.parseDouble(strZza))).doubleValue();
        } catch (NumberFormatException unused) {
            return zzfzVar.zza(null).doubleValue();
        }
    }

    final int zza(String str) {
        return zza(str, zzbh.zzaj, 500, 2000);
    }

    public final int zza(String str, zzfz<Integer> zzfzVar, int i11, int i12) {
        return Math.max(Math.min(zzb(str, zzfzVar), i12), i11);
    }

    final int zza(String str, boolean z10) {
        if (z10) {
            return zza(str, zzbh.zzat, 100, 500);
        }
        return 500;
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    final void zza(zzai zzaiVar) {
        this.zzc = zzaiVar;
    }

    public final boolean zza(zzfz<Boolean> zzfzVar) {
        return zzf(null, zzfzVar);
    }

    public final int zzb(String str) {
        return zza(str, zzbh.zzak, 25, 100);
    }

    public final int zzb(String str, zzfz<Integer> zzfzVar) {
        if (TextUtils.isEmpty(str)) {
            return zzfzVar.zza(null).intValue();
        }
        String strZza = this.zzc.zza(str, zzfzVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return zzfzVar.zza(null).intValue();
        }
        try {
            return zzfzVar.zza(Integer.valueOf(Integer.parseInt(strZza))).intValue();
        } catch (NumberFormatException unused) {
            return zzfzVar.zza(null).intValue();
        }
    }

    final int zzb(String str, boolean z10) {
        return Math.max(zza(str, z10), 256);
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    public final int zzc() {
        return zzq().zza(201500000, true) ? 100 : 25;
    }

    public final int zzc(String str) {
        return zzb(str, zzbh.zzo);
    }

    public final long zzc(String str, zzfz<Long> zzfzVar) {
        if (TextUtils.isEmpty(str)) {
            return zzfzVar.zza(null).longValue();
        }
        String strZza = this.zzc.zza(str, zzfzVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return zzfzVar.zza(null).longValue();
        }
        try {
            return zzfzVar.zza(Long.valueOf(Long.parseLong(strZza))).longValue();
        } catch (NumberFormatException unused) {
            return zzfzVar.zza(null).longValue();
        }
    }

    public final zzjh zzc(String str, boolean z10) {
        Object obj;
        Preconditions.checkNotEmpty(str);
        Bundle bundleZzaa = zzaa();
        if (bundleZzaa == null) {
            zzj().zzg().zza("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = bundleZzaa.get(str);
        }
        if (obj == null) {
            return zzjh.UNINITIALIZED;
        }
        if (Boolean.TRUE.equals(obj)) {
            return zzjh.GRANTED;
        }
        if (Boolean.FALSE.equals(obj)) {
            return zzjh.DENIED;
        }
        if (z10 && "eu_consent_policy".equals(obj)) {
            return zzjh.POLICY;
        }
        zzj().zzu().zza("Invalid manifest metadata for", str);
        return zzjh.UNINITIALIZED;
    }

    final long zzd(String str) {
        return zzc(str, zzbh.zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzab zzd() {
        return super.zzd();
    }

    public final String zzd(String str, zzfz<String> zzfzVar) {
        return TextUtils.isEmpty(str) ? zzfzVar.zza(null) : zzfzVar.zza(this.zzc.zza(str, zzfzVar.zza()));
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzag zze() {
        return super.zze();
    }

    final Boolean zze(String str) {
        Preconditions.checkNotEmpty(str);
        Bundle bundleZzaa = zzaa();
        if (bundleZzaa == null) {
            zzj().zzg().zza("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (bundleZzaa.containsKey(str)) {
            return Boolean.valueOf(bundleZzaa.getBoolean(str));
        }
        return null;
    }

    public final boolean zze(String str, zzfz<Boolean> zzfzVar) {
        return zzf(str, zzfzVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    final String zzf(String str) {
        return zzd(str, zzbh.zzan);
    }

    public final boolean zzf(String str, zzfz<Boolean> zzfzVar) {
        if (TextUtils.isEmpty(str)) {
            return zzfzVar.zza(null).booleanValue();
        }
        String strZza = this.zzc.zza(str, zzfzVar.zza());
        return TextUtils.isEmpty(strZza) ? zzfzVar.zza(null).booleanValue() : zzfzVar.zza(Boolean.valueOf("1".equals(strZza))).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x003d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x003e A[Catch: NotFoundException -> 0x0043, TRY_LEAVE, TryCatch #0 {NotFoundException -> 0x0043, blocks: (B:12:0x002b, B:15:0x003e), top: B:20:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:20:0x002b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    final List<String> zzg(String str) {
        Integer numValueOf;
        String[] stringArray;
        Preconditions.checkNotEmpty(str);
        Bundle bundleZzaa = zzaa();
        if (bundleZzaa != null) {
            if (bundleZzaa.containsKey(str)) {
                numValueOf = Integer.valueOf(bundleZzaa.getInt(str));
            }
            if (numValueOf == null) {
                return null;
            }
            try {
                stringArray = zza().getResources().getStringArray(numValueOf.intValue());
                if (stringArray == null) {
                    return null;
                }
                return Arrays.asList(stringArray);
            } catch (Resources.NotFoundException e11) {
                zzj().zzg().zza("Failed to load string array from metadata: resource not found", e11);
                return null;
            }
        }
        zzj().zzg().zza("Failed to load metadata: Metadata bundle is null");
        numValueOf = null;
        if (numValueOf == null) {
            return null;
        }
        stringArray = zza().getResources().getStringArray(numValueOf.intValue());
        if (stringArray == null) {
            return null;
        }
        return Arrays.asList(stringArray);
    }

    public final void zzh(String str) {
        this.zzb = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    final boolean zzi(String str) {
        return zzf(str, zzbh.zzam);
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzgo zzj() {
        return super.zzj();
    }

    public final boolean zzj(String str) {
        return "1".equals(this.zzc.zza(str, "gaia_collection_enabled"));
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzha zzk() {
        return super.zzk();
    }

    public final boolean zzk(String str) {
        return "1".equals(this.zzc.zza(str, "measurement.event_sampling_enabled"));
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzhv zzl() {
        return super.zzl();
    }

    public final String zzo() {
        return zza("debug.firebase.analytics.app", "");
    }

    public final String zzp() {
        return zza("debug.deferred.deeplink", "");
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public final String zzu() {
        return this.zzb;
    }

    public final boolean zzv() {
        Boolean boolZze = zze("google_analytics_adid_collection_enabled");
        return boolZze == null || boolZze.booleanValue();
    }

    public final boolean zzw() {
        Boolean boolZze = zze("google_analytics_automatic_screen_reporting_enabled");
        return boolZze == null || boolZze.booleanValue();
    }

    public final boolean zzx() {
        Boolean boolZze = zze("firebase_analytics_collection_deactivated");
        return boolZze != null && boolZze.booleanValue();
    }

    final boolean zzy() {
        if (this.zza == null) {
            Boolean boolZze = zze("app_measurement_lite");
            this.zza = boolZze;
            if (boolZze == null) {
                this.zza = Boolean.FALSE;
            }
        }
        return this.zza.booleanValue() || !this.zzu.zzag();
    }

    public final boolean zzz() {
        if (this.zzd == null) {
            synchronized (this) {
                try {
                    if (this.zzd == null) {
                        ApplicationInfo applicationInfo = zza().getApplicationInfo();
                        String myProcessName = ProcessUtils.getMyProcessName();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            this.zzd = Boolean.valueOf(str != null && str.equals(myProcessName));
                        }
                        if (this.zzd == null) {
                            this.zzd = Boolean.TRUE;
                            zzj().zzg().zza("My process not in the list of running processes");
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.zzd.booleanValue();
    }
}
