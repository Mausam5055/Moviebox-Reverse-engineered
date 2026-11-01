package com.transsion.push.tracker;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.mpush.core.config.PushMsgSource;
import com.transsion.push.PushManager;
import com.transsion.push.utils.PushLogUtils;
import qk.a;

/* JADX INFO: loaded from: classes.dex */
class AthenaTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AthenaTracker f50904a;

    private AthenaTracker() {
    }

    private TrackData a(Bundle bundle) {
        TrackData trackData = new TrackData();
        if (bundle == null) {
            return trackData;
        }
        for (String str : bundle.keySet()) {
            trackData.add(str, bundle.get(str) + "");
        }
        return trackData;
    }

    private boolean c() {
        try {
            int i11 = AthenaAnalytics.f44166p;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private void d(Tracker.KEY key, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str : bundle.keySet()) {
            sb2.append(str);
            sb2.append(":");
            sb2.append(bundle.get(str));
            sb2.append(", ");
        }
        PushLogUtils.LOG.g("Athena track event:" + key.event + ", tid:" + key.tid + ", " + sb2.toString());
    }

    public static AthenaTracker getInstance() {
        if (f50904a == null) {
            f50904a = new AthenaTracker();
        }
        return f50904a;
    }

    void b() {
        if (c()) {
            AthenaAnalytics.P(a.a().getApplicationContext(), PushMsgSource.SOURCE_PUSH, 1041, false);
        }
    }

    void e(Tracker.KEY key, Bundle bundle) {
        if (c()) {
            if (!PushManager.getInstance().getIsSdkInitFinished()) {
                AthenaAnalytics.P(a.a().getApplicationContext(), PushMsgSource.SOURCE_PUSH, 1041, false);
            }
            try {
                d(key, bundle);
                AthenaAnalytics.K(key.tid).g0(key.event, a(bundle), key.tid);
            } catch (Exception unused) {
            }
        }
    }
}
