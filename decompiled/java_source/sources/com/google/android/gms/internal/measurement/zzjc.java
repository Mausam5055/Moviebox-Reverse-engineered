package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzjc extends zzil {
    private static final Logger zzb = Logger.getLogger(zzjc.class.getName());
    private static final boolean zzc = zzml.zzc();
    zzjf zza;

    private static class zza extends zzjc {
        private final byte[] zzb;
        private final int zzc;
        private int zzd;

        zza(byte[] bArr, int i11, int i12) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            if (((bArr.length - i12) | i12) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i12)));
            }
            this.zzb = bArr;
            this.zzd = 0;
            this.zzc = i12;
        }

        private final void zzc(byte[] bArr, int i11, int i12) throws IOException {
            try {
                System.arraycopy(bArr, i11, this.zzb, this.zzd, i12);
                this.zzd += i12;
            } catch (IndexOutOfBoundsException e11) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), Integer.valueOf(i12)), e11);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final int zza() {
            return this.zzc - this.zzd;
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(byte b11) throws IOException {
            int i11 = this.zzd;
            try {
                int i12 = i11 + 1;
                try {
                    this.zzb[i11] = b11;
                    this.zzd = i12;
                } catch (IndexOutOfBoundsException e11) {
                    e = e11;
                    i11 = i12;
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(i11), Integer.valueOf(this.zzc), 1), e);
                }
            } catch (IndexOutOfBoundsException e12) {
                e = e12;
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(int i11) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i12 = this.zzd;
                int i13 = i12 + 1;
                this.zzd = i13;
                bArr[i12] = (byte) i11;
                int i14 = i12 + 2;
                this.zzd = i14;
                bArr[i13] = (byte) (i11 >> 8);
                int i15 = i12 + 3;
                this.zzd = i15;
                bArr[i14] = (byte) (i11 >> 16);
                this.zzd = i12 + 4;
                bArr[i15] = (byte) (i11 >>> 24);
            } catch (IndexOutOfBoundsException e11) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e11);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(int i11, int i12) throws IOException {
            zzc(i11, 5);
            zza(i12);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(int i11, long j11) throws IOException {
            zzc(i11, 1);
            zza(j11);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(int i11, zzik zzikVar) throws IOException {
            zzc(i11, 2);
            zza(zzikVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(int i11, zzlc zzlcVar) throws IOException {
            zzc(1, 3);
            zzd(2, i11);
            zzc(3, 2);
            zza(zzlcVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        final void zza(int i11, zzlc zzlcVar, zzlu zzluVar) throws IOException {
            zzc(i11, 2);
            zzc(((zzib) zzlcVar).zza(zzluVar));
            zzluVar.zza(zzlcVar, this.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(int i11, String str) throws IOException {
            zzc(i11, 2);
            zza(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(int i11, boolean z10) throws IOException {
            zzc(i11, 0);
            zza(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(long j11) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i11 = this.zzd;
                int i12 = i11 + 1;
                this.zzd = i12;
                bArr[i11] = (byte) j11;
                int i13 = i11 + 2;
                this.zzd = i13;
                bArr[i12] = (byte) (j11 >> 8);
                int i14 = i11 + 3;
                this.zzd = i14;
                bArr[i13] = (byte) (j11 >> 16);
                int i15 = i11 + 4;
                this.zzd = i15;
                bArr[i14] = (byte) (j11 >> 24);
                int i16 = i11 + 5;
                this.zzd = i16;
                bArr[i15] = (byte) (j11 >> 32);
                int i17 = i11 + 6;
                this.zzd = i17;
                bArr[i16] = (byte) (j11 >> 40);
                int i18 = i11 + 7;
                this.zzd = i18;
                bArr[i17] = (byte) (j11 >> 48);
                this.zzd = i11 + 8;
                bArr[i18] = (byte) (j11 >> 56);
            } catch (IndexOutOfBoundsException e11) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e11);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(zzik zzikVar) throws IOException {
            zzc(zzikVar.zzb());
            zzikVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(zzlc zzlcVar) throws IOException {
            zzc(zzlcVar.zzcb());
            zzlcVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zza(String str) throws IOException {
            int i11 = this.zzd;
            try {
                int iZzj = zzjc.zzj(str.length() * 3);
                int iZzj2 = zzjc.zzj(str.length());
                if (iZzj2 != iZzj) {
                    zzc(zzmp.zza(str));
                    this.zzd = zzmp.zza(str, this.zzb, this.zzd, zza());
                    return;
                }
                int i12 = i11 + iZzj2;
                this.zzd = i12;
                int iZza = zzmp.zza(str, this.zzb, i12, zza());
                this.zzd = i11;
                zzc((iZza - i11) - iZzj2);
                this.zzd = iZza;
            } catch (zzmt e11) {
                this.zzd = i11;
                zza(str, e11);
            } catch (IndexOutOfBoundsException e12) {
                throw new zzb(e12);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzil
        public final void zza(byte[] bArr, int i11, int i12) throws IOException {
            zzc(bArr, i11, i12);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zzb(int i11) throws IOException {
            if (i11 >= 0) {
                zzc(i11);
            } else {
                zzb(i11);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zzb(int i11, int i12) throws IOException {
            zzc(i11, 0);
            zzb(i12);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zzb(int i11, long j11) throws IOException {
            zzc(i11, 0);
            zzb(j11);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zzb(int i11, zzik zzikVar) throws IOException {
            zzc(1, 3);
            zzd(2, i11);
            zza(3, zzikVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zzb(long j11) throws IOException {
            if (zzjc.zzc && zza() >= 10) {
                while ((j11 & (-128)) != 0) {
                    byte[] bArr = this.zzb;
                    int i11 = this.zzd;
                    this.zzd = i11 + 1;
                    zzml.zza(bArr, i11, (byte) (((int) j11) | 128));
                    j11 >>>= 7;
                }
                byte[] bArr2 = this.zzb;
                int i12 = this.zzd;
                this.zzd = 1 + i12;
                zzml.zza(bArr2, i12, (byte) j11);
                return;
            }
            while ((j11 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.zzb;
                    int i13 = this.zzd;
                    this.zzd = i13 + 1;
                    bArr3[i13] = (byte) (((int) j11) | 128);
                    j11 >>>= 7;
                } catch (IndexOutOfBoundsException e11) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e11);
                }
            }
            byte[] bArr4 = this.zzb;
            int i14 = this.zzd;
            this.zzd = i14 + 1;
            bArr4[i14] = (byte) j11;
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zzb(byte[] bArr, int i11, int i12) throws IOException {
            zzc(i12);
            zzc(bArr, 0, i12);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zzc(int i11) throws IOException {
            while ((i11 & (-128)) != 0) {
                try {
                    byte[] bArr = this.zzb;
                    int i12 = this.zzd;
                    this.zzd = i12 + 1;
                    bArr[i12] = (byte) (i11 | 128);
                    i11 >>>= 7;
                } catch (IndexOutOfBoundsException e11) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e11);
                }
            }
            byte[] bArr2 = this.zzb;
            int i13 = this.zzd;
            this.zzd = i13 + 1;
            bArr2[i13] = (byte) i11;
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zzc(int i11, int i12) throws IOException {
            zzc((i11 << 3) | i12);
        }

        @Override // com.google.android.gms.internal.measurement.zzjc
        public final void zzd(int i11, int i12) throws IOException {
            zzc(i11, 0);
            zzc(i12);
        }
    }

    public static class zzb extends IOException {
        zzb() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        zzb(String str, Throwable th2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th2);
        }

        zzb(Throwable th2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th2);
        }
    }

    private zzjc() {
    }

    public static int zza(double d11) {
        return 8;
    }

    public static int zza(float f11) {
        return 4;
    }

    public static int zza(int i11, double d11) {
        return zzj(i11 << 3) + 8;
    }

    public static int zza(int i11, float f11) {
        return zzj(i11 << 3) + 4;
    }

    public static int zza(int i11, zzkk zzkkVar) {
        return (zzj(8) << 1) + zzj(2, i11) + zzb(3, zzkkVar);
    }

    public static int zza(zzkk zzkkVar) {
        int iZza = zzkkVar.zza();
        return zzj(iZza) + iZza;
    }

    static int zza(zzlc zzlcVar, zzlu zzluVar) {
        int iZza = ((zzib) zzlcVar).zza(zzluVar);
        return zzj(iZza) + iZza;
    }

    public static int zza(boolean z10) {
        return 1;
    }

    public static int zza(byte[] bArr) {
        int length = bArr.length;
        return zzj(length) + length;
    }

    public static int zzb(int i11, zzkk zzkkVar) {
        int iZzj = zzj(i11 << 3);
        int iZza = zzkkVar.zza();
        return iZzj + zzj(iZza) + iZza;
    }

    public static int zzb(int i11, zzlc zzlcVar) {
        return (zzj(8) << 1) + zzj(2, i11) + zzj(24) + zzc(zzlcVar);
    }

    @Deprecated
    static int zzb(int i11, zzlc zzlcVar, zzlu zzluVar) {
        return (zzj(i11 << 3) << 1) + ((zzib) zzlcVar).zza(zzluVar);
    }

    public static int zzb(int i11, String str) {
        return zzj(i11 << 3) + zzb(str);
    }

    public static int zzb(int i11, boolean z10) {
        return zzj(i11 << 3) + 1;
    }

    public static int zzb(zzik zzikVar) {
        int iZzb = zzikVar.zzb();
        return zzj(iZzb) + iZzb;
    }

    @Deprecated
    public static int zzb(zzlc zzlcVar) {
        return zzlcVar.zzcb();
    }

    public static int zzb(String str) {
        int length;
        try {
            length = zzmp.zza(str);
        } catch (zzmt unused) {
            length = str.getBytes(zzjv.zza).length;
        }
        return zzj(length) + length;
    }

    public static zzjc zzb(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    public static int zzc(int i11, long j11) {
        return zzj(i11 << 3) + 8;
    }

    public static int zzc(int i11, zzik zzikVar) {
        int iZzj = zzj(i11 << 3);
        int iZzb = zzikVar.zzb();
        return iZzj + zzj(iZzb) + iZzb;
    }

    static int zzc(int i11, zzlc zzlcVar, zzlu zzluVar) {
        return zzj(i11 << 3) + zza(zzlcVar, zzluVar);
    }

    public static int zzc(long j11) {
        return 8;
    }

    public static int zzc(zzlc zzlcVar) {
        int iZzcb = zzlcVar.zzcb();
        return zzj(iZzcb) + iZzcb;
    }

    public static int zzd(int i11) {
        return zzg(i11);
    }

    public static int zzd(int i11, long j11) {
        return zzj(i11 << 3) + zzg(j11);
    }

    public static int zzd(int i11, zzik zzikVar) {
        return (zzj(8) << 1) + zzj(2, i11) + zzc(3, zzikVar);
    }

    public static int zzd(long j11) {
        return zzg(j11);
    }

    public static int zze(int i11) {
        return 4;
    }

    public static int zze(int i11, int i12) {
        return zzj(i11 << 3) + zzg(i12);
    }

    public static int zze(int i11, long j11) {
        return zzj(i11 << 3) + 8;
    }

    public static int zze(long j11) {
        return 8;
    }

    public static int zzf(int i11) {
        return zzg(i11);
    }

    public static int zzf(int i11, int i12) {
        return zzj(i11 << 3) + 4;
    }

    public static int zzf(int i11, long j11) {
        return zzj(i11 << 3) + zzg(zzi(j11));
    }

    public static int zzf(long j11) {
        return zzg(zzi(j11));
    }

    public static int zzg(int i11) {
        return 4;
    }

    public static int zzg(int i11, int i12) {
        return zzj(i11 << 3) + zzg(i12);
    }

    public static int zzg(int i11, long j11) {
        return zzj(i11 << 3) + zzg(j11);
    }

    public static int zzg(long j11) {
        return (640 - (Long.numberOfLeadingZeros(j11) * 9)) >>> 6;
    }

    public static int zzh(int i11) {
        return zzj(zzl(i11));
    }

    public static int zzh(int i11, int i12) {
        return zzj(i11 << 3) + 4;
    }

    public static int zzi(int i11) {
        return zzj(i11 << 3);
    }

    public static int zzi(int i11, int i12) {
        return zzj(i11 << 3) + zzj(zzl(i12));
    }

    private static long zzi(long j11) {
        return (j11 >> 63) ^ (j11 << 1);
    }

    public static int zzj(int i11) {
        return (352 - (Integer.numberOfLeadingZeros(i11) * 9)) >>> 6;
    }

    public static int zzj(int i11, int i12) {
        return zzj(i11 << 3) + zzj(i12);
    }

    private static int zzl(int i11) {
        return (i11 >> 31) ^ (i11 << 1);
    }

    public abstract int zza();

    public abstract void zza(byte b11) throws IOException;

    public abstract void zza(int i11) throws IOException;

    public abstract void zza(int i11, int i12) throws IOException;

    public abstract void zza(int i11, long j11) throws IOException;

    public abstract void zza(int i11, zzik zzikVar) throws IOException;

    public abstract void zza(int i11, zzlc zzlcVar) throws IOException;

    abstract void zza(int i11, zzlc zzlcVar, zzlu zzluVar) throws IOException;

    public abstract void zza(int i11, String str) throws IOException;

    public abstract void zza(int i11, boolean z10) throws IOException;

    public abstract void zza(long j11) throws IOException;

    public abstract void zza(zzik zzikVar) throws IOException;

    public abstract void zza(zzlc zzlcVar) throws IOException;

    public abstract void zza(String str) throws IOException;

    final void zza(String str, zzmt zzmtVar) throws IOException {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzmtVar);
        byte[] bytes = str.getBytes(zzjv.zza);
        try {
            zzc(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzb(e11);
        }
    }

    public final void zzb() {
        if (zza() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzb(double d11) throws IOException {
        zza(Double.doubleToRawLongBits(d11));
    }

    public final void zzb(float f11) throws IOException {
        zza(Float.floatToRawIntBits(f11));
    }

    public abstract void zzb(int i11) throws IOException;

    public final void zzb(int i11, double d11) throws IOException {
        zza(i11, Double.doubleToRawLongBits(d11));
    }

    public final void zzb(int i11, float f11) throws IOException {
        zza(i11, Float.floatToRawIntBits(f11));
    }

    public abstract void zzb(int i11, int i12) throws IOException;

    public abstract void zzb(int i11, long j11) throws IOException;

    public abstract void zzb(int i11, zzik zzikVar) throws IOException;

    public abstract void zzb(long j11) throws IOException;

    public final void zzb(boolean z10) throws IOException {
        zza(z10 ? (byte) 1 : (byte) 0);
    }

    abstract void zzb(byte[] bArr, int i11, int i12) throws IOException;

    public abstract void zzc(int i11) throws IOException;

    public abstract void zzc(int i11, int i12) throws IOException;

    public abstract void zzd(int i11, int i12) throws IOException;

    public final void zzh(int i11, long j11) throws IOException {
        zzb(i11, zzi(j11));
    }

    public final void zzh(long j11) throws IOException {
        zzb(zzi(j11));
    }

    public final void zzk(int i11) throws IOException {
        zzc(zzl(i11));
    }

    public final void zzk(int i11, int i12) throws IOException {
        zzd(i11, zzl(i12));
    }
}
