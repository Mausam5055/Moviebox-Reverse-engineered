package com.google.android.libraries.places.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@SourceDebugExtension
public final class zzbwl implements zzbwd {

    @JvmField
    public final zzbws zza;

    @JvmField
    public final zzbwb zzb;

    @JvmField
    public boolean zzc;

    public zzbwl(zzbws source) {
        Intrinsics.h(source, "source");
        this.zza = source;
        this.zzb = new zzbwb();
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable, com.google.android.libraries.places.internal.zzbws
    public final void close() throws IOException {
        if (this.zzc) {
            return;
        }
        this.zzc = true;
        this.zza.close();
        zzbwb zzbwbVar = this.zzb;
        zzbwbVar.zzF(zzbwbVar.zzg());
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.zzc;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) {
        Intrinsics.h(sink, "sink");
        zzbwb zzbwbVar = this.zzb;
        if (zzbwbVar.zzg() == 0 && this.zza.zza(zzbwbVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.zzb.read(sink);
    }

    public final String toString() {
        return "buffer(" + this.zza + ")";
    }

    @Override // com.google.android.libraries.places.internal.zzbwd
    public final void zzD(long j11) throws EOFException {
        zzbwb zzbwbVar;
        if (j11 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j11);
        }
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        do {
            zzbwbVar = this.zzb;
            if (zzbwbVar.zzg() >= j11) {
                return;
            }
        } while (this.zza.zza(zzbwbVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        throw new EOFException(null);
    }

    @Override // com.google.android.libraries.places.internal.zzbwd
    public final void zzF(long j11) throws EOFException {
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        while (j11 > 0) {
            zzbwb zzbwbVar = this.zzb;
            if (zzbwbVar.zzg() == 0 && this.zza.zza(zzbwbVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException(null);
            }
            long jMin = Math.min(j11, this.zzb.zzg());
            this.zzb.zzF(jMin);
            j11 -= jMin;
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbws
    public final long zza(zzbwb sink, long j11) {
        Intrinsics.h(sink, "sink");
        if (j11 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j11);
        }
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        zzbwb zzbwbVar = this.zzb;
        if (zzbwbVar.zzg() == 0 && this.zza.zza(zzbwbVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.zzb.zza(sink, Math.min(j11, this.zzb.zzg()));
    }

    @Override // com.google.android.libraries.places.internal.zzbwd
    public final byte zzc() throws EOFException {
        zzD(1L);
        return this.zzb.zzc();
    }

    @Override // com.google.android.libraries.places.internal.zzbwd
    public final int zze() throws EOFException {
        zzD(4L);
        return this.zzb.zze();
    }

    @Override // com.google.android.libraries.places.internal.zzbwd
    public final zzbwf zzy(long j11) throws EOFException {
        zzD(j11);
        return this.zzb.zzy(j11);
    }
}
