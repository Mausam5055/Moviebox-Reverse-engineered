package android.support.v4.media;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplApi21$2 implements Runnable {
    final /* synthetic */ MediaBrowserCompat.g this$0;
    final /* synthetic */ MediaBrowserCompat.e val$cb;
    final /* synthetic */ String val$mediaId;

    MediaBrowserCompat$MediaBrowserImplApi21$2(MediaBrowserCompat.g gVar, MediaBrowserCompat.e eVar, String str) {
        this.this$0 = gVar;
        this.val$cb = eVar;
        this.val$mediaId = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$cb.a(this.val$mediaId);
    }
}
