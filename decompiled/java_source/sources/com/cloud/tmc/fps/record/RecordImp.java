package com.cloud.tmc.fps.record;

import android.view.Choreographer;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\nH\u0016R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/fps/record/RecordImp;", "Lcom/cloud/tmc/fps/record/IRecord;", "()V", "frameCallback", "com/cloud/tmc/fps/record/RecordImp$frameCallback$1", "Lcom/cloud/tmc/fps/record/RecordImp$frameCallback$1;", "frameListeners", "", "Lcom/cloud/tmc/fps/record/IRecord$FrameListener;", "isStart", "", "mLastFrameTimeNanos", "", "addFrameListener", "", "frameListener", "recordFps", "start", "com.cloud.tmc.minifps"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RecordImp implements IRecord {
    private static boolean isStart;
    private static long mLastFrameTimeNanos;
    public static final RecordImp INSTANCE = new RecordImp();
    private static final List<IRecord.FrameListener> frameListeners = new ArrayList();
    private static final RecordImp$frameCallback$1 frameCallback = new Choreographer.FrameCallback() { // from class: com.cloud.tmc.fps.record.RecordImp$frameCallback$1
        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long frameTimeNanos) {
            if (0 != RecordImp.mLastFrameTimeNanos) {
                long j11 = (frameTimeNanos - RecordImp.mLastFrameTimeNanos) / ((long) 1000000);
                Iterator it = RecordImp.frameListeners.iterator();
                while (it.hasNext()) {
                    ((IRecord.FrameListener) it.next()).onFrame(System.currentTimeMillis(), j11);
                }
            }
            RecordImp.mLastFrameTimeNanos = frameTimeNanos;
            Choreographer.getInstance().postFrameCallback(this);
        }
    };

    private RecordImp() {
    }

    @Override // com.cloud.tmc.fps.record.IRecord
    public void addFrameListener(IRecord.FrameListener frameListener) {
        Intrinsics.h(frameListener, "frameListener");
        List<IRecord.FrameListener> list = frameListeners;
        synchronized (list) {
            try {
                if (!list.contains(frameListener)) {
                    list.add(frameListener);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.fps.record.IRecord
    public void recordFps(boolean start) {
        if (start == isStart) {
            return;
        }
        Iterator<T> it = frameListeners.iterator();
        while (it.hasNext()) {
            ((IRecord.FrameListener) it.next()).onRecord(start);
        }
        if (start) {
            Choreographer.getInstance().postFrameCallback(frameCallback);
        } else {
            Choreographer.getInstance().removeFrameCallback(frameCallback);
        }
        isStart = start;
    }
}
