package hi;

import android.text.TextUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f64469a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f64470b = "";

    private d() {
    }

    public final String a() {
        return f64470b;
    }

    public final boolean b() {
        if (!TextUtils.isEmpty(f64470b)) {
            return true;
        }
        oi.a.f71022a.n("ad_int", "HotSceneManager --> loadHotSplashAd() --> 没有配置热启动场景ID，拒绝加载广告", 6, false);
        return false;
    }

    public final void c(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        f64470b = sceneId;
    }
}
