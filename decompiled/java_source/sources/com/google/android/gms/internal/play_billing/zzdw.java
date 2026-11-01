package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzdw implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzdw zzb = new zzdt(zzfd.zzd);
    private static final zzdv zzd;
    private int zzc = 0;

    static {
        int i11 = zzdi.zza;
        zzd = new zzdv(null);
        zza = new zzdo();
    }

    zzdw() {
    }

    static int zzj(int i11, int i12, int i13) {
        int i14 = i12 - i11;
        if ((i11 | i12 | i14 | (i13 - i12)) >= 0) {
            return i14;
        }
        if (i11 < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i11 + " < 0");
        }
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i11 + ", " + i12);
        }
        throw new IndexOutOfBoundsException("End index: " + i12 + " >= " + i13);
    }

    public static zzdw zzl(byte[] bArr, int i11, int i12) {
        zzj(i11, i11 + i12, bArr.length);
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i11, bArr2, 0, i12);
        return new zzdt(bArr2);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iZze = this.zzc;
        if (iZze == 0) {
            int iZzd = zzd();
            iZze = zze(iZzd, 0, iZzd);
            if (iZze == 0) {
                iZze = 1;
            }
            this.zzc = iZze;
        }
        return iZze;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzdn(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzd()), zzd() <= 50 ? zzhb.zza(this) : zzhb.zza(zzf(0, 47)).concat("..."));
    }

    public abstract byte zza(int i11);

    abstract byte zzb(int i11);

    public abstract int zzd();

    protected abstract int zze(int i11, int i12, int i13);

    public abstract zzdw zzf(int i11, int i12);

    protected abstract String zzg(Charset charset);

    abstract void zzh(zzdm zzdmVar) throws IOException;

    public abstract boolean zzi();

    protected final int zzk() {
        return this.zzc;
    }

    public final String zzm(Charset charset) {
        return zzd() == 0 ? "" : zzg(charset);
    }
}
