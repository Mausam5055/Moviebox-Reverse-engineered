package com.cloud.tmc.integration.invoke;

import android.text.TextUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.UsePermission;
import com.cloud.tmc.kernel.datastructure.immutable.ImmutableList;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.extension.bridge.BridgeGuard;
import com.cloud.tmc.kernel.extension.bridge.BridgePermission;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.security.AccessController;
import com.cloud.tmc.kernel.security.Guard;
import com.cloud.tmc.kernel.security.Permission;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SecurityExtensionInvoker extends ExtensionInvoker {
    private static final String TAG = "Tmcintegration:ExtensionInvoker:Security";
    private AccessController mAccessController;

    public SecurityExtensionInvoker(AccessController accessController, ExtensionInvoker extensionInvoker) {
        super(extensionInvoker);
        this.mAccessController = accessController;
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionInvoker
    public ExtensionInvoker.InvokeResult onInvoke(final Object obj, final Method method, final Object[] objArr) throws Throwable {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final ArrayList arrayList = new ArrayList();
        for (Extension extension : this.targetExtensions) {
            if (extension instanceof Guard) {
                arrayList.add((Guard) extension);
            }
            Method method2 = extension.getClass().getMethod(method.getName(), method.getParameterTypes());
            if (method2 != null) {
                UsePermission usePermission = (UsePermission) method2.getAnnotation(UsePermission.class);
                if (usePermission != null && usePermission.value() != null && usePermission.value().length() > 0) {
                    arrayList.add(new BridgeGuard(new BridgePermission(usePermission.value(), usePermission.desc())));
                } else if ((extension instanceof BridgeExtension) && method2.getAnnotation(ActionFilter.class) != null) {
                    ActionFilter actionFilter = (ActionFilter) method2.getAnnotation(ActionFilter.class);
                    String name = (actionFilter == null || TextUtils.isEmpty(actionFilter.value())) ? method2.getName() : actionFilter.value();
                    arrayList.add(new BridgeGuard(new BridgePermission(name, name)));
                }
            }
        }
        AccessController.ApplyCallback applyCallback = new AccessController.ApplyCallback() { // from class: com.cloud.tmc.integration.invoke.SecurityExtensionInvoker.1
            @Override // com.cloud.tmc.kernel.security.AccessController.ApplyCallback
            public void onFailure(List<? extends Permission> list) {
                List<Extension> listMutable = SecurityExtensionInvoker.this.targetExtensions.mutable();
                for (Permission permission : list) {
                    for (Guard guard : arrayList) {
                        if (guard.permit().authority().equalsIgnoreCase(permission.authority())) {
                            listMutable.remove(guard);
                        }
                    }
                }
                TmcLogger.debug(SecurityExtensionInvoker.TAG, "method " + method + " cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
                SecurityExtensionInvoker.this.proceedSafe(new ImmutableList<>((List) listMutable), obj, method, objArr);
            }

            @Override // com.cloud.tmc.kernel.security.AccessController.ApplyCallback
            public void onSuccess() {
                TmcLogger.debug(SecurityExtensionInvoker.TAG, "method " + method + " cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
                SecurityExtensionInvoker securityExtensionInvoker = SecurityExtensionInvoker.this;
                securityExtensionInvoker.proceedSafe(securityExtensionInvoker.targetExtensions, obj, method, objArr);
            }
        };
        AccessController accessController = this.mAccessController;
        return (accessController == null || !accessController.check(this.targetNode, arrayList, applyCallback)) ? ExtensionInvoker.InvokeResult.proceed() : ExtensionInvoker.InvokeResult.pending();
    }
}
