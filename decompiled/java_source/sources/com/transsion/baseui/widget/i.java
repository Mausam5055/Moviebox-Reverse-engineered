package com.transsion.baseui.widget;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes5.dex */
public class i extends ViewOutlineProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f43649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f43650b = 0;

    public i(float f11) {
        this.f43649a = f11;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        Rect rect;
        view.getGlobalVisibleRect(new Rect());
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i11 = this.f43650b;
        if (i11 == 1) {
            rect = new Rect(0, 0, (int) Math.ceil(measuredWidth + (this.f43649a * 2.0f)), measuredHeight);
        } else if (i11 == 2) {
            rect = new Rect((int) Math.floor(this.f43649a * (-2.0f)), 0, measuredWidth, measuredHeight);
        } else if (i11 == 3) {
            rect = new Rect(0, 0, measuredWidth, (int) Math.ceil(measuredHeight + (this.f43649a * 2.0f)));
        } else {
            rect = i11 == 4 ? new Rect(0, (int) Math.floor(this.f43649a * (-2.0f)), measuredWidth, measuredHeight) : new Rect(0, 0, measuredWidth, measuredHeight);
        }
        outline.setRoundRect(rect, this.f43649a);
    }
}
