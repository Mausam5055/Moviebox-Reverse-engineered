package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzik implements Serializable, Iterable<Byte> {
    public static final zzik zza = new zziv(zzjv.zzb);
    private static final zzir zzb = new zziu();
    private int zzc = 0;

    static {
        new zzim();
    }

    zzik() {
    }

    static /* synthetic */ int zza(byte b11) {
        return b11 & 255;
    }

    static int zza(int i11, int i12, int i13) {
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

    public static zzik zza(String str) {
        return new zziv(str.getBytes(zzjv.zza));
    }

    public static zzik zza(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    public static zzik zza(byte[] bArr, int i11, int i12) {
        zza(i11, i11 + i12, bArr.length);
        return new zziv(zzb.zza(bArr, i11, i12));
    }

    static zzik zzb(byte[] bArr) {
        return new zziv(bArr);
    }

    static zzit zzc(int i11) {
        return new zzit(i11);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iZzb = this.zzc;
        if (iZzb == 0) {
            int iZzb2 = zzb();
            iZzb = zzb(iZzb2, 0, iZzb2);
            if (iZzb == 0) {
                iZzb = 1;
            }
            this.zzc = iZzb;
        }
        return iZzb;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzin(this);
    }

    public final String toString() {
        String strZza;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        Integer numValueOf = Integer.valueOf(zzb());
        if (zzb() <= 50) {
            strZza = zzmg.zza(this);
        } else {
            strZza = zzmg.zza(zza(0, 47)) + "...";
        }
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", hexString, numValueOf, strZza);
    }

    public abstract byte zza(int i11);

    protected final int zza() {
        return this.zzc;
    }

    public abstract zzik zza(int i11, int i12);

    abstract void zza(zzil zzilVar) throws IOException;

    abstract byte zzb(int i11);

    public abstract int zzb();

    protected abstract int zzb(int i11, int i12, int i13);
}
