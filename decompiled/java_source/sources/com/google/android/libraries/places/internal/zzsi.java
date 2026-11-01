package com.google.android.libraries.places.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzsi {
    private static final zzsi zza = new zzsf("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');
    private static final zzsi zzb = new zzsf("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
    private static final zzsi zzc = new zzsh("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
    private static final zzsi zzd = new zzsh("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
    private static final zzsi zze = new zzse("base16()", "0123456789ABCDEF");

    zzsi() {
    }

    public static zzsi zzi() {
        return zze;
    }

    public static zzsi zzj() {
        return zza;
    }

    abstract int zza(byte[] bArr, CharSequence charSequence) throws zzsg;

    abstract void zzc(Appendable appendable, byte[] bArr, int i11, int i12) throws IOException;

    abstract int zzd(int i11);

    abstract int zze(int i11);

    public abstract zzsi zzf();

    CharSequence zzg(CharSequence charSequence) {
        throw null;
    }

    public final String zzk(byte[] bArr, int i11, int i12) {
        zzmt.zzn(0, i12, bArr.length);
        StringBuilder sb2 = new StringBuilder(zze(i12));
        try {
            zzc(sb2, bArr, 0, i12);
            return sb2.toString();
        } catch (IOException e11) {
            throw new AssertionError(e11);
        }
    }

    public final byte[] zzl(CharSequence charSequence) {
        try {
            CharSequence charSequenceZzg = zzg(charSequence);
            int iZzd = zzd(charSequenceZzg.length());
            byte[] bArr = new byte[iZzd];
            int iZza = zza(bArr, charSequenceZzg);
            if (iZza == iZzd) {
                return bArr;
            }
            byte[] bArr2 = new byte[iZza];
            System.arraycopy(bArr, 0, bArr2, 0, iZza);
            return bArr2;
        } catch (zzsg e11) {
            throw new IllegalArgumentException(e11);
        }
    }
}
