package com.google.android.libraries.places.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class zzse extends zzsh {
    final char[] zza;

    private zzse(zzsd zzsdVar) {
        super(zzsdVar, null);
        this.zza = new char[512];
        zzmt.zze(zzsdVar.zzf.length == 16);
        for (int i11 = 0; i11 < 256; i11++) {
            this.zza[i11] = zzsdVar.zza(i11 >>> 4);
            this.zza[i11 | 256] = zzsdVar.zza(i11 & 15);
        }
    }

    zzse(String str, String str2) {
        this(new zzsd("base16()", "0123456789ABCDEF".toCharArray()));
    }

    @Override // com.google.android.libraries.places.internal.zzsh, com.google.android.libraries.places.internal.zzsi
    final int zza(byte[] bArr, CharSequence charSequence) throws zzsg {
        if (charSequence.length() % 2 == 1) {
            throw new zzsg("Invalid input length " + charSequence.length());
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < charSequence.length()) {
            bArr[i12] = (byte) ((this.zzb.zzb(charSequence.charAt(i11)) << 4) | this.zzb.zzb(charSequence.charAt(i11 + 1)));
            i11 += 2;
            i12++;
        }
        return i12;
    }

    @Override // com.google.android.libraries.places.internal.zzsh
    final zzsi zzb(zzsd zzsdVar, Character ch2) {
        return new zzse(zzsdVar);
    }

    @Override // com.google.android.libraries.places.internal.zzsh, com.google.android.libraries.places.internal.zzsi
    final void zzc(Appendable appendable, byte[] bArr, int i11, int i12) throws IOException {
        zzmt.zzn(0, i12, bArr.length);
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = bArr[i13] & 255;
            appendable.append(this.zza[i14]);
            appendable.append(this.zza[i14 | 256]);
        }
    }
}
