package com.cloud.hisavana.sdk.manager;

import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.View;
import com.cloud.hisavana.sdk.a5;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u0003J\r\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010!R\u0014\u0010$\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010!¨\u0006%"}, d2 = {"Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;", "", "<init>", "()V", "Lcom/cloud/hisavana/sdk/a5;", "measureImpl", "", "g", "(Lcom/cloud/hisavana/sdk/a5;)V", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adsDTO", "f", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V", "startMeasure", "stopMeasure", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Landroid/view/View;)D", "Landroid/os/HandlerThread;", "a", "Landroid/os/HandlerThread;", "handlerThread", "Landroid/os/Handler;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/os/Handler;", "handler", "Ljava/util/concurrent/CopyOnWriteArrayList;", "c", "Ljava/util/concurrent/CopyOnWriteArrayList;", "measureList", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "immediateRunnable", "e", "delayRunnable", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class VideoMeasureManager {
    public static final VideoMeasureManager INSTANCE = new VideoMeasureManager();

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private static final HandlerThread handlerThread;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private static final Handler handler;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private static final CopyOnWriteArrayList measureList;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private static final Runnable immediateRunnable;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private static final Runnable delayRunnable;

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"com/cloud/hisavana/sdk/manager/VideoMeasureManager$a", "Ljava/lang/Runnable;", "", "run", "()V", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoMeasureManager.handler.post(VideoMeasureManager.immediateRunnable);
            VideoMeasureManager.handler.postDelayed(this, 500L);
        }
    }

    static {
        HandlerThread handlerThread2 = new HandlerThread("h_video_thread");
        handlerThread2.start();
        handlerThread = handlerThread2;
        handler = new Handler(handlerThread2.getLooper());
        measureList = new CopyOnWriteArrayList();
        immediateRunnable = new Runnable() { // from class: com.cloud.hisavana.sdk.manager.c
            @Override // java.lang.Runnable
            public final void run() {
                VideoMeasureManager.k();
            }
        };
        delayRunnable = new a();
    }

    private VideoMeasureManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(AdsDTO adsDTO) {
        a5 a5Var;
        if (adsDTO == null) {
            a5Var = null;
            break;
        }
        Iterator it = measureList.iterator();
        do {
            if (!it.hasNext()) {
                a5Var = null;
                break;
            }
            a5Var = (a5) it.next();
        } while (!Intrinsics.c(a5Var.b(), adsDTO));
        if (a5Var != null) {
            measureList.remove(a5Var);
        }
        e4 e4VarB = e4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("current measure list size is ");
        CopyOnWriteArrayList copyOnWriteArrayList = measureList;
        sb2.append(copyOnWriteArrayList.size());
        e4VarB.d("VideoMeasureManager", sb2.toString());
        if (copyOnWriteArrayList.size() <= 0) {
            INSTANCE.stopMeasure();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(a5 measureImpl) {
        Intrinsics.h(measureImpl, "$measureImpl");
        CopyOnWriteArrayList copyOnWriteArrayList = measureList;
        if (copyOnWriteArrayList.contains(measureImpl)) {
            copyOnWriteArrayList.remove(copyOnWriteArrayList.indexOf(measureImpl));
        }
        copyOnWriteArrayList.add(measureImpl);
        if (copyOnWriteArrayList.size() > 20) {
            copyOnWriteArrayList.remove(0);
        }
        INSTANCE.startMeasure();
        e4.b().d("VideoMeasureManager", "------------->measureList size is " + copyOnWriteArrayList.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k() {
        Iterator it = measureList.iterator();
        while (it.hasNext()) {
            ((a5) it.next()).d();
        }
    }

    public final double d(View view) {
        if (view == null || view.getWindowVisibility() != 0) {
            return 0.0d;
        }
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect) && view.isShown()) {
            double dHeight = ((double) rect.height()) * ((double) rect.width());
            double height = ((double) view.getHeight()) * ((double) view.getWidth());
            if (height <= 0.0d) {
                return 0.0d;
            }
            return (dHeight * ((double) 100)) / height;
        }
        return 0.0d;
    }

    public final void f(final AdsDTO adsDTO) {
        e4.b().d("VideoMeasureManager", "-------------> remove video ad measure");
        handler.post(new Runnable() { // from class: com.cloud.hisavana.sdk.manager.d
            @Override // java.lang.Runnable
            public final void run() {
                VideoMeasureManager.i(adsDTO);
            }
        });
    }

    public final void g(final a5 measureImpl) {
        Intrinsics.h(measureImpl, "measureImpl");
        e4.b().d("VideoMeasureManager", "-------------> add video ad measure");
        handler.post(new Runnable() { // from class: com.cloud.hisavana.sdk.manager.e
            @Override // java.lang.Runnable
            public final void run() {
                VideoMeasureManager.j(measureImpl);
            }
        });
    }

    public final void startMeasure() {
        e4 e4VarB = e4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("current measure list size is ");
        CopyOnWriteArrayList copyOnWriteArrayList = measureList;
        sb2.append(copyOnWriteArrayList.size());
        e4VarB.d("VideoMeasureManager", sb2.toString());
        if (copyOnWriteArrayList.size() > 0) {
            Handler handler2 = handler;
            handler2.post(immediateRunnable);
            handler2.post(delayRunnable);
        }
    }

    public final void stopMeasure() {
        e4.b().d("VideoMeasureManager", "stop video ad measure");
        Handler handler2 = handler;
        handler2.removeCallbacks(immediateRunnable);
        handler2.removeCallbacks(delayRunnable);
    }
}
