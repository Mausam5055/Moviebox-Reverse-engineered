package android.support.v4.media;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplApi21$4 implements Runnable {
    final /* synthetic */ MediaBrowserCompat.g this$0;
    final /* synthetic */ MediaBrowserCompat.k val$callback;
    final /* synthetic */ Bundle val$extras;
    final /* synthetic */ String val$query;

    MediaBrowserCompat$MediaBrowserImplApi21$4(MediaBrowserCompat.g gVar, MediaBrowserCompat.k kVar, String str, Bundle bundle) {
        this.this$0 = gVar;
        this.val$callback = kVar;
        this.val$query = str;
        this.val$extras = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.a(this.val$query, this.val$extras);
    }
}
