package com.cloud.tmc.integration.dispatch;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.defaultImpl.DefaultAccessControlManagement;
import com.cloud.tmc.integration.invoke.BindBridgeExtensionInvoker;
import com.cloud.tmc.integration.invoke.ExtensionInvoker;
import com.cloud.tmc.integration.invoke.ExtensionInvokerFactory;
import com.cloud.tmc.integration.invoke.NativePermissionExtensionInvoker;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.extension.action.ActionMeta;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.ApiContext;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.security.AccessControlException;
import com.cloud.tmc.kernel.security.internal.DefaultAccessController;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class BridgeDispatcher {
    public static final String TAG = "TmcEngine:" + BridgeDispatcher.class.getSimpleName();
    private static volatile BridgeDispatcher sInstance;
    private ExtensionManager mExtensionManager;

    public static BridgeDispatcher getInstance() {
        if (sInstance == null) {
            synchronized (BridgeDispatcher.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new BridgeDispatcher();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sInstance;
    }

    public void bindExtensionManager(ExtensionManager extensionManager) {
        this.mExtensionManager = extensionManager;
    }

    public boolean dispatch(NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, boolean z10) {
        return dispatch(nativeCallContext, bridgeResponseHelper, z10, this.mExtensionManager);
    }

    public boolean dispatch(NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, boolean z10, ExtensionManager extensionManager) {
        return dispatch(nativeCallContext, bridgeResponseHelper, z10, extensionManager, null);
    }

    public boolean dispatch(NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, boolean z10, ExtensionManager extensionManager, @Nullable ApiContext apiContext) {
        if (TextUtils.isEmpty(nativeCallContext.getName())) {
            TmcLogger.w(TAG, "BridgeDispatcher dispatch context.getName() == null!");
            return false;
        }
        ActionMeta actionMetaFindActionMeta = extensionManager.findActionMeta(nativeCallContext.getName());
        if (actionMetaFindActionMeta == null) {
            TmcLogger.w(TAG, "BridgeDispatcher dispatch findActionMeta == null!\t" + nativeCallContext.getName());
            return false;
        }
        try {
            BridgeExtension bridgeExtensionByAction = extensionManager.getBridgeExtensionByAction(nativeCallContext.getNode(), nativeCallContext.getName());
            if (bridgeExtensionByAction == null) {
                TmcLogger.w(TAG, "BridgeDispatcher dispatch getBridgeExtensionByAction == null!");
                return false;
            }
            DefaultAccessControlManagement defaultAccessControlManagement = new DefaultAccessControlManagement(nativeCallContext, bridgeResponseHelper, extensionManager);
            DefaultAccessController defaultAccessController = new DefaultAccessController();
            defaultAccessController.setAccessControlManagement(defaultAccessControlManagement);
            if (bridgeResponseHelper != null) {
                bridgeResponseHelper.getInnerBridgeResponse();
            }
            ExtensionInvokerFactory extensionInvokerFactory = (ExtensionInvokerFactory) TmcProxy.get(ExtensionInvokerFactory.class);
            ExtensionInvoker extensionInvokerCreatePermissionExtensionInvoker = z10 ? extensionInvokerFactory.createPermissionExtensionInvoker(defaultAccessController, new NativePermissionExtensionInvoker(bridgeResponseHelper, extensionInvokerFactory.createScheduleExtensionInvoker(new BindBridgeExtensionInvoker(nativeCallContext.getNode(), nativeCallContext, bridgeResponseHelper)))) : extensionInvokerFactory.createScheduleExtensionInvoker(new BindBridgeExtensionInvoker(nativeCallContext.getNode(), nativeCallContext, bridgeResponseHelper, apiContext));
            extensionInvokerCreatePermissionExtensionInvoker.attacheTargetExtensions(bridgeExtensionByAction);
            try {
                Method method = actionMetaFindActionMeta.actionMethod;
                extensionInvokerCreatePermissionExtensionInvoker.invoke(bridgeExtensionByAction, method, new Object[method.getParameterTypes().length]);
                return true;
            } catch (AccessControlException e11) {
                if (bridgeResponseHelper != null) {
                    bridgeResponseHelper.sendNoRigHtToInvoke();
                }
                TmcLogger.e(TAG, "bridge extension fail AccessControlException:", e11);
                return true;
            } catch (Throwable th2) {
                if (bridgeResponseHelper != null) {
                    bridgeResponseHelper.sendError(3, th2.getMessage());
                }
                TmcLogger.e(TAG, "bridge extension fail Throwable:", th2);
                return true;
            }
        } catch (Throwable th3) {
            TmcLogger.e(TAG, "dispatch BridgeExtension error", th3);
            return false;
        }
    }

    public ExtensionManager getExtensionManager() {
        return this.mExtensionManager;
    }
}
