package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzls extends zzh {
    private final zzmq zza;
    private zzgb zzb;
    private volatile Boolean zzc;
    private final zzav zzd;
    private final zznl zze;
    private final List<Runnable> zzf;
    private final zzav zzg;

    protected zzls(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzf = new ArrayList();
        this.zze = new zznl(zzhyVar.zzb());
        this.zza = new zzmq(this);
        this.zzd = new zzlt(this, zzhyVar);
        this.zzg = new zzmg(this, zzhyVar);
    }

    static /* synthetic */ void zza(zzls zzlsVar, ComponentName componentName) {
        zzlsVar.zzt();
        if (zzlsVar.zzb != null) {
            zzlsVar.zzb = null;
            zzlsVar.zzj().zzp().zza("Disconnected from device MeasurementService", componentName);
            zzlsVar.zzt();
            zzlsVar.zzae();
        }
    }

    private final void zza(Runnable runnable) throws IllegalStateException {
        zzt();
        if (zzal()) {
            runnable.run();
        } else {
            if (this.zzf.size() >= 1000) {
                zzj().zzg().zza("Discarding data. Max runnable queue size reached");
                return;
            }
            this.zzf.add(runnable);
            this.zzg.zza(60000L);
            zzae();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaq() {
        zzt();
        zzj().zzp().zza("Processing queued up service tasks", Integer.valueOf(this.zzf.size()));
        Iterator<Runnable> it = this.zzf.iterator();
        while (it.hasNext()) {
            try {
                it.next().run();
            } catch (RuntimeException e11) {
                zzj().zzg().zza("Task exception while flushing queue", e11);
            }
        }
        this.zzf.clear();
        this.zzg.zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzar() {
        zzt();
        this.zze.zzb();
        this.zzd.zza(zzbh.zzal.zza(null).longValue());
    }

    private final zzo zzc(boolean z10) {
        return zzg().zza(z10 ? zzj().zzx() : null);
    }

    static /* synthetic */ void zzd(zzls zzlsVar) {
        zzlsVar.zzt();
        if (zzlsVar.zzal()) {
            zzlsVar.zzj().zzp().zza("Inactivity, disconnecting from the service");
            zzlsVar.zzaf();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final void zza(Bundle bundle) {
        zzt();
        zzu();
        zza(new zzmf(this, zzc(false), bundle));
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar) {
        zzt();
        zzu();
        zza(new zzmc(this, zzc(false), zzdoVar));
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar, zzbf zzbfVar, String str) {
        zzt();
        zzu();
        if (zzq().zza(12451000) == 0) {
            zza(new zzmi(this, zzbfVar, str, zzdoVar));
        } else {
            zzj().zzu().zza("Not bundling data. Service unavailable or out of date");
            zzq().zza(zzdoVar, new byte[0]);
        }
    }

    protected final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar, String str, String str2) {
        zzt();
        zzu();
        zza(new zzmo(this, str, str2, zzc(false), zzdoVar));
    }

    protected final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar, String str, String str2, boolean z10) {
        zzt();
        zzu();
        zza(new zzlw(this, str, str2, zzc(false), z10, zzdoVar));
    }

    protected final void zza(zzae zzaeVar) {
        Preconditions.checkNotNull(zzaeVar);
        zzt();
        zzu();
        zza(new zzmm(this, true, zzc(true), zzh().zza(zzaeVar), new zzae(zzaeVar), zzaeVar));
    }

    protected final void zza(zzbf zzbfVar, String str) {
        Preconditions.checkNotNull(zzbfVar);
        zzt();
        zzu();
        zza(new zzmj(this, true, zzc(true), zzh().zza(zzbfVar), zzbfVar, str));
    }

    protected final void zza(zzgb zzgbVar) {
        zzt();
        Preconditions.checkNotNull(zzgbVar);
        this.zzb = zzgbVar;
        zzar();
        zzaq();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:70:0x0139 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    final void zza(zzgb zzgbVar, AbstractSafeParcelable abstractSafeParcelable, zzo zzoVar) throws Throwable {
        int size;
        long jElapsedRealtime;
        long j11;
        long jCurrentTimeMillis;
        zzt();
        zzu();
        int i11 = 100;
        int i12 = 0;
        for (int i13 = 100; i12 < 1001 && i11 == i13; i13 = 100) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> listZza = zzh().zza(i13);
            if (listZza != null) {
                arrayList.addAll(listZza);
                size = listZza.size();
            } else {
                size = 0;
            }
            if (abstractSafeParcelable != null && size < i13) {
                arrayList.add(abstractSafeParcelable);
            }
            boolean zZza = zze().zza(zzbh.zzce);
            int size2 = arrayList.size();
            int i14 = 0;
            while (i14 < size2) {
                int i15 = i14 + 1;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList.get(i14);
                if (abstractSafeParcelable2 instanceof zzbf) {
                    if (zZza) {
                        try {
                            jCurrentTimeMillis = this.zzu.zzb().currentTimeMillis();
                            try {
                                jElapsedRealtime = this.zzu.zzb().elapsedRealtime();
                            } catch (RemoteException e11) {
                                e = e11;
                                jElapsedRealtime = 0;
                                j11 = jCurrentTimeMillis;
                                zzj().zzg().zza("Failed to send event to the service", e);
                                if (!zZza) {
                                }
                                i14 = i15;
                            }
                        } catch (RemoteException e12) {
                            e = e12;
                            jElapsedRealtime = 0;
                            j11 = 0;
                            zzj().zzg().zza("Failed to send event to the service", e);
                            if (!zZza) {
                            }
                        }
                    } else {
                        jCurrentTimeMillis = 0;
                        jElapsedRealtime = 0;
                    }
                    try {
                        zzgbVar.zza((zzbf) abstractSafeParcelable2, zzoVar);
                        if (zZza) {
                            zzj().zzp().zza("Logging telemetry for logEvent from database");
                            zzgm.zza(this.zzu).zza(36301, 0, jCurrentTimeMillis, this.zzu.zzb().currentTimeMillis(), (int) (this.zzu.zzb().elapsedRealtime() - jElapsedRealtime));
                        }
                    } catch (RemoteException e13) {
                        e = e13;
                        j11 = jCurrentTimeMillis;
                        zzj().zzg().zza("Failed to send event to the service", e);
                        if (!zZza && j11 != 0) {
                            zzgm.zza(this.zzu).zza(36301, 13, j11, this.zzu.zzb().currentTimeMillis(), (int) (this.zzu.zzb().elapsedRealtime() - jElapsedRealtime));
                        }
                    }
                } else if (abstractSafeParcelable2 instanceof zzon) {
                    try {
                        zzgbVar.zza((zzon) abstractSafeParcelable2, zzoVar);
                    } catch (RemoteException e14) {
                        zzj().zzg().zza("Failed to send user property to the service", e14);
                    }
                } else if (abstractSafeParcelable2 instanceof zzae) {
                    try {
                        zzgbVar.zza((zzae) abstractSafeParcelable2, zzoVar);
                    } catch (RemoteException e15) {
                        zzj().zzg().zza("Failed to send conditional user property to the service", e15);
                    }
                } else {
                    zzj().zzg().zza("Discarding data. Unrecognized parcel type.");
                }
                i14 = i15;
            }
            i12++;
            i11 = size;
        }
    }

    protected final void zza(zzlk zzlkVar) {
        zzt();
        zzu();
        zza(new zzmd(this, zzlkVar));
    }

    protected final void zza(zzon zzonVar) {
        zzt();
        zzu();
        zza(new zzlx(this, zzc(true), zzh().zza(zzonVar), zzonVar));
    }

    public final void zza(AtomicReference<String> atomicReference) {
        zzt();
        zzu();
        zza(new zzlz(this, atomicReference, zzc(false)));
    }

    protected final void zza(AtomicReference<List<zzno>> atomicReference, Bundle bundle) {
        zzt();
        zzu();
        zza(new zzly(this, atomicReference, zzc(false), bundle));
    }

    protected final void zza(AtomicReference<List<zzae>> atomicReference, String str, String str2, String str3) {
        zzt();
        zzu();
        zza(new zzml(this, atomicReference, str, str2, str3, zzc(false)));
    }

    protected final void zza(AtomicReference<List<zzon>> atomicReference, String str, String str2, String str3, boolean z10) {
        zzt();
        zzu();
        zza(new zzmn(this, atomicReference, str, str2, str3, zzc(false), z10));
    }

    protected final void zza(AtomicReference<List<zzon>> atomicReference, boolean z10) {
        zzt();
        zzu();
        zza(new zzlv(this, atomicReference, zzc(false), z10));
    }

    protected final void zza(boolean z10) {
        zzt();
        zzu();
        if ((!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zza(zzbh.zzcx)) && z10) {
            zzh().zzaa();
        }
        if (zzan()) {
            zza(new zzmk(this, zzc(false)));
        }
    }

    protected final zzaj zzaa() {
        zzt();
        zzu();
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            zzae();
            zzj().zzc().zza("Failed to get consents; not connected to service yet.");
            return null;
        }
        zzo zzoVarZzc = zzc(false);
        Preconditions.checkNotNull(zzoVarZzc);
        try {
            zzaj zzajVarZza = zzgbVar.zza(zzoVarZzc);
            zzar();
            return zzajVarZza;
        } catch (RemoteException e11) {
            zzj().zzg().zza("Failed to get consents; remote exception", e11);
            return null;
        }
    }

    final Boolean zzab() {
        return this.zzc;
    }

    protected final void zzac() {
        zzt();
        zzu();
        zza(new zzme(this, zzc(true)));
    }

    protected final void zzad() {
        zzt();
        zzu();
        zzo zzoVarZzc = zzc(true);
        zzh().zzab();
        zza(new zzmb(this, zzoVarZzc));
    }

    final void zzae() {
        zzt();
        zzu();
        if (zzal()) {
            return;
        }
        if (zzap()) {
            this.zza.zza();
            return;
        }
        if (zze().zzy()) {
            return;
        }
        List<ResolveInfo> listQueryIntentServices = zza().getPackageManager().queryIntentServices(new Intent().setClassName(zza(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            zzj().zzg().zza("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        intent.setComponent(new ComponentName(zza(), "com.google.android.gms.measurement.AppMeasurementService"));
        this.zza.zza(intent);
    }

    public final void zzaf() {
        zzt();
        zzu();
        this.zza.zzb();
        try {
            ConnectionTracker.getInstance().unbindService(zza(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.zzb = null;
    }

    final /* synthetic */ void zzag() {
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            zzj().zzg().zza("Failed to send Dma consent settings to service");
            return;
        }
        try {
            zzo zzoVarZzc = zzc(false);
            Preconditions.checkNotNull(zzoVarZzc);
            zzgbVar.zzg(zzoVarZzc);
            zzar();
        } catch (RemoteException e11) {
            zzj().zzg().zza("Failed to send Dma consent settings to the service", e11);
        }
    }

    final /* synthetic */ void zzah() {
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            zzj().zzg().zza("Failed to send storage consent settings to service");
            return;
        }
        try {
            zzo zzoVarZzc = zzc(false);
            Preconditions.checkNotNull(zzoVarZzc);
            zzgbVar.zzi(zzoVarZzc);
            zzar();
        } catch (RemoteException e11) {
            zzj().zzg().zza("Failed to send storage consent settings to the service", e11);
        }
    }

    protected final void zzai() {
        zzt();
        zzu();
        zzo zzoVarZzc = zzc(false);
        zzh().zzaa();
        zza(new zzma(this, zzoVarZzc));
    }

    protected final void zzaj() {
        zzt();
        zzu();
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlu
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzag();
            }
        });
    }

    protected final void zzak() {
        zzt();
        zzu();
        zza(new zzmh(this, zzc(true)));
    }

    public final boolean zzal() {
        zzt();
        zzu();
        return this.zzb != null;
    }

    final boolean zzam() {
        zzt();
        zzu();
        return !zzap() || zzq().zzg() >= 200900;
    }

    final boolean zzan() {
        zzt();
        zzu();
        return !zzap() || zzq().zzg() >= zzbh.zzbt.zza(null).intValue();
    }

    final boolean zzao() {
        zzt();
        zzu();
        return !zzap() || zzq().zzg() >= 241200;
    }

    final boolean zzap() {
        boolean z10;
        zzt();
        zzu();
        if (this.zzc == null) {
            zzt();
            zzu();
            Boolean boolZzp = zzk().zzp();
            boolean z11 = true;
            if (boolZzp == null || !boolZzp.booleanValue()) {
                boolean z12 = false;
                if (zzg().zzaa() == 1) {
                    z10 = true;
                } else {
                    zzj().zzp().zza("Checking service availability");
                    int iZza = zzq().zza(12451000);
                    if (iZza != 0) {
                        if (iZza == 1) {
                            zzj().zzp().zza("Service missing");
                        } else if (iZza != 2) {
                            if (iZza == 3) {
                                zzj().zzu().zza("Service disabled");
                            } else if (iZza == 9) {
                                zzj().zzu().zza("Service invalid");
                            } else if (iZza != 18) {
                                zzj().zzu().zza("Unexpected service status", Integer.valueOf(iZza));
                            } else {
                                zzj().zzu().zza("Service updating");
                            }
                            z10 = false;
                            z11 = false;
                        } else {
                            zzj().zzc().zza("Service container out of date");
                            if (zzq().zzg() >= 17443) {
                                z11 = boolZzp == null;
                                z10 = false;
                            }
                        }
                        z10 = true;
                        z11 = false;
                    } else {
                        zzj().zzp().zza("Service available");
                    }
                    z10 = true;
                }
                if (z11 || !zze().zzy()) {
                    z12 = z10;
                } else {
                    zzj().zzg().zza("No way to upload. Consider using the full version of Analytics");
                }
                if (z12) {
                    zzk().zza(z11);
                }
            }
            this.zzc = Boolean.valueOf(z11);
        }
        return this.zzc.booleanValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    protected final void zzb(boolean z10) {
        zzt();
        zzu();
        if ((!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zza(zzbh.zzcx)) && z10) {
            zzh().zzaa();
        }
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlr
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzah();
            }
        });
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

    @Override // com.google.android.gms.measurement.internal.zzh
    protected final boolean zzz() {
        return false;
    }
}
