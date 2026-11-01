package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzakz implements zzaty {
    static final zzaty zza = new zzakz();

    private zzakz() {
    }

    @Override // com.google.android.libraries.places.internal.zzaty
    public final boolean zza(int i11) {
        if (i11 != 1 && i11 != 2 && i11 != 3 && i11 != 99) {
            switch (i11) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
                case 32:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }
}
