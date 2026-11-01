package com.pgl.ssdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class b1 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected WeakReference<a> f40085a;

    public interface a {
        void a(Message message);
    }

    public b1(Looper looper, a aVar) {
        super(looper);
        if (aVar != null) {
            this.f40085a = new WeakReference<>(aVar);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar;
        WeakReference<a> weakReference = this.f40085a;
        if (weakReference == null || (aVar = weakReference.get()) == null || message == null) {
            return;
        }
        aVar.a(message);
    }
}
