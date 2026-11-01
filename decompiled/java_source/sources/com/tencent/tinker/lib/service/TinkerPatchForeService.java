package com.tencent.tinker.lib.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: loaded from: classes5.dex */
public class TinkerPatchForeService extends Service {

    class a extends qf.a.AbstractBinderC0894a {
        a() {
        }

        @Override // qf.a
        public void J0() {
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new a();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i11, int i12) {
        super.onStartCommand(intent, i11, i12);
        return 2;
    }
}
