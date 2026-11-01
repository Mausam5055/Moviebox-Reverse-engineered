package com.cloud.tmc.miniapp.prestrategy.strategy;

import android.content.Context;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.OfflineManager;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0O0 {
    public static final OooO0O0 OooO00o = new OooO0O0();
    public static List<String> OooO0O0 = new CopyOnWriteArrayList();
    public static int OooO0OO = 3;

    public static final class OooO00o extends Lambda implements Function1<Boolean, Unit> {
        public final /* synthetic */ String OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO00o(String str) {
            super(1);
            this.OooO00o = str;
        }

        public final void OooO00o(boolean z10) {
            ((CopyOnWriteArrayList) OooO0O0.OooO0O0).remove(this.OooO00o);
            TmcLogger.e("PreOfflinePackageStrategy", "preOfflinePackage task finish. success =" + z10 + " current size = " + ((CopyOnWriteArrayList) OooO0O0.OooO0O0).size());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            OooO00o(((Boolean) obj).booleanValue());
            return Unit.f67061a;
        }
    }

    public final void OooO00o(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            TmcLogger.e("PreOfflinePackageStrategy", "start preOfflinePackage appId = " + appId + ", already exist size = " + ((CopyOnWriteArrayList) OooO0O0).size());
            int size = ((CopyOnWriteArrayList) OooO0O0).size();
            int i11 = OooO0OO;
            if (size >= i11) {
                TmcLogger.e("PreOfflinePackageStrategy", "preOfflinePackage failed, because requestNum >= " + i11 + " return");
                return;
            }
            if (!((CopyOnWriteArrayList) OooO0O0).contains(appId)) {
                ((CopyOnWriteArrayList) OooO0O0).add(appId);
                OfflineManager.downloadPkgFromPlatform(appId, true, new OooO00o(appId));
            } else {
                TmcLogger.e("PreOfflinePackageStrategy", appId + " preOffline task was processing. ");
            }
        } catch (Throwable th2) {
            TmcLogger.e("PreOfflinePackageStrategy", th2);
        }
    }
}
