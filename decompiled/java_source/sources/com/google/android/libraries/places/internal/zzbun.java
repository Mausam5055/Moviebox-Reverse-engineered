package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
final class zzbun implements zzbci {
    private static final ThreadLocal zza = new ThreadLocal();
    private final zzavn zzb;
    private final zzavf zzc;

    zzbun(zzavf zzavfVar, int i11) {
        zzmt.zzc(zzavfVar, "defaultInstance cannot be null");
        this.zzc = zzavfVar;
        this.zzb = zzavfVar.zzaz();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.libraries.places.internal.zzbci
    public final /* bridge */ /* synthetic */ InputStream zza(Object obj) {
        return new zzbum(obj, this.zzb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v7, types: [com.google.android.libraries.places.internal.zzavf, java.lang.Object] */
    @Override // com.google.android.libraries.places.internal.zzbci
    public final /* bridge */ /* synthetic */ Object zzb(InputStream inputStream) {
        zzasq zzasqVarZzI;
        byte[] bArr;
        if (inputStream instanceof zzbum) {
            zzbum zzbumVar = (zzbum) inputStream;
            if (zzbumVar.zzc() == this.zzb) {
                try {
                    return zzbumVar.zzb();
                } catch (IllegalStateException unused) {
                }
            }
        }
        try {
            if (inputStream instanceof zzbav) {
                int iAvailable = inputStream.available();
                if (iAvailable <= 0 || iAvailable > 4194304) {
                    if (iAvailable == 0) {
                        return this.zzc;
                    }
                    zzasqVarZzI = null;
                } else {
                    ThreadLocal threadLocal = zza;
                    Reference reference = (Reference) threadLocal.get();
                    if (reference == null || (bArr = (byte[]) reference.get()) == null || bArr.length < iAvailable) {
                        bArr = new byte[iAvailable];
                        threadLocal.set(new WeakReference(bArr));
                    }
                    int i11 = iAvailable;
                    while (i11 > 0) {
                        int i12 = inputStream.read(bArr, iAvailable - i11, i11);
                        if (i12 == -1) {
                            break;
                        }
                        i11 -= i12;
                    }
                    if (i11 != 0) {
                        throw new RuntimeException("size inaccurate: " + iAvailable + " != " + (iAvailable - i11));
                    }
                    zzasqVarZzI = zzasq.zzJ(bArr, 0, iAvailable);
                }
            } else {
                zzasqVarZzI = null;
            }
            if (zzasqVarZzI == null) {
                zzasqVarZzI = zzasq.zzI(inputStream, 4096);
            }
            zzasqVarZzI.zzG(Integer.MAX_VALUE);
            try {
                ?? Zza = this.zzb.zza(zzasqVarZzI, zzbuo.zza);
                try {
                    zzasqVarZzI.zzz(0);
                    return Zza;
                } catch (zzauf e11) {
                    e11.zzh(Zza);
                    throw e11;
                }
            } catch (zzauf e12) {
                throw new zzbdq(zzbdo.zzo.zzg("Invalid protobuf byte sequence").zzf(e12), null);
            }
        } catch (IOException e13) {
            throw new RuntimeException(e13);
        }
    }
}
