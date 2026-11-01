package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzly extends zzlv {
    zzly() {
        super();
    }

    @Override // com.google.android.gms.internal.measurement.zzlv
    public final void zzd() {
        if (!zze()) {
            for (int i11 = 0; i11 < zza(); i11++) {
                Map.Entry entryZza = zza(i11);
                if (((zzjo) entryZza.getKey()).zze()) {
                    entryZza.setValue(Collections.unmodifiableList((List) entryZza.getValue()));
                }
            }
            for (Map.Entry entry : zzb()) {
                if (((zzjo) entry.getKey()).zze()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzd();
    }
}
