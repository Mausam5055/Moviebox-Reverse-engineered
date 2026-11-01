package e7;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes3.dex */
public class n extends GestureDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f61601a;

    public static class a extends GestureDetector.SimpleOnGestureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f61602a = false;

        boolean a() {
            return this.f61602a;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            this.f61602a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public n(Context context) {
        this(context, new a());
    }

    private n(Context context, a aVar) {
        super(context, aVar);
        this.f61601a = aVar;
        setIsLongpressEnabled(false);
    }

    public boolean a() {
        return this.f61601a.a();
    }
}
