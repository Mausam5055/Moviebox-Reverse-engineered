package com.cloud.h5update.download;

import android.content.Context;
import com.cloud.h5update.bean.DownloadEntity;
import com.cloud.h5update.utils.l;
import java.io.File;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadManager {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f21268g = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Lazy f21269h = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<DownloadManager>() { // from class: com.cloud.h5update.download.DownloadManager$Companion$instance$2
        @Override // kotlin.jvm.functions.Function0
        public final DownloadManager invoke() {
            return new DownloadManager(null);
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f21270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinkedBlockingDeque f21271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ThreadPoolExecutor f21272c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map f21273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private OkHttpClient f21274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f21275f;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadManager a() {
            return (DownloadManager) DownloadManager.f21269h.getValue();
        }
    }

    private DownloadManager() {
        this.f21270a = 1;
    }

    public /* synthetic */ DownloadManager(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ void c(DownloadManager downloadManager, DownloadTask downloadTask, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        downloadManager.b(downloadTask, z10);
    }

    private final int e() {
        return (Runtime.getRuntime().availableProcessors() * 2) + 1;
    }

    private final OkHttpClient g() {
        OkHttpClient okHttpClientBuild = new OkHttpClient.Builder().connectTimeout(15L, TimeUnit.SECONDS).build();
        Intrinsics.g(okHttpClientBuild, "Builder().connectTimeout…TimeUnit.SECONDS).build()");
        return okHttpClientBuild;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0005 A[PHI: r8
  0x0005: PHI (r8v8 int) = (r8v1 int), (r8v2 int) binds: [B:3:0x0003, B:6:0x0009] A[DONT_GENERATE, DONT_INLINE]] */
    private final void j(Context context, int i11, OkHttpClient okHttpClient) {
        this.f21275f = context;
        int i12 = 1;
        if (i11 < 1) {
            i11 = i12;
        } else {
            i12 = 15;
            if (i11 > 15) {
                i11 = i12;
            }
        }
        this.f21270a = i11;
        int i13 = this.f21270a;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i13, i13, 20L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque());
        this.f21272c = threadPoolExecutor;
        Intrinsics.e(threadPoolExecutor);
        BlockingQueue<Runnable> queue = threadPoolExecutor.getQueue();
        if (queue == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.util.concurrent.LinkedBlockingDeque<java.lang.Runnable>");
        }
        this.f21271b = (LinkedBlockingDeque) queue;
        this.f21273d = new ConcurrentHashMap();
        this.f21274e = okHttpClient;
    }

    public static /* synthetic */ void k(DownloadManager downloadManager, Context context, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = downloadManager.e();
        }
        downloadManager.i(context, i11);
    }

    public final void b(DownloadTask task, boolean z10) {
        String taskId;
        Map map;
        Intrinsics.h(task, "task");
        if (!z10 && (map = this.f21273d) != null) {
            DownloadEntity downloadEntity = task.getDownloadEntity();
            if (map.containsKey(downloadEntity != null ? downloadEntity.getTaskId() : null)) {
                return;
            }
        }
        DownloadEntity downloadEntity2 = task.getDownloadEntity();
        if (downloadEntity2 == null || (taskId = downloadEntity2.getTaskId()) == null || !(!StringsKt.q0(taskId))) {
            return;
        }
        task.setClient(this.f21274e);
        Map map2 = this.f21273d;
        Intrinsics.e(map2);
        String taskId2 = downloadEntity2.getTaskId();
        Intrinsics.e(taskId2);
        map2.put(taskId2, task);
        LinkedBlockingDeque linkedBlockingDeque = this.f21271b;
        Intrinsics.e(linkedBlockingDeque);
        if (linkedBlockingDeque.contains(task)) {
            return;
        }
        ThreadPoolExecutor threadPoolExecutor = this.f21272c;
        Intrinsics.e(threadPoolExecutor);
        threadPoolExecutor.execute(task);
    }

    public final void d(String str) {
        Map map;
        if (str == null || StringsKt.q0(str) || (map = this.f21273d) == null || map == null) {
            return;
        }
    }

    public final ThreadPoolExecutor f() {
        return this.f21272c;
    }

    public final DownloadTask h(String str) {
        Map map;
        DownloadEntity downloadEntityH;
        if (str == null || StringsKt.q0(str) || (map = this.f21273d) == null) {
            return null;
        }
        Intrinsics.e(map);
        DownloadTask downloadTask = (DownloadTask) map.get(str);
        return (downloadTask != null || (downloadEntityH = l.f21309a.h(str)) == null) ? downloadTask : new DownloadTask(downloadEntityH);
    }

    public final void i(Context context, int i11) {
        Intrinsics.h(context, "context");
        j(context, i11, g());
    }

    public final boolean l(String str) {
        DownloadEntity downloadEntityH = l.f21309a.h(str);
        if (downloadEntityH == null) {
            return false;
        }
        String filePath = downloadEntityH.getFilePath();
        String fileName = downloadEntityH.getFileName();
        if (fileName == null) {
            fileName = "";
        }
        File file = new File(filePath, fileName);
        return file.exists() && file.length() == downloadEntityH.getTotalSize();
    }

    public final void m(DownloadTask task) {
        Intrinsics.h(task, "task");
        c(this, task, false, 2, null);
    }
}
