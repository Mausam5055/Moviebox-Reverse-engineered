package com.google.android.libraries.places.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbcf {
    private Object[] zze;
    private int zzf;
    private static final Logger zzd = Logger.getLogger(zzbcf.class.getName());
    public static final zzbby zza = new zzbbt();
    public static final zzbbx zzb = new zzbbu();
    static final zzsi zzc = zzsi.zzj().zzf();

    public zzbcf() {
    }

    zzbcf(int i11, Object[] objArr) {
        this.zzf = i11;
        this.zze = objArr;
    }

    private final int zzh() {
        Object[] objArr = this.zze;
        if (objArr != null) {
            return objArr.length;
        }
        return 0;
    }

    private final Object zzi(int i11) {
        return this.zze[i11 + i11 + 1];
    }

    private final void zzj(int i11) {
        Object[] objArr = new Object[i11];
        if (!zzk()) {
            Object[] objArr2 = this.zze;
            int i12 = this.zzf;
            System.arraycopy(objArr2, 0, objArr, 0, i12 + i12);
        }
        this.zze = objArr;
    }

    private final boolean zzk() {
        return this.zzf == 0;
    }

    private final byte[] zzl(int i11) {
        return (byte[]) this.zze[i11 + i11];
    }

    private final byte[] zzm(int i11) {
        Object objZzi = zzi(i11);
        if (objZzi instanceof byte[]) {
            return (byte[]) objZzi;
        }
        throw null;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Metadata(");
        for (int i11 = 0; i11 < this.zzf; i11++) {
            if (i11 != 0) {
                sb2.append(',');
            }
            byte[] bArrZzl = zzl(i11);
            Charset charset = zzmb.zza;
            String str = new String(bArrZzl, charset);
            sb2.append(str);
            sb2.append('=');
            if (str.endsWith("-bin")) {
                zzsi zzsiVar = zzc;
                byte[] bArrZzm = zzm(i11);
                sb2.append(zzsiVar.zzk(bArrZzm, 0, bArrZzm.length));
            } else {
                sb2.append(new String(zzm(i11), charset));
            }
        }
        sb2.append(')');
        return sb2.toString();
    }

    final int zza() {
        return this.zzf;
    }

    public final Object zzb(zzbca zzbcaVar) {
        int i11 = this.zzf;
        do {
            i11--;
            if (i11 < 0) {
                return null;
            }
        } while (!Arrays.equals(zzbcaVar.zze(), zzl(i11)));
        Object objZzi = zzi(i11);
        if (objZzi instanceof byte[]) {
            return zzbcaVar.zza((byte[]) objZzi);
        }
        throw null;
    }

    public final void zzd(zzbca zzbcaVar) {
        if (zzk()) {
            return;
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = this.zzf;
            if (i11 >= i13) {
                Arrays.fill(this.zze, i12 + i12, i13 + i13, (Object) null);
                this.zzf = i12;
                return;
            }
            if (!Arrays.equals(zzbcaVar.zze(), zzl(i11))) {
                int i14 = i12 + i12;
                this.zze[i14] = zzl(i11);
                Object objZzi = zzi(i11);
                if (this.zze instanceof byte[][]) {
                    zzj(zzh());
                }
                this.zze[i14 + 1] = objZzi;
                i12++;
            }
            i11++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001a  */
    public final void zze(zzbcf zzbcfVar) {
        if (zzbcfVar.zzk()) {
            return;
        }
        int iZzh = zzh();
        int i11 = this.zzf;
        int i12 = i11 + i11;
        int i13 = iZzh - i12;
        if (zzk()) {
            int i14 = zzbcfVar.zzf;
            zzj(i12 + i14 + i14);
        } else {
            int i15 = zzbcfVar.zzf;
            if (i13 < i15 + i15) {
                int i16 = zzbcfVar.zzf;
                zzj(i12 + i16 + i16);
            }
        }
        Object[] objArr = zzbcfVar.zze;
        Object[] objArr2 = this.zze;
        int i17 = this.zzf;
        int i18 = zzbcfVar.zzf;
        System.arraycopy(objArr, 0, objArr2, i17 + i17, i18 + i18);
        this.zzf += zzbcfVar.zzf;
    }

    public final void zzf(zzbca zzbcaVar, Object obj) {
        zzmt.zzc(zzbcaVar, "key");
        zzmt.zzc(obj, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        int i11 = this.zzf;
        int i12 = i11 + i11;
        if (i12 == 0 || i12 == zzh()) {
            zzj(Math.max(i12 + i12, 8));
        }
        int i13 = this.zzf;
        this.zze[i13 + i13] = zzbcaVar.zze();
        int i14 = this.zzf;
        this.zze[i14 + i14 + 1] = zzbcaVar.zzb(obj);
        this.zzf++;
    }

    final byte[][] zzg() {
        int i11 = this.zzf;
        int i12 = i11 + i11;
        byte[][] bArr = new byte[i12][];
        Object[] objArr = this.zze;
        if (objArr instanceof byte[][]) {
            System.arraycopy(objArr, 0, bArr, 0, i12);
        } else {
            for (int i13 = 0; i13 < this.zzf; i13++) {
                int i14 = i13 + i13;
                bArr[i14] = zzl(i13);
                bArr[i14 + 1] = zzm(i13);
            }
        }
        return bArr;
    }
}
