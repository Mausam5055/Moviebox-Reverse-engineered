package androidx.core.view;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public class DifferentialMotionFlingController {
    private final Context mContext;
    private final int[] mFlingVelocityThresholds;
    private float mLastFlingVelocity;
    private int mLastProcessedAxis;
    private int mLastProcessedDeviceId;
    private int mLastProcessedSource;
    private final DifferentialMotionFlingTarget mTarget;
    private final a mVelocityProvider;
    private final b mVelocityThresholdCalculator;
    private VelocityTracker mVelocityTracker;

    interface a {
        float a(VelocityTracker velocityTracker, MotionEvent motionEvent, int i11);
    }

    interface b {
        void a(Context context, int[] iArr, MotionEvent motionEvent, int i11);
    }

    public DifferentialMotionFlingController(Context context, DifferentialMotionFlingTarget differentialMotionFlingTarget) {
        this(context, differentialMotionFlingTarget, new b() { // from class: androidx.core.view.q
            @Override // androidx.core.view.DifferentialMotionFlingController.b
            public final void a(Context context2, int[] iArr, MotionEvent motionEvent, int i11) {
                DifferentialMotionFlingController.calculateFlingVelocityThresholds(context2, iArr, motionEvent, i11);
            }
        }, new a() { // from class: androidx.core.view.r
            @Override // androidx.core.view.DifferentialMotionFlingController.a
            public final float a(VelocityTracker velocityTracker, MotionEvent motionEvent, int i11) {
                return DifferentialMotionFlingController.getCurrentVelocity(velocityTracker, motionEvent, i11);
            }
        });
    }

    DifferentialMotionFlingController(Context context, DifferentialMotionFlingTarget differentialMotionFlingTarget, b bVar, a aVar) {
        this.mLastProcessedAxis = -1;
        this.mLastProcessedSource = -1;
        this.mLastProcessedDeviceId = -1;
        this.mFlingVelocityThresholds = new int[]{Integer.MAX_VALUE, 0};
        this.mContext = context;
        this.mTarget = differentialMotionFlingTarget;
        this.mVelocityThresholdCalculator = bVar;
        this.mVelocityProvider = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void calculateFlingVelocityThresholds(Context context, int[] iArr, MotionEvent motionEvent, int i11) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        iArr[0] = ViewConfigurationCompat.getScaledMinimumFlingVelocity(context, viewConfiguration, motionEvent.getDeviceId(), i11, motionEvent.getSource());
        iArr[1] = ViewConfigurationCompat.getScaledMaximumFlingVelocity(context, viewConfiguration, motionEvent.getDeviceId(), i11, motionEvent.getSource());
    }

    private boolean calculateFlingVelocityThresholds(MotionEvent motionEvent, int i11) {
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        if (this.mLastProcessedSource == source && this.mLastProcessedDeviceId == deviceId && this.mLastProcessedAxis == i11) {
            return false;
        }
        this.mVelocityThresholdCalculator.a(this.mContext, this.mFlingVelocityThresholds, motionEvent, i11);
        this.mLastProcessedSource = source;
        this.mLastProcessedDeviceId = deviceId;
        this.mLastProcessedAxis = i11;
        return true;
    }

    private float getCurrentVelocity(MotionEvent motionEvent, int i11) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        return this.mVelocityProvider.a(this.mVelocityTracker, motionEvent, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float getCurrentVelocity(VelocityTracker velocityTracker, MotionEvent motionEvent, int i11) {
        VelocityTrackerCompat.addMovement(velocityTracker, motionEvent);
        VelocityTrackerCompat.computeCurrentVelocity(velocityTracker, 1000);
        return VelocityTrackerCompat.getAxisVelocity(velocityTracker, i11);
    }

    public void onMotionEvent(MotionEvent motionEvent, int i11) {
        boolean zCalculateFlingVelocityThresholds = calculateFlingVelocityThresholds(motionEvent, i11);
        if (this.mFlingVelocityThresholds[0] == Integer.MAX_VALUE) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
                return;
            }
            return;
        }
        float currentVelocity = getCurrentVelocity(motionEvent, i11) * this.mTarget.getScaledScrollFactor();
        float fSignum = Math.signum(currentVelocity);
        if (zCalculateFlingVelocityThresholds || (fSignum != Math.signum(this.mLastFlingVelocity) && fSignum != 0.0f)) {
            this.mTarget.stopDifferentialMotionFling();
        }
        float fAbs = Math.abs(currentVelocity);
        int[] iArr = this.mFlingVelocityThresholds;
        if (fAbs < iArr[0]) {
            return;
        }
        int i12 = iArr[1];
        float fMax = Math.max(-i12, Math.min(currentVelocity, i12));
        this.mLastFlingVelocity = this.mTarget.startDifferentialMotionFling(fMax) ? fMax : 0.0f;
    }
}
