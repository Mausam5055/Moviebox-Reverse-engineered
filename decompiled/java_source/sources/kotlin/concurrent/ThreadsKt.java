package kotlin.concurrent;

import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aQ\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"", "start", "isDaemon", "Ljava/lang/ClassLoader;", "contextClassLoader", "", "name", "", TrackingKey.PRIORITY, "Lkotlin/Function0;", "", "block", "Ljava/lang/Thread;", "a", "(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Thread;", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class ThreadsKt {
    public static final Thread a(boolean z10, boolean z11, ClassLoader classLoader, String str, int i11, final Function0 block) {
        Intrinsics.h(block, "block");
        Thread thread = new Thread() { // from class: kotlin.concurrent.ThreadsKt$thread$thread$1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                block.invoke();
            }
        };
        if (z11) {
            thread.setDaemon(true);
        }
        if (i11 > 0) {
            thread.setPriority(i11);
        }
        if (str != null) {
            thread.setName(str);
        }
        if (classLoader != null) {
            thread.setContextClassLoader(classLoader);
        }
        if (z10) {
            thread.start();
        }
        return thread;
    }

    public static /* synthetic */ Thread b(boolean z10, boolean z11, ClassLoader classLoader, String str, int i11, Function0 function0, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = true;
        }
        boolean z12 = z10;
        if ((i12 & 2) != 0) {
            z11 = false;
        }
        boolean z13 = z11;
        ClassLoader classLoader2 = (i12 & 4) != 0 ? null : classLoader;
        String str2 = (i12 & 8) != 0 ? null : str;
        if ((i12 & 16) != 0) {
            i11 = -1;
        }
        return a(z12, z13, classLoader2, str2, i11, function0);
    }
}
