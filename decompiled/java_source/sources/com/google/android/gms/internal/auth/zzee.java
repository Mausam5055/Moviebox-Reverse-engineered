package com.google.android.gms.internal.auth;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zzee implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzee zzb = new zzeb(zzez.zzd);
    private static final zzed zzd;
    private int zzc = 0;

    static {
        int i11 = zzdr.zza;
        zzd = new zzed(null);
        zza = new zzdw();
    }

    zzee() {
    }

    static int zzi(int i11, int i12, int i13) {
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

    public static zzee zzk(byte[] bArr, int i11, int i12) {
        zzi(i11, i11 + i12, bArr.length);
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i11, bArr2, 0, i12);
        return new zzeb(bArr2);
    }

    public static zzee zzl(String str) {
        return new zzeb(str.getBytes(zzez.zzb));
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
        return new zzdv(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzd()), zzd() <= 50 ? zzgw.zza(this) : zzgw.zza(zzf(0, 47)).concat("..."));
    }

    public abstract byte zza(int i11);

    abstract byte zzb(int i11);

    public abstract int zzd();

    protected abstract int zze(int i11, int i12, int i13);

    public abstract zzee zzf(int i11, int i12);

    protected abstract String zzg(Charset charset);

    public abstract boolean zzh();

    protected final int zzj() {
        return this.zzc;
    }

    public final String zzm(Charset charset) {
        return zzd() == 0 ? "" : zzg(charset);
    }
}
