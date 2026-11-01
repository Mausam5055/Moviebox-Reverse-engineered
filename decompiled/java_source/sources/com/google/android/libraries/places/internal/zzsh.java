package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.math.RoundingMode;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
class zzsh extends zzsi {
    final zzsd zzb;
    final Character zzc;

    zzsh(zzsd zzsdVar, Character ch2) {
        this.zzb = zzsdVar;
        boolean z10 = true;
        if (ch2 != null && zzsdVar.zzd('=')) {
            z10 = false;
        }
        zzmt.zzj(z10, "Padding character %s was already in alphabet", ch2);
        this.zzc = ch2;
    }

    zzsh(String str, String str2, Character ch2) {
        this(new zzsd(str, str2.toCharArray()), ch2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzsh) {
            zzsh zzshVar = (zzsh) obj;
            if (this.zzb.equals(zzshVar.zzb) && Objects.equals(this.zzc, zzshVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Character ch2 = this.zzc;
        return Objects.hashCode(ch2) ^ this.zzb.hashCode();
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

    @Override // com.google.android.libraries.places.internal.zzsi
    int zza(byte[] bArr, CharSequence charSequence) throws zzsg {
        zzsd zzsdVar;
        CharSequence charSequenceZzg = zzg(charSequence);
        if (!this.zzb.zzc(charSequenceZzg.length())) {
            throw new zzsg("Invalid input length " + charSequenceZzg.length());
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < charSequenceZzg.length()) {
            long jZzb = 0;
            int i13 = 0;
            int i14 = 0;
            while (true) {
                zzsdVar = this.zzb;
                if (i13 >= zzsdVar.zzc) {
                    break;
                }
                jZzb <<= zzsdVar.zzb;
                if (i11 + i13 < charSequenceZzg.length()) {
                    jZzb |= (long) this.zzb.zzb(charSequenceZzg.charAt(i14 + i11));
                    i14++;
                }
                i13++;
            }
            int i15 = zzsdVar.zzd;
            int i16 = i14 * zzsdVar.zzb;
            int i17 = (i15 - 1) * 8;
            while (i17 >= (i15 * 8) - i16) {
                bArr[i12] = (byte) ((jZzb >>> i17) & 255);
                i17 -= 8;
                i12++;
            }
            i11 += this.zzb.zzc;
        }
        return i12;
    }

    zzsi zzb(zzsd zzsdVar, Character ch2) {
        return new zzsh(zzsdVar, null);
    }

    @Override // com.google.android.libraries.places.internal.zzsi
    void zzc(Appendable appendable, byte[] bArr, int i11, int i12) throws IOException {
        int i13 = 0;
        zzmt.zzn(0, i12, bArr.length);
        while (i13 < i12) {
            zzh(appendable, bArr, i13, Math.min(this.zzb.zzd, i12 - i13));
            i13 += this.zzb.zzd;
        }
    }

    @Override // com.google.android.libraries.places.internal.zzsi
    final int zzd(int i11) {
        return (int) (((((long) this.zzb.zzb) * ((long) i11)) + 7) / 8);
    }

    @Override // com.google.android.libraries.places.internal.zzsi
    final int zze(int i11) {
        zzsd zzsdVar = this.zzb;
        return zzsdVar.zzc * zzajl.zza(i11, zzsdVar.zzd, RoundingMode.CEILING);
    }

    @Override // com.google.android.libraries.places.internal.zzsi
    public final zzsi zzf() {
        return this.zzc == null ? this : zzb(this.zzb, null);
    }

    @Override // com.google.android.libraries.places.internal.zzsi
    final CharSequence zzg(CharSequence charSequence) {
        charSequence.getClass();
        if (this.zzc == null) {
            return charSequence;
        }
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
        } while (charSequence.charAt(length) == '=');
        return charSequence.subSequence(0, length + 1);
    }

    final void zzh(Appendable appendable, byte[] bArr, int i11, int i12) throws IOException {
        zzmt.zzn(i11, i11 + i12, bArr.length);
        int i13 = 0;
        zzmt.zze(i12 <= this.zzb.zzd);
        long j11 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            j11 = (j11 | ((long) (bArr[i11 + i14] & 255))) << 8;
        }
        int i15 = (i12 + 1) * 8;
        zzsd zzsdVar = this.zzb;
        while (i13 < i12 * 8) {
            long j12 = j11 >>> ((i15 - zzsdVar.zzb) - i13);
            zzsd zzsdVar2 = this.zzb;
            appendable.append(zzsdVar2.zza(((int) j12) & zzsdVar2.zza));
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
