package com.cloud.tmc.integration.structure.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.proxy.AppFactory;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.VirtualAppManager;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.NodeInstance;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.Stack;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u001f2\u00020\u00012\u00020\u0002:\u0001\u001fB\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J&\u0010\u0017\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\tH\u0016J\u0018\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u000bH\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;", "Lcom/cloud/tmc/kernel/node/NodeInstance;", "Lcom/cloud/tmc/integration/structure/VirtualAppManager;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "mVirtualAppStack", "Ljava/util/Stack;", "Lcom/cloud/tmc/integration/structure/App;", "describeContents", "", "exitApp", "", "targetApp", "findApp", "id", "", "appId", "", "findAppByToken", TmcConstants.EXTRA_START_TOKEN, "getAppStack", TmcStartParams.START_SCENE_START_APP, TmcConstants.EXTRA_START_PARAMS, "Landroid/os/Bundle;", TmcConstants.EXTRA_SCENE_PARAMS, "updateAppInfo", "app", "writeToParcel", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VirtualAppManagerImpl extends NodeInstance implements VirtualAppManager {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Stack<App> mVirtualAppStack;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.structure.impl.VirtualAppManagerImpl$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<VirtualAppManagerImpl> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VirtualAppManagerImpl createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new VirtualAppManagerImpl(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VirtualAppManagerImpl[] newArray(int size) {
            return new VirtualAppManagerImpl[size];
        }
    }

    public VirtualAppManagerImpl() {
        this.mVirtualAppStack = new Stack<>();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VirtualAppManagerImpl(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
    }

    @Override // com.cloud.tmc.kernel.node.NodeInstance, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cloud.tmc.integration.structure.AppManager
    public synchronized void exitApp(App targetApp) {
        if (targetApp != null) {
            this.mVirtualAppStack.remove(targetApp);
        }
    }

    @Override // com.cloud.tmc.integration.structure.AppManager
    public synchronized App findApp(long id2) {
        return null;
    }

    @Override // com.cloud.tmc.integration.structure.AppManager
    public synchronized App findApp(String appId) {
        Stack<App> appStack = getAppStack();
        int size = appStack.size() - 1;
        if (size >= 0) {
            while (true) {
                int i11 = size - 1;
                App app = appStack.get(size);
                if (Intrinsics.c(app.getAppId(), appId)) {
                    return app;
                }
                if (i11 >= 0) {
                    size = i11;
                }
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.integration.structure.AppManager
    public synchronized App findAppByToken(long startToken) {
        return null;
    }

    @Override // com.cloud.tmc.integration.structure.AppManager
    public synchronized Stack<App> getAppStack() {
        Stack<App> stack;
        stack = new Stack<>();
        Iterator<App> it = this.mVirtualAppStack.iterator();
        while (it.hasNext()) {
            stack.push(it.next());
        }
        return stack;
    }

    @Override // com.cloud.tmc.integration.structure.AppManager
    public synchronized App startApp(String appId, Bundle startParams, Bundle sceneParams) {
        AppNode appNodeCreateVirtualApp;
        TmcLogger.printPerformanceLog("VirtualApp", "Start create app");
        appNodeCreateVirtualApp = ((AppFactory) TmcProxy.get(AppFactory.class)).createVirtualApp();
        Intrinsics.g(appNodeCreateVirtualApp, "get(AppFactory::class.java).createVirtualApp()");
        appNodeCreateVirtualApp.init(appId, startParams, sceneParams);
        this.mVirtualAppStack.push(appNodeCreateVirtualApp);
        return appNodeCreateVirtualApp;
    }

    @Override // com.cloud.tmc.integration.structure.VirtualAppManager
    public synchronized void updateAppInfo(App app) {
        Intrinsics.h(app, "app");
        int size = this.mVirtualAppStack.size() - 1;
        if (size >= 0) {
            while (true) {
                int i11 = size - 1;
                if (Intrinsics.c(this.mVirtualAppStack.get(size).getAppId(), app.getAppId())) {
                    this.mVirtualAppStack.set(size, app);
                }
                if (i11 < 0) {
                    break;
                } else {
                    size = i11;
                }
            }
        }
    }

    @Override // com.cloud.tmc.kernel.node.NodeInstance, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        super.writeToParcel(parcel, flags);
    }
}
