package com.cloud.tmc.integration.invoke.extension;

import com.cloud.tmc.integration.invoke.AwareExtensionInvoker;
import com.cloud.tmc.integration.invoke.ExtensionInvoker;
import com.cloud.tmc.integration.invoke.ExtensionInvokerFactory;
import com.cloud.tmc.integration.invoke.ResolveExtensionInvoker;
import com.cloud.tmc.integration.invoke.action.Action;
import com.cloud.tmc.integration.invoke.action.ActionCallback;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.resolver.ResultResolver;
import com.cloud.tmc.kernel.utils.ReflectUtils;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class ExtensionPoint<T extends Extension> {
    private static Map<Class<? extends Extension>, Extension> sDefaultMap = new ConcurrentHashMap();
    private static ExtensionManager sExtensionManager;
    private Object mDefaultValue;
    private Class<T> mExtensionClazz;
    private ExtensionManager mExtensionManager;
    private Node mNode;
    private boolean mNullable;
    private ResultResolver mResultResolver;
    private ExecutorType mCurPolicy = ExecutorType.SYNC;
    private Map<Action, ExecutorType> mActionPolicyHashMap = new HashMap();
    private InvocationHandler invocationHandlerDoNothing = new InvocationHandler() { // from class: com.cloud.tmc.integration.invoke.extension.ExtensionPoint.1
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2 = ExtensionPoint.this.mDefaultValue;
            return obj2 == null ? ReflectUtils.getDefaultValue(method.getReturnType()) : obj2;
        }
    };

    private ExtensionPoint(Class<T> cls) {
        this.mExtensionClazz = cls;
    }

    public static <T extends Extension> ExtensionPoint<T> as(Class<T> cls) {
        return new ExtensionPoint<>(cls);
    }

    public static void bind(ExtensionManager extensionManager) {
        sExtensionManager = extensionManager;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private T getDefaultImpl() {
        try {
            if (sDefaultMap.containsKey(this.mExtensionClazz)) {
                return (T) sDefaultMap.get(this.mExtensionClazz);
            }
            DefaultImpl defaultImpl = (DefaultImpl) this.mExtensionClazz.getAnnotation(DefaultImpl.class);
            if (defaultImpl == null) {
                return null;
            }
            String strValue = defaultImpl.value();
            TmcLogger.d("TmcKernel", "newInstance for " + this.mExtensionClazz + " to defaultImpl: " + strValue);
            T t11 = (T) Class.forName(strValue).newInstance();
            sDefaultMap.put((Class<? extends Extension>) this.mExtensionClazz, t11);
            return t11;
        } catch (Throwable th2) {
            TmcLogger.e("TmcKernel", "getDefaultImpl exception!", th2);
            return null;
        }
    }

    public ExtensionPoint<T> actionOn(ExecutorType executorType) {
        this.mCurPolicy = executorType;
        return this;
    }

    public T create() {
        Extension defaultImpl;
        InvocationHandler invocationHandler;
        ExtensionManager extensionManager = this.mExtensionManager;
        if (extensionManager == null) {
            extensionManager = sExtensionManager;
        }
        List<Extension> extensionByPoint = extensionManager.getExtensionByPoint(this.mNode, this.mExtensionClazz);
        if ((extensionByPoint == null || extensionByPoint.size() == 0) && (defaultImpl = getDefaultImpl()) != null) {
            extensionByPoint = Collections.singletonList(defaultImpl);
        }
        if (extensionByPoint == null || extensionByPoint.isEmpty()) {
            TmcLogger.w("TmcKernel", "cannot find extension for " + this.mExtensionClazz);
            if (this.mNullable) {
                return null;
            }
            invocationHandler = this.invocationHandlerDoNothing;
        } else {
            ExtensionInvoker extensionInvokerCreateScheduleExtensionInvoker = ((ExtensionInvokerFactory) TmcProxy.get(ExtensionInvokerFactory.class)).createScheduleExtensionInvoker(new ResolveExtensionInvoker(this.mResultResolver, new AwareExtensionInvoker(this.mNode, new ActionCallback(this.mActionPolicyHashMap, this.mDefaultValue))));
            extensionInvokerCreateScheduleExtensionInvoker.attacheTargetExtensions(extensionByPoint);
            invocationHandler = extensionInvokerCreateScheduleExtensionInvoker;
        }
        return (T) Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{this.mExtensionClazz}, invocationHandler);
    }

    public ExtensionPoint<T> defaultValue(Object obj) {
        this.mDefaultValue = obj;
        return this;
    }

    public ExtensionPoint<T> extensionManager(ExtensionManager extensionManager) {
        this.mExtensionManager = extensionManager;
        return this;
    }

    public ExtensionPoint<T> node(Node node) {
        this.mNode = node;
        return this;
    }

    public ExtensionPoint<T> nullable() {
        this.mNullable = true;
        return this;
    }

    public ExtensionPoint<T> resolve(ResultResolver resultResolver) {
        this.mResultResolver = resultResolver;
        return this;
    }
}
