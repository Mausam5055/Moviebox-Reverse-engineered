package com.google.android.play.core.appupdate.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzr extends zzn {
    final /* synthetic */ h zza;

    zzr(h hVar) {
    }

    @Override // com.google.android.play.core.appupdate.internal.zzn
    public final void zza() {
        synchronized (h.e(null)) {
            try {
                if (h.g(null).get() > 0 && h.g(null).decrementAndGet() > 0) {
                    h.d(null).a("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                if (h.c(null) != null) {
                    h.d(null).a("Unbind from service.", new Object[0]);
                    h.a(null).unbindService(h.b(null));
                    h.i(null, false);
                    h.j(null, null);
                    h.h(null, null);
                }
                h.l(null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
