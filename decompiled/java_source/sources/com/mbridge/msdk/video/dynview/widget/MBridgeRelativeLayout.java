package com.mbridge.msdk.video.dynview.widget;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.mbridge.msdk.video.dynview.moffer.b;
import com.mbridge.msdk.video.dynview.moffer.d;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeRelativeLayout extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f39143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f39144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AnimatorSet f39145c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f39146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f39147e;

    public MBridgeRelativeLayout(Context context) {
        super(context);
    }

    public MBridgeRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MBridgeRelativeLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AnimatorSet animatorSet = this.f39145c;
        if (animatorSet != null) {
            try {
                animatorSet.start();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        d dVar;
        super.onDetachedFromWindow();
        if (!this.f39144b && (dVar = this.f39143a) != null) {
            this.f39144b = true;
            dVar.a();
        }
        AnimatorSet animatorSet = this.f39145c;
        if (animatorSet != null) {
            try {
                animatorSet.cancel();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i11) {
        b bVar;
        super.onVisibilityChanged(view, i11);
        if (!(view instanceof MBridgeRelativeLayout) || i11 != 0 || (bVar = this.f39147e) == null || this.f39146d) {
            return;
        }
        this.f39146d = true;
        bVar.a();
    }

    public void setAnimatorSet(AnimatorSet animatorSet) {
        this.f39145c = animatorSet;
    }

    public void setMoreOfferCacheReportCallBack(b bVar) {
        this.f39147e = bVar;
    }

    public void setMoreOfferShowFailedCallBack(d dVar) {
        this.f39143a = dVar;
    }
}
