package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.n;
import com.android.billingclient.api.q;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzb {
    public static final int zza = Runtime.getRuntime().availableProcessors();

    public static int zza(Intent intent, String str) {
        if (intent != null) {
            return zzm(intent.getExtras(), "ProxyBillingActivity");
        }
        zzk("ProxyBillingActivity", "Got null intent!");
        return 0;
    }

    public static int zzb(Bundle bundle, String str) {
        if (bundle == null) {
            zzk(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            zzj(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        zzk(str, "Unexpected type for bundle response code: ".concat(obj.getClass().getName()));
        return 6;
    }

    public static int zzc(Intent intent, String str) {
        return zze(intent, "ProxyBillingActivity").b();
    }

    public static Bundle zzd(boolean z10, boolean z11, boolean z12, boolean z13, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z10) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    public static n zze(Intent intent, String str) {
        if (intent != null) {
            n.a aVarC = n.c();
            aVarC.c(zzb(intent.getExtras(), str));
            aVarC.b(zzg(intent.getExtras(), str));
            return aVarC.a();
        }
        zzk("BillingHelper", "Got null intent!");
        n.a aVarC2 = n.c();
        aVarC2.c(6);
        aVarC2.b("An internal error occurred.");
        return aVarC2.a();
    }

    public static q zzf(Bundle bundle, String str) {
        return bundle == null ? new q(0, null) : new q(zzm(bundle, "BillingClient"), bundle.getString("IN_APP_MESSAGE_PURCHASE_TOKEN"));
    }

    public static String zzg(Bundle bundle, String str) {
        if (bundle == null) {
            zzk(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            zzj(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        zzk(str, "Unexpected type for debug message: ".concat(obj.getClass().getName()));
        return "";
    }

    public static String zzh(int i11) {
        return zza.zza(i11).toString();
    }

    @Nullable
    public static List zzi(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            Purchase purchaseZzn = zzn(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (purchaseZzn == null) {
                zzj("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(purchaseZzn);
        } else {
            zzj("BillingHelper", "Found purchase list of " + stringArrayList.size() + " items");
            for (int i11 = 0; i11 < stringArrayList.size() && i11 < stringArrayList2.size(); i11++) {
                Purchase purchaseZzn2 = zzn(stringArrayList.get(i11), stringArrayList2.get(i11));
                if (purchaseZzn2 != null) {
                    arrayList.add(purchaseZzn2);
                }
            }
        }
        return arrayList;
    }

    public static void zzj(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            if (str2.isEmpty()) {
                Log.v(str, str2);
                return;
            }
            int i11 = 40000;
            while (!str2.isEmpty() && i11 > 0) {
                int iMin = Math.min(str2.length(), Math.min(4000, i11));
                Log.v(str, str2.substring(0, iMin));
                str2 = str2.substring(iMin);
                i11 -= iMin;
            }
        }
    }

    public static void zzk(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    public static void zzl(String str, String str2, Throwable th2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2, th2);
        }
    }

    private static int zzm(Bundle bundle, String str) {
        if (bundle != null) {
            return bundle.getInt("IN_APP_MESSAGE_RESPONSE_CODE", 0);
        }
        zzk(str, "Unexpected null bundle received!");
        return 0;
    }

    @Nullable
    private static Purchase zzn(String str, String str2) {
        if (str == null || str2 == null) {
            zzj("BillingHelper", "Received a null purchase data.");
            return null;
        }
        try {
            return new Purchase(str, str2);
        } catch (JSONException e11) {
            zzk("BillingHelper", "Got JSONException while parsing purchase data: ".concat(e11.toString()));
            return null;
        }
    }
}
