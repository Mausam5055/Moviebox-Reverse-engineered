package hy;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.ps.installed.AppInstallManager;
import com.transsion.wrapperad.install.appinfo.AppChangeInfo;
import com.transsion.wrapperad.install.ui.d;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f64845a = new c();

    private c() {
    }

    public final void a(Context context, AppChangeInfo info) {
        Object objM454constructorimpl;
        Intrinsics.h(context, "context");
        Intrinsics.h(info, "info");
        try {
            Result.Companion companion = Result.INSTANCE;
            yx.a aVar = yx.a.f79085a;
            if (aVar.m()) {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(info.getPackageName());
                if (launchIntentForPackage == null) {
                    return;
                }
                launchIntentForPackage.addFlags(ASTNode.DEOP);
                com.transsion.wrapperad.install.a.f58174a.a("AppLaunchNotifier --> launchDirect() --> 拉起应用 " + info.getAppName());
                context.startActivity(launchIntentForPackage);
                AppInstallManager appInstallManager = AppInstallManager.f42196a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                appInstallManager.f(applicationA, info.getPackageName());
            } else if (!aVar.n()) {
                com.transsion.wrapperad.install.a.f58174a.a("AppLaunchNotifier --> launchDirect() --> isShowInstalledGuideTipView == false");
            } else if (b.f64844a.a(context)) {
                d.f58199a.c(info);
            } else {
                com.transsion.wrapperad.install.a.f58174a.a("AppLaunchNotifier --> launchDirect() --> isShowInstalledGuideTipView == false -- 不在前台");
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            com.transsion.wrapperad.install.a.f58174a.a("AppLaunchNotifier --> launchDirect() --> it = " + thM457exceptionOrNullimpl);
        }
    }
}
