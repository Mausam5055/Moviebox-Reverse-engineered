package com.cloud.tmc.integration.invoke;

import com.cloud.tmc.kernel.datastructure.immutable.ImmutableList;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.utils.ReflectUtils;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ExtensionInvoker implements InvocationHandler {
    private static final String TAG = "TmcKernel:ExtensionInvoker";
    protected final InvokeCallback invokeCallback;
    private AtomicBoolean isOwner;
    protected final ExtensionInvoker nextInvoker;
    protected ImmutableList<Extension> targetExtensions;
    protected final Node targetNode;

    public interface InvokeCallback<T> {
        void onComplete(T t11);

        void onFail(Throwable th2);
    }

    public static class InvokeResult<T> {
        private final boolean isPending;
        private T result;

        private InvokeResult(boolean z10, T t11) {
            this.isPending = z10;
            this.result = t11;
        }

        public static InvokeResult decide(Object obj) {
            return new InvokeResult(false, obj);
        }

        public static InvokeResult pending() {
            return new InvokeResult(true, null);
        }

        public static InvokeResult proceed() {
            return null;
        }
    }

    public ExtensionInvoker(ExtensionInvoker extensionInvoker) {
        this.isOwner = new AtomicBoolean(false);
        this.nextInvoker = extensionInvoker;
        if (extensionInvoker != null) {
            this.invokeCallback = extensionInvoker.invokeCallback;
            this.targetNode = extensionInvoker.targetNode;
        } else {
            this.invokeCallback = null;
            this.targetNode = null;
        }
    }

    public ExtensionInvoker(Node node, InvokeCallback invokeCallback) {
        this.isOwner = new AtomicBoolean(false);
        this.targetNode = node;
        this.invokeCallback = invokeCallback;
        this.nextInvoker = null;
    }

    public void attacheTargetExtensions(Extension extension) {
        this.targetExtensions = new ImmutableList<>(extension);
        this.isOwner.set(true);
    }

    public void attacheTargetExtensions(List<Extension> list) {
        this.targetExtensions = new ImmutableList<>((List) list);
        this.isOwner.set(true);
    }

    final boolean hasNext() {
        return this.nextInvoker != null;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        InvokeCallback invokeCallback;
        InvokeCallback invokeCallback2;
        try {
            InvokeResult invokeResultOnInvoke = onInvoke(obj, method, objArr);
            if (invokeResultOnInvoke == null) {
                return proceed(this.targetExtensions, obj, method, objArr);
            }
            if (invokeResultOnInvoke.isPending) {
                if (invokeResultOnInvoke.result == null) {
                    invokeResultOnInvoke.result = ReflectUtils.getDefaultValue(method.getReturnType());
                }
            } else if (this.isOwner.get() && (invokeCallback2 = this.invokeCallback) != null) {
                invokeCallback2.onComplete(invokeResultOnInvoke.result);
            }
            return invokeResultOnInvoke.result;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Java exception happened!\nExtension: " + this.targetExtensions.get(0) + "\nMethod: " + method, th2);
            if (this.isOwner.get() && (invokeCallback = this.invokeCallback) != null) {
                invokeCallback.onFail(th2);
            }
            throw th2;
        }
    }

    protected abstract InvokeResult onInvoke(Object obj, Method method, Object[] objArr) throws Throwable;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object] */
    protected final Object proceed(ImmutableList<Extension> immutableList, Object obj, Method method, Object[] objArr) throws InvokeException {
        ImmutableList<Extension> immutableList2 = immutableList;
        if (!hasNext()) {
            try {
                if (immutableList.size() != 1) {
                    throw new IllegalStateException("only single extension is accepted in last invoker");
                }
                try {
                    try {
                        immutableList = method.invoke(immutableList.get(0), objArr);
                        return immutableList;
                    } catch (Throwable th2) {
                        throw new InvokeException(th2);
                    }
                } catch (InvocationTargetException e11) {
                    throw new InvokeException(e11.getCause());
                }
            } catch (Throwable th3) {
                TmcLogger.e(TAG, th3);
                immutableList2 = immutableList;
            }
        }
        if (this.isOwner.compareAndSet(true, false)) {
            this.nextInvoker.isOwner.set(true);
        }
        try {
            ExtensionInvoker extensionInvoker = this.nextInvoker;
            extensionInvoker.targetExtensions = immutableList2;
            return extensionInvoker.invoke(obj, method, objArr);
        } catch (InvokeException e12) {
            throw e12;
        } catch (Throwable th4) {
            throw new InvokeException(th4);
        }
    }

    protected final Object proceedSafe(ImmutableList<Extension> immutableList, Object obj, Method method, Object[] objArr) {
        try {
            return proceed(immutableList, obj, method, objArr);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "extension invoke exception!", th2);
            return ReflectUtils.getDefaultValue(method.getReturnType());
        }
    }
}
