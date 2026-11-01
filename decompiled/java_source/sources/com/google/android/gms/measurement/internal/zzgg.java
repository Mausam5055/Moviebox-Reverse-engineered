package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpz;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgg extends zzh {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private long zze;
    private long zzf;
    private List<String> zzg;
    private String zzh;
    private int zzi;
    private String zzj;
    private String zzk;
    private String zzl;
    private long zzm;
    private String zzn;

    zzgg(zzhy zzhyVar, long j11) {
        super(zzhyVar);
        this.zzm = 0L;
        this.zzn = null;
        this.zzf = j11;
    }

    private final String zzah() {
        if (zzpz.zza() && zze().zza(zzbh.zzbr)) {
            zzj().zzp().zza("Disabled IID for tests.");
            return null;
        }
        try {
            Class<?> clsLoadClass = zza().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (clsLoadClass == null) {
                return null;
            }
            try {
                Object objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, zza());
                if (objInvoke == null) {
                    return null;
                }
                try {
                    return (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", null).invoke(objInvoke, null);
                } catch (Exception unused) {
                    zzj().zzv().zza("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception unused2) {
                zzj().zzw().zza("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException unused3) {
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0166  */
    /* JADX WARN: Code duplicated, block: B:46:0x0169  */
    /* JADX WARN: Code duplicated, block: B:52:0x01af  */
    /* JADX WARN: Code duplicated, block: B:58:0x01ce  */
    final zzo zza(String str) {
        List<String> list;
        String str2;
        long j11;
        boolean z10;
        boolean z11;
        String str3;
        Boolean boolZze;
        boolean zBooleanValue;
        int iZzc;
        long jZzm;
        zzt();
        String strZzad = zzad();
        String strZzae = zzae();
        zzu();
        String str4 = this.zzb;
        long jZzab = zzab();
        zzu();
        Preconditions.checkNotNull(this.zzd);
        String str5 = this.zzd;
        zzu();
        zzt();
        if (this.zze == 0) {
            this.zze = this.zzu.zzt().zza(zza(), zza().getPackageName());
        }
        long j12 = this.zze;
        boolean zZzac = this.zzu.zzac();
        boolean z12 = !zzk().zzm;
        zzt();
        String strZzah = !this.zzu.zzac() ? null : zzah();
        zzhy zzhyVar = this.zzu;
        long jZza = zzhyVar.zzn().zzc.zza();
        long jMin = jZza == 0 ? zzhyVar.zza : Math.min(zzhyVar.zza, jZza);
        int iZzaa = zzaa();
        boolean zZzv = zze().zzv();
        zzha zzhaVarZzk = zzk();
        zzhaVarZzk.zzt();
        boolean z13 = zzhaVarZzk.zzg().getBoolean("deferred_analytics_collection", false);
        String strZzac = zzac();
        Boolean boolZze2 = zze().zze("google_analytics_default_allow_ad_personalization_signals");
        Boolean boolValueOf = boolZze2 == null ? null : Boolean.valueOf(!boolZze2.booleanValue());
        long j13 = this.zzf;
        List<String> list2 = this.zzg;
        String strZzf = zzk().zzo().zzf();
        if (this.zzh == null) {
            this.zzh = zzq().zzp();
        }
        String str6 = this.zzh;
        if (com.google.android.gms.internal.measurement.zznm.zza()) {
            list = list2;
            str2 = str6;
            if (zze().zza(zzbh.zzcx) && !zzk().zzo().zza(zzje.zza.ANALYTICS_STORAGE)) {
                z10 = zZzac;
                z11 = z12;
                j11 = 0;
                str3 = null;
            }
            boolZze = zze().zze("google_analytics_sgtm_upload_enabled");
            if (boolZze == null) {
                zBooleanValue = false;
            } else {
                zBooleanValue = boolZze.booleanValue();
            }
            long jZzc = zzq().zzc(zzad());
            int iZza = zzk().zzo().zza();
            String strZzf2 = zzk().zzn().zzf();
            if (zzpn.zza() || !zze().zza(zzbh.zzci)) {
                iZzc = 0;
            } else {
                zzq();
                iZzc = zzos.zzc();
            }
            if (zzpn.zza() || !zze().zza(zzbh.zzci)) {
                jZzm = j11;
            } else {
                jZzm = zzq().zzm();
            }
            return new zzo(strZzad, strZzae, str4, jZzab, str5, 106000L, j12, str, z10, z11, strZzah, 0L, jMin, iZzaa, zZzv, z13, strZzac, boolValueOf, j13, list, (String) null, strZzf, str2, str3, zBooleanValue, jZzc, iZza, strZzf2, iZzc, jZzm, zze().zzu(), new zzf(zze().zzc("google_analytics_default_allow_ad_personalization_signals", true)).zzb());
        }
        list = list2;
        str2 = str6;
        zzt();
        j11 = 0;
        if (this.zzm != 0) {
            z10 = zZzac;
            z11 = z12;
            long jCurrentTimeMillis = zzb().currentTimeMillis() - this.zzm;
            if (this.zzl != null && jCurrentTimeMillis > 86400000 && this.zzn == null) {
                zzag();
            }
        } else {
            z10 = zZzac;
            z11 = z12;
        }
        if (this.zzl == null) {
            zzag();
        }
        str3 = this.zzl;
        boolZze = zze().zze("google_analytics_sgtm_upload_enabled");
        if (boolZze == null) {
            zBooleanValue = false;
        } else {
            zBooleanValue = boolZze.booleanValue();
        }
        long jZzc2 = zzq().zzc(zzad());
        int iZza2 = zzk().zzo().zza();
        String strZzf3 = zzk().zzn().zzf();
        if (zzpn.zza()) {
            iZzc = 0;
        } else {
            iZzc = 0;
        }
        if (zzpn.zza()) {
            jZzm = j11;
        } else {
            jZzm = j11;
        }
        return new zzo(strZzad, strZzae, str4, jZzab, str5, 106000L, j12, str, z10, z11, strZzah, 0L, jMin, iZzaa, zZzv, z13, strZzac, boolValueOf, j13, list, (String) null, strZzf, str2, str3, zBooleanValue, jZzc2, iZza2, strZzf3, iZzc, jZzm, zze().zzu(), new zzf(zze().zzc("google_analytics_default_allow_ad_personalization_signals", true)).zzb());
    }

    final int zzaa() {
        zzu();
        return this.zzi;
    }

    final int zzab() {
        zzu();
        return this.zzc;
    }

    final String zzac() {
        zzu();
        return this.zzk;
    }

    final String zzad() {
        zzu();
        Preconditions.checkNotNull(this.zza);
        return this.zza;
    }

    final String zzae() {
        zzt();
        zzu();
        Preconditions.checkNotNull(this.zzj);
        return this.zzj;
    }

    final List<String> zzaf() {
        return this.zzg;
    }

    final void zzag() {
        String str;
        zzt();
        if (zzk().zzo().zza(zzje.zza.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            zzq().zzv().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            zzj().zzc().zza("Analytics Storage consent is not granted");
            str = null;
        }
        zzj().zzc().zza(String.format("Resetting session stitching token to %s", str == null ? "null" : "not null"));
        this.zzl = str;
        this.zzm = zzb().currentTimeMillis();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    final boolean zzb(String str) {
        String str2 = this.zzn;
        boolean z10 = (str2 == null || str2.equals(str)) ? false : true;
        this.zzn = str;
        return z10;
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzab zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzag zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzgg zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzgf zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzgo zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzha zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzhv zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzjq zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzlj zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzls zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zznb zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.measurement.internal.zzh
    protected final void zzx() {
        String str;
        String packageName = zza().getPackageName();
        PackageManager packageManager = zza().getPackageManager();
        String str2 = "";
        String installerPackageName = TmcConstants.ROUTE_UNKNOWN;
        String str3 = "Unknown";
        int i11 = Integer.MIN_VALUE;
        if (packageManager == null) {
            zzj().zzg().zza("PackageManager is null, app identity information might be inaccurate. appId", zzgo.zza(packageName));
        } else {
            try {
                installerPackageName = packageManager.getInstallerPackageName(packageName);
            } catch (IllegalArgumentException unused) {
                zzj().zzg().zza("Error retrieving app installer package name. appId", zzgo.zza(packageName));
            }
            if (installerPackageName == null) {
                installerPackageName = "manual_install";
            } else if ("com.android.vending".equals(installerPackageName)) {
                installerPackageName = "";
            }
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(zza().getPackageName(), 0);
                if (packageInfo != null) {
                    CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                    String string = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                    try {
                        str3 = packageInfo.versionName;
                        i11 = packageInfo.versionCode;
                    } catch (PackageManager.NameNotFoundException unused2) {
                        str = str3;
                        str3 = string;
                        zzj().zzg().zza("Error retrieving package info. appId, appName", zzgo.zza(packageName), str3);
                        str3 = str;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused3) {
                str = "Unknown";
            }
        }
        this.zza = packageName;
        this.zzd = installerPackageName;
        this.zzb = str3;
        this.zzc = i11;
        this.zze = 0L;
        Object[] objArr = !TextUtils.isEmpty(this.zzu.zzu()) && "am".equals(this.zzu.zzv());
        int iZzc = this.zzu.zzc();
        switch (iZzc) {
            case 0:
                zzj().zzp().zza("App measurement collection enabled");
                break;
            case 1:
                zzj().zzo().zza("App measurement deactivated via the manifest");
                break;
            case 2:
                zzj().zzp().zza("App measurement deactivated via the init parameters");
                break;
            case 3:
                zzj().zzo().zza("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                break;
            case 4:
                zzj().zzo().zza("App measurement disabled via the manifest");
                break;
            case 5:
                zzj().zzp().zza("App measurement disabled via the init parameters");
                break;
            case 6:
                zzj().zzv().zza("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                break;
            case 7:
                zzj().zzo().zza("App measurement disabled via the global data collection setting");
                break;
            case 8:
                zzj().zzo().zza("App measurement disabled due to denied storage consent");
                break;
            default:
                zzj().zzo().zza("App measurement disabled");
                zzj().zzn().zza("Invalid scion state in identity");
                break;
        }
        boolean z10 = iZzc == 0;
        this.zzj = "";
        this.zzk = "";
        if (objArr != false) {
            this.zzk = this.zzu.zzu();
        }
        try {
            String strZza = new zzhs(zza(), this.zzu.zzx()).zza("google_app_id");
            if (!TextUtils.isEmpty(strZza)) {
                str2 = strZza;
            }
            this.zzj = str2;
            if (!TextUtils.isEmpty(strZza)) {
                this.zzk = new zzhs(zza(), this.zzu.zzx()).zza("admob_app_id");
            }
            if (z10) {
                zzj().zzp().zza("App measurement enabled for app package, google app id", this.zza, TextUtils.isEmpty(this.zzj) ? this.zzk : this.zzj);
            }
        } catch (IllegalStateException e11) {
            zzj().zzg().zza("Fetching Google App Id failed with exception. appId", zzgo.zza(packageName), e11);
        }
        this.zzg = null;
        List<String> listZzg = zze().zzg("analytics.safelisted_events");
        if (listZzg == null) {
            this.zzg = listZzg;
        } else if (listZzg.isEmpty()) {
            zzj().zzv().zza("Safelisted event list is empty. Ignoring");
        } else {
            Iterator<String> it = listZzg.iterator();
            do {
                if (!it.hasNext()) {
                    this.zzg = listZzg;
                }
            } while (zzq().zzb("safelisted event", it.next()));
        }
        if (packageManager != null) {
            this.zzi = InstantApps.isInstantApp(zza()) ? 1 : 0;
        } else {
            this.zzi = 0;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzh
    protected final boolean zzz() {
        return true;
    }
}
