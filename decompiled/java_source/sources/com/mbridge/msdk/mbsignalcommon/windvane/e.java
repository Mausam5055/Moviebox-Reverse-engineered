package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import com.mbridge.msdk.interstitial.signalcommon.interstitial;
import com.mbridge.msdk.mbsignalcommon.communication.BannerSignalPlugin;
import com.mbridge.msdk.mbsignalcommon.mraid.MraidSignalCommunication;
import com.mbridge.msdk.mbsignalcommon.webEnvCheck.WebGLCheckSignal;
import com.mbridge.msdk.splash.signal.SplashSignal;
import com.mbridge.msdk.video.signal.communication.RewardSignal;
import com.mbridge.msdk.video.signal.communication.VideoCommunication;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static HashMap<String, Class> f36559d = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f36560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f36561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WindVaneWebView f36562c;

    public e(Context context, WindVaneWebView windVaneWebView) {
        this.f36560a = context;
        this.f36562c = windVaneWebView;
        a();
    }

    private Object a(String str, WindVaneWebView windVaneWebView, Context context) {
        Class cls = f36559d.get(str);
        if (cls == null) {
            return null;
        }
        try {
            if (!g.class.isAssignableFrom(cls)) {
                return null;
            }
            g gVar = (g) cls.newInstance();
            gVar.initialize(context, windVaneWebView);
            gVar.initialize(this.f36561b, windVaneWebView);
            return gVar;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public Object a(String str) {
        if (f36559d == null) {
            f36559d = new HashMap<>();
        }
        return a(str, this.f36562c, this.f36560a);
    }

    public void a() {
        try {
            int i11 = interstitial.f35944i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f36432a, interstitial.class);
        } catch (ClassNotFoundException unused) {
        }
        try {
            int i12 = RewardSignal.f39502i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f36433b, RewardSignal.class);
        } catch (ClassNotFoundException unused2) {
        }
        try {
            int i13 = VideoCommunication.f39528j;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f36434c, VideoCommunication.class);
        } catch (ClassNotFoundException unused3) {
        }
        try {
            int i14 = MraidSignalCommunication.f36503h;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f36436e, MraidSignalCommunication.class);
        } catch (ClassNotFoundException unused4) {
        }
        try {
            int i15 = BannerSignalPlugin.f36491i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f36437f, BannerSignalPlugin.class);
        } catch (ClassNotFoundException unused5) {
        }
        try {
            int i16 = SplashSignal.f37603i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f36438g, SplashSignal.class);
        } catch (ClassNotFoundException unused6) {
        }
        try {
            int i17 = WebGLCheckSignal.f36515g;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f36439h, WebGLCheckSignal.class);
        } catch (ClassNotFoundException unused7) {
        }
        try {
            if (com.mbridge.msdk.util.b.a()) {
                Class<?> cls = Class.forName("com.mbridge.msdk.mbsignalcommon.confirmation.bridge.ConfirmationJsBridgePlugin");
                a(cls.getSimpleName(), cls);
            }
        } catch (Exception unused8) {
        }
    }

    public void a(Context context) {
        this.f36560a = context;
    }

    public void a(Object obj) {
        this.f36561b = obj;
    }

    public void a(String str, Class cls) {
        if (f36559d == null) {
            f36559d = new HashMap<>();
        }
        f36559d.put(str, cls);
    }
}
