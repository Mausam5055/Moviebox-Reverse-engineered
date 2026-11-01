package com.google.android.libraries.places.internal;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbwo {
    public static final zzbwo zza = new zzbwo();
    private static final zzbwn zzb = new zzbwn(new byte[0], 0, 0, false, false);
    private static final int zzc;
    private static final AtomicReference[] zzd;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int iHighestOneBit = Integer.highestOneBit((iAvailableProcessors + iAvailableProcessors) - 1);
        zzc = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i11 = 0; i11 < iHighestOneBit; i11++) {
            atomicReferenceArr[i11] = new AtomicReference();
        }
        zzd = atomicReferenceArr;
    }

    private zzbwo() {
    }

    @JvmStatic
    public static final zzbwn zza() {
        AtomicReference atomicReferenceZzc = zzc();
        zzbwn zzbwnVar = zzb;
        zzbwn zzbwnVar2 = (zzbwn) atomicReferenceZzc.getAndSet(zzbwnVar);
        if (zzbwnVar2 == zzbwnVar) {
            return new zzbwn();
        }
        if (zzbwnVar2 == null) {
            atomicReferenceZzc.set(null);
            return new zzbwn();
        }
        atomicReferenceZzc.set(zzbwnVar2.zzg);
        zzbwnVar2.zzg = null;
        zzbwnVar2.zzd = 0;
        return zzbwnVar2;
    }

    @JvmStatic
    public static final void zzb(zzbwn segment) {
        Intrinsics.h(segment, "segment");
        if (segment.zzg != null || segment.zzh != null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (segment.zze) {
            return;
        }
        AtomicReference atomicReferenceZzc = zzc();
        zzbwn zzbwnVar = zzb;
        zzbwn zzbwnVar2 = (zzbwn) atomicReferenceZzc.getAndSet(zzbwnVar);
        if (zzbwnVar2 != zzbwnVar) {
            int i11 = zzbwnVar2 != null ? zzbwnVar2.zzd : 0;
            if (i11 >= 65536) {
                atomicReferenceZzc.set(zzbwnVar2);
                return;
            }
            segment.zzg = zzbwnVar2;
            segment.zzc = 0;
            segment.zzd = i11 + 8192;
            atomicReferenceZzc.set(segment);
        }
    }

    private static final AtomicReference zzc() {
        return zzd[(int) (Thread.currentThread().getId() & (((long) zzc) - 1))];
    }
}
