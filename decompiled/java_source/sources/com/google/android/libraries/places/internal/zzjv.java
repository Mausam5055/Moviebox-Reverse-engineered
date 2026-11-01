package com.google.android.libraries.places.internal;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjv {
    private static final zznx zza = zznx.zzo("accessibilityOptions", "addressComponents", "attributions", "businessStatus", "curbsidePickup", "currentOpeningHours", "delivery", "dineIn", "displayName", "editorialSummary", "formattedAddress", "iconBackgroundColor", "iconMaskBaseUri", "id", "internationalPhoneNumber", RequestParameters.SUBRESOURCE_LOCATION, "photos", "plusCode", "priceLevel", "primaryType", "primaryTypeDisplayName", CampaignEx.JSON_KEY_STAR, "regularOpeningHours", "regularSecondaryOpeningHours", "reservable", "reviews", "servesBeer", "servesBreakfast", "servesBrunch", "servesDinner", "servesLunch", "servesVegetarianFood", "servesWine", "takeout", "types", "userRatingCount", "utcOffsetMinutes", "viewport", "websiteUri");

    public static String zza(List list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add("attributions");
        return zzc(arrayList, true);
    }

    public static String zzb(List list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add("attributions");
        return zzc(arrayList, false);
    }

    private static String zzc(List list, boolean z10) {
        if (list.isEmpty()) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String strConcat = (String) it.next();
            if (z10) {
                strConcat = "places.".concat(String.valueOf(strConcat));
            }
            arrayList.add(strConcat);
        }
        return zzmh.zzc(",").zzf(arrayList);
    }
}
