package com.cloud.tmc.integration.invoke;

import android.app.Activity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.b;
import com.cloud.tmc.integration.permission.IPermissionRequestCallback;
import com.cloud.tmc.integration.permission.TmcNativePermissionRequestProxy;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.annotation.NativePermissionRequire;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class NativePermissionExtensionInvoker extends ExtensionInvoker {
    private BridgeResponseHelper mResponseHelper;

    public NativePermissionExtensionInvoker(BridgeResponseHelper bridgeResponseHelper, ExtensionInvoker extensionInvoker) {
        super(extensionInvoker);
        this.mResponseHelper = bridgeResponseHelper;
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionInvoker
    public ExtensionInvoker.InvokeResult onInvoke(final Object obj, final Method method, final Object[] objArr) throws Throwable {
        NativePermissionRequire nativePermissionRequire;
        Node node = this.targetNode;
        if (!(node instanceof Page)) {
            return ExtensionInvoker.InvokeResult.proceed();
        }
        Page page = (Page) node;
        if (page.getRender() == null || page.getRender().getActivity() == null) {
            return ExtensionInvoker.InvokeResult.proceed();
        }
        Activity activity = page.getRender().getActivity();
        final ArrayList arrayList = new ArrayList();
        Iterator it = this.targetExtensions.iterator();
        while (it.hasNext()) {
            Method method2 = ((Extension) it.next()).getClass().getMethod(method.getName(), method.getParameterTypes());
            if (method2 != null && (nativePermissionRequire = (NativePermissionRequire) method2.getAnnotation(NativePermissionRequire.class)) != null && nativePermissionRequire.value() != null && nativePermissionRequire.value().length > 0) {
                for (String str : nativePermissionRequire.value()) {
                    if (b.checkSelfPermission(activity, str) != 0) {
                        arrayList.add(str);
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return ExtensionInvoker.InvokeResult.proceed();
        }
        int requestCode = ((TmcNativePermissionRequestProxy) TmcProxy.get(TmcNativePermissionRequestProxy.class)).getRequestCode();
        ((TmcNativePermissionRequestProxy) TmcProxy.get(TmcNativePermissionRequestProxy.class)).addPermRequestCallback(requestCode, new IPermissionRequestCallback() { // from class: com.cloud.tmc.integration.invoke.NativePermissionExtensionInvoker.1
            @Override // com.cloud.tmc.integration.permission.IPermissionRequestCallback
            public void onRequestPermissionResult(int i11, String[] strArr, int[] iArr) {
                if (strArr == null || iArr == null || strArr.length != iArr.length || arrayList.size() != strArr.length) {
                    return;
                }
                for (int i12 = 0; i12 < strArr.length; i12++) {
                    if (iArr[i12] != 0) {
                        NativePermissionExtensionInvoker.this.mResponseHelper.sendNoRigHtToInvoke();
                        return;
                    }
                }
                NativePermissionExtensionInvoker nativePermissionExtensionInvoker = NativePermissionExtensionInvoker.this;
                nativePermissionExtensionInvoker.proceedSafe(nativePermissionExtensionInvoker.targetExtensions, obj, method, objArr);
            }
        });
        ActivityCompat.g(activity, (String[]) arrayList.toArray(new String[arrayList.size()]), requestCode);
        return ExtensionInvoker.InvokeResult.pending();
    }
}
