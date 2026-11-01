package com.google.android.libraries.places.internal;

import com.hisavana.common.tracking.TrackingKey;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbdo {
    public static final zzbdo zza;
    public static final zzbdo zzb;
    public static final zzbdo zzc;
    public static final zzbdo zzd;
    public static final zzbdo zze;
    public static final zzbdo zzf;
    public static final zzbdo zzg;
    public static final zzbdo zzh;
    public static final zzbdo zzi;
    public static final zzbdo zzj;
    public static final zzbdo zzk;
    public static final zzbdo zzl;
    public static final zzbdo zzm;
    public static final zzbdo zzn;
    public static final zzbdo zzo;
    public static final zzbdo zzp;
    public static final zzbdo zzq;
    static final zzbca zzr;
    static final zzbca zzs;
    private static final List zzt;
    private static final zzbce zzu;
    private final zzbdj zzv;
    private final String zzw;
    private final Throwable zzx;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        TreeMap treeMap = new TreeMap();
        zzbdj[] zzbdjVarArrValues = zzbdj.values();
        int length = zzbdjVarArrValues.length;
        boolean z10 = false;
        int i11 = 0;
        while (true) {
            zzbdk zzbdkVar = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            if (i11 >= length) {
                zzt = Collections.unmodifiableList(new ArrayList(treeMap.values()));
                zza = zzbdj.OK.zzb();
                zzb = zzbdj.CANCELLED.zzb();
                zzc = zzbdj.UNKNOWN.zzb();
                zzd = zzbdj.INVALID_ARGUMENT.zzb();
                zze = zzbdj.DEADLINE_EXCEEDED.zzb();
                zzf = zzbdj.NOT_FOUND.zzb();
                zzg = zzbdj.ALREADY_EXISTS.zzb();
                zzh = zzbdj.PERMISSION_DENIED.zzb();
                zzi = zzbdj.UNAUTHENTICATED.zzb();
                zzj = zzbdj.RESOURCE_EXHAUSTED.zzb();
                zzk = zzbdj.FAILED_PRECONDITION.zzb();
                zzl = zzbdj.ABORTED.zzb();
                zzm = zzbdj.OUT_OF_RANGE.zzb();
                zzn = zzbdj.UNIMPLEMENTED.zzb();
                zzo = zzbdj.INTERNAL.zzb();
                zzp = zzbdj.UNAVAILABLE.zzb();
                zzq = zzbdj.DATA_LOSS.zzb();
                zzr = new zzbcd("grpc-status", z10, new zzbdl(zzbdkVar), objArr3 == true ? 1 : 0);
                zzbdn zzbdnVar = new zzbdn(objArr2 == true ? 1 : 0);
                zzu = zzbdnVar;
                zzs = new zzbcd("grpc-message", z10, zzbdnVar, objArr == true ? 1 : 0);
                return;
            }
            zzbdj zzbdjVar = zzbdjVarArrValues[i11];
            zzbdo zzbdoVar = (zzbdo) treeMap.put(Integer.valueOf(zzbdjVar.zza()), new zzbdo(zzbdjVar, null, null));
            if (zzbdoVar != null) {
                throw new IllegalStateException("Code value duplication between " + zzbdoVar.zzv.name() + " & " + zzbdjVar.name());
            }
            i11++;
        }
    }

    private zzbdo(zzbdj zzbdjVar, String str, Throwable th2) {
        zzmt.zzc(zzbdjVar, "code");
        this.zzv = zzbdjVar;
        this.zzw = str;
        this.zzx = th2;
    }

    static /* bridge */ /* synthetic */ zzbdo zzb(byte[] bArr) {
        int i11;
        byte b11;
        int length = bArr.length;
        char c11 = 0;
        if (length == 1) {
            if (bArr[0] == 48) {
                return zza;
            }
            length = 1;
        }
        if (length != 1) {
            if (length == 2 && (b11 = bArr[0]) >= 48 && b11 <= 57) {
                i11 = (b11 - 48) * 10;
                c11 = 1;
            }
            return zzc.zzg("Unknown code ".concat(new String(bArr, zzmb.zza)));
        }
        i11 = 0;
        byte b12 = bArr[c11];
        if (b12 >= 48 && b12 <= 57) {
            int i12 = i11 + (b12 - 48);
            List list = zzt;
            if (i12 < list.size()) {
                return (zzbdo) list.get(i12);
            }
        }
        return zzc.zzg("Unknown code ".concat(new String(bArr, zzmb.zza)));
    }

    public static zzbdo zzd(int i11) {
        if (i11 >= 0) {
            List list = zzt;
            if (i11 < list.size()) {
                return (zzbdo) list.get(i11);
            }
        }
        return zzc.zzg("Unknown code " + i11);
    }

    public static zzbdo zze(Throwable th2) {
        zzmt.zzc(th2, "t");
        for (Throwable cause = th2; cause != null; cause = cause.getCause()) {
            if (cause instanceof zzbdp) {
                return ((zzbdp) cause).zza();
            }
            if (cause instanceof zzbdq) {
                return ((zzbdq) cause).zza();
            }
        }
        return zzc.zzf(th2);
    }

    static String zzh(zzbdo zzbdoVar) {
        String str = zzbdoVar.zzw;
        zzbdj zzbdjVar = zzbdoVar.zzv;
        if (str == null) {
            return zzbdjVar.toString();
        }
        return zzbdjVar.toString() + ": " + str;
    }

    public final String toString() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzd("code", this.zzv.name());
        zzmmVarZzb.zzd(TrackingKey.DESCRIPTION, this.zzw);
        Throwable th2 = this.zzx;
        Object string = th2;
        if (th2 != null) {
            StringWriter stringWriter = new StringWriter();
            th2.printStackTrace(new PrintWriter(stringWriter));
            string = stringWriter.toString();
        }
        zzmmVarZzb.zzd("cause", string);
        return zzmmVarZzb.toString();
    }

    public final zzbdj zza() {
        return this.zzv;
    }

    public final zzbdo zzc(String str) {
        String str2 = this.zzw;
        if (str2 == null) {
            return new zzbdo(this.zzv, str, this.zzx);
        }
        return new zzbdo(this.zzv, str2 + "\n" + str, this.zzx);
    }

    public final zzbdo zzf(Throwable th2) {
        return zzmo.zza(this.zzx, th2) ? this : new zzbdo(this.zzv, this.zzw, th2);
    }

    public final zzbdo zzg(String str) {
        return zzmo.zza(this.zzw, str) ? this : new zzbdo(this.zzv, str, this.zzx);
    }

    public final String zzi() {
        return this.zzw;
    }

    public final Throwable zzj() {
        return this.zzx;
    }

    public final boolean zzl() {
        return zzbdj.OK == this.zzv;
    }
}
