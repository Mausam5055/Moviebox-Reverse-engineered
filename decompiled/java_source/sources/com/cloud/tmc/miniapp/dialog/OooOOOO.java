package com.cloud.tmc.miniapp.dialog;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public class OooOOOO extends com.cloud.tmc.miniapp.dialog.OooO0O0 implements View.OnTouchListener, View.OnClickListener {
    public boolean OooO0o;
    public final BottomSheetBehavior<FrameLayout> OooO0o0;
    public boolean OooO0oO;
    public boolean OooO0oo;

    public final class OooO00o extends AccessibilityDelegateCompat {
        public OooO00o() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
            Intrinsics.h(host, "host");
            Intrinsics.h(info, "info");
            super.onInitializeAccessibilityNodeInfo(host, info);
            if (!OooOOOO.this.OooO0o) {
                info.setDismissable(false);
            } else {
                info.addAction(1048576);
                info.setDismissable(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View host, int i11, Bundle bundle) {
            Intrinsics.h(host, "host");
            if (i11 == 1048576) {
                OooOOOO oooOOOO = OooOOOO.this;
                if (oooOOOO.OooO0o) {
                    oooOOOO.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(host, i11, bundle);
        }
    }

    public final class OooO0O0 extends BottomSheetBehavior.f {
        public OooO0O0() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void onSlide(View bottomSheet, float f11) {
            Intrinsics.h(bottomSheet, "bottomSheet");
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void onStateChanged(View bottomSheet, int i11) {
            Intrinsics.h(bottomSheet, "bottomSheet");
            if (i11 == 5) {
                OooOOOO.this.cancel();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public OooOOOO(Context context, int i11) {
        super(context, i11);
        Intrinsics.h(context, "context");
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = new BottomSheetBehavior<>(getContext(), null);
        this.OooO0o0 = bottomSheetBehavior;
        this.OooO0o = true;
        this.OooO0oO = true;
        bottomSheetBehavior.Y(new OooO0O0());
        bottomSheetBehavior.M0(this.OooO0o);
        supportRequestWindowFeature(1);
    }

    public final View OooO00o(View view) {
        CoordinatorLayout coordinatorLayout = new CoordinatorLayout(getContext());
        coordinatorLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        View view2 = new View(getContext());
        view2.setSoundEffectsEnabled(false);
        view2.setImportantForAccessibility(2);
        view2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        FrameLayout frameLayout = new FrameLayout(getContext());
        CoordinatorLayout.f fVar = new CoordinatorLayout.f(-1, -2);
        fVar.f7909c = 49;
        fVar.o(this.OooO0o0);
        frameLayout.setLayoutParams(fVar);
        ViewExtKt.removeSelf(view);
        frameLayout.addView(view);
        ViewExtKt.removeSelf(view2);
        coordinatorLayout.addView(view2);
        ViewExtKt.removeSelf(frameLayout);
        coordinatorLayout.addView(frameLayout);
        view2.setOnClickListener(this);
        ViewCompat.setAccessibilityDelegate(frameLayout, new OooO00o());
        frameLayout.setOnTouchListener(this);
        return coordinatorLayout;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.OooO0o0.q0() == 5) {
            super.cancel();
        } else {
            this.OooO0o0.U0(5);
        }
    }

    @Override // com.cloud.tmc.miniapp.dialog.OooO0O0, com.cloud.tmc.miniapp.action.ClickAction, android.view.View.OnClickListener
    public void onClick(View view) {
        Intrinsics.h(view, "view");
        if (this.OooO0o && isShowing()) {
            if (!this.OooO0oo) {
                TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
                Intrinsics.g(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…ndowCloseOnTouchOutside))");
                this.OooO0oO = typedArrayObtainStyledAttributes.getBoolean(0, true);
                typedArrayObtainStyledAttributes.recycle();
                this.OooO0oo = true;
            }
            if (this.OooO0oO) {
                cancel();
            }
        }
    }

    @Override // com.cloud.tmc.miniapp.dialog.OooO0O0, androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window == null) {
            return;
        }
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        View decorView = window.getDecorView();
        Intrinsics.g(decorView, "window.decorView");
        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | InputDeviceCompat.SOURCE_TOUCHSCREEN);
        window.setLayout(-1, -1);
    }

    @Override // com.cloud.tmc.miniapp.dialog.OooO0O0, androidx.activity.q, android.app.Dialog
    public void onStart() {
        super.onStart();
        if (this.OooO0o0.q0() != 5) {
            return;
        }
        this.OooO0o0.U0(4);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        if (this.OooO0o == z10) {
            return;
        }
        this.OooO0o = z10;
        this.OooO0o0.M0(z10);
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
        if (z10 && !this.OooO0o) {
            this.OooO0o = true;
        }
        this.OooO0oO = z10;
        this.OooO0oo = true;
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    public void setContentView(int i11) {
        View viewInflate = getLayoutInflater().inflate(i11, (ViewGroup) null, false);
        Intrinsics.g(viewInflate, "layoutInflater.inflate(layoutResId, null, false)");
        super.setContentView(OooO00o(viewInflate));
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    public void setContentView(View view) {
        Intrinsics.h(view, "view");
        super.setContentView(OooO00o(view));
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        Intrinsics.h(view, "view");
        view.setLayoutParams(layoutParams);
        super.setContentView(OooO00o(view));
    }
}
