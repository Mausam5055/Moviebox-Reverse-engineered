package com.google.android.libraries.places.internal;

import com.meituan.android.walle.ChannelReader;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzayt {
    private static final zzayo zza = new zzayq();

    public static zzayk zza(zzayk zzaykVar, List list) {
        zzmt.zzc(zzaykVar, ChannelReader.CHANNEL_KEY);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzaykVar = new zzays(zzaykVar, (zzayp) it.next(), null);
        }
        return zzaykVar;
    }
}
