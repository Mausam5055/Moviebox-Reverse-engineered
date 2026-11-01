package com.google.android.libraries.places.internal;

import android.location.Location;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.libraries.places.api.model.LocationBias;
import com.google.android.libraries.places.api.model.LocationRestriction;
import com.google.android.libraries.places.api.model.RectangularBounds;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjc {
    private static final zzoa zza;

    static {
        zznz zznzVar = new zznz();
        zznzVar.zza(zzen.NONE, "NONE");
        zznzVar.zza(zzen.PSK, "WPA_PSK");
        zznzVar.zza(zzen.EAP, "WPA_EAP");
        zznzVar.zza(zzen.OTHER, "SECURED_NONE");
        zza = zznzVar.zzc();
    }

    @Nullable
    public static String zza(@Nullable Location location) {
        if (location == null) {
            return null;
        }
        return zzf(location.getLatitude(), location.getLongitude());
    }

    @Nullable
    public static String zzb(@Nullable LatLng latLng) {
        if (latLng == null) {
            return null;
        }
        return zzf(latLng.latitude, latLng.longitude);
    }

    @Nullable
    public static String zzc(@Nullable LocationBias locationBias) {
        if (locationBias == null) {
            return null;
        }
        if (locationBias instanceof RectangularBounds) {
            return zzg((RectangularBounds) locationBias);
        }
        throw new AssertionError("Unknown LocationBias type.");
    }

    @Nullable
    public static String zzd(@Nullable LocationRestriction locationRestriction) {
        if (locationRestriction == null) {
            return null;
        }
        if (locationRestriction instanceof RectangularBounds) {
            return zzg((RectangularBounds) locationRestriction);
        }
        throw new AssertionError("Unknown LocationRestriction type.");
    }

    public static String zze(zznx zznxVar, int i11) {
        StringBuilder sb2 = new StringBuilder();
        int size = zznxVar.size();
        for (int i12 = 0; i12 < size; i12++) {
            zzeo zzeoVar = (zzeo) zznxVar.get(i12);
            int length = sb2.length();
            zznz zznzVar = new zznz();
            zznzVar.zza("mac", zzeoVar.zzd());
            zznzVar.zza("strength_dbm", Integer.valueOf(zzeoVar.zzb()));
            zznzVar.zza("wifi_auth_type", zza.get(zzeoVar.zzc()));
            zznzVar.zza("is_connected", Boolean.valueOf(zzeoVar.zze()));
            zznzVar.zza("frequency_mhz", Integer.valueOf(zzeoVar.zza()));
            zzoa zzoaVarZzc = zznzVar.zzc();
            zzmh zzmhVarZzc = zzmh.zzc(",");
            Iterator<E> it = zzoaVarZzc.entrySet().iterator();
            StringBuilder sb3 = new StringBuilder();
            try {
                zzmf.zza(sb3, it, zzmhVarZzc, UrlUtils.EQUAL_MARK);
                String string = sb3.toString();
                int length2 = sb2.length();
                String strConcat = (length > 0 ? "|" : "").concat(string);
                if (length2 + strConcat.length() > 4000) {
                    break;
                }
                sb2.append(strConcat);
            } catch (IOException e11) {
                throw new AssertionError(e11);
            }
        }
        return sb2.toString();
    }

    private static String zzf(double d11, double d12) {
        return String.format(Locale.US, "%.15f,%.15f", Double.valueOf(d11), Double.valueOf(d12));
    }

    private static String zzg(RectangularBounds rectangularBounds) {
        LatLng southwest = rectangularBounds.getSouthwest();
        double d11 = southwest.latitude;
        double d12 = southwest.longitude;
        LatLng northeast = rectangularBounds.getNortheast();
        return String.format(Locale.US, "rectangle:%.15f,%.15f|%.15f,%.15f", Double.valueOf(d11), Double.valueOf(d12), Double.valueOf(northeast.latitude), Double.valueOf(northeast.longitude));
    }
}
