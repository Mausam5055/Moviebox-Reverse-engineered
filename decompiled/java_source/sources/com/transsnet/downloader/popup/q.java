package com.transsnet.downloader.popup;

import android.view.View;
import com.blankj.utilcode.util.y;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f59568a = new q();

    private q() {
    }

    public final int[] a(View anchorView, View contentView) {
        Intrinsics.h(anchorView, "anchorView");
        Intrinsics.h(contentView, "contentView");
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        anchorView.getLocationOnScreen(iArr2);
        int height = anchorView.getHeight();
        int iC = y.c();
        int iE = y.e();
        contentView.measure(0, 0);
        int measuredHeight = contentView.getMeasuredHeight();
        int measuredWidth = contentView.getMeasuredWidth();
        int i11 = iArr2[1];
        if ((iC - i11) - height < measuredHeight) {
            iArr[0] = iE - measuredWidth;
            iArr[1] = i11 - measuredHeight;
        } else {
            iArr[0] = iE - measuredWidth;
            iArr[1] = i11 + height;
        }
        return iArr;
    }
}
