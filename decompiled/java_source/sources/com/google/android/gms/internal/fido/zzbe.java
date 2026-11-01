package com.google.android.gms.internal.fido;

import java.io.IOException;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes4.dex */
class zzbe extends zzbf {
    final zzbb zzb;
    final Character zzc;

    zzbe(zzbb zzbbVar, Character ch2) {
        this.zzb = zzbbVar;
        if (ch2 != null && zzbbVar.zzb('=')) {
            throw new IllegalArgumentException(zzan.zza("Padding character %s was already in alphabet", ch2));
        }
        this.zzc = ch2;
    }

    zzbe(String str, String str2, Character ch2) {
        this(new zzbb(str, str2.toCharArray()), ch2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzbe) {
            zzbe zzbeVar = (zzbe) obj;
            if (this.zzb.equals(zzbeVar.zzb)) {
                Character ch2 = this.zzc;
                Character ch3 = zzbeVar.zzc;
                if (ch2 == ch3) {
                    return true;
                }
                if (ch2 != null && ch2.equals(ch3)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zzb.hashCode();
        Character ch2 = this.zzc;
        return iHashCode ^ (ch2 == null ? 0 : ch2.hashCode());
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("BaseEncoding.");
        sb2.append(this.zzb);
        if (8 % this.zzb.zzb != 0) {
            if (this.zzc == null) {
                sb2.append(".omitPadding()");
            } else {
                sb2.append(".withPadChar('");
                sb2.append(this.zzc);
                sb2.append("')");
            }
        }
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.fido.zzbf
    void zza(Appendable appendable, byte[] bArr, int i11, int i12) throws IOException {
        int i13 = 0;
        zzam.zze(0, i12, bArr.length);
        while (i13 < i12) {
            zzc(appendable, bArr, i13, Math.min(this.zzb.zzd, i12 - i13));
            i13 += this.zzb.zzd;
        }
    }

    @Override // com.google.android.gms.internal.fido.zzbf
    final int zzb(int i11) {
        zzbb zzbbVar = this.zzb;
        return zzbbVar.zzc * zzbh.zza(i11, zzbbVar.zzd, RoundingMode.CEILING);
    }

    final void zzc(Appendable appendable, byte[] bArr, int i11, int i12) throws IOException {
        zzam.zze(i11, i11 + i12, bArr.length);
        int i13 = 0;
        zzam.zzc(i12 <= this.zzb.zzd);
        long j11 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            j11 = (j11 | ((long) (bArr[i11 + i14] & 255))) << 8;
        }
        int i15 = ((i12 + 1) * 8) - this.zzb.zzb;
        while (i13 < i12 * 8) {
            zzbb zzbbVar = this.zzb;
            appendable.append(zzbbVar.zza(zzbbVar.zza & ((int) (j11 >>> (i15 - i13)))));
            i13 += this.zzb.zzb;
        }
        if (this.zzc != null) {
            while (i13 < this.zzb.zzd * 8) {
                this.zzc.charValue();
                appendable.append('=');
                i13 += this.zzb.zzb;
            }
        }
    }
}
