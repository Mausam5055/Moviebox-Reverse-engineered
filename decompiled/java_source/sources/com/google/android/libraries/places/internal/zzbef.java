package com.google.android.libraries.places.internal;

import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbef extends zzbej implements zzbfr, zzbmv {
    private static final Logger zza = Logger.getLogger(zzbef.class.getName());
    private final zzbqz zzb;
    private final zzbis zzc;
    private final boolean zzd;
    private zzbcf zze;
    private volatile boolean zzf;

    protected zzbef(zzbrb zzbrbVar, zzbqo zzbqoVar, zzbqz zzbqzVar, zzbcf zzbcfVar, zzayj zzayjVar, boolean z10) {
        zzmt.zzc(zzbqzVar, "transportTracer");
        this.zzb = zzbqzVar;
        this.zzd = !Boolean.TRUE.equals(zzayjVar.zzl(zzbjd.zzo));
        this.zzc = new zzbmw(this, zzbrbVar, zzbqoVar);
        this.zze = zzbcfVar;
    }

    protected abstract zzbec zza();

    protected abstract zzbee zzb();

    @Override // com.google.android.libraries.places.internal.zzbej
    protected /* bridge */ /* synthetic */ zzbei zzc() {
        throw null;
    }

    @Override // com.google.android.libraries.places.internal.zzbej
    protected final zzbis zzd() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzbqz zze() {
        return this.zzb;
    }

    @Override // com.google.android.libraries.places.internal.zzbfr
    public final void zzg(zzbjj zzbjjVar) {
        zzbjjVar.zzb("remote_addr", zzam().zzc(zzazw.zza));
    }

    @Override // com.google.android.libraries.places.internal.zzbfr
    public final void zzh(zzbdo zzbdoVar) {
        zzmt.zzf(!zzbdoVar.zzl(), "Should not cancel with OK status");
        this.zzf = true;
        zza().zza(zzbdoVar);
    }

    @Override // com.google.android.libraries.places.internal.zzbmv
    public final void zzi(zzbra zzbraVar, boolean z10, boolean z11, int i11) {
        boolean z12 = true;
        if (zzbraVar == null && !z10) {
            z12 = false;
        }
        zzmt.zzf(z12, "null frame before EOS");
        zza().zzb(zzbraVar, z10, z11, i11);
    }

    @Override // com.google.android.libraries.places.internal.zzbfr
    public final void zzj() {
        if (zzb().zzk()) {
            return;
        }
        zzb().zzg = true;
        zzd().zzb();
    }

    @Override // com.google.android.libraries.places.internal.zzbfr
    public final void zzk(zzazn zzaznVar) {
        zzbcf zzbcfVar = this.zze;
        zzbca zzbcaVar = zzbjd.zzb;
        zzbcfVar.zzd(zzbcaVar);
        this.zze.zzf(zzbcaVar, Long.valueOf(Math.max(0L, zzaznVar.zzb(TimeUnit.NANOSECONDS))));
    }

    @Override // com.google.android.libraries.places.internal.zzbfr
    public final void zzl(zzazq zzazqVar) {
        zzbee.zzc(zzb(), zzazqVar);
    }

    @Override // com.google.android.libraries.places.internal.zzbfr
    public final void zzm(int i11) {
        zzb().zzx(i11);
    }

    @Override // com.google.android.libraries.places.internal.zzbfr
    public final void zzn(int i11) {
        this.zzc.zzd(i11);
    }

    @Override // com.google.android.libraries.places.internal.zzbfr
    public final void zzo(zzbft zzbftVar) {
        zzb().zzi(zzbftVar);
        zza().zzc(this.zze, null);
        this.zze = null;
    }

    @Override // com.google.android.libraries.places.internal.zzbej, com.google.android.libraries.places.internal.zzbqp
    public final boolean zzp() {
        return zzc().zzc() && !this.zzf;
    }

    public final boolean zzq() {
        return this.zzd;
    }
}
