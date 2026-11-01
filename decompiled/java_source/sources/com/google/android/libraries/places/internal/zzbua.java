package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
final class zzbua implements zzbts {
    private final zzbwc zza;
    private final zzbwb zzb;
    private final zzbtv zzc;
    private int zzd;
    private boolean zze;

    zzbua(zzbwc zzbwcVar, boolean z10) {
        this.zza = zzbwcVar;
        zzbwb zzbwbVar = new zzbwb();
        this.zzb = zzbwbVar;
        this.zzc = new zzbtv(4096, false, zzbwbVar);
        this.zzd = 16384;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        this.zze = true;
        this.zza.close();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final synchronized void zza(zzbue zzbueVar) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        this.zzd = zzbueVar.zzc(this.zzd);
        zzl(0, 0, (byte) 4, (byte) 1);
        this.zza.flush();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final synchronized void zzb(boolean z10, int i11, int i12) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        zzl(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
        this.zza.zzw(i11);
        this.zza.zzw(i12);
        this.zza.flush();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final synchronized void zzc(int i11, zzbtp zzbtpVar) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        if (zzbtpVar.zzs == -1) {
            throw new IllegalArgumentException();
        }
        zzl(i11, 4, (byte) 3, (byte) 0);
        this.zza.zzw(zzbtpVar.zzs);
        this.zza.flush();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final int zzd() {
        return this.zzd;
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final synchronized void zze() throws IOException {
        try {
            if (this.zze) {
                throw new IOException("closed");
            }
            Logger logger = zzbub.zza;
            Level level = Level.FINE;
            if (logger.isLoggable(level)) {
                zzbub.zza.logp(level, "io.grpc.okhttp.internal.framed.Http2$Writer", "connectionPreface", String.format(">> CONNECTION %s", zzbub.zzb.zze()));
            }
            zzbwc zzbwcVar = this.zza;
            byte[] source = zzbub.zzb.zzp();
            Intrinsics.h(source, "source");
            if (((zzbwk) zzbwcVar).zzc) {
                throw new IllegalStateException("closed");
            }
            zzbwb zzbwbVar = ((zzbwk) zzbwcVar).zzb;
            Intrinsics.h(source, "source");
            zzbwbVar.zzl(source, 0, source.length);
            ((zzbwk) zzbwcVar).zza();
            this.zza.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final synchronized void zzf(boolean z10, int i11, zzbwb zzbwbVar, int i12) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        zzl(i11, i12, (byte) 0, z10 ? (byte) 1 : (byte) 0);
        if (i12 > 0) {
            this.zza.zzn(zzbwbVar, i12);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final synchronized void zzg() throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        this.zza.flush();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final synchronized void zzh(int i11, zzbtp zzbtpVar, byte[] bArr) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        if (zzbtpVar.zzs == -1) {
            throw zzbub.zzf("errorCode.httpCode == -1", new Object[0]);
        }
        zzl(0, 8, (byte) 7, (byte) 0);
        this.zza.zzw(0);
        this.zza.zzw(zzbtpVar.zzs);
        this.zza.flush();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final synchronized void zzi(zzbue zzbueVar) throws IOException {
        int i11;
        try {
            if (this.zze) {
                throw new IOException("closed");
            }
            int i12 = 0;
            zzl(0, zzbueVar.zzd() * 6, (byte) 4, (byte) 0);
            while (i12 < 10) {
                if (zzbueVar.zzf(i12)) {
                    if (i12 == 4) {
                        int i13 = i12;
                        i12 = 3;
                        i11 = i13;
                    } else {
                        i11 = 7;
                        if (i12 == 7) {
                            i12 = 4;
                        } else {
                            i11 = i12;
                        }
                    }
                    zzbwc zzbwcVar = this.zza;
                    if (((zzbwk) zzbwcVar).zzc) {
                        throw new IllegalStateException("closed");
                    }
                    ((zzbwk) zzbwcVar).zzb.zzq(i12);
                    ((zzbwk) zzbwcVar).zza();
                    this.zza.zzw(zzbueVar.zza(i11));
                    i12 = i11;
                }
                i12++;
            }
            this.zza.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final synchronized void zzj(boolean z10, boolean z11, int i11, int i12, List list) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        this.zzc.zzb(list);
        long jZzg = this.zzb.zzg();
        int iMin = (int) Math.min(this.zzd, jZzg);
        long j11 = iMin;
        zzl(i11, iMin, (byte) 1, jZzg == j11 ? (byte) 4 : (byte) 0);
        this.zza.zzn(this.zzb, j11);
        if (jZzg > j11) {
            long j12 = jZzg - j11;
            while (j12 > 0) {
                int iMin2 = (int) Math.min(this.zzd, j12);
                long j13 = iMin2;
                j12 -= j13;
                zzl(i11, iMin2, (byte) 9, j12 == 0 ? (byte) 4 : (byte) 0);
                this.zza.zzn(this.zzb, j13);
            }
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final synchronized void zzk(int i11, long j11) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        if (j11 == 0) {
            throw zzbub.zzf("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[]{0L});
        }
        zzl(i11, 4, (byte) 8, (byte) 0);
        this.zza.zzw((int) j11);
        this.zza.flush();
    }

    final void zzl(int i11, int i12, byte b11, byte b12) throws IOException {
        Logger logger = zzbub.zza;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            zzbub.zza.logp(level, "io.grpc.okhttp.internal.framed.Http2$Writer", "frameHeader", zzbty.zza(false, i11, i12, b11, b12));
        }
        int i13 = this.zzd;
        if (i12 > i13) {
            throw zzbub.zzf("FRAME_SIZE_ERROR length > %d: %d", new Object[]{Integer.valueOf(i13), Integer.valueOf(i12)});
        }
        if ((Integer.MIN_VALUE & i11) != 0) {
            throw zzbub.zzf("reserved bit set: %s", new Object[]{Integer.valueOf(i11)});
        }
        zzbwc zzbwcVar = this.zza;
        zzbwcVar.zzv((i12 >>> 16) & 255);
        zzbwcVar.zzv((i12 >>> 8) & 255);
        zzbwcVar.zzv(i12 & 255);
        this.zza.zzv(b11);
        this.zza.zzv(b12);
        this.zza.zzw(i11 & Integer.MAX_VALUE);
    }
}
