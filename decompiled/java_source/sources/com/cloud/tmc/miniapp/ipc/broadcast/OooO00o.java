package com.cloud.tmc.miniapp.ipc.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.cloud.tmc.component_api_ps.MiniAppProtocolModuleLogger;
import com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper;
import com.cloud.tmc.component_api_ps.ipc.callbcak.IMiniAppDataSyncCallback;
import com.cloud.tmc.integration.model.CacheReportBean;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO00o extends BroadcastReceiver {
    public static final C0333OooO00o OooO00o = new C0333OooO00o();

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ipc.broadcast.OooO00o$OooO00o, reason: collision with other inner class name */
    public static final class C0333OooO00o {
    }

    public final void OooO00o(Bundle bundle) {
        try {
            int i11 = bundle.getInt("miniProcessId");
            String string = bundle.getString("miniGaid");
            if (string == null) {
                string = "";
            }
            MiniAppProtocolHelper miniAppProtocolHelper = MiniAppProtocolHelper.INSTANCE;
            miniAppProtocolHelper.updateMiniPid(i11);
            Bundle bundle2 = new Bundle();
            bundle2.putString("miniGaid", string);
            IMiniAppDataSyncCallback dataSyncCallback = miniAppProtocolHelper.getDataSyncCallback();
            if (dataSyncCallback != null) {
                dataSyncCallback.onSyncData(MiniAppProtocolHelper.SYNC_MINI_INIT_PROCESS, bundle2);
            }
        } catch (Throwable unused) {
        }
    }

    public final void OooO00o(String str, Bundle bundle) {
        try {
            MiniAppProtocolModuleLogger.d("MiniBroadcastReceiver", "MiniBroadcastReceiver -> reportDataToPs:" + str);
            bundle.getString("miniGaid");
            IMiniAppDataSyncCallback dataSyncCallback = MiniAppProtocolHelper.INSTANCE.getDataSyncCallback();
            if (dataSyncCallback != null) {
                dataSyncCallback.onSyncData(str, bundle);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004c A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #1 {all -> 0x0052, blocks: (B:19:0x0046, B:21:0x004c), top: B:62:0x0046 }] */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras;
        if (!Intrinsics.c(intent != null ? intent.getPackage() : null, context != null ? context.getPackageName() : null)) {
            MiniAppProtocolModuleLogger.d("MiniBroadcastReceiver", "MiniBroadcastReceiver -> onReceive:" + (intent != null ? intent.getPackage() : null) + " != " + (context != null ? context.getPackageName() : null));
            return;
        }
        if (intent != null) {
            try {
                extras = intent.getExtras();
                if (extras == null) {
                    extras = new Bundle();
                }
            } catch (Throwable unused) {
                extras = new Bundle();
            }
        } else {
            extras = new Bundle();
        }
        String action = intent != null ? intent.getAction() : null;
        if (Intrinsics.c(action, "com.cloud.tmc.miniapp.process_id")) {
            OooO00o(extras);
            return;
        }
        if (Intrinsics.c(action, "com.cloud.tmc.miniapp.addhome_success")) {
            OooO00o(MiniAppProtocolHelper.SYNC_ADDHOME_SUCCESS, extras);
            return;
        }
        if (Intrinsics.c(action, "com.cloud.tmc.miniapp.start_time")) {
            OooO00o(MiniAppProtocolHelper.SYNC_MINI_APP_START_TIME, extras);
            return;
        }
        if (Intrinsics.c(action, "com.cloud.tmc.miniapp.use_time")) {
            OooO00o(MiniAppProtocolHelper.SYNC_MINI_APP_USE_TIME, extras);
            return;
        }
        if (Intrinsics.c(action, "com.cloud.tmc.miniapp.report_cache")) {
            try {
                ArrayList<CacheReportBean> parcelableArrayListExtra = intent.getParcelableArrayListExtra("reportCachedata");
                if (parcelableArrayListExtra != null) {
                    for (CacheReportBean cacheReportBean : parcelableArrayListExtra) {
                        String event = cacheReportBean.getEvent();
                        if (Intrinsics.c(event, "com.cloud.tmc.miniapp.process_id")) {
                            OooO00o(cacheReportBean.getData());
                        } else if (Intrinsics.c(event, "com.cloud.tmc.miniapp.addhome_success")) {
                            OooO00o(MiniAppProtocolHelper.SYNC_ADDHOME_SUCCESS, cacheReportBean.getData());
                        } else if (Intrinsics.c(event, "com.cloud.tmc.miniapp.start_time")) {
                            OooO00o(MiniAppProtocolHelper.SYNC_MINI_APP_START_TIME, cacheReportBean.getData());
                        } else if (Intrinsics.c(event, "com.cloud.tmc.miniapp.use_time")) {
                            OooO00o(MiniAppProtocolHelper.SYNC_MINI_APP_USE_TIME, cacheReportBean.getData());
                        }
                    }
                }
            } catch (Throwable unused2) {
            }
        }
    }
}
