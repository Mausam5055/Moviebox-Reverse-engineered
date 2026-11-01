package sa;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes5.dex */
public class a implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Dialog f75294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f75295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f75296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f75297d;

    public a(Dialog dialog, Rect rect) {
        this.f75294a = dialog;
        this.f75295b = rect.left;
        this.f75296c = rect.top;
        this.f75297d = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = this.f75295b + viewFindViewById.getLeft();
        int width = viewFindViewById.getWidth() + left;
        int top = this.f75296c + viewFindViewById.getTop();
        if (new RectF(left, top, width, viewFindViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i11 = this.f75297d;
            motionEventObtain.setLocation((-i11) - 1, (-i11) - 1);
        }
        view.performClick();
        return this.f75294a.onTouchEvent(motionEventObtain);
    }
}
