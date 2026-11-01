package com.cloud.tmc.integration.invoke;

import com.cloud.tmc.kernel.extension.Extension;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface ExtensionCallback<T> extends ExtensionInvoker.InvokeCallback<T> {
    void onException(Extension extension, Throwable th2);

    void onInterrupt(Extension extension);

    void onProgress(Extension extension, T t11);

    void onStart(List<Extension> list);
}
