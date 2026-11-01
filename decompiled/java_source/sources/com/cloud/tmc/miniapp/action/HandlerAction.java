package com.cloud.tmc.miniapp.action;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface HandlerAction {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Handler HANDLER = new Handler(Looper.getMainLooper());

        private Companion() {
        }

        public final Handler getHANDLER() {
            return HANDLER;
        }
    }

    public static final class DefaultImpls {
        public static Handler getHandler(HandlerAction handlerAction) {
            return HandlerAction.Companion.getHANDLER();
        }

        public static boolean post(HandlerAction handlerAction, Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            return handlerAction.postDelayed(runnable, 0L);
        }

        public static boolean postAtTime(HandlerAction handlerAction, Runnable runnable, long j11) {
            Intrinsics.h(runnable, "runnable");
            return HandlerAction.Companion.getHANDLER().postAtTime(runnable, handlerAction, j11);
        }

        public static boolean postDelayed(HandlerAction handlerAction, Object obj, long j11, Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            Handler handler = HandlerAction.Companion.getHANDLER();
            Object obj2 = handlerAction;
            if (obj != null) {
                obj2 = obj;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (j11 < 0) {
                j11 = 0;
            }
            return handler.postAtTime(runnable, obj2, jUptimeMillis + j11);
        }

        public static boolean postDelayed(HandlerAction handlerAction, Runnable runnable, long j11) {
            Intrinsics.h(runnable, "runnable");
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (j11 < 0) {
                j11 = 0;
            }
            return handlerAction.postAtTime(runnable, jUptimeMillis + j11);
        }

        public static void removeCallbacks(HandlerAction handlerAction) {
            HandlerAction.Companion.getHANDLER().removeCallbacksAndMessages(handlerAction);
        }

        public static void removeCallbacks(HandlerAction handlerAction, Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            HandlerAction.Companion.getHANDLER().removeCallbacks(runnable);
        }

        public static void removeCallbacksAndMessages(HandlerAction handlerAction, Object obj) {
            Handler handler = HandlerAction.Companion.getHANDLER();
            Object obj2 = handlerAction;
            if (obj != null) {
                obj2 = obj;
            }
            handler.removeCallbacksAndMessages(obj2);
        }
    }

    Handler getHandler();

    boolean post(Runnable runnable);

    boolean postAtTime(Runnable runnable, long j11);

    boolean postDelayed(Object obj, long j11, Runnable runnable);

    boolean postDelayed(Runnable runnable, long j11);

    void removeCallbacks();

    void removeCallbacks(Runnable runnable);

    void removeCallbacksAndMessages(Object obj);
}
