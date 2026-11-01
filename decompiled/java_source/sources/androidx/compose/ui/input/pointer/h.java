package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f4992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseLongArray f4993b = new SparseLongArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SparseBooleanArray f4994c = new SparseBooleanArray();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f4995d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4996e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4997f = -1;

    private final void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0 && actionMasked != 5) {
            if (actionMasked != 9) {
                return;
            }
            int pointerId = motionEvent.getPointerId(0);
            if (this.f4993b.indexOfKey(pointerId) < 0) {
                SparseLongArray sparseLongArray = this.f4993b;
                long j11 = this.f4992a;
                this.f4992a = 1 + j11;
                sparseLongArray.put(pointerId, j11);
                return;
            }
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        int pointerId2 = motionEvent.getPointerId(actionIndex);
        if (this.f4993b.indexOfKey(pointerId2) < 0) {
            SparseLongArray sparseLongArray2 = this.f4993b;
            long j12 = this.f4992a;
            this.f4992a = 1 + j12;
            sparseLongArray2.put(pointerId2, j12);
            if (motionEvent.getToolType(actionIndex) == 3) {
                this.f4994c.put(pointerId2, true);
            }
        }
    }

    private final void b(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 1) {
            return;
        }
        int toolType = motionEvent.getToolType(0);
        int source = motionEvent.getSource();
        if (toolType == this.f4996e && source == this.f4997f) {
            return;
        }
        this.f4996e = toolType;
        this.f4997f = source;
        this.f4994c.clear();
        this.f4993b.clear();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x005b  */
    /* JADX WARN: Code duplicated, block: B:14:0x005e  */
    /* JADX WARN: Code duplicated, block: B:16:0x0061  */
    /* JADX WARN: Code duplicated, block: B:18:0x0064  */
    /* JADX WARN: Code duplicated, block: B:20:0x0067  */
    /* JADX WARN: Code duplicated, block: B:22:0x0070  */
    /* JADX WARN: Code duplicated, block: B:23:0x0077  */
    /* JADX WARN: Code duplicated, block: B:24:0x007e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0085  */
    /* JADX WARN: Code duplicated, block: B:26:0x008c  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00fb  */
    private final z d(i0 i0Var, MotionEvent motionEvent, int i11, boolean z10) {
        long j11;
        long jMo116localToScreenMKHz9U;
        long jA;
        long jMo117screenToLocalMKHz9U;
        int toolType;
        int iE;
        int historySize;
        int i12;
        long jC;
        float historicalX;
        long jF = f(motionEvent.getPointerId(i11));
        float pressure = motionEvent.getPressure(i11);
        long jA2 = y.h.a(motionEvent.getX(i11), motionEvent.getY(i11));
        long jG = y.g.g(jA2, 0.0f, 0.0f, 3, null);
        if (i11 != 0) {
            if (Build.VERSION.SDK_INT >= 29) {
                jA = k.f5004a.a(motionEvent, i11);
                jMo117screenToLocalMKHz9U = i0Var.mo117screenToLocalMKHz9U(jA);
            } else {
                j11 = jA2;
                jMo116localToScreenMKHz9U = i0Var.mo116localToScreenMKHz9U(jA2);
            }
            toolType = motionEvent.getToolType(i11);
            if (toolType != 0) {
                iE = h0.f4998a.e();
            } else if (toolType != 1) {
                iE = h0.f4998a.d();
            } else if (toolType != 2) {
                iE = h0.f4998a.c();
            } else if (toolType != 3) {
                iE = h0.f4998a.b();
            } else if (toolType != 4) {
                iE = h0.f4998a.e();
            } else {
                iE = h0.f4998a.a();
            }
            int i13 = iE;
            ArrayList arrayList = new ArrayList(motionEvent.getHistorySize());
            historySize = motionEvent.getHistorySize();
            for (i12 = 0; i12 < historySize; i12++) {
                historicalX = motionEvent.getHistoricalX(i11, i12);
                float historicalY = motionEvent.getHistoricalY(i11, i12);
                if (Float.isInfinite(historicalX) && !Float.isNaN(historicalX) && !Float.isInfinite(historicalY) && !Float.isNaN(historicalY)) {
                    long jA3 = y.h.a(historicalX, historicalY);
                    arrayList.add(new e(motionEvent.getHistoricalEventTime(i12), jA3, jA3, null));
                }
            }
            if (motionEvent.getActionMasked() == 8) {
                jC = y.h.a(motionEvent.getAxisValue(10), (-motionEvent.getAxisValue(9)) + 0.0f);
            } else {
                jC = y.g.f78470b.c();
            }
            return new z(jF, motionEvent.getEventTime(), jMo116localToScreenMKHz9U, j11, z10, pressure, i13, this.f4994c.get(motionEvent.getPointerId(i11), false), arrayList, jC, jG, null);
        }
        jA = y.h.a(motionEvent.getRawX(), motionEvent.getRawY());
        jMo117screenToLocalMKHz9U = i0Var.mo117screenToLocalMKHz9U(jA);
        jMo116localToScreenMKHz9U = jA;
        j11 = jMo117screenToLocalMKHz9U;
        toolType = motionEvent.getToolType(i11);
        if (toolType != 0) {
            iE = h0.f4998a.e();
        } else if (toolType != 1) {
            iE = h0.f4998a.d();
        } else if (toolType != 2) {
            iE = h0.f4998a.c();
        } else if (toolType != 3) {
            iE = h0.f4998a.b();
        } else if (toolType != 4) {
            iE = h0.f4998a.e();
        } else {
            iE = h0.f4998a.a();
        }
        int i14 = iE;
        ArrayList arrayList2 = new ArrayList(motionEvent.getHistorySize());
        historySize = motionEvent.getHistorySize();
        while (i12 < historySize) {
            historicalX = motionEvent.getHistoricalX(i11, i12);
            float historicalY2 = motionEvent.getHistoricalY(i11, i12);
            if (Float.isInfinite(historicalX)) {
            }
        }
        if (motionEvent.getActionMasked() == 8) {
            jC = y.h.a(motionEvent.getAxisValue(10), (-motionEvent.getAxisValue(9)) + 0.0f);
        } else {
            jC = y.g.f78470b.c();
        }
        return new z(jF, motionEvent.getEventTime(), jMo116localToScreenMKHz9U, j11, z10, pressure, i14, this.f4994c.get(motionEvent.getPointerId(i11), false), arrayList2, jC, jG, null);
    }

    private final long f(int i11) {
        long jValueAt;
        int iIndexOfKey = this.f4993b.indexOfKey(i11);
        if (iIndexOfKey >= 0) {
            jValueAt = this.f4993b.valueAt(iIndexOfKey);
        } else {
            jValueAt = this.f4992a;
            this.f4992a = 1 + jValueAt;
            this.f4993b.put(i11, jValueAt);
        }
        return v.b(jValueAt);
    }

    private final boolean g(MotionEvent motionEvent, int i11) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i12 = 0; i12 < pointerCount; i12++) {
            if (motionEvent.getPointerId(i12) == i11) {
                return true;
            }
        }
        return false;
    }

    private final void h(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 6) {
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            if (!this.f4994c.get(pointerId, false)) {
                this.f4993b.delete(pointerId);
                this.f4994c.delete(pointerId);
            }
        }
        if (this.f4993b.size() > motionEvent.getPointerCount()) {
            for (int size = this.f4993b.size() - 1; -1 < size; size--) {
                int iKeyAt = this.f4993b.keyAt(size);
                if (!g(motionEvent, iKeyAt)) {
                    this.f4993b.removeAt(size);
                    this.f4994c.delete(iKeyAt);
                }
            }
        }
    }

    public final y c(MotionEvent motionEvent, i0 i0Var) {
        int actionIndex;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 3 || actionMasked == 4) {
            this.f4993b.clear();
            this.f4994c.clear();
            return null;
        }
        b(motionEvent);
        a(motionEvent);
        boolean z10 = actionMasked == 9 || actionMasked == 7 || actionMasked == 10;
        boolean z11 = actionMasked == 8;
        if (z10) {
            this.f4994c.put(motionEvent.getPointerId(motionEvent.getActionIndex()), true);
        }
        if (actionMasked != 1) {
            actionIndex = actionMasked != 6 ? -1 : motionEvent.getActionIndex();
        } else {
            actionIndex = 0;
        }
        this.f4995d.clear();
        int pointerCount = motionEvent.getPointerCount();
        int i11 = 0;
        while (i11 < pointerCount) {
            this.f4995d.add(d(i0Var, motionEvent, i11, (z10 || i11 == actionIndex || (z11 && motionEvent.getButtonState() == 0)) ? false : true));
            i11++;
        }
        h(motionEvent);
        return new y(motionEvent.getEventTime(), this.f4995d, motionEvent);
    }

    public final void e(int i11) {
        this.f4994c.delete(i11);
        this.f4993b.delete(i11);
    }
}
