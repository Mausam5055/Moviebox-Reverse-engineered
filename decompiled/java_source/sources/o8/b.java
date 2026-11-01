package o8;

import android.content.Context;
import android.support.v4.media.session.c;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    private static AdvertisingIdClient.Info a(Context context) {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (GooglePlayServicesNotAvailableException e11) {
            com.facebook.biddingkit.logging.b.d("Utils", "Failed to get AdvertisingIdClient: ", e11);
            return null;
        } catch (GooglePlayServicesRepairableException e12) {
            com.facebook.biddingkit.logging.b.d("Utils", "Failed to get AdvertisingIdClient: ", e12);
            return null;
        } catch (Exception e13) {
            com.facebook.biddingkit.logging.b.d("Utils", "Failed to get AdvertisingIdClient: ", e13);
            return null;
        }
    }

    public static p8.b[] b(p8.a aVar) {
        p8.b[] bVarArr = new p8.b[2];
        if (aVar == null) {
            return bVarArr;
        }
        Iterator it = aVar.entries().iterator();
        if (!it.hasNext()) {
            return bVarArr;
        }
        c.a(it.next());
        throw null;
    }

    public static String c(Context context) {
        AdvertisingIdClient.Info infoA = a(context);
        return infoA != null ? infoA.getId() : "";
    }
}
