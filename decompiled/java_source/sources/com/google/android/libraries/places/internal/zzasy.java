package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzasy {
    private final zzasx zza;

    private zzasy(zzasx zzasxVar) {
        byte[] bArr = zzaud.zzd;
        this.zza = zzasxVar;
        zzasxVar.zze = this;
    }

    public static zzasy zza(zzasx zzasxVar) {
        zzasy zzasyVar = zzasxVar.zze;
        return zzasyVar != null ? zzasyVar : new zzasy(zzasxVar);
    }

    public final void zzA(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzj(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Long) list.get(i14)).longValue();
            i13 += 8;
        }
        this.zza.zzu(i13);
        while (i12 < list.size()) {
            this.zza.zzk(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    public final void zzB(int i11, int i12) throws IOException {
        this.zza.zzt(i11, (i12 >> 31) ^ (i12 + i12));
    }

    public final void zzC(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                zzasx zzasxVar = this.zza;
                int iIntValue = ((Integer) list.get(i12)).intValue();
                zzasxVar.zzt(i11, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int iZzB = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            int iIntValue2 = ((Integer) list.get(i13)).intValue();
            iZzB += zzasx.zzB((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
        }
        this.zza.zzu(iZzB);
        while (i12 < list.size()) {
            zzasx zzasxVar2 = this.zza;
            int iIntValue3 = ((Integer) list.get(i12)).intValue();
            zzasxVar2.zzu((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
            i12++;
        }
    }

    public final void zzD(int i11, long j11) throws IOException {
        this.zza.zzv(i11, (j11 >> 63) ^ (j11 + j11));
    }

    public final void zzE(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                zzasx zzasxVar = this.zza;
                long jLongValue = ((Long) list.get(i12)).longValue();
                zzasxVar.zzv(i11, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int iZzC = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            long jLongValue2 = ((Long) list.get(i13)).longValue();
            iZzC += zzasx.zzC((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        this.zza.zzu(iZzC);
        while (i12 < list.size()) {
            zzasx zzasxVar2 = this.zza;
            long jLongValue3 = ((Long) list.get(i12)).longValue();
            zzasxVar2.zzw((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            i12++;
        }
    }

    @Deprecated
    public final void zzF(int i11) throws IOException {
        this.zza.zzs(i11, 3);
    }

    public final void zzG(int i11, String str) throws IOException {
        this.zza.zzq(i11, str);
    }

    public final void zzH(int i11, List list) throws IOException {
        int i12 = 0;
        if (!(list instanceof zzaun)) {
            while (i12 < list.size()) {
                this.zza.zzq(i11, (String) list.get(i12));
                i12++;
            }
            return;
        }
        zzaun zzaunVar = (zzaun) list;
        while (i12 < list.size()) {
            Object objZzf = zzaunVar.zzf(i12);
            if (objZzf instanceof String) {
                this.zza.zzq(i11, (String) objZzf);
            } else {
                this.zza.zzM(i11, (zzask) objZzf);
            }
            i12++;
        }
    }

    public final void zzI(int i11, int i12) throws IOException {
        this.zza.zzt(i11, i12);
    }

    public final void zzJ(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzt(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int iZzB = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZzB += zzasx.zzB(((Integer) list.get(i13)).intValue());
        }
        this.zza.zzu(iZzB);
        while (i12 < list.size()) {
            this.zza.zzu(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    public final void zzK(int i11, long j11) throws IOException {
        this.zza.zzv(i11, j11);
    }

    public final void zzL(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzv(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int iZzC = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZzC += zzasx.zzC(((Long) list.get(i13)).longValue());
        }
        this.zza.zzu(iZzC);
        while (i12 < list.size()) {
            this.zza.zzw(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    public final void zzb(int i11, boolean z10) throws IOException {
        this.zza.zzL(i11, z10);
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
    public final void zzc(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzL(i11, ((Boolean) list.get(i12)).booleanValue());
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Boolean) list.get(i14)).booleanValue();
            i13++;
        }
        this.zza.zzu(i13);
        while (i12 < list.size()) {
            this.zza.zzK(((Boolean) list.get(i12)).booleanValue() ? (byte) 1 : (byte) 0);
            i12++;
        }
    }

    public final void zzd(int i11, zzask zzaskVar) throws IOException {
        this.zza.zzM(i11, zzaskVar);
    }

    public final void zze(int i11, List list) throws IOException {
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.zza.zzM(i11, (zzask) list.get(i12));
        }
    }

    public final void zzf(int i11, double d11) throws IOException {
        this.zza.zzj(i11, Double.doubleToRawLongBits(d11));
    }

    public final void zzg(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzj(i11, Double.doubleToRawLongBits(((Double) list.get(i12)).doubleValue()));
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Double) list.get(i14)).doubleValue();
            i13 += 8;
        }
        this.zza.zzu(i13);
        while (i12 < list.size()) {
            this.zza.zzk(Double.doubleToRawLongBits(((Double) list.get(i12)).doubleValue()));
            i12++;
        }
    }

    @Deprecated
    public final void zzh(int i11) throws IOException {
        this.zza.zzs(i11, 4);
    }

    public final void zzi(int i11, int i12) throws IOException {
        this.zza.zzl(i11, i12);
    }

    public final void zzj(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzl(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int iZzC = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZzC += zzasx.zzC(((Integer) list.get(i13)).intValue());
        }
        this.zza.zzu(iZzC);
        while (i12 < list.size()) {
            this.zza.zzm(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    public final void zzk(int i11, int i12) throws IOException {
        this.zza.zzh(i11, i12);
    }

    public final void zzl(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzh(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Integer) list.get(i14)).intValue();
            i13 += 4;
        }
        this.zza.zzu(i13);
        while (i12 < list.size()) {
            this.zza.zzi(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    public final void zzm(int i11, long j11) throws IOException {
        this.zza.zzj(i11, j11);
    }

    public final void zzn(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzj(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Long) list.get(i14)).longValue();
            i13 += 8;
        }
        this.zza.zzu(i13);
        while (i12 < list.size()) {
            this.zza.zzk(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    public final void zzo(int i11, float f11) throws IOException {
        this.zza.zzh(i11, Float.floatToRawIntBits(f11));
    }

    public final void zzp(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzh(i11, Float.floatToRawIntBits(((Float) list.get(i12)).floatValue()));
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Float) list.get(i14)).floatValue();
            i13 += 4;
        }
        this.zza.zzu(i13);
        while (i12 < list.size()) {
            this.zza.zzi(Float.floatToRawIntBits(((Float) list.get(i12)).floatValue()));
            i12++;
        }
    }

    public final void zzq(int i11, Object obj, zzavt zzavtVar) throws IOException {
        zzasx zzasxVar = this.zza;
        zzasxVar.zzs(i11, 3);
        zzavtVar.zzj((zzavf) obj, zzasxVar.zze);
        zzasxVar.zzs(i11, 4);
    }

    public final void zzr(int i11, int i12) throws IOException {
        this.zza.zzl(i11, i12);
    }

    public final void zzs(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzl(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int iZzC = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZzC += zzasx.zzC(((Integer) list.get(i13)).intValue());
        }
        this.zza.zzu(iZzC);
        while (i12 < list.size()) {
            this.zza.zzm(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    public final void zzt(int i11, long j11) throws IOException {
        this.zza.zzv(i11, j11);
    }

    public final void zzu(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzv(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int iZzC = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZzC += zzasx.zzC(((Long) list.get(i13)).longValue());
        }
        this.zza.zzu(iZzC);
        while (i12 < list.size()) {
            this.zza.zzw(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    public final void zzv(int i11, Object obj, zzavt zzavtVar) throws IOException {
        this.zza.zzn(i11, (zzavf) obj, zzavtVar);
    }

    public final void zzw(int i11, Object obj) throws IOException {
        if (obj instanceof zzask) {
            this.zza.zzp(i11, (zzask) obj);
        } else {
            this.zza.zzo(i11, (zzavf) obj);
        }
    }

    public final void zzx(int i11, int i12) throws IOException {
        this.zza.zzh(i11, i12);
    }

    public final void zzy(int i11, List list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.zza.zzh(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.zza.zzs(i11, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            ((Integer) list.get(i14)).intValue();
            i13 += 4;
        }
        this.zza.zzu(i13);
        while (i12 < list.size()) {
            this.zza.zzi(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    public final void zzz(int i11, long j11) throws IOException {
        this.zza.zzj(i11, j11);
    }
}
