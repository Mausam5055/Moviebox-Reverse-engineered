package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.internal.ParcelableSparseArray;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f28306a = false;

    class a extends AccessibilityDelegateCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BadgeDrawable f28307a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View.AccessibilityDelegate accessibilityDelegate, BadgeDrawable badgeDrawable) {
            super(accessibilityDelegate);
            this.f28307a = badgeDrawable;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(this.f28307a.i());
        }
    }

    class b extends AccessibilityDelegateCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BadgeDrawable f28308a;

        b(BadgeDrawable badgeDrawable) {
            this.f28308a = badgeDrawable;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(this.f28308a.i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(BadgeDrawable badgeDrawable, View view) {
        if (Build.VERSION.SDK_INT < 29 || !ViewCompat.hasAccessibilityDelegate(view)) {
            ViewCompat.setAccessibilityDelegate(view, new b(badgeDrawable));
        } else {
            ViewCompat.setAccessibilityDelegate(view, new a(view.getAccessibilityDelegate(), badgeDrawable));
        }
    }

    public static void c(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        g(badgeDrawable, view, frameLayout);
        if (badgeDrawable.j() != null) {
            badgeDrawable.j().setForeground(badgeDrawable);
        } else {
            if (f28306a) {
                throw new IllegalArgumentException("Trying to reference null customBadgeParent");
            }
            view.getOverlay().add(badgeDrawable);
        }
    }

    public static SparseArray d(Context context, ParcelableSparseArray parcelableSparseArray) {
        SparseArray sparseArray = new SparseArray(parcelableSparseArray.size());
        for (int i11 = 0; i11 < parcelableSparseArray.size(); i11++) {
            int iKeyAt = parcelableSparseArray.keyAt(i11);
            BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i11);
            sparseArray.put(iKeyAt, state != null ? BadgeDrawable.e(context, state) : null);
        }
        return sparseArray;
    }

    public static ParcelableSparseArray e(SparseArray sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            int iKeyAt = sparseArray.keyAt(i11);
            BadgeDrawable badgeDrawable = (BadgeDrawable) sparseArray.valueAt(i11);
            parcelableSparseArray.put(iKeyAt, badgeDrawable != null ? badgeDrawable.t() : null);
        }
        return parcelableSparseArray;
    }

    public static void f(BadgeDrawable badgeDrawable, View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (f28306a || badgeDrawable.j() != null) {
            badgeDrawable.j().setForeground(null);
        } else {
            view.getOverlay().remove(badgeDrawable);
        }
    }

    public static void g(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.S(view, frameLayout);
    }

    static void h(BadgeDrawable badgeDrawable, Resources resources) {
        badgeDrawable.O(resources.getDimensionPixelOffset(R$dimen.mtrl_badge_toolbar_action_menu_item_horizontal_offset));
        badgeDrawable.P(resources.getDimensionPixelOffset(R$dimen.mtrl_badge_toolbar_action_menu_item_vertical_offset));
    }

    public static void i(Rect rect, float f11, float f12, float f13, float f14) {
        rect.set((int) (f11 - f13), (int) (f12 - f14), (int) (f11 + f13), (int) (f12 + f14));
    }
}
