package com.google.android.material.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.R$attr;
import com.google.android.material.R$string;
import com.google.android.material.R$style;

/* JADX INFO: loaded from: classes4.dex */
public class BottomSheetDragHandleView extends AppCompatImageView implements AccessibilityManager.AccessibilityStateChangeListener {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f28441m = R$style.Widget_Material3_BottomSheet_DragHandle;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AccessibilityManager f28442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BottomSheetBehavior f28443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f28445g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f28446h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f28447i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f28448j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f28449k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final BottomSheetBehavior.f f28450l;

    class a extends BottomSheetBehavior.f {
        a() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void onSlide(View view, float f11) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void onStateChanged(View view, int i11) {
            BottomSheetDragHandleView.this.i(i11);
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            if (accessibilityEvent.getEventType() == 1) {
                BottomSheetDragHandleView.this.e();
            }
        }
    }

    public BottomSheetDragHandleView(@NonNull Context context) {
        this(context, null);
    }

    public BottomSheetDragHandleView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomSheetDragHandleStyle);
    }

    public BottomSheetDragHandleView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(bb.a.c(context, attributeSet, i11, f28441m), attributeSet, i11);
        this.f28447i = getResources().getString(R$string.bottomsheet_action_expand);
        this.f28448j = getResources().getString(R$string.bottomsheet_action_collapse);
        this.f28449k = getResources().getString(R$string.bottomsheet_drag_handle_clicked);
        this.f28450l = new a();
        this.f28442d = (AccessibilityManager) getContext().getSystemService("accessibility");
        j();
        ViewCompat.setAccessibilityDelegate(this, new b());
    }

    private void d(String str) {
        if (this.f28442d == null) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(16384);
        accessibilityEventObtain.getText().add(str);
        this.f28442d.sendAccessibilityEvent(accessibilityEventObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        boolean z10 = false;
        if (!this.f28445g) {
            return false;
        }
        d(this.f28449k);
        if (!this.f28443e.v0() && !this.f28443e.a1()) {
            z10 = true;
        }
        int iQ0 = this.f28443e.q0();
        int i11 = 6;
        int i12 = 3;
        if (iQ0 == 4) {
            if (!z10) {
                i11 = i12;
            }
        } else if (iQ0 != 3) {
            if (!this.f28446h) {
                i12 = 4;
            }
            i11 = i12;
        } else if (!z10) {
            i11 = 4;
        }
        this.f28443e.U0(i11);
        return true;
    }

    private BottomSheetBehavior f() {
        View viewG = this;
        while (true) {
            viewG = g(viewG);
            if (viewG == null) {
                return null;
            }
            ViewGroup.LayoutParams layoutParams = viewG.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) layoutParams).f();
                if (cVarF instanceof BottomSheetBehavior) {
                    return (BottomSheetBehavior) cVarF;
                }
            }
        }
    }

    private static View g(View view) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean h(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        return e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(int i11) {
        if (i11 == 4) {
            this.f28446h = true;
        } else if (i11 == 3) {
            this.f28446h = false;
        }
        ViewCompat.replaceAccessibilityAction(this, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK, this.f28446h ? this.f28447i : this.f28448j, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.d
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                return this.f28474a.h(view, commandArguments);
            }
        });
    }

    private void j() {
        this.f28445g = this.f28444f && this.f28443e != null;
        ViewCompat.setImportantForAccessibility(this, this.f28443e == null ? 2 : 1);
        setClickable(this.f28445g);
    }

    private void setBottomSheetBehavior(@Nullable BottomSheetBehavior<?> bottomSheetBehavior) {
        BottomSheetBehavior bottomSheetBehavior2 = this.f28443e;
        if (bottomSheetBehavior2 != null) {
            bottomSheetBehavior2.B0(this.f28450l);
            this.f28443e.G0(null);
        }
        this.f28443e = bottomSheetBehavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.G0(this);
            i(this.f28443e.q0());
            this.f28443e.Y(this.f28450l);
        }
        j();
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean z10) {
        this.f28444f = z10;
        j();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setBottomSheetBehavior(f());
        AccessibilityManager accessibilityManager = this.f28442d;
        if (accessibilityManager != null) {
            accessibilityManager.addAccessibilityStateChangeListener(this);
            onAccessibilityStateChanged(this.f28442d.isEnabled());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        AccessibilityManager accessibilityManager = this.f28442d;
        if (accessibilityManager != null) {
            accessibilityManager.removeAccessibilityStateChangeListener(this);
        }
        setBottomSheetBehavior(null);
        super.onDetachedFromWindow();
    }
}
