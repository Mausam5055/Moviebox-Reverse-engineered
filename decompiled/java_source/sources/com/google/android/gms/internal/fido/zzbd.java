package com.google.android.gms.internal.fido;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class zzbd extends zzbe {
    zzbd(String str, String str2, Character ch2) {
        zzbb zzbbVar = new zzbb(str, str2.toCharArray());
        super(zzbbVar, ch2);
        zzam.zzc(zzbbVar.zzf.length == 64);
    }

    @Override // com.google.android.gms.internal.fido.zzbe, com.google.android.gms.internal.fido.zzbf
    final void zza(Appendable appendable, byte[] bArr, int i11, int i12) throws IOException {
        int i13 = 0;
        zzam.zze(0, i12, bArr.length);
        for (int i14 = i12; i14 >= 3; i14 -= 3) {
            int i15 = bArr[i13] & 255;
            int i16 = ((bArr[i13 + 1] & 255) << 8) | (i15 << 16) | (bArr[i13 + 2] & 255);
            appendable.append(this.zzb.zza(i16 >>> 18));
            appendable.append(this.zzb.zza((i16 >>> 12) & 63));
            appendable.append(this.zzb.zza((i16 >>> 6) & 63));
            appendable.append(this.zzb.zza(i16 & 63));
            i13 += 3;
        }
        if (i13 < i12) {
            zzc(appendable, bArr, i13, i12 - i13);
        }
    }
}
