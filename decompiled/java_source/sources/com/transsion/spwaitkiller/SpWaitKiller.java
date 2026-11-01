package com.transsion.spwaitkiller;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u00152\u00020\u0001:\u0003\u0015\u0016\u0017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\u0014\u001a\u00020\u0013H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/transsion/spwaitkiller/SpWaitKiller;", "", "builder", "Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;", "<init>", "(Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;)V", "hiddenApiExempter", "Lcom/transsion/spwaitkiller/HiddenApiExempter;", "working", "", "neverWaitingFinishQueue", "neverProcessWorkOnMainThread", "unExpectExceptionCatcher", "Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;", "targetSdkVersion", "", "mContext", "Landroid/content/Context;", "work", "", "realWork", "Companion", "QueueWorksWorkFieldHooker", "Builder", "SpWaitKiller_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SpWaitKiller {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private HiddenApiExempter hiddenApiExempter;
    private Context mContext;
    private boolean neverProcessWorkOnMainThread;
    private boolean neverWaitingFinishQueue;
    private int targetSdkVersion;
    private UnExpectExceptionCatcher unExpectExceptionCatcher;
    private boolean working;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u001e\u001a\u00020\u001fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "setContext", "neverWaitingFinishQueue", "", "getNeverWaitingFinishQueue", "()Z", "setNeverWaitingFinishQueue", "(Z)V", "neverProcessWorkOnMainThread", "getNeverProcessWorkOnMainThread", "setNeverProcessWorkOnMainThread", "unExpectExceptionCatcher", "Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;", "getUnExpectExceptionCatcher", "()Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;", "setUnExpectExceptionCatcher", "(Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;)V", "hiddenApiExempter", "Lcom/transsion/spwaitkiller/HiddenApiExempter;", "getHiddenApiExempter", "()Lcom/transsion/spwaitkiller/HiddenApiExempter;", "setHiddenApiExempter", "(Lcom/transsion/spwaitkiller/HiddenApiExempter;)V", "build", "Lcom/transsion/spwaitkiller/SpWaitKiller;", "SpWaitKiller_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Builder {
        private Context context;
        private HiddenApiExempter hiddenApiExempter;
        private boolean neverProcessWorkOnMainThread;
        private boolean neverWaitingFinishQueue;
        private UnExpectExceptionCatcher unExpectExceptionCatcher;

        public Builder(Context context) {
            Intrinsics.h(context, "context");
            this.context = context;
            this.neverWaitingFinishQueue = true;
            this.neverProcessWorkOnMainThread = true;
        }

        public final SpWaitKiller build() {
            return new SpWaitKiller(this);
        }

        public final Context getContext() {
            return this.context;
        }

        public final HiddenApiExempter getHiddenApiExempter() {
            return this.hiddenApiExempter;
        }

        public final boolean getNeverProcessWorkOnMainThread() {
            return this.neverProcessWorkOnMainThread;
        }

        public final boolean getNeverWaitingFinishQueue() {
            return this.neverWaitingFinishQueue;
        }

        public final UnExpectExceptionCatcher getUnExpectExceptionCatcher() {
            return this.unExpectExceptionCatcher;
        }

        public final Builder hiddenApiExempter(HiddenApiExempter hiddenApiExempter) {
            this.hiddenApiExempter = hiddenApiExempter;
            return this;
        }

        public final Builder neverProcessWorkOnMainThread(boolean neverProcessWorkOnMainThread) {
            this.neverProcessWorkOnMainThread = neverProcessWorkOnMainThread;
            return this;
        }

        public final Builder neverWaitingFinishQueue(boolean neverWaitingFinishQueue) {
            this.neverWaitingFinishQueue = neverWaitingFinishQueue;
            return this;
        }

        public final void setContext(Context context) {
            Intrinsics.h(context, "<set-?>");
            this.context = context;
        }

        public final void setHiddenApiExempter(HiddenApiExempter hiddenApiExempter) {
            this.hiddenApiExempter = hiddenApiExempter;
        }

        public final void setNeverProcessWorkOnMainThread(boolean z10) {
            this.neverProcessWorkOnMainThread = z10;
        }

        public final void setNeverWaitingFinishQueue(boolean z10) {
            this.neverWaitingFinishQueue = z10;
        }

        public final void setUnExpectExceptionCatcher(UnExpectExceptionCatcher unExpectExceptionCatcher) {
            this.unExpectExceptionCatcher = unExpectExceptionCatcher;
        }

        public final Builder unExpectExceptionCatcher(UnExpectExceptionCatcher unExpectExceptionCatcher) {
            this.unExpectExceptionCatcher = unExpectExceptionCatcher;
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;", "", "<init>", "()V", "builder", "Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;", "context", "Landroid/content/Context;", "SpWaitKiller_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Builder builder(Context context) {
            Intrinsics.h(context, "context");
            return new Builder(context);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u000e\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;", "Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;", "<init>", "()V", "reflectionFailed", "", "sLock", "", "sWorkField", "Ljava/lang/reflect/Field;", "looper", "Landroid/os/Looper;", "proxyWork", "", "reProxySWork", "SpWaitKiller_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class QueueWorksWorkFieldHooker implements ProxySWork.AboveAndroid12Processor {
        private Looper looper;
        private boolean reflectionFailed;
        private Object sLock;
        private Field sWorkField;

        @SuppressLint({"SoonBlockedPrivateApi"})
        public QueueWorksWorkFieldHooker() {
            try {
                Class<?> cls = Class.forName("android.app.QueuedWork");
                Method declaredMethod = cls.getDeclaredMethod("getHandler", null);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(null, null);
                Intrinsics.f(objInvoke, "null cannot be cast to non-null type android.os.Handler");
                this.looper = ((Handler) objInvoke).getLooper();
                Field declaredField = cls.getDeclaredField("sWork");
                this.sWorkField = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                }
                Field declaredField2 = cls.getDeclaredField("sLock");
                declaredField2.setAccessible(true);
                this.sLock = declaredField2.get(null);
            } catch (ClassNotFoundException unused) {
                this.reflectionFailed = true;
            } catch (IllegalAccessException unused2) {
                this.reflectionFailed = true;
            } catch (NoSuchFieldException unused3) {
                this.reflectionFailed = true;
            } catch (NoSuchMethodException unused4) {
                this.reflectionFailed = true;
            } catch (InvocationTargetException unused5) {
                this.reflectionFailed = true;
            }
        }

        public final void proxyWork() {
            Object obj;
            Field field;
            Looper looper;
            if (this.reflectionFailed || (obj = this.sLock) == null || (field = this.sWorkField) == null || (looper = this.looper) == null) {
                return;
            }
            synchronized (obj) {
                try {
                    Object obj2 = field.get(null);
                    Intrinsics.f(obj2, "null cannot be cast to non-null type java.util.LinkedList<*>");
                    field.set(null, new ProxySWork((LinkedList) obj2, looper, this));
                } catch (IllegalAccessException unused) {
                    this.reflectionFailed = true;
                }
                Unit unit = Unit.f67061a;
            }
        }

        @Override // com.transsion.spwaitkiller.ProxySWork.AboveAndroid12Processor
        public void reProxySWork() {
            proxyWork();
        }
    }

    public SpWaitKiller(Builder builder) {
        ApplicationInfo applicationInfo;
        Intrinsics.h(builder, "builder");
        if (builder.getHiddenApiExempter() == null) {
            builder.setHiddenApiExempter(new DefaultHiddenApiExempter());
        }
        if (builder.getUnExpectExceptionCatcher() == null) {
            builder.setUnExpectExceptionCatcher(new UnExpectExceptionCatcher() { // from class: com.transsion.spwaitkiller.SpWaitKiller.1
                @Override // com.transsion.spwaitkiller.UnExpectExceptionCatcher
                public void onException(Throwable ex2) {
                    Log.e("SpWaitKillerException", StringsKt.n("catch Exception " + Log.getStackTraceString(ex2)));
                }
            });
        }
        this.hiddenApiExempter = builder.getHiddenApiExempter();
        this.neverProcessWorkOnMainThread = builder.getNeverProcessWorkOnMainThread();
        this.neverWaitingFinishQueue = builder.getNeverWaitingFinishQueue();
        this.mContext = builder.getContext();
        this.unExpectExceptionCatcher = builder.getUnExpectExceptionCatcher();
        Context context = this.mContext;
        this.targetSdkVersion = (context == null || (applicationInfo = context.getApplicationInfo()) == null) ? 0 : applicationInfo.targetSdkVersion;
    }

    private final void realWork() throws Exception {
        HiddenApiExempter hiddenApiExempter;
        try {
            Class<?> cls = Class.forName("android.app.QueuedWork");
            if (this.neverWaitingFinishQueue) {
                if (Build.VERSION.SDK_INT < 26) {
                    Field declaredField = cls.getDeclaredField("sPendingWorkFinishers");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(null);
                    Intrinsics.f(obj, "null cannot be cast to non-null type java.util.concurrent.ConcurrentLinkedQueue<*>");
                    declaredField.set(null, new ProxyFinishersLinkedList((ConcurrentLinkedQueue) obj));
                } else {
                    Field declaredField2 = cls.getDeclaredField("sFinishers");
                    declaredField2.setAccessible(true);
                    Object obj2 = declaredField2.get(null);
                    Intrinsics.f(obj2, "null cannot be cast to non-null type java.util.LinkedList<*>");
                    declaredField2.set(null, new ProxyFinishersList((LinkedList) obj2));
                }
            }
            if (!this.neverProcessWorkOnMainThread || Build.VERSION.SDK_INT < 26) {
                return;
            }
            if (this.targetSdkVersion >= 30 && (hiddenApiExempter = this.hiddenApiExempter) != null) {
                hiddenApiExempter.exempt(this.mContext);
            }
            new QueueWorksWorkFieldHooker().proxyWork();
        } catch (Exception unused) {
        }
    }

    public final void work() {
        try {
            if (this.working) {
                return;
            }
            realWork();
            this.working = true;
        } catch (Exception e11) {
            UnExpectExceptionCatcher unExpectExceptionCatcher = this.unExpectExceptionCatcher;
            if (unExpectExceptionCatcher != null) {
                unExpectExceptionCatcher.onException(e11);
            }
        }
    }
}
