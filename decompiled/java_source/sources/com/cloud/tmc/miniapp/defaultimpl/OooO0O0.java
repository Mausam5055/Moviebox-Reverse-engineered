package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.callback.LocalAuthPermissionWithNotShowAgainCallback;
import com.cloud.tmc.integration.callback.PrivacyCallback;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PermissionDialogModel;
import com.cloud.tmc.integration.model.ScopeModel;
import com.cloud.tmc.integration.permission.AppPermissionUtils;
import com.cloud.tmc.integration.point.PermissionDialogPoint;
import com.cloud.tmc.integration.proxy.DialogProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.MiniForceAddHomeManager;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.permission.PermissionModel;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.cloud.tmc.miniapp.utils.ScopeUtils;
import com.cloud.tmc.miniutils.util.StringUtils;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class OooO0O0 implements PrivacyCallback {
    public static final ConcurrentHashMap<String, String> OooO0OO = new ConcurrentHashMap<>();
    public static final ConcurrentHashMap<String, ScopeModel> OooO0Oo = new ConcurrentHashMap<>();
    public static final ConcurrentHashMap<String, List<PermissionDialogModel>> OooO0o0 = new ConcurrentHashMap<>();
    public Context OooO00o;
    public ConcurrentHashMap<String, List<C0317OooO0O0>> OooO0O0 = new ConcurrentHashMap<>();

    public class OooO00o implements LocalAuthPermissionWithNotShowAgainCallback {
        public boolean OooO00o = false;
        public final /* synthetic */ String OooO0O0;
        public final /* synthetic */ String OooO0OO;
        public final /* synthetic */ String OooO0Oo;
        public final /* synthetic */ String OooO0o;
        public final /* synthetic */ String OooO0o0;
        public final /* synthetic */ Page OooO0oO;

        public OooO00o(String str, String str2, String str3, String str4, String str5, Page page) {
            this.OooO0O0 = str;
            this.OooO0OO = str2;
            this.OooO0Oo = str3;
            this.OooO0o0 = str4;
            this.OooO0o = str5;
            this.OooO0oO = page;
        }

        @Override // com.cloud.tmc.integration.callback.LocalAuthPermissionWithNotShowAgainCallback
        public void clickNotShowAgagin(boolean z10) {
            this.OooO00o = z10;
        }

        @Override // com.cloud.tmc.integration.callback.LocalAuthPermissionCallback
        public void onDenied() {
            OooO0O0.this.OooO0O0(this.OooO0O0, this.OooO0OO);
            TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "checkShowPermissionDialog...cancel");
            ScopeUtils scopeUtils = ScopeUtils.OooO00o;
            Context context = OooO0O0.this.OooO00o;
            String scopeName = this.OooO0OO;
            String appId = this.OooO0Oo;
            String str = this.OooO0o0;
            String str2 = this.OooO0o;
            Intrinsics.h(context, "context");
            Intrinsics.h(scopeName, "scopeName");
            Intrinsics.h(appId, "appId");
            scopeUtils.OooO00o(context, scopeName, appId, false, str, str2, true, false);
            OooO0O0.this.OooO0O0.remove(this.OooO0OO);
            Context context2 = OooO0O0.this.OooO00o;
            String str3 = this.OooO0Oo;
            boolean z10 = this.OooO00o;
            if (this.OooO0OO.equals("notifyMessage") && z10) {
                scopeUtils.OooO00o(context2, str3, z10);
            }
        }

        @Override // com.cloud.tmc.integration.callback.LocalAuthPermissionCallback
        public void onGranted(@Nullable Object obj) {
            ScopeUtils scopeUtils = ScopeUtils.OooO00o;
            Context context = OooO0O0.this.OooO00o;
            String scopeName = this.OooO0OO;
            String appId = this.OooO0Oo;
            String str = this.OooO0o0;
            String str2 = this.OooO0o;
            Intrinsics.h(context, "context");
            Intrinsics.h(scopeName, "scopeName");
            Intrinsics.h(appId, "appId");
            scopeUtils.OooO00o(context, scopeName, appId, true, str, str2, true, false);
            OooO0O0 oooO0O0 = OooO0O0.this;
            Page page = this.OooO0oO;
            String str3 = this.OooO0O0;
            String str4 = this.OooO0OO;
            oooO0O0.getClass();
            if (page != null && page.getApp() != null && page.getApp().getEngineProxy() != null) {
                List<C0317OooO0O0> list = oooO0O0.OooO0O0.get(str4);
                oooO0O0.OooO0O0.remove(str4);
                if (list != null) {
                    for (C0317OooO0O0 c0317OooO0O0 : list) {
                        TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "sendResult...action=" + str3);
                        try {
                            page.getApp().getEngineProxy().getBridge().sendToNative(c0317OooO0O0.OooO00o, c0317OooO0O0.OooO0O0.getInnerBridgeResponse(), false);
                        } catch (Exception e11) {
                            StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("use local permission send result error:\t");
                            sbOooO00o.append(e11.getMessage());
                            TmcLogger.e("Tmcintegration:LocalAuthPermissionManager", sbOooO00o.toString());
                        }
                    }
                }
            }
            Context context2 = OooO0O0.this.OooO00o;
            String str5 = this.OooO0Oo;
            boolean z10 = this.OooO00o;
            if (this.OooO0OO.equals("notifyMessage") && z10) {
                ScopeUtils.OooO00o.OooO00o(context2, str5, z10);
            }
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.defaultimpl.OooO0O0$OooO0O0, reason: collision with other inner class name */
    public class C0317OooO0O0 {
        public NativeCallContext OooO00o;
        public BridgeResponseHelper OooO0O0;

        public C0317OooO0O0(OooO0O0 oooO0O0, String str, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper) {
            this.OooO00o = nativeCallContext;
            this.OooO0O0 = bridgeResponseHelper;
        }
    }

    public OooO0O0(Context context) {
        this.OooO00o = context;
        ScopeUtils.OooO00o.OooO00o(OooO0Oo, OooO0OO);
        ((PermissionDialogPoint) ExtensionPoint.as(PermissionDialogPoint.class).create()).registerCallback(this);
    }

    public final String OooO00o(String str) {
        String str2 = OooO0OO.get(str);
        return TextUtils.isEmpty(str2) ? "" : str2;
    }

    public final String OooO00o(String str, String str2) {
        return "_" + str + "_" + str2.substring(str2.indexOf(".") + 1, str2.length());
    }

    public final void OooO00o(NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0317OooO0O0(this, str, nativeCallContext, bridgeResponseHelper));
        this.OooO0O0.put(str2, arrayList);
        try {
            nativeCallContext.getRender().getAppId();
        } catch (Throwable th2) {
            TmcLogger.e("Tmcintegration:LocalAuthPermissionManager", "cancelAuth", th2);
        }
        OooO0O0(str, str2);
        this.OooO0O0.remove(str2);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x005d A[PHI: r3
  0x005d: PHI (r3v11 com.google.gson.JsonObject) = (r3v8 com.google.gson.JsonObject), (r3v12 com.google.gson.JsonObject) binds: [B:13:0x005a, B:8:0x0049] A[DONT_GENERATE, DONT_INLINE]] */
    public final boolean OooO00o(Page page, String str, String str2, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, PermissionModel permissionModel, boolean z10) {
        String str3;
        String logo;
        App app;
        Boolean bool;
        Context context;
        JsonObject asJsonObject;
        String scopeName = OooO00o(str2);
        ScopeUtils scopeUtils = ScopeUtils.OooO00o;
        ConcurrentHashMap<String, ScopeModel> SHOW_SCOPE_MAP = OooO0Oo;
        Intrinsics.h(scopeName, "scopeName");
        Intrinsics.h(SHOW_SCOPE_MAP, "SHOW_SCOPE_MAP");
        ScopeModel scopeModel = SHOW_SCOPE_MAP.get(scopeName);
        Pair pair = null;
        if (scopeModel != null) {
            String language = Locale.getDefault().getLanguage();
            Intrinsics.g(language, "getDefault().language");
            Locale ROOT = Locale.ROOT;
            Intrinsics.g(ROOT, "ROOT");
            String lowerCase = language.toLowerCase(ROOT);
            Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            JsonObject language2 = scopeModel.getLanguage();
            if (language2 == null || (asJsonObject = language2.getAsJsonObject(lowerCase)) == null) {
                JsonObject language3 = scopeModel.getLanguage();
                asJsonObject = language3 != null ? language3.getAsJsonObject("en") : null;
                if (asJsonObject != null) {
                    String string = StringUtils.getString(R.string.mini_permission_dialog_title);
                    Intrinsics.g(string, "getString(R.string.mini_permission_dialog_title)");
                    pair = new Pair(string, scopeUtils.OooO00o(scopeName, asJsonObject.get("content").getAsString()));
                }
            } else {
                String string2 = StringUtils.getString(R.string.mini_permission_dialog_title);
                Intrinsics.g(string2, "getString(R.string.mini_permission_dialog_title)");
                pair = new Pair(string2, scopeUtils.OooO00o(scopeName, asJsonObject.get("content").getAsString()));
            }
        }
        if (pair == null) {
            return false;
        }
        String str4 = (String) pair.getSecond();
        TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "doShowPermissionDialog -> action:" + str2 + ", appId: " + str + ", scope: " + scopeName);
        if (page == null || page.getApp() == null) {
            str3 = "";
            logo = str3;
        } else {
            AppModel appModel = page.getApp().getAppModel();
            AppPermissionUtils.getAggregationMainAppId(appModel);
            String name = appModel.getName();
            logo = appModel.getLogo();
            str3 = name;
        }
        if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(logo)) {
            TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "doShowPermissionDialog not show icon or title null");
            return false;
        }
        if (z10 || TextUtils.isEmpty(str) || page == null || (app = page.getApp()) == null || app.getAppContext() == null || app.getAppContext().getContext() == null || (context = app.getAppContext().getContext()) == null || !(context instanceof MiniAppActivity) || !MiniForceAddHomeManager.INSTANCE.checkInterect(str)) {
            bool = Boolean.TRUE;
        } else {
            String strOooO00o = OooO00o(str2);
            if (TextUtils.isEmpty(strOooO00o)) {
                bool = Boolean.TRUE;
            } else {
                ConcurrentHashMap<String, List<PermissionDialogModel>> concurrentHashMap = OooO0o0;
                List<PermissionDialogModel> arrayList = concurrentHashMap.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    concurrentHashMap.put(str, arrayList);
                }
                List<PermissionDialogModel> list = arrayList;
                Iterator<PermissionDialogModel> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        PermissionDialogModel next = it.next();
                        if (next != null) {
                            String strOooO00o2 = OooO00o(next.getAction());
                            TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "checkRealShowPermissionDialog -> 遍历缓存, appId: " + str + ", scope: " + strOooO00o + ", cacheScope: " + strOooO00o2);
                            if (!TextUtils.isEmpty(strOooO00o2) && strOooO00o2.equals(strOooO00o)) {
                                if (app.getStartToken() == next.getStartToken()) {
                                    TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "checkRealShowPermissionDialog -> 遍历缓存, appId: " + str + ", scope: " + strOooO00o + " startToken一致，则丢弃该请求");
                                    break;
                                }
                                TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "checkRealShowPermissionDialog -> 遍历缓存, appId: " + str + ", scope: " + strOooO00o + " startToken不一致，判定缓存是失效的，进行剔除");
                                it.remove();
                            }
                        }
                    }
                    TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "checkRealShowPermissionDialog -> 添加入缓存, appId: " + str + ", scope: " + strOooO00o + ", startToken: " + app.getStartToken());
                    list.add(new PermissionDialogModel(page, str, str2, nativeCallContext, bridgeResponseHelper, permissionModel, app.getStartToken()));
                    break;
                }
                bool = Boolean.FALSE;
            }
        }
        boolean zBooleanValue = bool.booleanValue();
        TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "doShowPermissionDialog -> showPermissionDialogAble:" + zBooleanValue + ", scope: " + scopeName);
        if (!zBooleanValue) {
            return true;
        }
        TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "doShowPermissionDialog -> showPermissionDialog, appId: " + str + ", scope: " + scopeName);
        ((DialogProxy) TmcProxy.get(DialogProxy.class)).showPermissionDialog(this.OooO00o, scopeName, str4, str3, logo, new OooO00o(str2, scopeName, str, str3, logo, page));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new C0317OooO0O0(this, str2, nativeCallContext, bridgeResponseHelper));
        this.OooO0O0.put(scopeName, arrayList2);
        return true;
    }

    public final void OooO0O0(String str, String str2) {
        List<C0317OooO0O0> list = this.OooO0O0.get(str2);
        if (list != null) {
            for (C0317OooO0O0 c0317OooO0O0 : list) {
                if (c0317OooO0O0.OooO0O0 != null) {
                    TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "cancelAuth...action=" + str);
                    c0317OooO0O0.OooO0O0.sendNotGrantPermission();
                }
            }
        }
    }

    @Override // com.cloud.tmc.integration.callback.PrivacyCallback
    public void privacyDismiss(String str, long j11) {
        TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "privacyDismiss -> appId:" + str + " , startToken:" + j11);
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ConcurrentHashMap<String, List<PermissionDialogModel>> concurrentHashMap = OooO0o0;
            List<PermissionDialogModel> list = concurrentHashMap.get(str);
            if (list != null && !list.isEmpty()) {
                Iterator<PermissionDialogModel> it = list.iterator();
                if (it.hasNext()) {
                    PermissionDialogModel next = it.next();
                    if (next == null) {
                        it.remove();
                        TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "privacyDismiss -> permissionDialogModel == null, continue");
                        privacyDismiss(str, j11);
                        return;
                    }
                    if (next.getStartToken() != j11) {
                        it.remove();
                        TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "privacyDismiss -> cacheStartToken: " + next.getStartToken() + " 不匹配, continue");
                        privacyDismiss(str, j11);
                        return;
                    }
                    String callbackId = next.getResponseHelper().getCallbackId();
                    next.getPage().getApp().updateInterectCallbackId(callbackId);
                    TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "update currentCallbackId -> " + callbackId);
                    OooO00o(next.getPage(), next.getAppId(), next.getAction(), next.getBridgeContext(), next.getResponseHelper(), next.getModel(), true);
                    it.remove();
                }
                if (it.hasNext()) {
                    return;
                }
                concurrentHashMap.remove(str);
                MiniForceAddHomeManager.INSTANCE.removeInterectMFAH(str, true);
                return;
            }
            concurrentHashMap.remove(str);
            MiniForceAddHomeManager.INSTANCE.removeInterectMFAH(str, true);
        } catch (Throwable th2) {
            TmcLogger.e("Tmcintegration:LocalAuthPermissionManager", OooO0O0.class.getSimpleName(), th2);
        }
    }
}
