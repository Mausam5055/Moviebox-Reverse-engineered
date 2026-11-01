package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzg {
    private final zzhy zza;

    @Nullable
    private Long zzaa;

    @Nullable
    private Long zzab;
    private long zzac;

    @Nullable
    private String zzad;
    private int zzae;
    private int zzaf;
    private long zzag;
    private String zzah;

    @Nullable
    private byte[] zzai;
    private long zzaj;
    private long zzak;
    private long zzal;
    private long zzam;
    private long zzan;
    private long zzao;

    @Nullable
    private String zzap;
    private boolean zzaq;
    private long zzar;
    private long zzas;
    private final String zzb;

    @Nullable
    private String zzc;

    @Nullable
    private String zzd;

    @Nullable
    private String zze;

    @Nullable
    private String zzf;
    private long zzg;
    private long zzh;
    private long zzi;

    @Nullable
    private String zzj;
    private long zzk;

    @Nullable
    private String zzl;
    private long zzm;
    private long zzn;
    private boolean zzo;
    private boolean zzp;

    @Nullable
    private String zzq;

    @Nullable
    private Boolean zzr;
    private long zzs;

    @Nullable
    private List<String> zzt;

    @Nullable
    private String zzu;
    private boolean zzv;
    private long zzw;
    private long zzx;
    private int zzy;
    private boolean zzz;

    zzg(zzhy zzhyVar, String str) {
        Preconditions.checkNotNull(zzhyVar);
        Preconditions.checkNotEmpty(str);
        this.zza = zzhyVar;
        this.zzb = str;
        zzhyVar.zzl().zzt();
    }

    public final int zza() {
        this.zza.zzl().zzt();
        return this.zzy;
    }

    public final void zza(int i11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzy != i11;
        this.zzy = i11;
    }

    public final void zza(long j11) {
        this.zza.zzl().zzt();
        long j12 = this.zzg + j11;
        if (j12 > 2147483647L) {
            this.zza.zzj().zzu().zza("Bundle index overflow. appId", zzgo.zza(this.zzb));
            j12 = j11 - 1;
        }
        long j13 = this.zzag + 1;
        if (j13 > 2147483647L) {
            this.zza.zzj().zzu().zza("Delivery index overflow. appId", zzgo.zza(this.zzb));
            j13 = 0;
        }
        this.zzaq = true;
        this.zzg = j12;
        this.zzag = j13;
    }

    public final void zza(@Nullable Boolean bool) {
        this.zza.zzl().zzt();
        this.zzaq |= !Objects.equals(this.zzr, bool);
        this.zzr = bool;
    }

    public final void zza(@Nullable Long l11) {
        this.zza.zzl().zzt();
        this.zzaq |= !Objects.equals(this.zzaa, l11);
        this.zzaa = l11;
    }

    public final void zza(@Nullable String str) {
        this.zza.zzl().zzt();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzaq |= !Objects.equals(this.zzq, str);
        this.zzq = str;
    }

    public final void zza(@Nullable List<String> list) {
        this.zza.zzl().zzt();
        if (Objects.equals(this.zzt, list)) {
            return;
        }
        this.zzaq = true;
        this.zzt = list != null ? new ArrayList(list) : null;
    }

    public final void zza(boolean z10) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzp != z10;
        this.zzp = z10;
    }

    public final void zza(@Nullable byte[] bArr) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzai != bArr;
        this.zzai = bArr;
    }

    @Nullable
    public final String zzaa() {
        this.zza.zzl().zzt();
        return this.zzq;
    }

    @Nullable
    public final String zzab() {
        this.zza.zzl().zzt();
        String str = this.zzap;
        zzg((String) null);
        return str;
    }

    public final String zzac() {
        this.zza.zzl().zzt();
        return this.zzb;
    }

    @Nullable
    public final String zzad() {
        this.zza.zzl().zzt();
        return this.zzc;
    }

    @Nullable
    public final String zzae() {
        this.zza.zzl().zzt();
        return this.zzl;
    }

    @Nullable
    public final String zzaf() {
        this.zza.zzl().zzt();
        return this.zzj;
    }

    @Nullable
    public final String zzag() {
        this.zza.zzl().zzt();
        return this.zzf;
    }

    @Nullable
    public final String zzah() {
        this.zza.zzl().zzt();
        return this.zzd;
    }

    @Nullable
    public final String zzai() {
        this.zza.zzl().zzt();
        return this.zzap;
    }

    @Nullable
    public final String zzaj() {
        this.zza.zzl().zzt();
        return this.zze;
    }

    public final String zzak() {
        this.zza.zzl().zzt();
        return this.zzah;
    }

    @Nullable
    public final String zzal() {
        this.zza.zzl().zzt();
        return this.zzu;
    }

    @Nullable
    public final String zzam() {
        this.zza.zzl().zzt();
        return this.zzad;
    }

    @Nullable
    public final List<String> zzan() {
        this.zza.zzl().zzt();
        return this.zzt;
    }

    public final void zzao() {
        this.zza.zzl().zzt();
        this.zzaq = false;
    }

    public final void zzap() {
        this.zza.zzl().zzt();
        long j11 = this.zzg + 1;
        if (j11 > 2147483647L) {
            this.zza.zzj().zzu().zza("Bundle index overflow. appId", zzgo.zza(this.zzb));
            j11 = 0;
        }
        this.zzaq = true;
        this.zzg = j11;
    }

    public final boolean zzaq() {
        this.zza.zzl().zzt();
        return this.zzp;
    }

    public final boolean zzar() {
        this.zza.zzl().zzt();
        return this.zzo;
    }

    public final boolean zzas() {
        this.zza.zzl().zzt();
        return this.zzaq;
    }

    public final boolean zzat() {
        this.zza.zzl().zzt();
        return this.zzv;
    }

    public final boolean zzau() {
        this.zza.zzl().zzt();
        return this.zzz;
    }

    @Nullable
    public final byte[] zzav() {
        this.zza.zzl().zzt();
        return this.zzai;
    }

    public final int zzb() {
        this.zza.zzl().zzt();
        return this.zzaf;
    }

    public final void zzb(int i11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzaf != i11;
        this.zzaf = i11;
    }

    public final void zzb(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzk != j11;
        this.zzk = j11;
    }

    public final void zzb(@Nullable Long l11) {
        this.zza.zzl().zzt();
        this.zzaq |= !Objects.equals(this.zzab, l11);
        this.zzab = l11;
    }

    public final void zzb(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzaq |= !Objects.equals(this.zzc, str);
        this.zzc = str;
    }

    public final void zzb(boolean z10) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzo != z10;
        this.zzo = z10;
    }

    public final int zzc() {
        this.zza.zzl().zzt();
        return this.zzae;
    }

    public final void zzc(int i11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzae != i11;
        this.zzae = i11;
    }

    public final void zzc(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzac != j11;
        this.zzac = j11;
    }

    public final void zzc(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzaq |= !Objects.equals(this.zzl, str);
        this.zzl = str;
    }

    public final void zzc(boolean z10) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzv != z10;
        this.zzv = z10;
    }

    public final long zzd() {
        this.zza.zzl().zzt();
        return 0L;
    }

    public final void zzd(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzar != j11;
        this.zzar = j11;
    }

    public final void zzd(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzaq |= !Objects.equals(this.zzj, str);
        this.zzj = str;
    }

    public final void zzd(boolean z10) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzz != z10;
        this.zzz = z10;
    }

    public final long zze() {
        this.zza.zzl().zzt();
        return this.zzk;
    }

    public final void zze(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzam != j11;
        this.zzam = j11;
    }

    public final void zze(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzaq |= !Objects.equals(this.zzf, str);
        this.zzf = str;
    }

    public final long zzf() {
        this.zza.zzl().zzt();
        return this.zzac;
    }

    public final void zzf(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzan != j11;
        this.zzan = j11;
    }

    public final void zzf(@Nullable String str) {
        this.zza.zzl().zzt();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzaq |= !Objects.equals(this.zzd, str);
        this.zzd = str;
    }

    public final long zzg() {
        this.zza.zzl().zzt();
        return this.zzar;
    }

    public final void zzg(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzal != j11;
        this.zzal = j11;
    }

    public final void zzg(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzaq |= !Objects.equals(this.zzap, str);
        this.zzap = str;
    }

    public final long zzh() {
        this.zza.zzl().zzt();
        return this.zzam;
    }

    public final void zzh(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzak != j11;
        this.zzak = j11;
    }

    public final void zzh(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzaq |= !Objects.equals(this.zze, str);
        this.zze = str;
    }

    public final long zzi() {
        this.zza.zzl().zzt();
        return this.zzan;
    }

    public final void zzi(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzao != j11;
        this.zzao = j11;
    }

    public final void zzi(String str) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzah != str;
        this.zzah = str;
    }

    public final long zzj() {
        this.zza.zzl().zzt();
        return this.zzal;
    }

    public final void zzj(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzaj != j11;
        this.zzaj = j11;
    }

    public final void zzj(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzaq |= !Objects.equals(this.zzu, str);
        this.zzu = str;
    }

    public final long zzk() {
        this.zza.zzl().zzt();
        return this.zzak;
    }

    public final void zzk(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzn != j11;
        this.zzn = j11;
    }

    public final void zzk(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzad != str;
        this.zzad = str;
    }

    public final long zzl() {
        this.zza.zzl().zzt();
        return this.zzao;
    }

    public final void zzl(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzs != j11;
        this.zzs = j11;
    }

    public final long zzm() {
        this.zza.zzl().zzt();
        return this.zzaj;
    }

    public final void zzm(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzas != j11;
        this.zzas = j11;
    }

    public final long zzn() {
        this.zza.zzl().zzt();
        return this.zzn;
    }

    public final void zzn(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzm != j11;
        this.zzm = j11;
    }

    public final long zzo() {
        this.zza.zzl().zzt();
        return this.zzs;
    }

    public final void zzo(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzag != j11;
        this.zzag = j11;
    }

    public final long zzp() {
        this.zza.zzl().zzt();
        return this.zzas;
    }

    public final void zzp(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzi != j11;
        this.zzi = j11;
    }

    public final long zzq() {
        this.zza.zzl().zzt();
        return this.zzm;
    }

    public final void zzq(long j11) {
        Preconditions.checkArgument(j11 >= 0);
        this.zza.zzl().zzt();
        this.zzaq |= this.zzg != j11;
        this.zzg = j11;
    }

    public final long zzr() {
        this.zza.zzl().zzt();
        return this.zzag;
    }

    public final void zzr(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzh != j11;
        this.zzh = j11;
    }

    public final long zzs() {
        this.zza.zzl().zzt();
        return this.zzi;
    }

    public final void zzs(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzx != j11;
        this.zzx = j11;
    }

    public final long zzt() {
        this.zza.zzl().zzt();
        return this.zzg;
    }

    public final void zzt(long j11) {
        this.zza.zzl().zzt();
        this.zzaq |= this.zzw != j11;
        this.zzw = j11;
    }

    public final long zzu() {
        this.zza.zzl().zzt();
        return this.zzh;
    }

    public final long zzv() {
        this.zza.zzl().zzt();
        return this.zzx;
    }

    public final long zzw() {
        this.zza.zzl().zzt();
        return this.zzw;
    }

    @Nullable
    public final Boolean zzx() {
        this.zza.zzl().zzt();
        return this.zzr;
    }

    @Nullable
    public final Long zzy() {
        this.zza.zzl().zzt();
        return this.zzaa;
    }

    @Nullable
    public final Long zzz() {
        this.zza.zzl().zzt();
        return this.zzab;
    }
}
