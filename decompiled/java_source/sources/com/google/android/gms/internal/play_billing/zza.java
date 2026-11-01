package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
enum zza {
    RESPONSE_CODE_UNSPECIFIED(-999),
    SERVICE_TIMEOUT(-3),
    FEATURE_NOT_SUPPORTED(-2),
    SERVICE_DISCONNECTED(-1),
    OK(0),
    USER_CANCELED(1),
    SERVICE_UNAVAILABLE(2),
    BILLING_UNAVAILABLE(3),
    ITEM_UNAVAILABLE(4),
    DEVELOPER_ERROR(5),
    ERROR(6),
    ITEM_ALREADY_OWNED(7),
    ITEM_NOT_OWNED(8),
    EXPIRED_OFFER_TOKEN(11),
    NETWORK_ERROR(12);

    private static final zzai zzp;
    private final int zzr;

    static {
        zzah zzahVar = new zzah();
        for (zza zzaVar : values()) {
            zzahVar.zza(Integer.valueOf(zzaVar.zzr), zzaVar);
        }
        zzp = zzahVar.zzb();
    }

    zza(int i11) {
        this.zzr = i11;
    }

    static zza zza(int i11) {
        zzai zzaiVar = zzp;
        Integer numValueOf = Integer.valueOf(i11);
        return !zzaiVar.containsKey(numValueOf) ? RESPONSE_CODE_UNSPECIFIED : (zza) zzaiVar.get(numValueOf);
    }
}
