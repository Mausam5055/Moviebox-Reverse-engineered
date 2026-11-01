package com.transsnet.downloader.manager;

import android.app.Activity;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.therouter.TheRouter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.fissionapi.IFissionProvider;
import com.transsnet.downloader.fragment.DownloadedShortsDialog;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class FinishDownloadHelper extends lj.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f59471a = "FinishDownloadHelper";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f59472b = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.manager.v
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FinishDownloadHelper.o();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f59473c = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.manager.w
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FinishDownloadHelper.l();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFissionProvider l() {
        return (IFissionProvider) TheRouter.d(IFissionProvider.class, new Object[0]);
    }

    private final IFissionProvider m() {
        return (IFissionProvider) this.f59473c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final qy.a n() {
        return (qy.a) this.f59472b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qy.a o() {
        return (qy.a) zg.c.f79414e.a().h(qy.a.class);
    }

    private final void p(DownloadBean downloadBean) {
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null && (resourceId = downloadBean.getPostId()) == null) {
            resourceId = downloadBean.getUrl();
        }
        if (resourceId == null || resourceId.length() == 0) {
            return;
        }
        String str = "SHORTS_DIALOG_SHOWN_" + resourceId;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        if (bVar.b().getBoolean(str, false)) {
            return;
        }
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (com.blankj.utilcode.util.c.l() && (activityB instanceof FragmentActivity)) {
            FragmentActivity fragmentActivity = (FragmentActivity) activityB;
            if (fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
                return;
            }
            try {
                FragmentManager supportFragmentManager = ((FragmentActivity) activityB).getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                Fragment fragmentK0 = supportFragmentManager.k0("DownloadedShortsDialog");
                if (fragmentK0 instanceof DialogFragment) {
                    ((DialogFragment) fragmentK0).dismissAllowingStateLoss();
                }
                DownloadedShortsDialog.INSTANCE.a(resourceId).k0(activityB, "DownloadedShortsDialog");
                com.transsion.baselib.helper.a.f43262a.c("", "short_download_view");
                bVar.b().putBoolean(str, true);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    @Override // lj.a, lj.m0
    public void e(DownloadBean bean, String str) {
        Intrinsics.h(bean, "bean");
        super.e(bean, str);
        IFissionProvider iFissionProviderM = m();
        if (iFissionProviderM != null && iFissionProviderM.enable()) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new FinishDownloadHelper$onDownloadSuccess$1(bean, this, null), 3, null);
        }
        if (bean.isShorts()) {
            p(bean);
        }
    }
}
