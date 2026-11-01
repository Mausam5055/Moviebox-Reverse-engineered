package com.transsion.baselib.net;

import android.os.Build;
import android.os.Handler;
import android.os.Message;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes5.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f43327a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicBoolean f43328b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final AtomicBoolean f43329c = new AtomicBoolean(true);

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(Ref.ObjectRef objectRef, Message msg) {
        Intrinsics.h(msg, "msg");
        lg.a.C0828a.r(lg.a.f68839a, "hook", new String[]{"msg= " + msg.what}, false, 4, null);
        AtomicBoolean atomicBoolean = f43328b;
        if (!atomicBoolean.get()) {
            atomicBoolean.set(true);
            int i11 = msg.what;
            int i12 = Build.VERSION.SDK_INT;
            boolean z10 = i12 >= 35 && i11 == 164;
            boolean z11 = i12 >= 28 && i11 == 159;
            boolean z12 = i12 < 28 && i11 == 100;
            if (z11 || z12 || z10) {
                f43329c.set(true);
            } else {
                f43329c.set(false);
            }
        }
        Handler.Callback callback = (Handler.Callback) objectRef.element;
        if (callback != null) {
            return callback.handleMessage(msg);
        }
        return false;
    }

    public final AtomicBoolean b() {
        return f43329c;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [T, android.os.Handler$Callback] */
    public final void c() {
        try {
            Class<?> cls = Class.forName(ProcessUtils.ACTIVITY_THREAD);
            Field declaredField = cls.getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            Field declaredField2 = cls.getDeclaredField("mH");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            Field declaredField3 = obj2.getClass().getSuperclass().getDeclaredField("mCallback");
            declaredField3.setAccessible(true);
            Object obj3 = declaredField3.get(obj2);
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            if (obj3 != null) {
                objectRef.element = (Handler.Callback) obj3;
            }
            declaredField3.set(obj2, new Handler.Callback() { // from class: com.transsion.baselib.net.e
                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    return f.d(objectRef, message);
                }
            });
        } catch (Exception e11) {
            String message = e11.getMessage();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("exception= ");
            sb2.append(message);
        }
    }
}
