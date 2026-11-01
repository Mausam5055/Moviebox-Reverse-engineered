package com.transsion.athena.aidl;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.taaneh.aethna;
import com.transsion.ga.AthenaAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public class AthenaTrackService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.transsion.athena.athena.AbstractBinderC0604athena f42556a = new athena(this);

    class athena extends com.transsion.athena.athena.AbstractBinderC0604athena {
        athena(AthenaTrackService athenaTrackService) {
        }

        @Override // com.transsion.athena.athena
        public void a(String str, TrackData trackData, long j11) throws RemoteException {
            aethna.a("AthenaTrackService receive appId : %d, eventName : %s", Long.valueOf(j11), str);
            AthenaAnalytics.L(j11).h0(str, trackData, j11);
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        aethna.a("AthenaTrackService onBind");
        return this.f42556a;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        aethna.a("AthenaTrackService onUnbind");
        return super.onUnbind(intent);
    }
}
