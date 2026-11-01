package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.Queue;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbge extends zzbeg {
    private static final zzbgc zza = new zzbfx();
    private static final zzbgc zzb = new zzbfy();
    private static final zzbgc zzc = new zzbfz();
    private static final zzbgc zzd = new zzbga();
    private static final zzbgd zze = new zzbgb();
    private final Deque zzf;
    private Deque zzg;
    private int zzh;
    private final Queue zzi;
    private boolean zzj;

    public zzbge() {
        this.zzi = new ArrayDeque(2);
        this.zzf = new ArrayDeque();
    }

    public zzbge(int i11) {
        this.zzi = new ArrayDeque(2);
        this.zzf = new ArrayDeque(i11);
    }

    private final int zzm(zzbgd zzbgdVar, int i11, Object obj, int i12) throws IOException {
        zza(i11);
        if (!this.zzf.isEmpty()) {
            zzp();
        }
        while (i11 > 0 && !this.zzf.isEmpty()) {
            zzbnv zzbnvVar = (zzbnv) this.zzf.peek();
            int iMin = Math.min(i11, zzbnvVar.zzf());
            i12 = zzbgdVar.zza(zzbnvVar, iMin, obj, i12);
            i11 -= iMin;
            this.zzh -= iMin;
            zzp();
        }
        if (i11 <= 0) {
            return i12;
        }
        throw new AssertionError("Failed executing read operation");
    }

    private final int zzn(zzbgc zzbgcVar, int i11, Object obj, int i12) {
        try {
            return zzm(zzbgcVar, i11, obj, i12);
        } catch (IOException e11) {
            throw new AssertionError(e11);
        }
    }

    private final void zzo() {
        if (!this.zzj) {
            ((zzbnv) this.zzf.remove()).close();
            return;
        }
        this.zzg.add((zzbnv) this.zzf.remove());
        zzbnv zzbnvVar = (zzbnv) this.zzf.peek();
        if (zzbnvVar != null) {
            zzbnvVar.zzb();
        }
    }

    private final void zzp() {
        if (((zzbnv) this.zzf.peek()).zzf() == 0) {
            zzo();
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbeg, com.google.android.libraries.places.internal.zzbnv, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        while (!this.zzf.isEmpty()) {
            ((zzbnv) this.zzf.remove()).close();
        }
        if (this.zzg != null) {
            while (!this.zzg.isEmpty()) {
                ((zzbnv) this.zzg.remove()).close();
            }
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbeg, com.google.android.libraries.places.internal.zzbnv
    public final void zzb() {
        if (this.zzg == null) {
            this.zzg = new ArrayDeque(Math.min(this.zzf.size(), 16));
        }
        while (!this.zzg.isEmpty()) {
            ((zzbnv) this.zzg.remove()).close();
        }
        this.zzj = true;
        zzbnv zzbnvVar = (zzbnv) this.zzf.peek();
        if (zzbnvVar != null) {
            zzbnvVar.zzb();
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbeg, com.google.android.libraries.places.internal.zzbnv
    public final void zzc() {
        if (!this.zzj) {
            throw new InvalidMarkException();
        }
        zzbnv zzbnvVar = (zzbnv) this.zzf.peek();
        if (zzbnvVar != null) {
            int iZzf = zzbnvVar.zzf();
            zzbnvVar.zzc();
            this.zzh += zzbnvVar.zzf() - iZzf;
        }
        while (true) {
            zzbnv zzbnvVar2 = (zzbnv) this.zzg.pollLast();
            if (zzbnvVar2 == null) {
                return;
            }
            zzbnvVar2.zzc();
            this.zzf.addFirst(zzbnvVar2);
            this.zzh += zzbnvVar2.zzf();
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbeg, com.google.android.libraries.places.internal.zzbnv
    public final boolean zzd() {
        Iterator it = this.zzf.iterator();
        while (it.hasNext()) {
            if (!((zzbnv) it.next()).zzd()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final int zze() {
        return zzn(zza, 1, null, 0);
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final int zzf() {
        return this.zzh;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0062, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.libraries.places.internal.zzbnv] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.libraries.places.internal.zzbnv] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.libraries.places.internal.zzbge] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.libraries.places.internal.zzbge] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // com.google.android.libraries.places.internal.zzbnv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzbnv zzg(int i11) {
        zzbnv zzbnvVarZzg;
        int i12;
        zzbnv zzbnvVarZzg2;
        ?? r11;
        ?? r12;
        if (i11 <= 0) {
            return zzbny.zza();
        }
        zza(i11);
        this.zzh -= i11;
        ?? r13 = 0;
        ?? zzbgeVar = 0;
        while (true) {
            zzbnv zzbnvVar = (zzbnv) this.zzf.peek();
            int iZzf = zzbnvVar.zzf();
            if (iZzf > i11) {
                zzbnvVarZzg2 = zzbnvVar.zzg(i11);
                i12 = 0;
            } else {
                if (this.zzj) {
                    zzbnvVarZzg = zzbnvVar.zzg(iZzf);
                    zzo();
                } else {
                    zzbnvVarZzg = (zzbnv) this.zzf.poll();
                }
                zzbnv zzbnvVar2 = zzbnvVarZzg;
                i12 = i11 - iZzf;
                zzbnvVarZzg2 = zzbnvVar2;
            }
            if (r13 == 0) {
                r12 = zzbnvVarZzg2;
            } else {
                if (zzbgeVar == 0) {
                    zzbgeVar = new zzbge(i12 != 0 ? Math.min(this.zzf.size() + 2, 16) : 2);
                    zzbgeVar.zzh(r13);
                    r13 = zzbgeVar;
                }
                zzbgeVar.zzh(zzbnvVarZzg2);
                r12 = r13;
                r11 = zzbgeVar;
            }
            if (i12 <= 0) {
                break;
            }
            r11 = zzbgeVar;
            i11 = i12;
            r13 = r12;
            zzbgeVar = r11;
        }
        return r12;
    }

    public final void zzh(zzbnv zzbnvVar) {
        boolean z10 = this.zzj && this.zzf.isEmpty();
        if (zzbnvVar instanceof zzbge) {
            zzbge zzbgeVar = (zzbge) zzbnvVar;
            while (!zzbgeVar.zzf.isEmpty()) {
                this.zzf.add((zzbnv) zzbgeVar.zzf.remove());
            }
            this.zzh += zzbgeVar.zzh;
            zzbgeVar.zzh = 0;
            zzbgeVar.close();
        } else {
            this.zzf.add(zzbnvVar);
            this.zzh += zzbnvVar.zzf();
        }
        if (z10) {
            ((zzbnv) this.zzf.peek()).zzb();
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzi(ByteBuffer byteBuffer) {
        zzn(zzd, byteBuffer.remaining(), byteBuffer, 0);
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzj(OutputStream outputStream, int i11) throws IOException {
        zzm(zze, i11, outputStream, 0);
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzk(byte[] bArr, int i11, int i12) {
        zzn(zzc, i12, bArr, i11);
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzl(int i11) {
        zzn(zzb, i11, null, 0);
    }
}
