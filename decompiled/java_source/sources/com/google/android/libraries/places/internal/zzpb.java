package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzpb extends zzpd {
    protected zzpb() {
    }

    private static char[] zzd(char[] cArr, int i11, int i12) {
        if (i12 < 0) {
            throw new AssertionError("Cannot increase internal buffer any further");
        }
        char[] cArr2 = new char[i12];
        if (i11 > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i11);
        }
        return cArr2;
    }

    @Override // com.google.android.libraries.places.internal.zzpd
    public String zza(String str) {
        throw null;
    }

    protected abstract char[] zzb(char c11);

    protected final String zzc(String str, int i11) {
        int length;
        char[] cArrZza = zzpk.zza();
        int length2 = cArrZza.length;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            length = str.length();
            if (i11 >= length) {
                break;
            }
            int i14 = i11 + 1;
            char[] cArrZzb = zzb(str.charAt(i11));
            if (cArrZzb != null) {
                int i15 = i11 - i12;
                int i16 = i13 + i15;
                int length3 = cArrZzb.length;
                int i17 = i16 + length3;
                if (length2 < i17) {
                    int i18 = length - i11;
                    length2 = i17 + i18 + i18;
                    cArrZza = zzd(cArrZza, i13, length2);
                }
                if (i15 > 0) {
                    str.getChars(i12, i11, cArrZza, i13);
                    i13 = i16;
                }
                if (length3 > 0) {
                    System.arraycopy(cArrZzb, 0, cArrZza, i13, length3);
                    i13 += length3;
                }
                i12 = i14;
            }
            i11 = i14;
        }
        int i19 = length - i12;
        if (i19 > 0) {
            int i20 = i19 + i13;
            if (length2 < i20) {
                cArrZza = zzd(cArrZza, i13, i20);
            }
            str.getChars(i12, length, cArrZza, i13);
            i13 = i20;
        }
        return new String(cArrZza, 0, i13);
    }
}
