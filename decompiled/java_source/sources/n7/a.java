package n7;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.contrarywind.view.WheelView;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends GestureDetector.SimpleOnGestureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WheelView f70251a;

    public a(WheelView wheelView) {
        this.f70251a = wheelView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f11, float f12) {
        this.f70251a.scrollBy(f12);
        return true;
    }
}
