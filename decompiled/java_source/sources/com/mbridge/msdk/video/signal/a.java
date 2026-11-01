package com.mbridge.msdk.video.signal;

import android.app.Activity;
import com.mbridge.msdk.out.NativeListener;

/* JADX INFO: loaded from: classes5.dex */
public interface a extends e {

    /* JADX INFO: renamed from: com.mbridge.msdk.video.signal.a$a, reason: collision with other inner class name */
    public interface InterfaceC0570a extends NativeListener.NativeTrackingListener {
        void a();

        void a(int i11, String str);

        void a(boolean z10);

        void onInitSuccess();
    }

    void a(int i11);

    void a(int i11, String str);

    void a(InterfaceC0570a interfaceC0570a);

    void a(String str);

    void a(boolean z10);

    boolean a();

    int b();

    void b(int i11);

    void b(boolean z10);

    String c();

    void c(int i11);

    int d();

    void d(int i11);

    String e();

    void e(int i11);

    String f(int i11);

    void f();

    String g();

    void g(int i11);

    void h();

    int i();

    void release();

    void setActivity(Activity activity);

    void setAdEvents(com.iab.omid.library.mmadbridge.adsession.a aVar);

    void setAdSession(com.iab.omid.library.mmadbridge.adsession.b bVar);

    void setRewardUnitSetting(com.mbridge.msdk.videocommon.setting.c cVar);

    void setUnitId(String str);

    void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar);

    void setWebViewFront(int i11);
}
