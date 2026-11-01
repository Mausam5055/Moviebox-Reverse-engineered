package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzib;
import com.google.android.gms.internal.measurement.zzid;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzib<MessageType extends zzib<MessageType, BuilderType>, BuilderType extends zzid<MessageType, BuilderType>> implements zzlc {
    protected int zza = 0;

    protected static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzid.zza(iterable, list);
    }

    int zza(zzlu zzluVar) {
        int iZzby = zzby();
        if (iZzby != -1) {
            return iZzby;
        }
        int iZza = zzluVar.zza(this);
        zzc(iZza);
        return iZza;
    }

    int zzby() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.zzlc
    public final zzik zzbz() {
        try {
            zzit zzitVarZzc = zzik.zzc(zzcb());
            zza(zzitVarZzc.zzb());
            return zzitVarZzc.zza();
        } catch (IOException e11) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a ByteString threw an IOException (should never happen).", e11);
        }
    }

    void zzc(int i11) {
        throw new UnsupportedOperationException();
    }

    public final byte[] zzca() {
        try {
            byte[] bArr = new byte[zzcb()];
            zzjc zzjcVarZzb = zzjc.zzb(bArr);
            zza(zzjcVarZzb);
            zzjcVarZzb.zzb();
            return bArr;
        } catch (IOException e11) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e11);
        }
    }
}
