package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
final class zzfu implements zzgn {
    private static final zzga zza = new zzfs();
    private final zzga zzb;

    public zzfu() {
        zzga zzgaVar;
        zzes zzesVarZza = zzes.zza();
        try {
            zzgaVar = (zzga) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            zzgaVar = zza;
        }
        zzft zzftVar = new zzft(zzesVarZza, zzgaVar);
        byte[] bArr = zzfd.zzd;
        this.zzb = zzftVar;
    }

    private static boolean zzb(zzfz zzfzVar) {
        return zzfzVar.zzc() + (-1) != 1;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgn
    public final zzgm zza(Class cls) {
        zzgo.zzq(cls);
        zzfz zzfzVarZzb = this.zzb.zzb(cls);
        if (zzfzVarZzb.zzb()) {
            return zzex.class.isAssignableFrom(cls) ? zzgg.zzc(zzgo.zzn(), zzem.zzb(), zzfzVarZzb.zza()) : zzgg.zzc(zzgo.zzm(), zzem.zza(), zzfzVarZzb.zza());
        }
        if (zzex.class.isAssignableFrom(cls)) {
            return zzb(zzfzVarZzb) ? zzgf.zzl(cls, zzfzVarZzb, zzgi.zzb(), zzfq.zzd(), zzgo.zzn(), zzem.zzb(), zzfy.zzb()) : zzgf.zzl(cls, zzfzVarZzb, zzgi.zzb(), zzfq.zzd(), zzgo.zzn(), null, zzfy.zzb());
        }
        return zzb(zzfzVarZzb) ? zzgf.zzl(cls, zzfzVarZzb, zzgi.zza(), zzfq.zzc(), zzgo.zzm(), zzem.zza(), zzfy.zza()) : zzgf.zzl(cls, zzfzVarZzb, zzgi.zza(), zzfq.zzc(), zzgo.zzm(), null, zzfy.zza());
    }
}
