package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.Clock;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmw extends zznr {
    public final zzhb zza;
    public final zzhb zzb;
    public final zzhb zzc;
    public final zzhb zzd;
    public final zzhb zze;
    public final zzhb zzf;
    private final Map<String, zzmv> zzh;

    zzmw(zznv zznvVar) {
        super(zznvVar);
        this.zzh = new HashMap();
        zzha zzhaVarZzk = zzk();
        Objects.requireNonNull(zzhaVarZzk);
        this.zza = new zzhb(zzhaVarZzk, "last_delete_stale", 0L);
        zzha zzhaVarZzk2 = zzk();
        Objects.requireNonNull(zzhaVarZzk2);
        this.zzb = new zzhb(zzhaVarZzk2, "last_delete_stale_batch", 0L);
        zzha zzhaVarZzk3 = zzk();
        Objects.requireNonNull(zzhaVarZzk3);
        this.zzc = new zzhb(zzhaVarZzk3, "backoff", 0L);
        zzha zzhaVarZzk4 = zzk();
        Objects.requireNonNull(zzhaVarZzk4);
        this.zzd = new zzhb(zzhaVarZzk4, "last_upload", 0L);
        zzha zzhaVarZzk5 = zzk();
        Objects.requireNonNull(zzhaVarZzk5);
        this.zze = new zzhb(zzhaVarZzk5, "last_upload_attempt", 0L);
        zzha zzhaVarZzk6 = zzk();
        Objects.requireNonNull(zzhaVarZzk6);
        this.zzf = new zzhb(zzhaVarZzk6, "midnight_offset", 0L);
    }

    @Deprecated
    private final Pair<String, Boolean> zza(String str) {
        zzmv zzmvVar;
        AdvertisingIdClient.Info advertisingIdInfo;
        zzt();
        long jElapsedRealtime = zzb().elapsedRealtime();
        zzmv zzmvVar2 = this.zzh.get(str);
        if (zzmvVar2 != null && jElapsedRealtime < zzmvVar2.zzc) {
            return new Pair<>(zzmvVar2.zza, Boolean.valueOf(zzmvVar2.zzb));
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        long jZzd = zze().zzd(str) + jElapsedRealtime;
        try {
            try {
                advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zza());
            } catch (PackageManager.NameNotFoundException unused) {
                if (zzmvVar2 != null && jElapsedRealtime < zzmvVar2.zzc + zze().zzc(str, zzbh.zzb)) {
                    return new Pair<>(zzmvVar2.zza, Boolean.valueOf(zzmvVar2.zzb));
                }
                advertisingIdInfo = null;
            }
            if (advertisingIdInfo == null) {
                return new Pair<>("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
            }
            String id2 = advertisingIdInfo.getId();
            zzmvVar = id2 != null ? new zzmv(id2, advertisingIdInfo.isLimitAdTrackingEnabled(), jZzd) : new zzmv("", advertisingIdInfo.isLimitAdTrackingEnabled(), jZzd);
            this.zzh.put(str, zzmvVar);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(zzmvVar.zza, Boolean.valueOf(zzmvVar.zzb));
        } catch (Exception e11) {
            zzj().zzc().zza("Unable to get advertising id", e11);
            zzmvVar = new zzmv("", false, jZzd);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzoo g_() {
        return super.g_();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    final Pair<String, Boolean> zza(String str, zzje zzjeVar) {
        return zzjeVar.zzg() ? zza(str) : new Pair<>("", Boolean.FALSE);
    }

    @Deprecated
    final String zza(String str, boolean z10) {
        zzt();
        String str2 = z10 ? (String) zza(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest messageDigestZzu = zzos.zzu();
        if (messageDigestZzu == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestZzu.digest(str2.getBytes())));
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    protected final boolean zzc() {
        return false;
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

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzt zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzal zzh() {
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

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzhl zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzmw zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zznu zzo() {
        return super.zzo();
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
}
