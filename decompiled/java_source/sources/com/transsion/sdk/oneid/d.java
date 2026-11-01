package com.transsion.sdk.oneid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class d implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f51914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler.Callback f51915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Messenger f51916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Messenger f51917d = new Messenger(new a());

    /* JADX INFO: loaded from: classes6.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            b.i("ReplyMessenger msg.what = " + message.what);
            if (d.this.f51915b != null) {
                d.this.f51915b.handleMessage(message);
            }
            d.c(d.this);
        }
    }

    public d(Context context, Handler.Callback callback) {
        this.f51914a = context;
        this.f51915b = callback;
    }

    static void c(d dVar) {
        dVar.getClass();
        try {
            if (dVar.f51916c != null) {
                dVar.f51916c = null;
                dVar.f51914a.unbindService(dVar);
            }
        } catch (Exception e11) {
            b.m(Log.getStackTraceString(e11));
        }
    }

    public void b() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.hoffnung", "com.transsion.dataservice.binder.DCService");
            this.f51914a.bindService(intent, this, 1);
        } catch (Exception e11) {
            b.m(Log.getStackTraceString(e11));
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        b.i("onServiceConnected");
        try {
            Message messageObtain = Message.obtain((Handler) null, 100);
            Bundle bundle = new Bundle();
            bundle.putString("key", "oneid");
            messageObtain.setData(bundle);
            messageObtain.replyTo = this.f51917d;
            Messenger messenger = new Messenger(iBinder);
            this.f51916c = messenger;
            messenger.send(messageObtain);
        } catch (Exception e11) {
            b.m(Log.getStackTraceString(e11));
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        b.i("onServiceDisconnected");
    }
}
