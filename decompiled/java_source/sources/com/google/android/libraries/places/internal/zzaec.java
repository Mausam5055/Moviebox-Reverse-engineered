package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzaec implements zzaty {
    static final zzaty zza = new zzaec();

    private zzaec() {
    }

    @Override // com.google.android.libraries.places.internal.zzaty
    public final boolean zza(int i11) {
        if (i11 == 0) {
            return true;
        }
        switch (i11) {
            case 1000:
            case 1001:
            case 1002:
            case 1003:
                return true;
            default:
                return false;
        }
    }
}
