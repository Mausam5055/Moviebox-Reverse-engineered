package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;

/* JADX INFO: loaded from: classes3.dex */
final class AudioBecomingNoisyManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f24441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioBecomingNoisyReceiver f24442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24443c;

    private final class AudioBecomingNoisyReceiver extends BroadcastReceiver implements Runnable {
        private final Handler eventHandler;
        private final a listener;

        public AudioBecomingNoisyReceiver(Handler handler, a aVar) {
            this.eventHandler = handler;
            this.listener = aVar;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.eventHandler.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AudioBecomingNoisyManager.this.f24443c) {
                this.listener.m();
            }
        }
    }

    public interface a {
        void m();
    }

    public AudioBecomingNoisyManager(Context context, Handler handler, a aVar) {
        this.f24441a = context.getApplicationContext();
        this.f24442b = new AudioBecomingNoisyReceiver(handler, aVar);
    }

    public void b(boolean z10) {
        if (z10 && !this.f24443c) {
            this.f24441a.registerReceiver(this.f24442b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f24443c = true;
        } else {
            if (z10 || !this.f24443c) {
                return;
            }
            this.f24441a.unregisterReceiver(this.f24442b);
            this.f24443c = false;
        }
    }
}
