package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzb;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
abstract class g1 {
    static f1 a(Bundle bundle, String str, String str2) {
        n nVar = p0.f19126j;
        if (bundle == null) {
            zzb.zzk("BillingClient", String.format("%s got null owned items list", str2));
            return new f1(nVar, 54);
        }
        int iZzb = zzb.zzb(bundle, "BillingClient");
        String strZzg = zzb.zzg(bundle, "BillingClient");
        n.a aVarC = n.c();
        aVarC.c(iZzb);
        aVarC.b(strZzg);
        n nVarA = aVarC.a();
        if (iZzb != 0) {
            zzb.zzk("BillingClient", String.format("%s failed. Response code: %s", str2, Integer.valueOf(iZzb)));
            return new f1(nVarA, 23);
        }
        if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            zzb.zzk("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return new f1(nVar, 55);
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        if (stringArrayList == null) {
            zzb.zzk("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", str2));
            return new f1(nVar, 56);
        }
        if (stringArrayList2 == null) {
            zzb.zzk("BillingClient", String.format("Bundle returned from %s contains null purchases list.", str2));
            return new f1(nVar, 57);
        }
        if (stringArrayList3 != null) {
            return new f1(p0.f19128l, 1);
        }
        zzb.zzk("BillingClient", String.format("Bundle returned from %s contains null signatures list.", str2));
        return new f1(nVar, 58);
    }
}
