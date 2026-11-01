package androidx.core.app;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import android.view.Window$OnFrameMetricsAvailableListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f8069a;

    private static class a extends b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static HandlerThread f8070e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static Handler f8071f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f8072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SparseIntArray[] f8073b = new SparseIntArray[9];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ArrayList f8074c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Window$OnFrameMetricsAvailableListener f8075d = new WindowOnFrameMetricsAvailableListenerC0065a();

        /* JADX INFO: renamed from: androidx.core.app.g$a$a, reason: collision with other inner class name */
        class WindowOnFrameMetricsAvailableListenerC0065a implements Window$OnFrameMetricsAvailableListener {
            WindowOnFrameMetricsAvailableListenerC0065a() {
            }

            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i11) {
                a aVar = a.this;
                if ((aVar.f8072a & 1) != 0) {
                    aVar.e(aVar.f8073b[0], frameMetrics.getMetric(8));
                }
                a aVar2 = a.this;
                if ((aVar2.f8072a & 2) != 0) {
                    aVar2.e(aVar2.f8073b[1], frameMetrics.getMetric(1));
                }
                a aVar3 = a.this;
                if ((aVar3.f8072a & 4) != 0) {
                    aVar3.e(aVar3.f8073b[2], frameMetrics.getMetric(3));
                }
                a aVar4 = a.this;
                if ((aVar4.f8072a & 8) != 0) {
                    aVar4.e(aVar4.f8073b[3], frameMetrics.getMetric(4));
                }
                a aVar5 = a.this;
                if ((aVar5.f8072a & 16) != 0) {
                    aVar5.e(aVar5.f8073b[4], frameMetrics.getMetric(5));
                }
                a aVar6 = a.this;
                if ((aVar6.f8072a & 64) != 0) {
                    aVar6.e(aVar6.f8073b[6], frameMetrics.getMetric(7));
                }
                a aVar7 = a.this;
                if ((aVar7.f8072a & 32) != 0) {
                    aVar7.e(aVar7.f8073b[5], frameMetrics.getMetric(6));
                }
                a aVar8 = a.this;
                if ((aVar8.f8072a & 128) != 0) {
                    aVar8.e(aVar8.f8073b[7], frameMetrics.getMetric(0));
                }
                a aVar9 = a.this;
                if ((aVar9.f8072a & 256) != 0) {
                    aVar9.e(aVar9.f8073b[8], frameMetrics.getMetric(2));
                }
            }
        }

        a(int i11) {
            this.f8072a = i11;
        }

        @Override // androidx.core.app.g.b
        public void a(Activity activity) {
            if (f8070e == null) {
                HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
                f8070e = handlerThread;
                handlerThread.start();
                f8071f = new Handler(f8070e.getLooper());
            }
            for (int i11 = 0; i11 <= 8; i11++) {
                SparseIntArray[] sparseIntArrayArr = this.f8073b;
                if (sparseIntArrayArr[i11] == null && (this.f8072a & (1 << i11)) != 0) {
                    sparseIntArrayArr[i11] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.f8075d, f8071f);
            this.f8074c.add(new WeakReference(activity));
        }

        @Override // androidx.core.app.g.b
        public SparseIntArray[] b() {
            return this.f8073b;
        }

        @Override // androidx.core.app.g.b
        public SparseIntArray[] c(Activity activity) {
            for (WeakReference weakReference : this.f8074c) {
                if (weakReference.get() == activity) {
                    this.f8074c.remove(weakReference);
                    break;
                }
            }
            activity.getWindow().removeOnFrameMetricsAvailableListener(this.f8075d);
            return this.f8073b;
        }

        @Override // androidx.core.app.g.b
        public SparseIntArray[] d() {
            SparseIntArray[] sparseIntArrayArr = this.f8073b;
            this.f8073b = new SparseIntArray[9];
            return sparseIntArrayArr;
        }

        void e(SparseIntArray sparseIntArray, long j11) {
            if (sparseIntArray != null) {
                int i11 = (int) ((500000 + j11) / 1000000);
                if (j11 >= 0) {
                    sparseIntArray.put(i11, sparseIntArray.get(i11) + 1);
                }
            }
        }
    }

    private static class b {
        b() {
        }

        public void a(Activity activity) {
        }

        public SparseIntArray[] b() {
            return null;
        }

        public SparseIntArray[] c(Activity activity) {
            return null;
        }

        public SparseIntArray[] d() {
            return null;
        }
    }

    public g() {
        this(1);
    }

    public g(int i11) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f8069a = new a(i11);
        } else {
            this.f8069a = new b();
        }
    }

    public void a(Activity activity) {
        this.f8069a.a(activity);
    }

    public SparseIntArray[] b() {
        return this.f8069a.b();
    }

    public SparseIntArray[] c(Activity activity) {
        return this.f8069a.c(activity);
    }

    public SparseIntArray[] d() {
        return this.f8069a.d();
    }
}
