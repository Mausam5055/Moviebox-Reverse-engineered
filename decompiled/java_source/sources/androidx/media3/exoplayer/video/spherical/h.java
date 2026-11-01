package androidx.media3.exoplayer.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
final class h extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, b.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f13299c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f13300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final GestureDetector f13301e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PointF f13297a = new PointF();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PointF f13298b = new PointF();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile float f13302f = 3.1415927f;

    public interface a {
        void b(PointF pointF);

        boolean onSingleTapUp(MotionEvent motionEvent);
    }

    public h(Context context, a aVar, float f11) {
        this.f13299c = aVar;
        this.f13300d = f11;
        this.f13301e = new GestureDetector(context, this);
    }

    @Override // androidx.media3.exoplayer.video.spherical.b.a
    public void a(float[] fArr, float f11) {
        this.f13302f = -f11;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f13297a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f11, float f12) {
        float x10 = (motionEvent2.getX() - this.f13297a.x) / this.f13300d;
        float y10 = motionEvent2.getY();
        PointF pointF = this.f13297a;
        float f13 = (y10 - pointF.y) / this.f13300d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d11 = this.f13302f;
        float fCos = (float) Math.cos(d11);
        float fSin = (float) Math.sin(d11);
        PointF pointF2 = this.f13298b;
        pointF2.x -= (fCos * x10) - (fSin * f13);
        float f14 = pointF2.y + (fSin * x10) + (fCos * f13);
        pointF2.y = f14;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f14));
        this.f13299c.b(this.f13298b);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f13299c.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f13301e.onTouchEvent(motionEvent);
    }
}
