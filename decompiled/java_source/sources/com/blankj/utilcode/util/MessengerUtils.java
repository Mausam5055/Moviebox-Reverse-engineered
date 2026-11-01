package com.blankj.utilcode.util;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class MessengerUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ConcurrentHashMap f20011a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Map f20012b = new HashMap();

    public static class ServerService extends Service {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ConcurrentHashMap f20013a = new ConcurrentHashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Handler f20014b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Messenger f20015c;

        class a extends Handler {
            a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i11 = message.what;
                if (i11 == 0) {
                    ServerService.this.f20013a.put(Integer.valueOf(message.arg1), message.replyTo);
                    return;
                }
                if (i11 == 1) {
                    ServerService.this.f20013a.remove(Integer.valueOf(message.arg1));
                } else if (i11 != 2) {
                    super.handleMessage(message);
                } else {
                    ServerService.this.e(message);
                    ServerService.this.d(message);
                }
            }
        }

        public ServerService() {
            a aVar = new a();
            this.f20014b = aVar;
            this.f20015c = new Messenger(aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(Message message) {
            String string;
            Bundle data = message.getData();
            if (data == null || (string = data.getString("MESSENGER_UTILS")) == null) {
                return;
            }
            android.support.v4.media.session.c.a(MessengerUtils.f20011a.get(string));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(Message message) {
            Message messageObtain = Message.obtain(message);
            for (Messenger messenger : this.f20013a.values()) {
                if (messenger != null) {
                    try {
                        messenger.send(Message.obtain(messageObtain));
                    } catch (RemoteException e11) {
                        e11.printStackTrace();
                    }
                }
            }
            messageObtain.recycle();
        }

        @Override // android.app.Service
        public IBinder onBind(Intent intent) {
            return this.f20015c.getBinder();
        }

        @Override // android.app.Service
        public int onStartCommand(Intent intent, int i11, int i12) {
            Bundle extras;
            if (Build.VERSION.SDK_INT >= 26) {
                startForeground(1, e0.q(s.a.f20094b, null));
            }
            if (intent != null && (extras = intent.getExtras()) != null) {
                Message messageObtain = Message.obtain(this.f20014b, 2);
                messageObtain.replyTo = this.f20015c;
                messageObtain.setData(extras);
                e(messageObtain);
                d(messageObtain);
            }
            return 2;
        }
    }
}
