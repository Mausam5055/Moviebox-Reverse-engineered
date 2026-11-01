package androidx.core.app;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f8088a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f8089b = new Object();

    private static y a(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("allowedDataTypes");
        HashSet hashSet = new HashSet();
        if (stringArrayList != null) {
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                hashSet.add(it.next());
            }
        }
        return new y(bundle.getString("resultKey"), bundle.getCharSequence("label"), bundle.getCharSequenceArray("choices"), bundle.getBoolean("allowFreeFormInput"), 0, bundle.getBundle("extras"), hashSet);
    }

    private static y[] b(Bundle[] bundleArr) {
        if (bundleArr == null) {
            return null;
        }
        y[] yVarArr = new y[bundleArr.length];
        for (int i11 = 0; i11 < bundleArr.length; i11++) {
            yVarArr[i11] = a(bundleArr[i11]);
        }
        return yVarArr;
    }

    static NotificationCompat.b c(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("extras");
        return new NotificationCompat.b(bundle.getInt(RewardPlus.ICON), bundle.getCharSequence(CampaignEx.JSON_KEY_TITLE), (PendingIntent) bundle.getParcelable("actionIntent"), bundle.getBundle("extras"), b(d(bundle, "remoteInputs")), b(d(bundle, "dataOnlyRemoteInputs")), bundle2 != null ? bundle2.getBoolean("android.support.allowGeneratedReplies", false) : false, bundle.getInt("semanticAction"), bundle.getBoolean("showsUserInterface"), false, false);
    }

    private static Bundle[] d(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
            return (Bundle[]) parcelableArray;
        }
        Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
        bundle.putParcelableArray(str, bundleArr);
        return bundleArr;
    }

    static Bundle e(NotificationCompat.b bVar) {
        Bundle bundle = new Bundle();
        IconCompat iconCompatD = bVar.d();
        bundle.putInt(RewardPlus.ICON, iconCompatD != null ? iconCompatD.m() : 0);
        bundle.putCharSequence(CampaignEx.JSON_KEY_TITLE, bVar.h());
        bundle.putParcelable("actionIntent", bVar.a());
        Bundle bundle2 = bVar.c() != null ? new Bundle(bVar.c()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", bVar.b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", g(bVar.e()));
        bundle.putBoolean("showsUserInterface", bVar.g());
        bundle.putInt("semanticAction", bVar.f());
        return bundle;
    }

    private static Bundle f(y yVar) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", yVar.i());
        bundle.putCharSequence("label", yVar.h());
        bundle.putCharSequenceArray("choices", yVar.e());
        bundle.putBoolean("allowFreeFormInput", yVar.c());
        bundle.putBundle("extras", yVar.g());
        Set setD = yVar.d();
        if (setD != null && !setD.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(setD.size());
            Iterator it = setD.iterator();
            while (it.hasNext()) {
                arrayList.add((String) it.next());
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    private static Bundle[] g(y[] yVarArr) {
        if (yVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[yVarArr.length];
        for (int i11 = 0; i11 < yVarArr.length; i11++) {
            bundleArr[i11] = f(yVarArr[i11]);
        }
        return bundleArr;
    }
}
