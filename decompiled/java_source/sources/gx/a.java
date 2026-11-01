package gx;

import android.app.Activity;
import ck.u;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsion.upgradesdk.bean.UpgradeInfo;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import com.transsion.upgradesdk.manager.UpgradeInfoCallback;
import com.transsion.upgradesdk.manager.UpgradeSdkManager;
import com.transsion.version.update.UpdateManager;
import com.transsion.version.update.e;
import com.transsion.web.api.WebConstants;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f64026a = new a();

    /* JADX INFO: renamed from: gx.a$a, reason: collision with other inner class name */
    public static final class C0773a implements UpgradeInfoCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1 f64027a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f64028b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f64029c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f64030d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f64031e;

        /* JADX INFO: renamed from: gx.a$a$a, reason: collision with other inner class name */
        public static final class C0774a implements UpgradeDialogCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f64032a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f64033b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f64034c;

            C0774a(String str, boolean z10, String str2) {
                this.f64032a = str;
                this.f64033b = z10;
                this.f64034c = str2;
            }

            @Override // com.transsion.upgradesdk.manager.UpgradeDialogCallback
            public void onDialogClick(int i11) {
                lg.a.C0828a.l(lg.a.f68839a, "update", "ps_dialog 点击ps弹窗 " + i11, false, 4, null);
                if (i11 != 1) {
                    e.f57538a.a(this.f64032a, false, "ps");
                    return;
                }
                e eVar = e.f57538a;
                eVar.a(this.f64032a, true, "ps");
                eVar.b(MapsKt.l(TuplesKt.a(EventConstants.KEY_ACTION, "jump"), TuplesKt.a("action_result", "true"), TuplesKt.a("dialog_type", "ps"), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, PlaceTypes.STORE), TuplesKt.a("manual", String.valueOf(this.f64033b)), TuplesKt.a(WebConstants.PAGE_FROM, this.f64032a)));
            }

            @Override // com.transsion.upgradesdk.manager.UpgradeDialogCallback
            public void onDialogDismiss() {
                lg.a.C0828a.l(lg.a.f68839a, "update", "ps弹窗消失 onDialogDismiss", false, 4, null);
            }

            @Override // com.transsion.upgradesdk.manager.UpgradeDialogCallback
            public void onDialogShow() {
                e.d(e.f57538a, this.f64032a, this.f64033b, "ps", null, 8, null);
                if (!this.f64033b) {
                    UpdateManager.f57518f.a().h(this.f64034c);
                }
                lg.a.C0828a.l(lg.a.f68839a, "update", "ps弹窗展示 onDialogShow", false, 4, null);
            }
        }

        C0773a(Function1 function1, Activity activity, String str, boolean z10, String str2) {
            this.f64027a = function1;
            this.f64028b = activity;
            this.f64029c = str;
            this.f64030d = z10;
            this.f64031e = str2;
        }

        @Override // com.transsion.upgradesdk.manager.UpgradeInfoCallback
        public void onRequestFail(String error) {
            Intrinsics.h(error, "error");
            lg.a.C0828a.l(lg.a.f68839a, "update", "ps 请求失败 " + error, false, 4, null);
            Function1 function1 = this.f64027a;
            if (function1 != null) {
                function1.invoke(error);
            }
        }

        @Override // com.transsion.upgradesdk.manager.UpgradeInfoCallback
        public void onRequestSuccess(UpgradeInfo upgradeInfo) {
            Intrinsics.h(upgradeInfo, "upgradeInfo");
            lg.a.C0828a.l(lg.a.f68839a, "update", "ps 请求成功 " + upgradeInfo.getVersionName() + " " + upgradeInfo.isNewVersion() + " " + upgradeInfo.getShowUpgradeDialog() + " " + upgradeInfo, false, 4, null);
            if (upgradeInfo.getShowUpgradeDialog()) {
                UpgradeSdkManager.DialogParams dialogParams = new UpgradeSdkManager.DialogParams(this.f64028b, true, new C0774a(this.f64029c, this.f64030d, this.f64031e));
                dialogParams.dialogStyle = 0;
                UpgradeSdkManager.getInstance().showUpgradeDialog(dialogParams);
                return;
            }
            Function1 function1 = this.f64027a;
            if (function1 != null) {
                function1.invoke("showUpgradeDialog false");
            }
        }
    }

    private a() {
    }

    public final void a(String fromPage, boolean z10, Activity activity, String configVersionName, Function1 function1) {
        Intrinsics.h(fromPage, "fromPage");
        Intrinsics.h(activity, "activity");
        Intrinsics.h(configVersionName, "configVersionName");
        if (z10 || !u.f17263a.b()) {
            UpgradeSdkManager.getInstance().checkUpgradeTask(new C0773a(function1, activity, fromPage, z10, configVersionName));
            return;
        }
        lg.a.C0828a.l(lg.a.f68839a, "update", "ps 弹窗被拦截  " + fromPage, false, 4, null);
    }
}
