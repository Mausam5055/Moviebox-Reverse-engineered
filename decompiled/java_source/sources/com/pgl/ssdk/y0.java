package com.pgl.ssdk;

import android.os.HandlerThread;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class y0 extends b1 implements z0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HandlerThread f40237b;

    y0(HandlerThread handlerThread, b1.a aVar) {
        super(handlerThread.getLooper(), aVar);
        this.f40237b = handlerThread;
    }

    public void a(b1.a aVar) {
        this.f40085a = new WeakReference<>(aVar);
    }

    public void a(String str) {
        HandlerThread handlerThread = this.f40237b;
        if (handlerThread != null) {
            handlerThread.setName(str);
        }
    }
}
