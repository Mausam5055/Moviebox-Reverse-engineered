package androidx.media;

import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j this$1;
    final /* synthetic */ MediaSessionCompat.Token val$token;

    MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1(MediaBrowserServiceCompat.j jVar, MediaSessionCompat.Token token) {
        this.val$token = token;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator<Object> it = this.this$1.f9759a.f9715e.values().iterator();
        while (it.hasNext()) {
            MediaBrowserServiceCompat.ConnectionRecord connectionRecord = (MediaBrowserServiceCompat.ConnectionRecord) it.next();
            try {
                connectionRecord.f9724f.c(connectionRecord.f9726h.d(), this.val$token, connectionRecord.f9726h.c());
            } catch (RemoteException unused) {
                Log.w("MBServiceCompat", "Connection for " + connectionRecord.f9719a + " is no longer valid.");
                it.remove();
            }
        }
    }
}
