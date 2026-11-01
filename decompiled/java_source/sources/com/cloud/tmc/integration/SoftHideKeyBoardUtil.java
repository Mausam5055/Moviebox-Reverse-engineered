package com.cloud.tmc.integration;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.cloud.tmc.kernel.log.TmcLogger;

/* JADX INFO: loaded from: classes3.dex */
public class SoftHideKeyBoardUtil {
    private int contentHeight;
    private final FrameLayout.LayoutParams frameLayoutParams;
    private boolean isfirst = true;
    private final View mChildOfContent;
    private final int statusBarHeight;
    private int usableHeightPrevious;

    private SoftHideKeyBoardUtil(Activity activity) {
        View childAt = ((FrameLayout) activity.findViewById(android.R.id.content)).getChildAt(0);
        this.mChildOfContent = childAt;
        childAt.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.cloud.tmc.integration.SoftHideKeyBoardUtil.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (SoftHideKeyBoardUtil.this.isfirst) {
                    SoftHideKeyBoardUtil softHideKeyBoardUtil = SoftHideKeyBoardUtil.this;
                    softHideKeyBoardUtil.contentHeight = softHideKeyBoardUtil.mChildOfContent.getHeight();
                    SoftHideKeyBoardUtil.this.isfirst = false;
                }
                SoftHideKeyBoardUtil.this.possiblyResizeChildOfContent();
            }
        });
        this.frameLayoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        this.statusBarHeight = getStatusBarHeight(activity);
    }

    public static void assistActivity(Activity activity) {
        new SoftHideKeyBoardUtil(activity);
    }

    private int computeUsableHeight() {
        Rect rect = new Rect();
        this.mChildOfContent.getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }

    private int getStatusBarHeight(Activity activity) {
        if (activity == null) {
            return 0;
        }
        try {
            int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
            if (identifier > 0) {
                return activity.getResources().getDimensionPixelSize(identifier);
            }
        } catch (Throwable th2) {
            TmcLogger.e("SoftHideKeyBoardUtil", "Unable to get status bar height", th2);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void possiblyResizeChildOfContent() {
        int iComputeUsableHeight = computeUsableHeight();
        if (iComputeUsableHeight != this.usableHeightPrevious) {
            int height = this.mChildOfContent.getRootView().getHeight();
            int i11 = height - iComputeUsableHeight;
            if (i11 > height / 4) {
                this.frameLayoutParams.height = (height - i11) + this.statusBarHeight;
            } else {
                this.frameLayoutParams.height = this.contentHeight;
            }
            this.mChildOfContent.requestLayout();
            this.usableHeightPrevious = iComputeUsableHeight;
        }
    }
}
