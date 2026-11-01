package com.therouter.inject;

import a.TheRouterServiceProvideInjecter;
import android.content.Context;
import androidx.annotation.Keep;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouterThreadPool;
import com.therouter.history.HistoryRecorder;
import com.therouter.history.f;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J=\u0010\t\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00052\u0016\u0010\b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0007\"\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0010\u0010\u000fJ\u0019\u0010\u0011\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0004\b\u0011\u0010\u000fJ\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0007¢\u0006\u0004\b\u0016\u0010\u0015J>\u0010\u0018\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00042\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00052\u0016\u0010\b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0007\"\u0004\u0018\u00010\u0001H\u0086\u0002¢\u0006\u0004\b\u0018\u0010\nR\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00120\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00120\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/therouter/inject/RouterInject;", "", "<init>", "()V", "T", "Ljava/lang/Class;", "tClass", "", "params", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;", "Landroid/content/Context;", "context", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/content/Context;)V", "g", "f", "Lcom/therouter/inject/b;", "factory", "addInterceptor", "(Lcom/therouter/inject/b;)V", "privateAddInterceptor", "clazz", "e", "Ljava/util/concurrent/CopyOnWriteArrayList;", "a", "Ljava/util/concurrent/CopyOnWriteArrayList;", "mInterceptors", "mCustomInterceptors", "router_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RouterInject {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final CopyOnWriteArrayList mInterceptors = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final CopyOnWriteArrayList mCustomInterceptors = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(RouterInject this$0, Context context) {
        Intrinsics.h(this$0, "this$0");
        this$0.g(context);
    }

    private final Object d(Class tClass, Object... params) {
        Iterator it = this.mCustomInterceptors.iterator();
        Object objInterception = null;
        while (it.hasNext()) {
            objInterception = ((b) it.next()).interception(tClass, Arrays.copyOf(params, params.length));
            if (objInterception != null) {
                RouterInjectKt.c("mCustomInterceptors::===" + tClass + "===" + objInterception.getClass().getSimpleName() + objInterception.hashCode(), null, 2, null);
                return objInterception;
            }
        }
        Iterator it2 = this.mInterceptors.iterator();
        while (it2.hasNext()) {
            objInterception = ((b) it2.next()).interception(tClass, Arrays.copyOf(params, params.length));
            if (objInterception != null) {
                RouterInjectKt.c("interception::===" + tClass + "===" + objInterception.getClass().getSimpleName() + objInterception.hashCode(), null, 2, null);
                break;
            }
        }
        return objInterception;
    }

    @Keep
    public final void addInterceptor(b factory) {
        Intrinsics.h(factory, "factory");
        this.mCustomInterceptors.add(factory);
    }

    public final void b(final Context context) {
        TheRouterThreadPool.f(new Runnable() { // from class: com.therouter.inject.c
            @Override // java.lang.Runnable
            public final void run() {
                RouterInject.c(this.f40754a, context);
            }
        });
    }

    public final Object e(Class clazz, Object... params) {
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(params, "params");
        String str = "";
        for (Object obj : params) {
            str = ((Object) str) + obj + ", ";
        }
        HistoryRecorder.c(new f(clazz + ".provider(" + ((Object) str) + ")"));
        Object objB = RouterInjectKt.f40751a.b(clazz, Arrays.copyOf(params, params.length));
        if (objB == null && (objB = d(clazz, Arrays.copyOf(params, params.length))) != null) {
            RouterInjectKt.f40751a.c(clazz, objB, Arrays.copyOf(params, params.length));
        }
        return objB;
    }

    public final void f(Context context) {
        DebugOnlyKt.a(context);
        this.mInterceptors.addAll(DebugOnlyKt.d());
    }

    public final void g(Context context) {
        TheRouterServiceProvideInjecter.d();
        if (TheRouterServiceProvideInjecter.asm) {
            return;
        }
        f(context);
    }

    @Keep
    public final void privateAddInterceptor(b factory) {
        Intrinsics.h(factory, "factory");
        this.mInterceptors.add(factory);
    }
}
