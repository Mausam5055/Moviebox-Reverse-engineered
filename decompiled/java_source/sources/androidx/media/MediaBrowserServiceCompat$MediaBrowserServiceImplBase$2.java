package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j this$1;
    final /* synthetic */ Bundle val$options;
    final /* synthetic */ String val$parentId;

    MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2(MediaBrowserServiceCompat.j jVar, String str, Bundle bundle) {
        this.val$parentId = str;
        this.val$options = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator<Object> it = this.this$1.f9759a.f9715e.keySet().iterator();
        while (it.hasNext()) {
            this.this$1.c((MediaBrowserServiceCompat.ConnectionRecord) this.this$1.f9759a.f9715e.get((IBinder) it.next()), this.val$parentId, this.val$options);
        }
    }
}
