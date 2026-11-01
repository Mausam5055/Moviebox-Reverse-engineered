package com.cloud.tmc.integration.invoke;

import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.executor.IExecutorService;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class ScheduleExtensionInvoker extends ExtensionInvoker {
    private static final String TAG = "TmcKernel:ExtensionInvoker:Schedule";
    private IExecutorService mIExecutorService;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.invoke.ScheduleExtensionInvoker$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType;

        static {
            int[] iArr = new int[ExecutorType.values().length];
            $SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType = iArr;
            try {
                iArr[ExecutorType.SYNC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType[ExecutorType.UI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType[ExecutorType.URGENT_DISPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public ScheduleExtensionInvoker(ExtensionInvoker extensionInvoker) {
        super(extensionInvoker);
        this.mIExecutorService = (IExecutorService) TmcProxy.get(IExecutorService.class);
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionInvoker
    protected ExtensionInvoker.InvokeResult onInvoke(final Object obj, final Method method, final Object[] objArr) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ThreadType threadType = (ThreadType) method.getAnnotation(ThreadType.class);
        ExecutorType executorTypeValue = threadType != null ? threadType.value() : ExecutorType.SYNC;
        int i11 = AnonymousClass3.$SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType[executorTypeValue.ordinal()];
        if (i11 == 1) {
            TmcLogger.debug(TAG, "method " + method + " cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
            return ExtensionInvoker.InvokeResult.proceed();
        }
        if (i11 == 2) {
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.invoke.ScheduleExtensionInvoker.1
                @Override // java.lang.Runnable
                public void run() {
                    TmcLogger.debug(ScheduleExtensionInvoker.TAG, "method " + method + " cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
                    ScheduleExtensionInvoker scheduleExtensionInvoker = ScheduleExtensionInvoker.this;
                    scheduleExtensionInvoker.proceedSafe(scheduleExtensionInvoker.targetExtensions, obj, method, objArr);
                }
            });
            return ExtensionInvoker.InvokeResult.pending();
        }
        if (i11 == 3) {
            if ((obj.getClass().getInterfaces().length > 0 ? obj.getClass().getInterfaces()[0] : null) == null) {
                TmcLogger.w(TAG, "extension " + obj + " want to execute on URGENT_DISPLAY but not nebulax class!");
                executorTypeValue = ExecutorType.URGENT;
            }
        }
        this.mIExecutorService.getExecutor(executorTypeValue).execute(new Runnable() { // from class: com.cloud.tmc.integration.invoke.ScheduleExtensionInvoker.2
            @Override // java.lang.Runnable
            public void run() {
                TmcLogger.debug(ScheduleExtensionInvoker.TAG, "method " + method + " cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
                ScheduleExtensionInvoker scheduleExtensionInvoker = ScheduleExtensionInvoker.this;
                scheduleExtensionInvoker.proceedSafe(scheduleExtensionInvoker.targetExtensions, obj, method, objArr);
            }
        });
        return ExtensionInvoker.InvokeResult.pending();
    }
}
