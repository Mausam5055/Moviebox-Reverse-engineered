package com.blankj.utilcode.util;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
class ClickUtils$2 implements Runnable {
    final /* synthetic */ int val$expandSizeBottom;
    final /* synthetic */ int val$expandSizeLeft;
    final /* synthetic */ int val$expandSizeRight;
    final /* synthetic */ int val$expandSizeTop;
    final /* synthetic */ View val$parentView;
    final /* synthetic */ View val$view;

    ClickUtils$2(View view, int i11, int i12, int i13, int i14, View view2) {
        this.val$view = view;
        this.val$expandSizeTop = i11;
        this.val$expandSizeBottom = i12;
        this.val$expandSizeLeft = i13;
        this.val$expandSizeRight = i14;
        this.val$parentView = view2;
    }

    @Override // java.lang.Runnable
    public void run() {
        Rect rect = new Rect();
        this.val$view.getHitRect(rect);
        rect.top -= this.val$expandSizeTop;
        rect.bottom += this.val$expandSizeBottom;
        rect.left -= this.val$expandSizeLeft;
        rect.right += this.val$expandSizeRight;
        this.val$parentView.setTouchDelegate(new TouchDelegate(rect, this.val$view));
    }
}
