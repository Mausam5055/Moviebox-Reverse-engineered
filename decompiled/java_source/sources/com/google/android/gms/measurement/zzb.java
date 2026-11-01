package com.google.android.gms.measurement;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.collection.a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzhy;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzjm;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzon;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzb extends AppMeasurement.zza {
    private final zzhy zza;
    private final zzjq zzb;

    public zzb(@NonNull zzhy zzhyVar) {
        super();
        Preconditions.checkNotNull(zzhyVar);
        this.zza = zzhyVar;
        this.zzb = zzhyVar.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final int zza(String str) {
        return zzjq.zza(str);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Boolean zza() {
        return this.zzb.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final Object zza(int i11) {
        if (i11 == 0) {
            return zze();
        }
        if (i11 == 1) {
            return zzd();
        }
        if (i11 == 2) {
            return zzb();
        }
        if (i11 == 3) {
            return zzc();
        }
        if (i11 != 4) {
            return null;
        }
        return zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final List<Bundle> zza(String str, String str2) {
        return this.zzb.zza(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final Map<String, Object> zza(String str, String str2, boolean z10) {
        return this.zzb.zza(str, str2, z10);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Map<String, Object> zza(boolean z10) {
        List<zzon> listZza = this.zzb.zza(z10);
        a aVar = new a(listZza.size());
        for (zzon zzonVar : listZza) {
            Object objZza = zzonVar.zza();
            if (objZza != null) {
                aVar.put(zzonVar.zza, objZza);
            }
        }
        return aVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(Bundle bundle) {
        this.zzb.zzb(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(zzjl zzjlVar) {
        this.zzb.zza(zzjlVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(zzjm zzjmVar) {
        this.zzb.zza(zzjmVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(String str, String str2, Bundle bundle) {
        this.zza.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(String str, String str2, Bundle bundle, long j11) {
        this.zzb.zza(str, str2, bundle, j11);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Double zzb() {
        return this.zzb.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(zzjl zzjlVar) {
        this.zzb.zzb(zzjlVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(String str) {
        this.zza.zze().zza(str, this.zza.zzb().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(String str, String str2, Bundle bundle) {
        this.zzb.zzb(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Integer zzc() {
        return this.zzb.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzc(String str) {
        this.zza.zze().zzb(str, this.zza.zzb().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Long zzd() {
        return this.zzb.zzaf();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final String zze() {
        return this.zzb.zzak();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final long zzf() {
        return this.zza.zzt().zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzg() {
        return this.zzb.zzag();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzh() {
        return this.zzb.zzah();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzi() {
        return this.zzb.zzai();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzj() {
        return this.zzb.zzag();
    }
}
