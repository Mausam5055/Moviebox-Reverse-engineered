package com.tencent.tinker.loader.hotplug.interceptor;

import android.os.Handler;
import android.os.Message;
import com.tencent.tinker.loader.shareutil.ShareReflectUtil;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public class HandlerMessageInterceptor extends Interceptor<Handler.Callback> {
    private static Field sMCallbackField;
    private final MessageHandler mMessageHandler;
    private final Handler mTarget;

    private static class CallbackWrapper implements Handler.Callback, Interceptor.ITinkerHotplugProxy {
        private volatile boolean mIsInHandleMethod = false;
        private final MessageHandler mMessageHandler;
        private final Handler.Callback mOrigCallback;

        CallbackWrapper(MessageHandler messageHandler, Handler.Callback callback) {
            this.mMessageHandler = messageHandler;
            this.mOrigCallback = callback;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (this.mIsInHandleMethod) {
                return false;
            }
            boolean zHandleMessage = true;
            this.mIsInHandleMethod = true;
            if (!this.mMessageHandler.handleMessage(message)) {
                Handler.Callback callback = this.mOrigCallback;
                zHandleMessage = callback != null ? callback.handleMessage(message) : false;
            }
            this.mIsInHandleMethod = false;
            return zHandleMessage;
        }
    }

    public interface MessageHandler {
        boolean handleMessage(Message message);
    }

    static {
        synchronized (HandlerMessageInterceptor.class) {
            if (sMCallbackField == null) {
                try {
                    sMCallbackField = ShareReflectUtil.findField((Class<?>) Handler.class, "mCallback");
                } catch (Throwable unused) {
                }
            }
        }
    }

    public HandlerMessageInterceptor(Handler handler, MessageHandler messageHandler) {
        this.mTarget = handler;
        this.mMessageHandler = messageHandler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.tinker.loader.hotplug.interceptor.Interceptor
    public Handler.Callback decorate(Handler.Callback callback) throws Throwable {
        return (callback == null || !Interceptor.ITinkerHotplugProxy.class.isAssignableFrom(callback.getClass())) ? new CallbackWrapper(this.mMessageHandler, callback) : callback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.tinker.loader.hotplug.interceptor.Interceptor
    public Handler.Callback fetchTarget() throws Throwable {
        return (Handler.Callback) sMCallbackField.get(this.mTarget);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.tinker.loader.hotplug.interceptor.Interceptor
    public void inject(Handler.Callback callback) throws Throwable {
        sMCallbackField.set(this.mTarget, callback);
    }
}
