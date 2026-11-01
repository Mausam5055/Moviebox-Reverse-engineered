package com.google.android.gms.internal.fido;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class zzbc extends zzbe {
    final char[] zza;

    zzbc(String str, String str2) {
        zzbb zzbbVar = new zzbb("base16()", "0123456789ABCDEF".toCharArray());
        super(zzbbVar, null);
        this.zza = new char[512];
        zzam.zzc(zzbbVar.zzf.length == 16);
        for (int i11 = 0; i11 < 256; i11++) {
            this.zza[i11] = zzbbVar.zza(i11 >>> 4);
            this.zza[i11 | 256] = zzbbVar.zza(i11 & 15);
        }
    }

    @Override // com.google.android.gms.internal.fido.zzbe, com.google.android.gms.internal.fido.zzbf
    final void zza(Appendable appendable, byte[] bArr, int i11, int i12) throws IOException {
        zzam.zze(0, i12, bArr.length);
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = bArr[i13] & 255;
            appendable.append(this.zza[i14]);
            appendable.append(this.zza[i14 | 256]);
        }
    }
}
