package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzef implements zzhv {
    private final zzee zza;

    private zzef(zzee zzeeVar) {
        byte[] bArr = zzfd.zzd;
        this.zza = zzeeVar;
        zzeeVar.zza = this;
    }

    public static zzef zza(zzee zzeeVar) {
        zzef zzefVar = zzeeVar.zza;
        return zzefVar != null ? zzefVar : new zzef(zzeeVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzA(int i11, int i12) throws IOException {
        this.zza.zzp(i11, (i12 >> 31) ^ (i12 + i12));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzB(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                zzee zzeeVar = this.zza;
                int iIntValue = ((Integer) list.get(i12)).intValue();
                zzeeVar.zzp(i11, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int iZzx = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            int iIntValue2 = ((Integer) list.get(i13)).intValue();
            iZzx += zzee.zzx((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
        }
        this.zza.zzq(iZzx);
        while (i12 < list.size()) {
            zzee zzeeVar2 = this.zza;
            int iIntValue3 = ((Integer) list.get(i12)).intValue();
            zzeeVar2.zzq((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzC(int i11, long j11) throws IOException {
        this.zza.zzr(i11, (j11 >> 63) ^ (j11 + j11));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzD(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                zzee zzeeVar = this.zza;
                long jLongValue = ((Long) list.get(i12)).longValue();
                zzeeVar.zzr(i11, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int iZzy = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            long jLongValue2 = ((Long) list.get(i13)).longValue();
            iZzy += zzee.zzy((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        this.zza.zzq(iZzy);
        while (i12 < list.size()) {
            zzee zzeeVar2 = this.zza;
            long jLongValue3 = ((Long) list.get(i12)).longValue();
            zzeeVar2.zzs((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    @Deprecated
    public final void zzE(int i11) throws IOException {
        this.zza.zzo(i11, 3);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzF(int i11, String str) throws IOException {
        this.zza.zzm(i11, str);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzG(int i11, List list) throws IOException {
        int i12 = 0;
        if (!(list instanceof zzfk)) {
            while (i12 < list.size()) {
                this.zza.zzm(i11, (String) list.get(i12));
                i12++;
            }
            return;
        }
        zzfk zzfkVar = (zzfk) list;
        while (i12 < list.size()) {
            Object objZzf = zzfkVar.zzf(i12);
            if (objZzf instanceof String) {
                this.zza.zzm(i11, (String) objZzf);
            } else {
                this.zza.zze(i11, (zzdw) objZzf);
            }
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzH(int i11, int i12) throws IOException {
        this.zza.zzp(i11, i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzI(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzp(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int iZzx = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZzx += zzee.zzx(((Integer) list.get(i13)).intValue());
        }
        this.zza.zzq(iZzx);
        while (i12 < list.size()) {
            this.zza.zzq(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzJ(int i11, long j11) throws IOException {
        this.zza.zzr(i11, j11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzK(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzr(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int iZzy = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZzy += zzee.zzy(((Long) list.get(i13)).longValue());
        }
        this.zza.zzq(iZzy);
        while (i12 < list.size()) {
            this.zza.zzs(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzb(int i11, boolean z10) throws IOException {
        this.zza.zzd(i11, z10);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzc(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzd(i11, ((Boolean) list.get(i12)).booleanValue());
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Boolean) list.get(i14)).booleanValue();
            i13++;
        }
        this.zza.zzq(i13);
        while (i12 < list.size()) {
            this.zza.zzb(((Boolean) list.get(i12)).booleanValue() ? (byte) 1 : (byte) 0);
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzd(int i11, zzdw zzdwVar) throws IOException {
        this.zza.zze(i11, zzdwVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zze(int i11, List list) throws IOException {
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.zza.zze(i11, (zzdw) list.get(i12));
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzf(int i11, double d11) throws IOException {
        this.zza.zzh(i11, Double.doubleToRawLongBits(d11));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzg(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzh(i11, Double.doubleToRawLongBits(((Double) list.get(i12)).doubleValue()));
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Double) list.get(i14)).doubleValue();
            i13 += 8;
        }
        this.zza.zzq(i13);
        while (i12 < list.size()) {
            this.zza.zzi(Double.doubleToRawLongBits(((Double) list.get(i12)).doubleValue()));
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    @Deprecated
    public final void zzh(int i11) throws IOException {
        this.zza.zzo(i11, 4);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzi(int i11, int i12) throws IOException {
        this.zza.zzj(i11, i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzj(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzj(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int iZzu = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZzu += zzee.zzu(((Integer) list.get(i13)).intValue());
        }
        this.zza.zzq(iZzu);
        while (i12 < list.size()) {
            this.zza.zzk(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzk(int i11, int i12) throws IOException {
        this.zza.zzf(i11, i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzl(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzf(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Integer) list.get(i14)).intValue();
            i13 += 4;
        }
        this.zza.zzq(i13);
        while (i12 < list.size()) {
            this.zza.zzg(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzm(int i11, long j11) throws IOException {
        this.zza.zzh(i11, j11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzn(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzh(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Long) list.get(i14)).longValue();
            i13 += 8;
        }
        this.zza.zzq(i13);
        while (i12 < list.size()) {
            this.zza.zzi(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzo(int i11, float f11) throws IOException {
        this.zza.zzf(i11, Float.floatToRawIntBits(f11));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzp(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzf(i11, Float.floatToRawIntBits(((Float) list.get(i12)).floatValue()));
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Float) list.get(i14)).floatValue();
            i13 += 4;
        }
        this.zza.zzq(i13);
        while (i12 < list.size()) {
            this.zza.zzg(Float.floatToRawIntBits(((Float) list.get(i12)).floatValue()));
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzq(int i11, Object obj, zzgm zzgmVar) throws IOException {
        zzee zzeeVar = this.zza;
        zzeeVar.zzo(i11, 3);
        zzgmVar.zzi((zzgc) obj, zzeeVar.zza);
        zzeeVar.zzo(i11, 4);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzr(int i11, int i12) throws IOException {
        this.zza.zzj(i11, i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzs(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzj(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int iZzu = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZzu += zzee.zzu(((Integer) list.get(i13)).intValue());
        }
        this.zza.zzq(iZzu);
        while (i12 < list.size()) {
            this.zza.zzk(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzt(int i11, long j11) throws IOException {
        this.zza.zzr(i11, j11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzu(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzr(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int iZzy = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZzy += zzee.zzy(((Long) list.get(i13)).longValue());
        }
        this.zza.zzq(iZzy);
        while (i12 < list.size()) {
            this.zza.zzs(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzv(int i11, Object obj, zzgm zzgmVar) throws IOException {
        zzgc zzgcVar = (zzgc) obj;
        zzeb zzebVar = (zzeb) this.zza;
        zzebVar.zzq((i11 << 3) | 2);
        zzebVar.zzq(((zzdg) zzgcVar).zza(zzgmVar));
        zzgmVar.zzi(zzgcVar, zzebVar.zza);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzw(int i11, int i12) throws IOException {
        this.zza.zzf(i11, i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzx(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzf(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Integer) list.get(i14)).intValue();
            i13 += 4;
        }
        this.zza.zzq(i13);
        while (i12 < list.size()) {
            this.zza.zzg(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzy(int i11, long j11) throws IOException {
        this.zza.zzh(i11, j11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhv
    public final void zzz(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzh(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.zza.zzo(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Long) list.get(i14)).longValue();
            i13 += 8;
        }
        this.zza.zzq(i13);
        while (i12 < list.size()) {
            this.zza.zzi(((Long) list.get(i12)).longValue());
            i12++;
        }
    }
}
