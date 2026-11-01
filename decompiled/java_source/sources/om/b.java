package om;

import android.net.Network;
import android.net.NetworkCapabilities;
import com.transsion.lib_web.download_render.FileDownloadTaskManager;
import com.transsion.lib_web.download_render.FileRemoteDataManager;
import gm.i;
import kotlin.jvm.internal.Intrinsics;
import nh.m;
import nh.n;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f71036a = new b();

    private b() {
    }

    private final String a() {
        String simpleName = b.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void b() {
        m.f70474a.l(this);
    }

    @Override // nh.n
    public void onConnected() {
        n.a.a(this);
    }

    @Override // nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        com.transsion.lib_web.download_render.utils.d.f46188a.b();
        FileDownloadTaskManager.f46147a.l();
        FileRemoteDataManager.f46158a.k();
        i.f63883a.c(a() + " --> onConnected() --> 网络重新链接的时候检查一下字幕下载 --> 延迟5秒，优化网络抖动 .....");
    }

    @Override // nh.n
    public void onDisconnected() {
        com.transsion.lib_web.download_render.utils.d.f46188a.c();
    }
}
