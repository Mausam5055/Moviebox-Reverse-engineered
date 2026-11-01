package android.support.v4.media;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplApi21$7 implements Runnable {
    final /* synthetic */ MediaBrowserCompat.g this$0;
    final /* synthetic */ String val$action;
    final /* synthetic */ MediaBrowserCompat.d val$callback;
    final /* synthetic */ Bundle val$extras;

    MediaBrowserCompat$MediaBrowserImplApi21$7(MediaBrowserCompat.g gVar, MediaBrowserCompat.d dVar, String str, Bundle bundle) {
        this.this$0 = gVar;
        this.val$callback = dVar;
        this.val$action = str;
        this.val$extras = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.a(this.val$action, this.val$extras, null);
    }
}
