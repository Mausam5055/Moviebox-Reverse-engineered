package com.google.android.gms.internal.gcm;

/* JADX INFO: loaded from: classes4.dex */
final class zzu extends zzr {
    private final zzs zzdw = new zzs();

    zzu() {
    }

    @Override // com.google.android.gms.internal.gcm.zzr
    public final void zzd(Throwable th2, Throwable th3) {
        if (th3 == th2) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th3);
        }
        if (th3 == null) {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
        this.zzdw.zzd(th2, true).add(th3);
    }
}
