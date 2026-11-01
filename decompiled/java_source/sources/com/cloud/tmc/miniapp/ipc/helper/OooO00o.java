package com.cloud.tmc.miniapp.ipc.helper;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolIpcProcessor;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.model.MiniAddHomeDataModel;
import com.cloud.tmc.integration.utils.AddHomeToScreenUtils;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.env.IApplicationContextGetter;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.miniapp.GlobalPackageConfig;
import com.cloud.tmc.miniapp.offlineapps.OfflineAppBean;
import com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel;
import com.cloud.tmc.offline.download.OfflineManager;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO00o {
    public static final OooO00o OooO00o = new OooO00o();

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ipc.helper.OooO00o$OooO00o, reason: collision with other inner class name */
    public static final class C0334OooO00o extends Lambda implements Function2<IIpcMiniProtocolMainChannel, String, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ JsonArray OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0334OooO00o(String str, JsonArray jsonArray) {
            super(2);
            this.OooO00o = str;
            this.OooO0O0 = jsonArray;
        }

        @Override // kotlin.jvm.functions.Function2
        public Object invoke(Object obj, Object obj2) throws RemoteException {
            IIpcMiniProtocolMainChannel iIpcMiniProtocolMainChannel = (IIpcMiniProtocolMainChannel) obj;
            if (iIpcMiniProtocolMainChannel != null) {
                String str = this.OooO00o;
                Bundle bundle = new Bundle();
                bundle.putString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA, TmcGsonUtilsKt.toJson(this.OooO0O0));
                Unit unit = Unit.f67061a;
                iIpcMiniProtocolMainChannel.onMiniAppAbility(MiniAppIpcConfig.TYPE_IPC_ABILITY_QUERY_MINI_OFFLINE, str, bundle);
            }
            return Unit.f67061a;
        }
    }

    public static final class OooO0O0 extends Lambda implements Function2<IIpcMiniProtocolMainChannel, String, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ JsonObjectUtils.Builder OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0O0(String str, JsonObjectUtils.Builder builder) {
            super(2);
            this.OooO00o = str;
            this.OooO0O0 = builder;
        }

        @Override // kotlin.jvm.functions.Function2
        public Object invoke(Object obj, Object obj2) throws RemoteException {
            IIpcMiniProtocolMainChannel iIpcMiniProtocolMainChannel = (IIpcMiniProtocolMainChannel) obj;
            if (iIpcMiniProtocolMainChannel != null) {
                String str = this.OooO00o;
                Bundle bundle = new Bundle();
                JsonObject jsonObjectBuild = this.OooO0O0.build();
                Intrinsics.g(jsonObjectBuild, "resultObj.build()");
                bundle.putString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA, TmcGsonUtilsKt.toJson(jsonObjectBuild));
                Unit unit = Unit.f67061a;
                iIpcMiniProtocolMainChannel.onMiniAppAbility(MiniAppIpcConfig.TYPE_IPC_ABILITY_QUERY_SINGLE_MINI_OFFLINE, str, bundle);
            }
            return Unit.f67061a;
        }
    }

    public static final void OooO00o(Context context, String appId, String name, String logoUrl) {
        Intrinsics.h(context, "$context");
        Intrinsics.h(appId, "$appId");
        Intrinsics.h(name, "$name");
        Intrinsics.h(logoUrl, "$logoUrl");
        AddHomeToScreenUtils.createShortcutByLogoUrl$default(AddHomeToScreenUtils.INSTANCE, context, new MiniAddHomeDataModel(appId, name, logoUrl), "", false, false, null, 56, null);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final void OooO0O0(String str, String str2, Bundle bundle) {
        String string;
        try {
            Context applicationContext = ((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplicationContext();
            Intrinsics.g(applicationContext, "get(IApplicationContextG….java).applicationContext");
            if (str != null) {
                switch (str.hashCode()) {
                    case -2135366643:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_ABILITY_PRELOAD_OFFLINE_APP)) {
                            OfflineManager.downloadPkgFromPlatform$default(bundle != null ? bundle.getString(MiniAppIpcConfig.IPC_QUERY_APP_ID, "") : null, false, null, 4, null);
                            return;
                        }
                        return;
                    case -2039708617:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_ABILITY_ADD_SHORTCUT)) {
                            OooO00o.OooO00o(applicationContext, bundle);
                            return;
                        }
                        return;
                    case -1827174149:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_ABILITY_QUERY_SINGLE_MINI_OFFLINE)) {
                            OooO00o.OooO0O0(applicationContext, str2, bundle);
                            return;
                        }
                        return;
                    case -681532909:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_ABILITY_QUERY_MINI_OFFLINE)) {
                            OooO00o.OooO00o(applicationContext, str2, bundle);
                            return;
                        }
                        return;
                    case 1218687240:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_ABILITY_MINI_VERSION)) {
                            if (bundle != null) {
                                try {
                                    string = bundle.getString(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
                                } catch (Throwable th2) {
                                    TmcLogger.e("MiniAppAbilityHelper", "querySDKVersion error:", th2);
                                    return;
                                }
                            } else {
                                string = null;
                            }
                            MiniAppProtocolIpcProcessor.INSTANCE.startIpcMainProcessInvoke(applicationContext, string, null, (16 & 8) != 0 ? null : new com.cloud.tmc.miniapp.ipc.helper.OooO0O0(str2, GlobalPackageConfig.Companion.getSDK_DEV_VERSION()), (16 & 16) != 0 ? null : null);
                            return;
                        }
                        return;
                    default:
                        return;
                }
                TmcLogger.e("MiniAppAbilityHelper", "protocolInvoke error:", th);
            }
        } catch (Throwable th3) {
            TmcLogger.e("MiniAppAbilityHelper", "protocolInvoke error:", th3);
        }
    }

    public final void OooO00o(final Context context, Bundle bundle) {
        final String string;
        final String string2;
        final String string3 = bundle != null ? bundle.getString(MiniAppIpcConfig.IPC_QUERY_APP_ID, "") : null;
        if (string3 == null || (string = bundle.getString(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "")) == null || (string2 = bundle.getString(MiniAppIpcConfig.IPC_ADDHOME_APP_LOGO, "")) == null) {
            return;
        }
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.ipc.helper.b
            @Override // java.lang.Runnable
            public final void run() {
                OooO00o.OooO00o(context, string3, string, string2);
            }
        });
    }

    public final void OooO00o(Context context, String str, Bundle bundle) {
        String string;
        ArrayList<String> arrayList;
        if (bundle != null) {
            try {
                string = bundle.getString(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
            } catch (Throwable th2) {
                TmcLogger.e("MiniAppAbilityHelper", "querySDKVersion error:", th2);
                return;
            }
        } else {
            string = null;
        }
        String string2 = bundle != null ? bundle.getString(MiniAppIpcConfig.IPC_QUERY_APP_ID, "[]") : null;
        try {
            arrayList = (ArrayList) TmcGsonUtils.fromJson(string2 != null ? string2 : "[]", ArrayList.class);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
        } catch (Throwable unused) {
            arrayList = new ArrayList();
        }
        JsonArray jsonArray = new JsonArray();
        Map<String, OfflineAppBean> map = com.cloud.tmc.miniapp.offlineapps.scan.OooO0O0.OooO0Oo;
        if (arrayList.isEmpty()) {
            Iterator it = ((LinkedHashMap) map).keySet().iterator();
            while (it.hasNext()) {
                arrayList.add((String) it.next());
            }
        }
        for (String str2 : arrayList) {
            OfflineAppBean offlineAppBean = (OfflineAppBean) ((LinkedHashMap) map).get(str2);
            JsonObjectUtils.Builder builderCreate = JsonObjectUtils.create();
            Intrinsics.g(builderCreate, "create()");
            if (offlineAppBean != null) {
                builderCreate.addProperty("appId", offlineAppBean.getAppId());
                builderCreate.addProperty(MiniAppIpcConfig.IPC_ADDHOME_APP_LOGO, offlineAppBean.getLogoUrl());
                builderCreate.addProperty(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, offlineAppBean.getName());
                builderCreate.addProperty("version", offlineAppBean.getVersion());
                builderCreate.addProperty(NotificationCompat.CATEGORY_STATUS, Boolean.TRUE);
                jsonArray.add(builderCreate.build());
            } else {
                builderCreate.addProperty("appId", str2);
                builderCreate.addProperty(NotificationCompat.CATEGORY_STATUS, Boolean.FALSE);
                jsonArray.add(builderCreate.build());
            }
        }
        MiniAppProtocolIpcProcessor.INSTANCE.startIpcMainProcessInvoke(context, string, null, (16 & 8) != 0 ? null : new C0334OooO00o(str, jsonArray), (16 & 16) != 0 ? null : null);
    }

    public void OooO00o(final String str, final String str2, final Bundle bundle) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("protocolInvoke: ");
        sb2.append(str);
        sb2.append(" callbackId ->");
        sb2.append(str2);
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.ipc.helper.c
                @Override // java.lang.Runnable
                public final void run() {
                    OooO00o.OooO0O0(str, str2, bundle);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e("MiniAppAbilityHelper", "protocolInvoke error:", th2);
        }
    }

    public final void OooO0O0(Context context, String str, Bundle bundle) {
        String string;
        if (bundle != null) {
            try {
                string = bundle.getString(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
            } catch (Throwable th2) {
                TmcLogger.e("MiniAppAbilityHelper", "querySDKVersion error:", th2);
                return;
            }
        } else {
            string = null;
        }
        String str2 = "";
        String string2 = bundle != null ? bundle.getString(MiniAppIpcConfig.IPC_QUERY_APP_ID, "") : null;
        if (string2 != null) {
            str2 = string2;
        }
        OfflineAppBean offlineAppBean = (OfflineAppBean) ((LinkedHashMap) com.cloud.tmc.miniapp.offlineapps.scan.OooO0O0.OooO0Oo).get(str2);
        JsonObjectUtils.Builder builderCreate = JsonObjectUtils.create();
        Intrinsics.g(builderCreate, "create()");
        if (offlineAppBean != null) {
            builderCreate.addProperty("appId", offlineAppBean.getAppId());
            builderCreate.addProperty(MiniAppIpcConfig.IPC_ADDHOME_APP_LOGO, offlineAppBean.getLogoUrl());
            builderCreate.addProperty(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, offlineAppBean.getName());
            builderCreate.addProperty("version", offlineAppBean.getVersion());
            builderCreate.addProperty(NotificationCompat.CATEGORY_STATUS, Boolean.TRUE);
        } else {
            builderCreate.addProperty("appId", str2);
            builderCreate.addProperty(NotificationCompat.CATEGORY_STATUS, Boolean.FALSE);
        }
        MiniAppProtocolIpcProcessor.INSTANCE.startIpcMainProcessInvoke(context, string, null, (16 & 8) != 0 ? null : new OooO0O0(str, builderCreate), (16 & 16) != 0 ? null : null);
    }
}
