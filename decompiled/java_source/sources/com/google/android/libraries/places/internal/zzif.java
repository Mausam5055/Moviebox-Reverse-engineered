package com.google.android.libraries.places.internal;

import android.location.Location;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.libraries.places.api.net.FindCurrentPlaceRequest;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzif extends zzik {
    private final Location zza;
    private final zznx zzb;

    zzif(FindCurrentPlaceRequest findCurrentPlaceRequest, Location location, zznx zznxVar, Locale locale, String str, boolean z10, zzki zzkiVar) {
        super(findCurrentPlaceRequest, locale, str, false, zzkiVar);
        this.zza = location;
        this.zzb = zznxVar;
    }

    @Override // com.google.android.libraries.places.internal.zzik
    protected final String zze() {
        return "findplacefromuserlocation/json";
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0028  */
    @Override // com.google.android.libraries.places.internal.zzik
    public final Map zzf() {
        Integer numValueOf;
        FindCurrentPlaceRequest findCurrentPlaceRequest = (FindCurrentPlaceRequest) zzb();
        HashMap map = new HashMap();
        zzik.zzg(map, RequestParameters.SUBRESOURCE_LOCATION, zzjc.zza(this.zza), null);
        zzik.zzg(map, "wifiaccesspoints", zzjc.zze(this.zzb, 4000), null);
        Location location = this.zza;
        if (location == null) {
            numValueOf = null;
        } else {
            float accuracy = location.getAccuracy();
            if (!location.hasAccuracy() || accuracy <= 0.0f) {
                numValueOf = null;
            } else {
                numValueOf = Integer.valueOf(Math.round(accuracy * 100.0f));
            }
        }
        zzik.zzg(map, "precision", numValueOf, null);
        zzik.zzg(map, CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(this.zza.getTime()), null);
        zzik.zzg(map, "fields", zzjd.zza(findCurrentPlaceRequest.getPlaceFields()), null);
        return map;
    }
}
