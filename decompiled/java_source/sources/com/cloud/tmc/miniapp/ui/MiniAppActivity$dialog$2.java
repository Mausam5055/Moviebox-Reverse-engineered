package com.cloud.tmc.miniapp.ui;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.base.BaseAdapter;
import com.cloud.tmc.miniapp.dialog.BottomDialog$MenuItem;
import com.cloud.tmc.miniapp.dialog.OooOOO0;
import com.cloud.tmc.miniapp.utils.MessageBubbleUtils;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class MiniAppActivity$dialog$2 extends Lambda implements Function0<OooOOO0> {
    public final /* synthetic */ MiniAppActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MiniAppActivity$dialog$2(MiniAppActivity miniAppActivity) {
        super(0);
        this.this$0 = miniAppActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$3$lambda$2(MiniAppActivity this$0, View view) {
        AppModel appModel;
        Intrinsics.h(this$0, "this$0");
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i11 = R.id.tv_btn;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            this$0.getDialog().dismiss();
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this$0.getAppId(), PointAnalyseType.POINT_MORE_EXIT, "");
            return;
        }
        int i12 = R.id.layer_app_brand;
        if (numValueOf != null && numValueOf.intValue() == i12) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this$0.getAppId(), PointAnalyseType.POINT_ENTER_DEVELOP, "");
            App app = this$0.getMActivityHelper().getApp();
            if (app == null || (appModel = app.getAppModel()) == null) {
                return;
            }
            this$0.getDialog().dismiss();
            String appId = appModel.getAppId();
            if (appId != null) {
                AppBrandProfileActivity.Companion.launch(this$0, appId, this$0.getAppBrandBundle(appModel));
            }
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public final OooOOO0 invoke() {
        Object next;
        final OooOOO0 oooOOO0 = new OooOOO0(this.this$0);
        final MiniAppActivity miniAppActivity = this.this$0;
        ArrayList arrayListH = CollectionsKt.h(Intrinsics.c("1000886706715795456", miniAppActivity.getAppId()) ? new BottomDialog$MenuItem("message", R.drawable.mini_ic_message, oooOOO0.getString(R.string.mini_dialog_message), false, false, 24, null) : new BottomDialog$MenuItem("message", R.drawable.mini_icon_bottom_dialog_btn_notification, oooOOO0.getString(R.string.mini_miniapp_center), false, false, 24, null), new BottomDialog$MenuItem(TmcConstants.MENU_KEY_PERMISSION, R.drawable.mini_ic_permission_icon, oooOOO0.getString(R.string.mini_permission_manager_title), false, false, 24, null), new BottomDialog$MenuItem(TmcConstants.MENU_KEY_FEEDBACK, R.drawable.mini_ic_feedback, oooOOO0.getString(R.string.mini_dialog_feedback), false, false, 24, null), new BottomDialog$MenuItem("refreshApp", R.drawable.mini_ic_refresh, oooOOO0.getString(R.string.mini_dialog_reopen), false, false, 24, null));
        try {
            if (!MessageBubbleUtils.OooO00o.OooO00o()) {
                Iterator it = arrayListH.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((BottomDialog$MenuItem) next).getId(), "message"));
                BottomDialog$MenuItem bottomDialog$MenuItem = (BottomDialog$MenuItem) next;
                if (bottomDialog$MenuItem != null) {
                    arrayListH.remove(bottomDialog$MenuItem);
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("BottomDialog", th2);
        }
        oooOOO0.OooO0o.setData(arrayListH);
        oooOOO0.OooO0oo = new BaseAdapter.OnItemClickListener() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$dialog$2$1$1
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.cloud.tmc.miniapp.base.BaseAdapter.OnItemClickListener
            public void onItemClick(RecyclerView recyclerView, View view, int i11) {
                AppModel appModel;
                AppModel appModel2;
                String configString = MiniAppConfigHelper.DEFAULT_MINI_FEEDBACK_ID;
                if (FastClickUtil.isFastDoubleClick()) {
                    return;
                }
                List<BottomDialog$MenuItem> data = oooOOO0.OooO0o.getData();
                if (i11 >= data.size()) {
                    return;
                }
                String id2 = data.get(i11).getId();
                int iHashCode = id2.hashCode();
                String appId = null;
                appId = null;
                if (iHashCode == -517618225) {
                    if (id2.equals(TmcConstants.MENU_KEY_PERMISSION)) {
                        try {
                            if (Intrinsics.c("1000886706715795456", miniAppActivity.getAppId())) {
                                MiniAppActivity miniAppActivity2 = miniAppActivity;
                                Bundle bundle = new Bundle();
                                bundle.putString("page", "pages/index/index");
                                bundle.putBoolean("extraMiniClearAllPages", true);
                                Unit unit = Unit.f67061a;
                                ByteAppManager.launchMiniAppForId$default(miniAppActivity2, TmcConstants.SETTING_MINIAPP_ID, null, bundle, 4, null);
                            } else {
                                MiniAppActivity miniAppActivity3 = miniAppActivity;
                                Bundle bundle2 = new Bundle();
                                MiniAppActivity miniAppActivity4 = miniAppActivity;
                                bundle2.putString("page", "pages/settings/settings");
                                App app = miniAppActivity4.getMActivityHelper().getApp();
                                if (app != null && (appModel = app.getAppModel()) != null) {
                                    appId = appModel.getAppId();
                                }
                                bundle2.putString("query", "setting_miniappId%3D" + appId);
                                Unit unit2 = Unit.f67061a;
                                ByteAppManager.launchMiniAppForId$default(miniAppActivity3, TmcConstants.SETTING_MINIAPP_ID, null, bundle2, 4, null);
                            }
                            miniAppActivity.getDialog().dismiss();
                            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(miniAppActivity.getAppId(), PointAnalyseType.POINT_CLICK_AUTH, "");
                            return;
                        } catch (Throwable th3) {
                            TmcLogger.e("MiniAppActivity", th3);
                            return;
                        }
                    }
                    return;
                }
                if (iHashCode == -321864378) {
                    if (id2.equals("refreshApp")) {
                        try {
                            miniAppActivity.refresh();
                            return;
                        } catch (Throwable th4) {
                            TmcLogger.e("refresh fail!!,msg:" + th4);
                            return;
                        }
                    }
                    return;
                }
                if (iHashCode == -191501435) {
                    if (id2.equals(TmcConstants.MENU_KEY_FEEDBACK)) {
                        miniAppActivity.getDialog().dismiss();
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForCommon(miniAppActivity.getAppId(), TmcConstants.REPORTER_FEEDBACK_ENTER, new Bundle());
                        try {
                            configString = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_MINI_FEEDBACK_ID, MiniAppConfigHelper.DEFAULT_MINI_FEEDBACK_ID);
                        } catch (Throwable unused) {
                        }
                        String str = configString;
                        MiniAppActivity miniAppActivity5 = miniAppActivity;
                        Bundle bundle3 = new Bundle();
                        MiniAppActivity miniAppActivity6 = miniAppActivity;
                        App app2 = miniAppActivity6.getMActivityHelper().getApp();
                        bundle3.putString(TmcConstants.EXTRA_CURRENT_MINIAPP_ID, (app2 == null || (appModel2 = app2.getAppModel()) == null) ? null : appModel2.getAppId());
                        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
                        App app3 = miniAppActivity6.getMActivityHelper().getApp();
                        bundle3.putString(TmcConstants.EXTRA_CURRENT_MINIAPP_VERSION, miniAppLaunch.getMiniAppVersion(app3 != null ? app3.getAppModel() : null));
                        Unit unit3 = Unit.f67061a;
                        ByteAppManager.launchMiniAppForId$default(miniAppActivity5, str, null, bundle3, 4, null);
                        return;
                    }
                    return;
                }
                if (iHashCode == 954925063 && id2.equals("message")) {
                    try {
                        if (MessageBubbleUtils.OooO00o.OooO00o()) {
                            if (Intrinsics.c("1000886706715795456", miniAppActivity.getAppId())) {
                                MiniAppActivity miniAppActivity7 = miniAppActivity;
                                Bundle bundle4 = new Bundle();
                                bundle4.putString("page", "pages/notification/notification");
                                bundle4.putString("query", "entrance%3Dlayer");
                                Unit unit4 = Unit.f67061a;
                                ByteAppManager.launchMiniAppForId(miniAppActivity7, "1000886706715795456", "", bundle4);
                                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(miniAppActivity.getAppId(), PointAnalyseType.POINT_CLICK_MESSAGE, "");
                            } else {
                                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(miniAppActivity.getAppId(), PointAnalyseType.POINT_CLICK_MC, "");
                                MiniAppActivity miniAppActivity8 = miniAppActivity;
                                Bundle bundle5 = new Bundle();
                                bundle5.putString("page", "pages/index/index");
                                bundle5.putBoolean("extraMiniClearAllPages", true);
                                Unit unit5 = Unit.f67061a;
                                ByteAppManager.launchMiniAppForId(miniAppActivity8, "1000886706715795456", "120010", bundle5);
                            }
                            MiniAppActivity context = miniAppActivity;
                            Intrinsics.h(context, "context");
                            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, TmcConstants.KEY_MSG_ID, TmcConstants.KEY_MINI_NEW_MESSAGE_STATUS, false);
                            miniAppActivity.getDialog().dismiss();
                        }
                    } catch (Throwable th5) {
                        TmcLogger.e("MiniAppActivity", th5);
                    }
                }
            }
        };
        oooOOO0.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.ui.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MiniAppActivity$dialog$2.invoke$lambda$3$lambda$2(miniAppActivity, view);
            }
        }, R.id.tv_btn, R.id.layer_app_brand);
        return oooOOO0;
    }
}
