package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.internal.measurement.zzpo;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzli extends zznr {
    public zzli(zznv zznvVar) {
        super(zznvVar);
    }

    private static String zza(String str, String str2) {
        throw new SecurityException("This implementation should not be used.");
    }

    public final byte[] zza(@NonNull zzbf zzbfVar, String str) {
        zzop next;
        long j11;
        zzbb zzbbVarZza;
        zzt();
        this.zzu.zzy();
        Preconditions.checkNotNull(zzbfVar);
        Preconditions.checkNotEmpty(str);
        if (!zze().zze(str, zzbh.zzbl)) {
            zzj().zzc().zza("Generating ScionPayload disabled. packageName", str);
            return new byte[0];
        }
        if (!"_iap".equals(zzbfVar.zza) && !"_iapx".equals(zzbfVar.zza)) {
            zzj().zzc().zza("Generating a payload for this event is not available. package_name, event_name", str, zzbfVar.zza);
            return null;
        }
        com.google.android.gms.internal.measurement.zzfy.zzj.zza zzaVarZzb = com.google.android.gms.internal.measurement.zzfy.zzj.zzb();
        zzh().zzp();
        try {
            zzg zzgVarZze = zzh().zze(str);
            if (zzgVarZze == null) {
                zzj().zzc().zza("Log and bundle not available. package_name", str);
                byte[] bArr = new byte[0];
                zzh().zzu();
                return bArr;
            }
            if (!zzgVarZze.zzar()) {
                zzj().zzc().zza("Log and bundle disabled. package_name", str);
                byte[] bArr2 = new byte[0];
                zzh().zzu();
                return bArr2;
            }
            com.google.android.gms.internal.measurement.zzfy.zzk.zza zzaVarZzp = com.google.android.gms.internal.measurement.zzfy.zzk.zzw().zzh(1).zzp("android");
            if (!TextUtils.isEmpty(zzgVarZze.zzac())) {
                zzaVarZzp.zzb(zzgVarZze.zzac());
            }
            if (!TextUtils.isEmpty(zzgVarZze.zzae())) {
                zzaVarZzp.zzd((String) Preconditions.checkNotNull(zzgVarZze.zzae()));
            }
            if (!TextUtils.isEmpty(zzgVarZze.zzaf())) {
                zzaVarZzp.zze((String) Preconditions.checkNotNull(zzgVarZze.zzaf()));
            }
            if (zzgVarZze.zze() != -2147483648L) {
                zzaVarZzp.zze((int) zzgVarZze.zze());
            }
            zzaVarZzp.zzf(zzgVarZze.zzq()).zzd(zzgVarZze.zzo());
            String strZzah = zzgVarZze.zzah();
            String strZzaa = zzgVarZze.zzaa();
            if (!TextUtils.isEmpty(strZzah)) {
                zzaVarZzp.zzm(strZzah);
            } else if (!TextUtils.isEmpty(strZzaa)) {
                zzaVarZzp.zza(strZzaa);
            }
            zzaVarZzp.zzj(zzgVarZze.zzw());
            zzje zzjeVarZzb = this.zzg.zzb(str);
            zzaVarZzp.zzc(zzgVarZze.zzn());
            if (this.zzu.zzac() && zze().zzj(zzaVarZzp.zzt()) && zzjeVarZzb.zzg() && !TextUtils.isEmpty(null)) {
                zzaVarZzp.zzj((String) null);
            }
            zzaVarZzp.zzg(zzjeVarZzb.zze());
            if (zzjeVarZzb.zzg() && zzgVarZze.zzaq()) {
                Pair<String, Boolean> pairZza = zzn().zza(zzgVarZze.zzac(), zzjeVarZzb);
                if (zzgVarZze.zzaq() && pairZza != null && !TextUtils.isEmpty((CharSequence) pairZza.first)) {
                    try {
                        zzaVarZzp.zzq(zza((String) pairZza.first, Long.toString(zzbfVar.zzd)));
                        Object obj = pairZza.second;
                        if (obj != null) {
                            zzaVarZzp.zzc(((Boolean) obj).booleanValue());
                        }
                    } catch (SecurityException e11) {
                        zzj().zzc().zza("Resettable device id encryption failed", e11.getMessage());
                        byte[] bArr3 = new byte[0];
                        zzh().zzu();
                        return bArr3;
                    }
                }
            }
            zzf().zzac();
            com.google.android.gms.internal.measurement.zzfy.zzk.zza zzaVarZzi = zzaVarZzp.zzi(Build.MODEL);
            zzf().zzac();
            zzaVarZzi.zzo(Build.VERSION.RELEASE).zzj((int) zzf().zzc()).zzs(zzf().zzg());
            try {
                if (zzjeVarZzb.zzh() && zzgVarZze.zzad() != null) {
                    zzaVarZzp.zzc(zza((String) Preconditions.checkNotNull(zzgVarZze.zzad()), Long.toString(zzbfVar.zzd)));
                }
                if (!TextUtils.isEmpty(zzgVarZze.zzag())) {
                    zzaVarZzp.zzl((String) Preconditions.checkNotNull(zzgVarZze.zzag()));
                }
                String strZzac = zzgVarZze.zzac();
                List<zzop> listZzl = zzh().zzl(strZzac);
                Iterator<zzop> it = listZzl.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!"_lte".equals(next.zzc));
                if (next == null || next.zze == null) {
                    zzop zzopVar = new zzop(strZzac, "auto", "_lte", zzb().currentTimeMillis(), 0L);
                    listZzl.add(zzopVar);
                    zzh().zza(zzopVar);
                }
                com.google.android.gms.internal.measurement.zzfy.zzo[] zzoVarArr = new com.google.android.gms.internal.measurement.zzfy.zzo[listZzl.size()];
                for (int i11 = 0; i11 < listZzl.size(); i11++) {
                    com.google.android.gms.internal.measurement.zzfy.zzo.zza zzaVarZzb2 = com.google.android.gms.internal.measurement.zzfy.zzo.zze().zza(listZzl.get(i11).zzc).zzb(listZzl.get(i11).zzd);
                    g_().zza(zzaVarZzb2, listZzl.get(i11).zze);
                    zzoVarArr[i11] = (com.google.android.gms.internal.measurement.zzfy.zzo) ((com.google.android.gms.internal.measurement.zzjt) zzaVarZzb2.zzai());
                }
                zzaVarZzp.zze(Arrays.asList(zzoVarArr));
                this.zzg.zza(zzgVarZze, zzaVarZzp);
                if (zzov.zza() && zze().zza(zzbh.zzcu)) {
                    this.zzg.zzb(zzgVarZze, zzaVarZzp);
                }
                zzgs zzgsVarZza = zzgs.zza(zzbfVar);
                zzq().zza(zzgsVarZza.zzc, zzh().zzd(str));
                zzq().zza(zzgsVarZza, zze().zzb(str));
                Bundle bundle = zzgsVarZza.zzc;
                bundle.putLong("_c", 1L);
                zzj().zzc().zza("Marking in-app purchase as real-time");
                bundle.putLong("_r", 1L);
                bundle.putString("_o", zzbfVar.zzc);
                if (zzq().zzd(zzaVarZzp.zzt(), zzgVarZze.zzam())) {
                    zzq().zza(bundle, "_dbg", (Object) 1L);
                    zzq().zza(bundle, "_r", (Object) 1L);
                }
                zzbb zzbbVarZzd = zzh().zzd(str, zzbfVar.zza);
                if (zzbbVarZzd == null) {
                    zzbbVarZza = new zzbb(str, zzbfVar.zza, 0L, 0L, zzbfVar.zzd, 0L, null, null, null, null);
                    j11 = 0;
                } else {
                    j11 = zzbbVarZzd.zzf;
                    zzbbVarZza = zzbbVarZzd.zza(zzbfVar.zzd);
                }
                zzh().zza(zzbbVarZza);
                zzbc zzbcVar = new zzbc(this.zzu, zzbfVar.zzc, str, zzbfVar.zza, zzbfVar.zzd, j11, bundle);
                com.google.android.gms.internal.measurement.zzfy.zzf.zza zzaVarZza = com.google.android.gms.internal.measurement.zzfy.zzf.zze().zzb(zzbcVar.zzd).zza(zzbcVar.zzb).zza(zzbcVar.zze);
                for (String str2 : zzbcVar.zzf) {
                    com.google.android.gms.internal.measurement.zzfy.zzh.zza zzaVarZza2 = com.google.android.gms.internal.measurement.zzfy.zzh.zze().zza(str2);
                    Object objZzc = zzbcVar.zzf.zzc(str2);
                    if (objZzc != null) {
                        g_().zza(zzaVarZza2, objZzc);
                        zzaVarZza.zza(zzaVarZza2);
                    }
                }
                zzaVarZzp.zza(zzaVarZza).zza(com.google.android.gms.internal.measurement.zzfy.zzl.zza().zza(com.google.android.gms.internal.measurement.zzfy.zzg.zza().zza(zzbbVarZza.zzc).zza(zzbfVar.zza)));
                zzaVarZzp.zza(zzg().zza(zzgVarZze.zzac(), Collections.emptyList(), zzaVarZzp.zzab(), Long.valueOf(zzaVarZza.zzc()), Long.valueOf(zzaVarZza.zzc())));
                if (zzaVarZza.zzg()) {
                    zzaVarZzp.zzi(zzaVarZza.zzc()).zze(zzaVarZza.zzc());
                }
                long jZzs = zzgVarZze.zzs();
                if (jZzs != 0) {
                    zzaVarZzp.zzg(jZzs);
                }
                long jZzu = zzgVarZze.zzu();
                if (jZzu != 0) {
                    zzaVarZzp.zzh(jZzu);
                } else if (jZzs != 0) {
                    zzaVarZzp.zzh(jZzs);
                }
                String strZzal = zzgVarZze.zzal();
                if (zzpo.zza() && zze().zze(str, zzbh.zzbw) && strZzal != null) {
                    zzaVarZzp.zzr(strZzal);
                }
                zzgVarZze.zzap();
                zzaVarZzp.zzf((int) zzgVarZze.zzt()).zzl(106000L).zzk(zzb().currentTimeMillis()).zzd(true);
                this.zzg.zza(zzaVarZzp.zzt(), zzaVarZzp);
                zzaVarZzb.zza(zzaVarZzp);
                zzgVarZze.zzr(zzaVarZzp.zzf());
                zzgVarZze.zzp(zzaVarZzp.zze());
                zzh().zza(zzgVarZze, false, false);
                zzh().zzw();
                zzh().zzu();
                try {
                    return g_().zzb(((com.google.android.gms.internal.measurement.zzfy.zzj) ((com.google.android.gms.internal.measurement.zzjt) zzaVarZzb.zzai())).zzca());
                } catch (IOException e12) {
                    zzj().zzg().zza("Data loss. Failed to bundle and serialize. appId", zzgo.zza(str), e12);
                    return 0;
                }
            } catch (SecurityException e13) {
                zzj().zzc().zza("app instance id encryption failed", e13.getMessage());
                byte[] bArr4 = new byte[0];
                zzh().zzu();
                return bArr4;
            }
        } catch (Throwable th2) {
            zzh().zzu();
            throw th2;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    protected final boolean zzc() {
        return false;
    }
}
