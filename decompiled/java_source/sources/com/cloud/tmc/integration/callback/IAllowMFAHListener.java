package com.cloud.tmc.integration.callback;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.MiniForceAddHomeManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\nH&J(\u0010\u000b\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0007\u0018\u00010\fj\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0007\u0018\u0001`\rH\u0016J$\u0010\u000e\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00070\fj\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0007`\rH&J\u0012\u0010\u000f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;", "", "addMFAHInterceptAction", "", "appId", "", "block", "Lkotlin/Function0;", "clearMFAHIntercept", "getCurrentApp", "Lcom/cloud/tmc/integration/structure/App;", "getMFAHIntercept", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getMFAHInterceptList", "mfahAllow", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IAllowMFAHListener {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class DefaultImpls {
        public static void addMFAHInterceptAction(IAllowMFAHListener iAllowMFAHListener, String str, Function0<Unit> block) {
            Intrinsics.h(block, "block");
            if (str == null || str.length() <= 0 || !MiniForceAddHomeManager.INSTANCE.checkInterect(str)) {
                block.invoke();
            } else {
                iAllowMFAHListener.getMFAHInterceptList().add(block);
            }
        }

        public static void clearMFAHIntercept(IAllowMFAHListener iAllowMFAHListener) {
            iAllowMFAHListener.getMFAHInterceptList().clear();
        }

        public static ArrayList<Function0<Unit>> getMFAHIntercept(IAllowMFAHListener iAllowMFAHListener) {
            return iAllowMFAHListener.getMFAHInterceptList();
        }

        public static void mfahAllow(IAllowMFAHListener iAllowMFAHListener, String str) {
            Iterator<T> it = iAllowMFAHListener.getMFAHInterceptList().iterator();
            while (it.hasNext()) {
                ((Function0) it.next()).invoke();
            }
            iAllowMFAHListener.clearMFAHIntercept();
            MiniForceAddHomeManager.INSTANCE.removeMFAHListener(str);
        }
    }

    void addMFAHInterceptAction(String appId, Function0<Unit> block);

    void clearMFAHIntercept();

    App getCurrentApp();

    ArrayList<Function0<Unit>> getMFAHIntercept();

    ArrayList<Function0<Unit>> getMFAHInterceptList();

    void mfahAllow(String appId);
}
