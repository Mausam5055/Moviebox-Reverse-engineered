package com.google.android.play.core.appupdate.internal;

import android.os.IBinder;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class zzt extends zzn {
    final /* synthetic */ IBinder zza;
    final /* synthetic */ g zzb;

    zzt(g gVar, IBinder iBinder) {
        this.zza = iBinder;
    }

    @Override // com.google.android.play.core.appupdate.internal.zzn
    public final void zza() {
        this.zzb.getClass();
        h.j(null, d.Y0(this.zza));
        this.zzb.getClass();
        h.n(null);
        this.zzb.getClass();
        h.i(null, false);
        this.zzb.getClass();
        Iterator it = h.f(null).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.zzb.getClass();
        h.f(null).clear();
    }
}
