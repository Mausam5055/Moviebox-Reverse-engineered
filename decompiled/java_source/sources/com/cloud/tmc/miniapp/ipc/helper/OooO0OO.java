package com.cloud.tmc.miniapp.ipc.helper;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolIpcProcessor;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.env.IApplicationContextGetter;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0OO {
    public static final OooO0OO OooO00o = new OooO0OO();

    public static final class OooO extends Lambda implements Function2<IIpcMiniProtocolMainChannel, String, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ String OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO(String str, String str2) {
            super(2);
            this.OooO00o = str;
            this.OooO0O0 = str2;
        }

        @Override // kotlin.jvm.functions.Function2
        public Object invoke(Object obj, Object obj2) throws RemoteException {
            IIpcMiniProtocolMainChannel iIpcMiniProtocolMainChannel = (IIpcMiniProtocolMainChannel) obj;
            if (iIpcMiniProtocolMainChannel != null) {
                String str = this.OooO00o;
                Bundle bundle = new Bundle();
                bundle.putString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA, this.OooO0O0);
                Unit unit = Unit.f67061a;
                iIpcMiniProtocolMainChannel.onMiniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_MINI_SHORTCUT, str, bundle);
            }
            return Unit.f67061a;
        }
    }

    public static final class OooO00o extends Lambda implements Function2<IIpcMiniProtocolMainChannel, String, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ String OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO00o(String str, String str2) {
            super(2);
            this.OooO00o = str;
            this.OooO0O0 = str2;
        }

        @Override // kotlin.jvm.functions.Function2
        public Object invoke(Object obj, Object obj2) throws RemoteException {
            IIpcMiniProtocolMainChannel iIpcMiniProtocolMainChannel = (IIpcMiniProtocolMainChannel) obj;
            if (iIpcMiniProtocolMainChannel != null) {
                String str = this.OooO00o;
                Bundle bundle = new Bundle();
                bundle.putString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA, this.OooO0O0);
                Unit unit = Unit.f67061a;
                iIpcMiniProtocolMainChannel.onMiniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_MINI_CLEAN_ALL_STORAGE, str, bundle);
            }
            return Unit.f67061a;
        }
    }

    public static final class OooO0O0 extends Lambda implements Function2<IIpcMiniProtocolMainChannel, String, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ String OooO0O0;
        public final /* synthetic */ long OooO0OO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0O0(String str, String str2, long j11) {
            super(2);
            this.OooO00o = str;
            this.OooO0O0 = str2;
            this.OooO0OO = j11;
        }

        public final void OooO00o(IIpcMiniProtocolMainChannel iIpcMiniProtocolMainChannel) throws RemoteException {
            if (iIpcMiniProtocolMainChannel != null) {
                String str = this.OooO00o;
                Bundle bundle = new Bundle();
                bundle.putString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA, "{\"appId\":\"" + this.OooO0O0 + "\",\"size\":" + this.OooO0OO + "}");
                Unit unit = Unit.f67061a;
                iIpcMiniProtocolMainChannel.onMiniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_MINI_CLEAN_STORAGE, str, bundle);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
            OooO00o((IIpcMiniProtocolMainChannel) obj);
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ipc.helper.OooO0OO$OooO0OO, reason: collision with other inner class name */
    public static final class C0335OooO0OO extends Lambda implements Function2<IIpcMiniProtocolMainChannel, String, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ String OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0335OooO0OO(String str, String str2) {
            super(2);
            this.OooO00o = str;
            this.OooO0O0 = str2;
        }

        @Override // kotlin.jvm.functions.Function2
        public Object invoke(Object obj, Object obj2) throws RemoteException {
            IIpcMiniProtocolMainChannel iIpcMiniProtocolMainChannel = (IIpcMiniProtocolMainChannel) obj;
            if (iIpcMiniProtocolMainChannel != null) {
                String str = this.OooO00o;
                Bundle bundle = new Bundle();
                bundle.putString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA, this.OooO0O0);
                Unit unit = Unit.f67061a;
                iIpcMiniProtocolMainChannel.onMiniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_ALL_MINI_SHORTCUT, str, bundle);
            }
            return Unit.f67061a;
        }
    }

    public static final class OooO0o extends Lambda implements Function2<IIpcMiniProtocolMainChannel, String, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ String OooO0O0;
        public final /* synthetic */ long OooO0OO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0o(String str, String str2, long j11) {
            super(2);
            this.OooO00o = str;
            this.OooO0O0 = str2;
            this.OooO0OO = j11;
        }

        public final void OooO00o(IIpcMiniProtocolMainChannel iIpcMiniProtocolMainChannel) throws RemoteException {
            if (iIpcMiniProtocolMainChannel != null) {
                String str = this.OooO00o;
                Bundle bundle = new Bundle();
                bundle.putString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA, "{\"appId\":\"" + this.OooO0O0 + "\",\"size\":" + this.OooO0OO + "}");
                Unit unit = Unit.f67061a;
                iIpcMiniProtocolMainChannel.onMiniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_QUERY_MINI_STORAGE, str, bundle);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
            OooO00o((IIpcMiniProtocolMainChannel) obj);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final void OooO00o(String str, Bundle bundle, String str2) {
        String string;
        try {
            Context applicationContext = ((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplicationContext();
            Intrinsics.g(applicationContext, "get(IApplicationContextG….java).applicationContext");
            if (str != null) {
                switch (str.hashCode()) {
                    case -1225344574:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_DATA_MINI_CLEAN_STORAGE)) {
                            OooO00o.OooO0O0(bundle, applicationContext, str2);
                            return;
                        }
                        return;
                    case -1017194837:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_DATA_QUERY_MINI_STORAGE)) {
                            OooO00o.OooO0Oo(bundle, applicationContext, str2);
                            return;
                        }
                        return;
                    case -891583177:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_DATA_ALL_MINI_SHORTCUT)) {
                            OooO00o.OooO0OO(bundle, applicationContext, str2);
                            return;
                        }
                        return;
                    case 730412906:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_DATA_QUERY_MINI_ALL_STORAGE)) {
                            if (bundle != null) {
                                try {
                                    string = bundle.getString(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
                                } catch (Throwable th2) {
                                    TmcLogger.e("MiniAppDataSyncHelper", "querySDKVersion error:", th2);
                                    return;
                                }
                            } else {
                                string = null;
                            }
                            String str3 = string;
                            Context applicationContext2 = applicationContext.getApplicationContext();
                            Intrinsics.g(applicationContext2, "context.applicationContext");
                            MiniAppProtocolIpcProcessor.INSTANCE.startIpcMainProcessInvoke(applicationContext, str3, null, (16 & 8) != 0 ? null : new com.cloud.tmc.miniapp.ipc.helper.OooO0o(str2, FileUtil.getAllMiniAppFileSizeJson(applicationContext2)), (16 & 16) != 0 ? null : null);
                            return;
                        }
                        return;
                    case 767151638:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_DATA_MINI_SHORTCUT)) {
                            OooO00o.OooO0o0(bundle, applicationContext, str2);
                            return;
                        }
                        return;
                    case 1674373363:
                        if (str.equals(MiniAppIpcConfig.TYPE_IPC_DATA_MINI_CLEAN_ALL_STORAGE)) {
                            OooO00o.OooO00o(bundle, applicationContext, str2);
                            return;
                        }
                        return;
                    default:
                        return;
                }
                TmcLogger.e("MiniAppDataSyncHelper", "protocolInvoke error:", th);
            }
        } catch (Throwable th3) {
            TmcLogger.e("MiniAppDataSyncHelper", "protocolInvoke error:", th3);
        }
    }

    public final void OooO00o(Bundle bundle, Context context, String str) {
        String string;
        if (bundle != null) {
            try {
                string = bundle.getString(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
            } catch (Throwable th2) {
                TmcLogger.e("MiniAppDataSyncHelper", "querySDKVersion error:", th2);
                return;
            }
        } else {
            string = null;
        }
        MiniAppProtocolIpcProcessor.INSTANCE.startIpcMainProcessInvoke(context, string, null, (16 & 8) != 0 ? null : new OooO00o(str, FileUtil.INSTANCE.clearMiniAppDataUntilSize(context, bundle != null ? Long.valueOf(bundle.getLong(MiniAppIpcConfig.ABILITY_STOREAGE_CLEAN_SIZE, 0L)) : null)), (16 & 16) != 0 ? null : null);
    }

    public void OooO00o(final String str, final String str2, final Bundle bundle) {
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.ipc.helper.d
                @Override // java.lang.Runnable
                public final void run() {
                    OooO0OO.OooO00o(str, bundle, str2);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e("MiniAppDataSyncHelper", "protocolInvoke error:", th2);
        }
    }

    public final void OooO0O0(Bundle bundle, Context context, String str) {
        String string;
        if (bundle != null) {
            try {
                string = bundle.getString(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
            } catch (Throwable th2) {
                TmcLogger.e("MiniAppDataSyncHelper", "querySDKVersion error:", th2);
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
        long miniAppFileSize = FileUtil.getMiniAppFileSize(context, str2);
        FileUtil.removeMiniAppFile(context, str2);
        MiniAppProtocolIpcProcessor.INSTANCE.startIpcMainProcessInvoke(context, string, null, (16 & 8) != 0 ? null : new OooO0O0(str, str2, miniAppFileSize), (16 & 16) != 0 ? null : null);
    }

    public final void OooO0OO(Bundle bundle, Context context, String str) {
        String string;
        ArrayList<String> arrayList;
        if (bundle != null) {
            try {
                string = bundle.getString(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
            } catch (Throwable th2) {
                TmcLogger.e("MiniAppDataSyncHelper", "queryMiniShortcuts error:", th2);
                return;
            }
        } else {
            string = null;
        }
        String string2 = bundle != null ? bundle.getString(MiniAppIpcConfig.IPC_QUERY_APP_ID, "[]") : null;
        if (string2 == null || (arrayList = (ArrayList) TmcGsonUtils.fromJson(string2, ArrayList.class)) == null) {
            arrayList = new ArrayList();
        }
        JsonArray jsonArray = new JsonArray();
        for (String str2 : arrayList) {
            JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty("appId", str2).addProperty("exist", Boolean.valueOf(AppUtils.INSTANCE.queryShortcutExist(context, str2))).build();
            Intrinsics.g(jsonObjectBuild, "create()\n               …                 .build()");
            jsonArray.add(jsonObjectBuild);
        }
        MiniAppProtocolIpcProcessor.INSTANCE.startIpcMainProcessInvoke(context, string, null, (16 & 8) != 0 ? null : new C0335OooO0OO(str, TmcGsonUtilsKt.toJson(jsonArray)), (16 & 16) != 0 ? null : null);
    }

    public final void OooO0Oo(Bundle bundle, Context context, String str) {
        String string;
        long miniAppFileSize;
        if (bundle != null) {
            try {
                string = bundle.getString(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
            } catch (Throwable th2) {
                TmcLogger.e("MiniAppDataSyncHelper", "querySDKVersion error:", th2);
                return;
            }
        } else {
            string = null;
        }
        String string2 = bundle != null ? bundle.getString(MiniAppIpcConfig.IPC_QUERY_APP_ID, "") : null;
        if (string2 == null || string2.length() <= 0) {
            miniAppFileSize = 0;
        } else {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "context.applicationContext");
            miniAppFileSize = FileUtil.getMiniAppFileSize(applicationContext, string2);
        }
        MiniAppProtocolIpcProcessor.INSTANCE.startIpcMainProcessInvoke(context, string, null, (16 & 8) != 0 ? null : new OooO0o(str, string2, miniAppFileSize), (16 & 16) != 0 ? null : null);
    }

    public final void OooO0o0(Bundle bundle, Context context, String str) {
        String string;
        if (bundle != null) {
            try {
                string = bundle.getString(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
            } catch (Throwable th2) {
                TmcLogger.e("MiniAppDataSyncHelper", "querySingleMiniShortcut error:", th2);
                return;
            }
        } else {
            string = null;
        }
        String string2 = bundle != null ? bundle.getString(MiniAppIpcConfig.IPC_QUERY_APP_ID, "") : null;
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty("appId", string2).addProperty("exist", Boolean.valueOf(AppUtils.INSTANCE.queryShortcutExist(context, string2))).build();
        Intrinsics.g(jsonObjectBuild, "create()\n               …\n                .build()");
        MiniAppProtocolIpcProcessor.INSTANCE.startIpcMainProcessInvoke(context, string, null, (16 & 8) != 0 ? null : new OooO(str, TmcGsonUtilsKt.toJson(jsonObjectBuild)), (16 & 16) != 0 ? null : null);
    }
}
