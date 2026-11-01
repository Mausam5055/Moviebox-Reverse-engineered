package com.transsion.ga;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.transsion.athena.data.TrackDataWrapper;
import com.transsion.athena.taaneh.aethna;

/* JADX INFO: loaded from: classes5.dex */
class g implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AthenaAnalytics f44204a;

    g(AthenaAnalytics athenaAnalytics) {
        this.f44204a = athenaAnalytics;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f44204a.f44171c = com.transsion.athena.athena.AbstractBinderC0604athena.a(iBinder);
            this.f44204a.f44172d = true;
            aethna.c("AthenaTrackService onServiceConnected");
            for (TrackDataWrapper trackDataWrapper : this.f44204a.f44173e) {
                if (trackDataWrapper.c().c() < 524288) {
                    this.f44204a.A(trackDataWrapper.a(), trackDataWrapper.c(), trackDataWrapper.b());
                } else {
                    aethna.b("TrackData size is too large, ignored !!");
                }
            }
            this.f44204a.f44173e.clear();
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f44204a.f44172d = false;
        aethna.c("AthenaTrackService onServiceDisconnected");
    }
}
