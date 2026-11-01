package com.google.android.libraries.places.internal;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.libraries.places.api.net.PlacesStatusCodes;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjb {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    public static int zza(@Nullable String str) {
        byte b11;
        if (str == null) {
            return 13;
        }
        switch (str) {
            case "REQUEST_DENIED":
                b11 = 3;
                break;
            case "INVALID_REQUEST":
                b11 = 4;
                break;
            case "ZERO_RESULTS":
                b11 = 1;
                break;
            case "OK":
                b11 = 0;
                break;
            case "NOT_FOUND":
                b11 = 5;
                break;
            case "OVER_QUERY_LIMIT":
                b11 = 2;
                break;
            default:
                b11 = -1;
                break;
        }
        if (b11 == 0 || b11 == 1) {
            return 0;
        }
        if (b11 == 2) {
            return 9010;
        }
        if (b11 == 3) {
            return PlacesStatusCodes.REQUEST_DENIED;
        }
        if (b11 != 4) {
            return b11 != 5 ? 13 : 9013;
        }
        return PlacesStatusCodes.INVALID_REQUEST;
    }

    @Nullable
    public static String zzb(@Nullable String str, @Nullable String str2) {
        return TextUtils.isEmpty(str2) ? str : str2;
    }
}
