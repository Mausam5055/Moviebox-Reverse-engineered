package com.transsion.push.tracker;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static FirebaseTracker f50905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ITracker f50906b;

    private FirebaseTracker() {
    }

    public static FirebaseTracker getInstance() {
        if (f50905a == null) {
            f50905a = new FirebaseTracker();
        }
        return f50905a;
    }

    void a(Tracker.KEY key, Bundle bundle) {
        ITracker iTracker;
        if (bundle == null || (iTracker = f50906b) == null) {
            return;
        }
        iTracker.track(key, bundle);
    }

    public void setListener(ITracker iTracker) {
        f50906b = iTracker;
    }
}
