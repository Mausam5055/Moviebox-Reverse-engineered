package com.mbridge.msdk.nativex.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeListener;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MBNativeRollView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RollingBCView f36657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f36658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeListener.FilpListener f36659c;

    public interface a {
    }

    public MBNativeRollView(Context context) {
        this(context, null);
    }

    public MBNativeRollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36658b = context;
        RollingBCView rollingBCView = new RollingBCView(context);
        this.f36657a = rollingBCView;
        addView(rollingBCView);
        this.f36657a.setLayoutParams(new LinearLayout.LayoutParams((int) (((double) t0.j(context)) * 0.9d), -2));
        setClipChildren(false);
    }

    @SuppressLint({"NewApi"})
    public MBNativeRollView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f36657a.dispatchTouchEvent(motionEvent);
    }

    public void setData(List<Frame> list, Context context, String str, a aVar) {
        this.f36657a.setData(list, context, str, aVar);
    }

    public void setFilpListening(NativeListener.FilpListener filpListener) {
        if (filpListener != null) {
            this.f36659c = filpListener;
            this.f36657a.setFilpListening(filpListener);
        }
    }

    public void setFrameWidth(int i11) {
        this.f36657a.setLayoutParams(new LinearLayout.LayoutParams(i11, -2));
    }
}
