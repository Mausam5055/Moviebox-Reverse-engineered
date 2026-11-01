package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@SourceDebugExtension
public final class zzbwk implements zzbwc {

    @JvmField
    public final zzbwq zza;

    @JvmField
    public final zzbwb zzb;

    @JvmField
    public boolean zzc;

    public zzbwk(zzbwq sink) {
        Intrinsics.h(sink, "sink");
        this.zza = sink;
        this.zzb = new zzbwb();
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable, com.google.android.libraries.places.internal.zzbwq
    public final void close() throws Throwable {
        Throwable th2;
        if (this.zzc) {
            return;
        }
        try {
            zzbwb zzbwbVar = this.zzb;
            th2 = null;
            if (zzbwbVar.zzg() > 0) {
                this.zza.zzn(zzbwbVar, zzbwbVar.zzg());
            }
        } catch (Throwable th3) {
            th2 = th3;
        }
        try {
            this.zza.close();
        } catch (Throwable th4) {
            if (th2 == null) {
                th2 = th4;
            }
        }
        this.zzc = true;
        if (th2 != null) {
            throw th2;
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbwc, com.google.android.libraries.places.internal.zzbwq, java.io.Flushable
    public final void flush() throws IOException {
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        zzbwb zzbwbVar = this.zzb;
        if (zzbwbVar.zzg() > 0) {
            this.zza.zzn(zzbwbVar, zzbwbVar.zzg());
        }
        this.zza.flush();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.zzc;
    }

    public final String toString() {
        return "buffer(" + this.zza + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer source) throws IOException {
        Intrinsics.h(source, "source");
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.zzb.write(source);
        zza();
        return iWrite;
    }

    public final zzbwc zza() throws IOException {
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        long jZzf = this.zzb.zzf();
        if (jZzf > 0) {
            this.zza.zzn(this.zzb, jZzf);
        }
        return this;
    }

    @Override // com.google.android.libraries.places.internal.zzbwq
    public final void zzn(zzbwb source, long j11) throws IOException {
        Intrinsics.h(source, "source");
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        this.zzb.zzn(source, j11);
        zza();
    }

    @Override // com.google.android.libraries.places.internal.zzbwc
    public final zzbwc zzv(int i11) throws IOException {
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        this.zzb.zzm(i11);
        zza();
        return this;
    }

    @Override // com.google.android.libraries.places.internal.zzbwc
    public final zzbwc zzw(int i11) throws IOException {
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        this.zzb.zzp(i11);
        zza();
        return this;
    }

    @Override // com.google.android.libraries.places.internal.zzbwc
    public final zzbwc zzx(String string) throws IOException {
        Intrinsics.h(string, "string");
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        this.zzb.zzs(string);
        zza();
        return this;
    }
}
