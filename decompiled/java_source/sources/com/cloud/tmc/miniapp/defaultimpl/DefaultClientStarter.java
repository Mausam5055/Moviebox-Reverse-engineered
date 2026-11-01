package com.cloud.tmc.miniapp.defaultimpl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.cloud.tmc.integration.activity.StartClientBundle;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.miniapp.NewTaskManager;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.process.AppRecord;
import com.cloud.tmc.miniapp.proxy.IClientStarter;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultClientStarter implements IClientStarter {
    public static Long OooO0O0 = 1000L;
    public Long OooO00o = null;

    @Override // com.cloud.tmc.miniapp.proxy.IClientStarter
    public synchronized Fragment createFragment(Context context, Bundle bundle) {
        return null;
    }

    @Override // com.cloud.tmc.miniapp.proxy.IClientStarter
    public PrepareController createPrepareController(PrepareContext prepareContext, o000oOoO o000oooo) {
        return new com.cloud.tmc.miniapp.prepare.controller.OooO0O0(prepareContext, o000oooo);
    }

    @Override // com.cloud.tmc.miniapp.proxy.IClientStarter
    @NonNull
    public PrepareController createQuickModePrepareController(PrepareContext prepareContext, o000oOoO o000oooo) {
        prepareContext.setVirtualStart(false);
        return new com.cloud.tmc.miniapp.prepare.controller.OooO0OO(prepareContext, o000oooo);
    }

    @Override // com.cloud.tmc.miniapp.proxy.IClientStarter
    @NonNull
    public PrepareController createSubpackagePrepareController(PrepareContext prepareContext, o000oOoO o000oooo, int i11, String str) {
        return new com.cloud.tmc.miniapp.prepare.controller.OooO0o(prepareContext, o000oooo, i11, str);
    }

    @Override // com.cloud.tmc.miniapp.proxy.IClientStarter
    public PrepareController createWarmupController(PrepareContext prepareContext, o000oOoO o000oooo) {
        prepareContext.setVirtualStart(true);
        return new com.cloud.tmc.miniapp.prepare.controller.OooO00o(prepareContext, o000oooo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.cloud.tmc.miniapp.proxy.IClientStarter
    public Class<? extends Activity> startClient(Context context, Intent intent, Bundle bundle) {
        Class activityClazz;
        Class miniAppLaunchActivity;
        Class cls;
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("fromContext:");
        sbOooO00o.append(context.getClass().getSimpleName());
        TmcLogger.d("DefaultClientStarter", sbOooO00o.toString());
        if (!(context instanceof Activity)) {
            intent.addFlags(ASTNode.DEOP);
        }
        StartClientBundle startClientBundle = (StartClientBundle) BundleUtils.getParcelable(intent.getExtras(), TmcConstants.EXTRA_START_BUNDLE);
        String stringExtra = intent.getStringExtra(TmcConstants.EXTRA_APP_ID);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (intent.getFlags() == 536870912) {
            Class cls2 = NewTaskManager.Companion.getInstance().checkOpenMutipleTask(stringExtra) ? context.getClass() : MiniAppLaunch.getMiniAppLaunchActivity(intent);
            TmcLogger.d("DefaultClientStarter", "launch activity FLAG_ACTIVITY_SINGLE_TOP :" + cls2);
            cls = cls2;
        } else {
            NewTaskManager.ActivityInfo activityInfoPreLaunchActivity = NewTaskManager.Companion.getInstance().preLaunchActivity(context, new AppRecord(stringExtra, startClientBundle.startParams, startClientBundle.sceneParams));
            if (activityInfoPreLaunchActivity == null) {
                miniAppLaunchActivity = MiniAppLaunch.getMiniAppLaunchActivity(intent);
            } else {
                activityClazz = activityInfoPreLaunchActivity.getActivityClazz();
            }
        }
        if (cls != null) {
            cls = activityClazz;
            cls = miniAppLaunchActivity;
            StringBuilder sbOooO00o2 = com.cloud.tmc.miniapp.OooO00o.OooO00o("target class:");
            sbOooO00o2.append(cls.getSimpleName());
            TmcLogger.d("DefaultClientStarter", sbOooO00o2.toString());
        }
        try {
            cls = activityClazz;
            cls = miniAppLaunchActivity;
            if (this.OooO00o == null || System.currentTimeMillis() - this.OooO00o.longValue() > OooO0O0.longValue()) {
                intent.putExtra("record_id", stringExtra);
                intent.putExtra("record_token", jCurrentTimeMillis);
                if (cls != null) {
                    intent.setClass(context, cls);
                }
                AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
                context.startActivity(intent, bundle);
                TmcLogger.d("DefaultClientStarter", "start finish");
            }
            this.OooO00o = Long.valueOf(System.currentTimeMillis());
        } catch (Throwable th2) {
            TmcLogger.e("DefaultClientStarter", "startClient exception:", th2);
        }
        return cls;
    }
}
