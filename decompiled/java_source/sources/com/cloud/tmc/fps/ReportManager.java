package com.cloud.tmc.fps;

import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.cloud.tmc.fps.data.StackTraceData;
import com.cloud.tmc.fps.record.IRecord;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.miniutils.util.EncodeUtils;
import com.google.gson.Gson;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes3.dex */
public class ReportManager implements IRecord.FrameListener {
    private Boolean firstRecord;
    private Boolean isRecording;
    private Handler mHandler;
    private ConcurrentLinkedQueue<StackTraceElement[]> mTracesInOneFrame = new ConcurrentLinkedQueue<>();
    private Runnable stackTraceTask;

    public ReportManager() {
        Boolean bool = Boolean.FALSE;
        this.isRecording = bool;
        this.firstRecord = bool;
        this.stackTraceTask = new Runnable() { // from class: com.cloud.tmc.fps.ReportManager.1
            @Override // java.lang.Runnable
            public void run() {
                StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
                if (ReportManager.this.firstRecord.booleanValue()) {
                    ReportManager.this.mTracesInOneFrame.clear();
                }
                ReportManager.this.mTracesInOneFrame.add(stackTrace);
                ReportManager.this.firstRecord = Boolean.FALSE;
                ReportManager.this.mHandler.postDelayed(this, FpsConfig.INSTANCE.getTraceInterval());
            }
        };
        HandlerThread handlerThread = new HandlerThread(getClass().getSimpleName());
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper());
    }

    private void dealPreFrameTraceInfo(long j11, Long l11) {
        if (l11.longValue() <= FpsConfig.INSTANCE.getJankThreshold() || this.mTracesInOneFrame.size() <= 0) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: com.cloud.tmc.fps.ReportManager.2
            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                Iterator it = ReportManager.this.mTracesInOneFrame.iterator();
                while (it.hasNext()) {
                    String strBase64Encode2String = EncodeUtils.base64Encode2String(ReportManager.this.traceToString(2, (StackTraceElement[]) it.next()).getBytes(StandardCharsets.UTF_8));
                    int count = 0;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= arrayList.size()) {
                            i11 = -1;
                            break;
                        } else {
                            if (strBase64Encode2String.equals(((StackTraceData) arrayList.get(i11)).getStackInfo())) {
                                count = ((StackTraceData) arrayList.get(i11)).getCount();
                                break;
                            }
                            i11++;
                        }
                    }
                    if (count == 0 || i11 <= -1) {
                        arrayList.add(new StackTraceData(1, strBase64Encode2String));
                    } else {
                        ((StackTraceData) arrayList.get(i11)).setCount(((StackTraceData) arrayList.get(i11)).getCount() + 1);
                    }
                }
                Bundle bundle = new Bundle();
                bundle.putString("fps_drop_stackInfo", new Gson().toJson(arrayList));
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", PointAnalyseType.POINT_FPS, "", bundle);
                ReportManager.this.mTracesInOneFrame.clear();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String traceToString(int i11, Object[] objArr) {
        if (objArr.length == 0) {
            return "[]";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < objArr.length - i11 && i12 != (objArr.length - i11) - 1; i12++) {
            sb2.append(objArr[i12]);
            sb2.append("\n");
        }
        return sb2.toString();
    }

    @Override // com.cloud.tmc.fps.record.IRecord.FrameListener
    public void onFrame(long j11, long j12) {
        if (this.isRecording.booleanValue()) {
            this.mHandler.removeCallbacks(this.stackTraceTask);
            dealPreFrameTraceInfo(j11, Long.valueOf(j12));
            this.firstRecord = Boolean.TRUE;
            this.mHandler.postDelayed(this.stackTraceTask, FpsConfig.INSTANCE.getTraceInterval());
        }
    }

    @Override // com.cloud.tmc.fps.record.IRecord.FrameListener
    public void onRecord(boolean z10) {
        this.isRecording = Boolean.valueOf(z10);
    }
}
