package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
final class h extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, b.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f27993c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f27994d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final GestureDetector f27995e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PointF f27991a = new PointF();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PointF f27992b = new PointF();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile float f27996f = 3.1415927f;

    public interface a {
        void b(PointF pointF);

        boolean onSingleTapUp(MotionEvent motionEvent);
    }

    public h(Context context, a aVar, float f11) {
        this.f27993c = aVar;
        this.f27994d = f11;
        this.f27995e = new GestureDetector(context, this);
    }

    @Override // com.google.android.exoplayer2.video.spherical.b.a
    public void a(float[] fArr, float f11) {
        this.f27996f = -f11;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f27991a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f11, float f12) {
        float x10 = (motionEvent2.getX() - this.f27991a.x) / this.f27994d;
        float y10 = motionEvent2.getY();
        PointF pointF = this.f27991a;
        float f13 = (y10 - pointF.y) / this.f27994d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d11 = this.f27996f;
        float fCos = (float) Math.cos(d11);
        float fSin = (float) Math.sin(d11);
        PointF pointF2 = this.f27992b;
        pointF2.x -= (fCos * x10) - (fSin * f13);
        float f14 = pointF2.y + (fSin * x10) + (fCos * f13);
        pointF2.y = f14;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f14));
        this.f27993c.b(this.f27992b);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f27993c.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f27995e.onTouchEvent(motionEvent);
    }
}
