package androidx.core.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.core.R$id;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.view.autofill.AutofillIdCompat;
import androidx.core.view.contentcapture.ContentCaptureSessionCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"PrivateConstructorForUtilityClass"})
public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;

    @Deprecated
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;

    @Deprecated
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;

    @Deprecated
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;

    @Deprecated
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_AUTO = 0;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_NO = 2;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_NO_EXCLUDE_DESCENDANTS = 8;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_YES = 1;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_YES_EXCLUDE_DESCENDANTS = 4;

    @Deprecated
    public static final int LAYER_TYPE_HARDWARE = 2;

    @Deprecated
    public static final int LAYER_TYPE_NONE = 0;

    @Deprecated
    public static final int LAYER_TYPE_SOFTWARE = 1;

    @Deprecated
    public static final int LAYOUT_DIRECTION_INHERIT = 2;

    @Deprecated
    public static final int LAYOUT_DIRECTION_LOCALE = 3;

    @Deprecated
    public static final int LAYOUT_DIRECTION_LTR = 0;

    @Deprecated
    public static final int LAYOUT_DIRECTION_RTL = 1;

    @Deprecated
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;

    @Deprecated
    public static final int MEASURED_SIZE_MASK = 16777215;

    @Deprecated
    public static final int MEASURED_STATE_MASK = -16777216;

    @Deprecated
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;

    @Deprecated
    public static final int OVER_SCROLL_ALWAYS = 0;

    @Deprecated
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;

    @Deprecated
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
    private static final String TAG = "ViewCompat";
    public static final int TYPE_NON_TOUCH = 1;
    public static final int TYPE_TOUCH = 0;
    private static boolean sAccessibilityDelegateCheckFailed = false;
    private static Field sAccessibilityDelegateField = null;
    private static Method sChildrenDrawingOrderMethod = null;
    private static Method sDispatchFinishTemporaryDetach = null;
    private static Method sDispatchStartTemporaryDetach = null;
    private static boolean sTempDetachBound = false;
    private static ThreadLocal<Rect> sThreadLocalRect = null;
    private static WeakHashMap<View, String> sTransitionNameMap = null;
    private static boolean sTryHiddenViewTransformMatrixToGlobal = true;
    private static WeakHashMap<View, ViewPropertyAnimatorCompat> sViewPropertyAnimatorMap;
    private static final int[] ACCESSIBILITY_ACTIONS_RESOURCE_IDS = {R$id.accessibility_custom_action_0, R$id.accessibility_custom_action_1, R$id.accessibility_custom_action_2, R$id.accessibility_custom_action_3, R$id.accessibility_custom_action_4, R$id.accessibility_custom_action_5, R$id.accessibility_custom_action_6, R$id.accessibility_custom_action_7, R$id.accessibility_custom_action_8, R$id.accessibility_custom_action_9, R$id.accessibility_custom_action_10, R$id.accessibility_custom_action_11, R$id.accessibility_custom_action_12, R$id.accessibility_custom_action_13, R$id.accessibility_custom_action_14, R$id.accessibility_custom_action_15, R$id.accessibility_custom_action_16, R$id.accessibility_custom_action_17, R$id.accessibility_custom_action_18, R$id.accessibility_custom_action_19, R$id.accessibility_custom_action_20, R$id.accessibility_custom_action_21, R$id.accessibility_custom_action_22, R$id.accessibility_custom_action_23, R$id.accessibility_custom_action_24, R$id.accessibility_custom_action_25, R$id.accessibility_custom_action_26, R$id.accessibility_custom_action_27, R$id.accessibility_custom_action_28, R$id.accessibility_custom_action_29, R$id.accessibility_custom_action_30, R$id.accessibility_custom_action_31};
    private static final OnReceiveContentViewBehavior NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR = new OnReceiveContentViewBehavior() { // from class: androidx.core.view.i0
        @Override // androidx.core.view.OnReceiveContentViewBehavior
        public final ContentInfoCompat onReceiveContent(ContentInfoCompat contentInfoCompat) {
            return ViewCompat.lambda$static$0(contentInfoCompat);
        }
    };
    private static final e sAccessibilityPaneVisibilityManager = new e();

    @Retention(RetentionPolicy.SOURCE)
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface NestedScrollType {
    }

    public interface OnUnhandledKeyEventListenerCompat {
        boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollAxis {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollIndicators {
    }

    class a extends f {
        a(int i11, Class cls, int i12) {
            super(i11, cls, i12);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Boolean c(View view) {
            return Boolean.valueOf(l.d(view));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void d(View view, Boolean bool) {
            l.j(view, bool.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public boolean g(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    class b extends f {
        b(int i11, Class cls, int i12, int i13) {
            super(i11, cls, i12, i13);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public CharSequence c(View view) {
            return l.b(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void d(View view, CharSequence charSequence) {
            l.h(view, charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public boolean g(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    class c extends f {
        c(int i11, Class cls, int i12, int i13) {
            super(i11, cls, i12, i13);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public CharSequence c(View view) {
            return n.c(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void d(View view, CharSequence charSequence) {
            n.g(view, charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public boolean g(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    class d extends f {
        d(int i11, Class cls, int i12) {
            super(i11, cls, i12);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Boolean c(View view) {
            return Boolean.valueOf(l.c(view));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void d(View view, Boolean bool) {
            l.g(view, bool.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ViewCompat.f
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public boolean g(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    static class e implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakHashMap f8297a = new WeakHashMap();

        e() {
        }

        private void b(Map.Entry entry) {
            View view = (View) entry.getKey();
            boolean zBooleanValue = ((Boolean) entry.getValue()).booleanValue();
            boolean z10 = view.isShown() && view.getWindowVisibility() == 0;
            if (zBooleanValue != z10) {
                ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, z10 ? 16 : 32);
                entry.setValue(Boolean.valueOf(z10));
            }
        }

        private void c(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        private void e(View view) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }

        void a(View view) {
            this.f8297a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(this);
            if (view.isAttachedToWindow()) {
                c(view);
            }
        }

        void d(View view) {
            this.f8297a.remove(view);
            view.removeOnAttachStateChangeListener(this);
            e(view);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                Iterator it = this.f8297a.entrySet().iterator();
                while (it.hasNext()) {
                    b((Map.Entry) it.next());
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            c(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    static abstract class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f8298a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Class f8299b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f8300c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f8301d;

        f(int i11, Class cls, int i12) {
            this(i11, cls, 0, i12);
        }

        f(int i11, Class cls, int i12, int i13) {
            this.f8298a = i11;
            this.f8299b = cls;
            this.f8301d = i12;
            this.f8300c = i13;
        }

        private boolean b() {
            return Build.VERSION.SDK_INT >= this.f8300c;
        }

        boolean a(Boolean bool, Boolean bool2) {
            return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
        }

        abstract Object c(View view);

        abstract void d(View view, Object obj);

        Object e(View view) {
            if (b()) {
                return c(view);
            }
            Object tag = view.getTag(this.f8298a);
            if (this.f8299b.isInstance(tag)) {
                return tag;
            }
            return null;
        }

        void f(View view, Object obj) {
            if (b()) {
                d(view, obj);
            } else if (g(e(view), obj)) {
                ViewCompat.ensureAccessibilityDelegateCompat(view);
                view.setTag(this.f8298a, obj);
                ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, this.f8301d);
            }
        }

        abstract boolean g(Object obj, Object obj2);
    }

    static class g {
        static WindowInsets a(View view, WindowInsets windowInsets) {
            return ViewGroupCompat.sCompatInsetsDispatchInstalled ? ViewGroupCompat.dispatchApplyWindowInsets(view, windowInsets) : view.dispatchApplyWindowInsets(windowInsets);
        }

        static WindowInsets b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        static void c(View view) {
            view.requestApplyInsets();
        }
    }

    private static class h {

        class a implements View.OnApplyWindowInsetsListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            WindowInsetsCompat f8302a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f8303b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ OnApplyWindowInsetsListener f8304c;

            a(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
                this.f8303b = view;
                this.f8304c = onApplyWindowInsetsListener;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                int i11 = Build.VERSION.SDK_INT;
                if (i11 < 30) {
                    h.a(windowInsets, this.f8303b);
                    if (windowInsetsCompat.equals(this.f8302a)) {
                        return this.f8304c.onApplyWindowInsets(view, windowInsetsCompat).toWindowInsets();
                    }
                }
                this.f8302a = windowInsetsCompat;
                WindowInsetsCompat windowInsetsCompatOnApplyWindowInsets = this.f8304c.onApplyWindowInsets(view, windowInsetsCompat);
                if (i11 >= 30) {
                    return windowInsetsCompatOnApplyWindowInsets.toWindowInsets();
                }
                ViewCompat.requestApplyInsets(view);
                return windowInsetsCompatOnApplyWindowInsets.toWindowInsets();
            }
        }

        static void a(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R$id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        static WindowInsetsCompat b(View view, WindowInsetsCompat windowInsetsCompat, Rect rect) {
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            if (windowInsets != null) {
                return WindowInsetsCompat.toWindowInsetsCompat(view.computeSystemWindowInsets(windowInsets, rect), view);
            }
            rect.setEmpty();
            return windowInsetsCompat;
        }

        static boolean c(View view, float f11, float f12, boolean z10) {
            return view.dispatchNestedFling(f11, f12, z10);
        }

        static boolean d(View view, float f11, float f12) {
            return view.dispatchNestedPreFling(f11, f12);
        }

        static boolean e(View view, int i11, int i12, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i11, i12, iArr, iArr2);
        }

        static boolean f(View view, int i11, int i12, int i13, int i14, int[] iArr) {
            return view.dispatchNestedScroll(i11, i12, i13, i14, iArr);
        }

        static ColorStateList g(View view) {
            return view.getBackgroundTintList();
        }

        static PorterDuff.Mode h(View view) {
            return view.getBackgroundTintMode();
        }

        static float i(View view) {
            return view.getElevation();
        }

        static String j(View view) {
            return view.getTransitionName();
        }

        static float k(View view) {
            return view.getTranslationZ();
        }

        static float l(View view) {
            return view.getZ();
        }

        static boolean m(View view) {
            return view.hasNestedScrollingParent();
        }

        static boolean n(View view) {
            return view.isImportantForAccessibility();
        }

        static boolean o(View view) {
            return view.isNestedScrollingEnabled();
        }

        static void p(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        static void q(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        static void r(View view, float f11) {
            view.setElevation(f11);
        }

        static void s(View view, boolean z10) {
            view.setNestedScrollingEnabled(z10);
        }

        static void t(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            a aVar = onApplyWindowInsetsListener != null ? new a(view, onApplyWindowInsetsListener) : null;
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(R$id.tag_on_apply_window_listener, aVar);
            }
            if (view.getTag(R$id.tag_compat_insets_dispatch) != null) {
                return;
            }
            if (aVar != null) {
                view.setOnApplyWindowInsetsListener(aVar);
            } else {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R$id.tag_window_insets_animation_callback));
            }
        }

        static void u(View view, String str) {
            view.setTransitionName(str);
        }

        static void v(View view, float f11) {
            view.setTranslationZ(f11);
        }

        static void w(View view, float f11) {
            view.setZ(f11);
        }

        static boolean x(View view, int i11) {
            return view.startNestedScroll(i11);
        }

        static void y(View view) {
            view.stopNestedScroll();
        }
    }

    private static class i {
        public static WindowInsetsCompat a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets);
            windowInsetsCompat.setRootWindowInsets(windowInsetsCompat);
            windowInsetsCompat.copyRootViewBounds(view.getRootView());
            return windowInsetsCompat;
        }

        static int b(View view) {
            return view.getScrollIndicators();
        }

        static void c(View view, int i11) {
            view.setScrollIndicators(i11);
        }

        static void d(View view, int i11, int i12) {
            view.setScrollIndicators(i11, i12);
        }
    }

    static class j {
        static void a(View view) {
            view.cancelDragAndDrop();
        }

        static void b(View view) {
            view.dispatchFinishTemporaryDetach();
        }

        static void c(View view) {
            view.dispatchStartTemporaryDetach();
        }

        static void d(View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }

        static boolean e(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object obj, int i11) {
            return view.startDragAndDrop(clipData, dragShadowBuilder, obj, i11);
        }

        static void f(View view, View.DragShadowBuilder dragShadowBuilder) {
            view.updateDragShadow(dragShadowBuilder);
        }
    }

    static class k {
        static void a(View view, Collection<View> collection, int i11) {
            view.addKeyboardNavigationClusters(collection, i11);
        }

        public static AutofillId b(View view) {
            return view.getAutofillId();
        }

        static int c(View view) {
            return view.getImportantForAutofill();
        }

        static int d(View view) {
            return view.getNextClusterForwardId();
        }

        static boolean e(View view) {
            return view.hasExplicitFocusable();
        }

        static boolean f(View view) {
            return view.isFocusedByDefault();
        }

        static boolean g(View view) {
            return view.isImportantForAutofill();
        }

        static boolean h(View view) {
            return view.isKeyboardNavigationCluster();
        }

        static View i(View view, View view2, int i11) {
            return view.keyboardNavigationClusterSearch(view2, i11);
        }

        static boolean j(View view) {
            return view.restoreDefaultFocus();
        }

        static void k(View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        static void l(View view, boolean z10) {
            view.setFocusedByDefault(z10);
        }

        static void m(View view, int i11) {
            view.setImportantForAutofill(i11);
        }

        static void n(View view, boolean z10) {
            view.setKeyboardNavigationCluster(z10);
        }

        static void o(View view, int i11) {
            view.setNextClusterForwardId(i11);
        }

        static void p(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    static class l {
        static void a(View view, final OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            androidx.collection.x0 x0Var = (androidx.collection.x0) view.getTag(R$id.tag_unhandled_key_listeners);
            if (x0Var == null) {
                x0Var = new androidx.collection.x0();
                view.setTag(R$id.tag_unhandled_key_listeners, x0Var);
            }
            Objects.requireNonNull(onUnhandledKeyEventListenerCompat);
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: androidx.core.view.j0
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return onUnhandledKeyEventListenerCompat.onUnhandledKeyEvent(view2, keyEvent);
                }
            };
            x0Var.put(onUnhandledKeyEventListenerCompat, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        static CharSequence b(View view) {
            return view.getAccessibilityPaneTitle();
        }

        static boolean c(View view) {
            return view.isAccessibilityHeading();
        }

        static boolean d(View view) {
            return view.isScreenReaderFocusable();
        }

        static void e(View view, OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            androidx.collection.x0 x0Var = (androidx.collection.x0) view.getTag(R$id.tag_unhandled_key_listeners);
            if (x0Var == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) x0Var.get(onUnhandledKeyEventListenerCompat)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        static <T> T f(View view, int i11) {
            return (T) view.requireViewById(i11);
        }

        static void g(View view, boolean z10) {
            view.setAccessibilityHeading(z10);
        }

        static void h(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        public static void i(View view, AutofillIdCompat autofillIdCompat) {
            view.setAutofillId(autofillIdCompat == null ? null : autofillIdCompat.toAutofillId());
        }

        static void j(View view, boolean z10) {
            view.setScreenReaderFocusable(z10);
        }
    }

    private static class m {
        static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        static ContentCaptureSession b(View view) {
            return view.getContentCaptureSession();
        }

        static List<Rect> c(View view) {
            return view.getSystemGestureExclusionRects();
        }

        static void d(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i11, int i12) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i11, i12);
        }

        static void e(View view, ContentCaptureSessionCompat contentCaptureSessionCompat) {
            view.setContentCaptureSession(contentCaptureSessionCompat == null ? null : contentCaptureSessionCompat.toContentCaptureSession());
        }

        static void f(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }

        static void g(View view, Matrix matrix) {
            view.transformMatrixToGlobal(matrix);
        }
    }

    private static class n {
        static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        static int b(View view) {
            return view.getImportantForContentCapture();
        }

        static CharSequence c(View view) {
            return view.getStateDescription();
        }

        public static WindowInsetsControllerCompat d(View view) {
            WindowInsetsController windowInsetsController = view.getWindowInsetsController();
            if (windowInsetsController != null) {
                return WindowInsetsControllerCompat.toWindowInsetsControllerCompat(windowInsetsController);
            }
            return null;
        }

        static boolean e(View view) {
            return view.isImportantForContentCapture();
        }

        static void f(View view, int i11) {
            view.setImportantForContentCapture(i11);
        }

        static void g(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    private static final class o {
        public static String[] a(View view) {
            return view.getReceiveContentMimeTypes();
        }

        public static ContentInfoCompat b(View view, ContentInfoCompat contentInfoCompat) {
            ContentInfo contentInfo = contentInfoCompat.toContentInfo();
            ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfo);
            if (contentInfoPerformReceiveContent == null) {
                return null;
            }
            return contentInfoPerformReceiveContent == contentInfo ? contentInfoCompat : ContentInfoCompat.toContentInfoCompat(contentInfoPerformReceiveContent);
        }

        public static void c(View view, String[] strArr, OnReceiveContentListener onReceiveContentListener) {
            if (onReceiveContentListener == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new p(onReceiveContentListener));
            }
        }
    }

    private static final class p implements android.view.OnReceiveContentListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final OnReceiveContentListener f8305a;

        p(OnReceiveContentListener onReceiveContentListener) {
            this.f8305a = onReceiveContentListener;
        }

        public ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
            ContentInfoCompat contentInfoCompat = ContentInfoCompat.toContentInfoCompat(contentInfo);
            ContentInfoCompat contentInfoCompatOnReceiveContent = this.f8305a.onReceiveContent(view, contentInfoCompat);
            if (contentInfoCompatOnReceiveContent == null) {
                return null;
            }
            return contentInfoCompatOnReceiveContent == contentInfoCompat ? contentInfo : contentInfoCompatOnReceiveContent.toContentInfo();
        }
    }

    static class q {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final ArrayList f8306d = new ArrayList();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakHashMap f8307a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SparseArray f8308b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WeakReference f8309c = null;

        q() {
        }

        static q a(View view) {
            q qVar = (q) view.getTag(R$id.tag_unhandled_key_event_manager);
            if (qVar != null) {
                return qVar;
            }
            q qVar2 = new q();
            view.setTag(R$id.tag_unhandled_key_event_manager, qVar2);
            return qVar2;
        }

        private View c(View view, KeyEvent keyEvent) {
            WeakHashMap weakHashMap = this.f8307a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View viewC = c(viewGroup.getChildAt(childCount), keyEvent);
                        if (viewC != null) {
                            return viewC;
                        }
                    }
                }
                if (e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        private SparseArray d() {
            if (this.f8308b == null) {
                this.f8308b = new SparseArray();
            }
            return this.f8308b;
        }

        private boolean e(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R$id.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((OnUnhandledKeyEventListenerCompat) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        private void g() {
            WeakHashMap weakHashMap = this.f8307a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList = f8306d;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                try {
                    if (this.f8307a == null) {
                        this.f8307a = new WeakHashMap();
                    }
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ArrayList arrayList2 = f8306d;
                        View view = (View) ((WeakReference) arrayList2.get(size)).get();
                        if (view == null) {
                            arrayList2.remove(size);
                        } else {
                            this.f8307a.put(view, Boolean.TRUE);
                            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                                this.f8307a.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        static void h(View view) {
            ArrayList arrayList = f8306d;
            synchronized (arrayList) {
                try {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (((WeakReference) it.next()).get() == view) {
                            return;
                        }
                    }
                    f8306d.add(new WeakReference(view));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        static void i(View view) {
            synchronized (f8306d) {
                int i11 = 0;
                while (true) {
                    try {
                        ArrayList arrayList = f8306d;
                        if (i11 >= arrayList.size()) {
                            return;
                        }
                        if (((WeakReference) arrayList.get(i11)).get() == view) {
                            arrayList.remove(i11);
                            return;
                        }
                        i11++;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        boolean b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                g();
            }
            View viewC = c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (viewC != null && !KeyEvent.isModifierKey(keyCode)) {
                    d().put(keyCode, new WeakReference(viewC));
                }
            }
            return viewC != null;
        }

        boolean f(KeyEvent keyEvent) {
            WeakReference weakReference;
            int iIndexOfKey;
            WeakReference weakReference2 = this.f8309c;
            if (weakReference2 != null && weakReference2.get() == keyEvent) {
                return false;
            }
            this.f8309c = new WeakReference(keyEvent);
            SparseArray sparseArrayD = d();
            if (keyEvent.getAction() != 1 || (iIndexOfKey = sparseArrayD.indexOfKey(keyEvent.getKeyCode())) < 0) {
                weakReference = null;
            } else {
                weakReference = (WeakReference) sparseArrayD.valueAt(iIndexOfKey);
                sparseArrayD.removeAt(iIndexOfKey);
            }
            if (weakReference == null) {
                weakReference = (WeakReference) sparseArrayD.get(keyEvent.getKeyCode());
            }
            if (weakReference == null) {
                return false;
            }
            View view = (View) weakReference.get();
            if (view != null && view.isAttachedToWindow()) {
                e(view, keyEvent);
            }
            return true;
        }
    }

    @Deprecated
    protected ViewCompat() {
    }

    private static f accessibilityHeadingProperty() {
        return new d(R$id.tag_accessibility_heading, Boolean.class, 28);
    }

    public static int addAccessibilityAction(View view, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
        int availableActionIdFromResources = getAvailableActionIdFromResources(view, charSequence);
        if (availableActionIdFromResources != -1) {
            addAccessibilityAction(view, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(availableActionIdFromResources, charSequence, accessibilityViewCommand));
        }
        return availableActionIdFromResources;
    }

    private static void addAccessibilityAction(View view, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat) {
        ensureAccessibilityDelegateCompat(view);
        removeActionWithId(accessibilityActionCompat.getId(), view);
        getActionList(view).add(accessibilityActionCompat);
        notifyViewAccessibilityStateChangedIfNeeded(view, 0);
    }

    public static void addKeyboardNavigationClusters(View view, Collection<View> collection, int i11) {
        if (Build.VERSION.SDK_INT >= 26) {
            k.a(view, collection, i11);
        }
    }

    public static void addOnUnhandledKeyEventListener(View view, OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
        if (Build.VERSION.SDK_INT >= 28) {
            l.a(view, onUnhandledKeyEventListenerCompat);
            return;
        }
        ArrayList arrayList = (ArrayList) view.getTag(R$id.tag_unhandled_key_listeners);
        if (arrayList == null) {
            arrayList = new ArrayList();
            view.setTag(R$id.tag_unhandled_key_listeners, arrayList);
        }
        arrayList.add(onUnhandledKeyEventListenerCompat);
        if (arrayList.size() == 1) {
            q.h(view);
        }
    }

    public static void addOverlayView(ViewGroup viewGroup, View view) {
        viewGroup.getOverlay().add(view);
        f1.a.a((View) view.getParent(), viewGroup);
    }

    @Deprecated
    public static ViewPropertyAnimatorCompat animate(View view) {
        if (sViewPropertyAnimatorMap == null) {
            sViewPropertyAnimatorMap = new WeakHashMap<>();
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = sViewPropertyAnimatorMap.get(view);
        if (viewPropertyAnimatorCompat != null) {
            return viewPropertyAnimatorCompat;
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
        sViewPropertyAnimatorMap.put(view, viewPropertyAnimatorCompat2);
        return viewPropertyAnimatorCompat2;
    }

    private static void bindTempDetach() {
        try {
            sDispatchStartTemporaryDetach = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", null);
            sDispatchFinishTemporaryDetach = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", null);
        } catch (NoSuchMethodException e11) {
            Log.e(TAG, "Couldn't find method", e11);
        }
        sTempDetachBound = true;
    }

    @Deprecated
    public static boolean canScrollHorizontally(View view, int i11) {
        return view.canScrollHorizontally(i11);
    }

    @Deprecated
    public static boolean canScrollVertically(View view, int i11) {
        return view.canScrollVertically(i11);
    }

    public static void cancelDragAndDrop(View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            j.a(view);
        }
    }

    @Deprecated
    public static int combineMeasuredStates(int i11, int i12) {
        return View.combineMeasuredStates(i11, i12);
    }

    private static void compatOffsetLeftAndRight(View view, int i11) {
        view.offsetLeftAndRight(i11);
        if (view.getVisibility() == 0) {
            tickleInvalidationFlag(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                tickleInvalidationFlag((View) parent);
            }
        }
    }

    private static void compatOffsetTopAndBottom(View view, int i11) {
        view.offsetTopAndBottom(i11);
        if (view.getVisibility() == 0) {
            tickleInvalidationFlag(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                tickleInvalidationFlag((View) parent);
            }
        }
    }

    public static WindowInsetsCompat computeSystemWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, Rect rect) {
        return h.b(view, windowInsetsCompat, rect);
    }

    public static WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        int i11 = Build.VERSION.SDK_INT;
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets windowInsetsA = i11 >= 30 ? n.a(view, windowInsets) : g.a(view, windowInsets);
            if (!windowInsetsA.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(windowInsetsA, view);
            }
        }
        return windowInsetsCompat;
    }

    public static void dispatchFinishTemporaryDetach(View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            j.b(view);
            return;
        }
        if (!sTempDetachBound) {
            bindTempDetach();
        }
        Method method = sDispatchFinishTemporaryDetach;
        if (method == null) {
            view.onFinishTemporaryDetach();
        } else {
            try {
                method.invoke(view, null);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean dispatchNestedFling(View view, float f11, float f12, boolean z10) {
        return h.c(view, f11, f12, z10);
    }

    public static boolean dispatchNestedPreFling(View view, float f11, float f12) {
        return h.d(view, f11, f12);
    }

    public static boolean dispatchNestedPreScroll(View view, int i11, int i12, int[] iArr, int[] iArr2) {
        return h.e(view, i11, i12, iArr, iArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean dispatchNestedPreScroll(View view, int i11, int i12, int[] iArr, int[] iArr2, int i13) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).dispatchNestedPreScroll(i11, i12, iArr, iArr2, i13);
        }
        if (i13 == 0) {
            return dispatchNestedPreScroll(view, i11, i12, iArr, iArr2);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void dispatchNestedScroll(View view, int i11, int i12, int i13, int i14, int[] iArr, int i15, int[] iArr2) {
        if (view instanceof NestedScrollingChild3) {
            ((NestedScrollingChild3) view).dispatchNestedScroll(i11, i12, i13, i14, iArr, i15, iArr2);
        } else {
            dispatchNestedScroll(view, i11, i12, i13, i14, iArr, i15);
        }
    }

    public static boolean dispatchNestedScroll(View view, int i11, int i12, int i13, int i14, int[] iArr) {
        return h.f(view, i11, i12, i13, i14, iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean dispatchNestedScroll(View view, int i11, int i12, int i13, int i14, int[] iArr, int i15) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).dispatchNestedScroll(i11, i12, i13, i14, iArr, i15);
        }
        if (i15 == 0) {
            return dispatchNestedScroll(view, i11, i12, i13, i14, iArr);
        }
        return false;
    }

    public static void dispatchStartTemporaryDetach(View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            j.c(view);
            return;
        }
        if (!sTempDetachBound) {
            bindTempDetach();
        }
        Method method = sDispatchStartTemporaryDetach;
        if (method == null) {
            view.onStartTemporaryDetach();
        } else {
            try {
                method.invoke(view, null);
            } catch (Exception unused) {
            }
        }
    }

    static boolean dispatchUnhandledKeyEventBeforeCallback(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return q.a(view).b(view, keyEvent);
    }

    static boolean dispatchUnhandledKeyEventBeforeHierarchy(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return q.a(view).f(keyEvent);
    }

    public static void enableAccessibleClickableSpanSupport(View view) {
        ensureAccessibilityDelegateCompat(view);
    }

    static void ensureAccessibilityDelegateCompat(View view) {
        AccessibilityDelegateCompat accessibilityDelegate = getAccessibilityDelegate(view);
        if (accessibilityDelegate == null) {
            accessibilityDelegate = new AccessibilityDelegateCompat();
        }
        setAccessibilityDelegate(view, accessibilityDelegate);
    }

    static void fallbackTransformMatrixToGlobal(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            fallbackTransformMatrixToGlobal(view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        matrix.preConcat(view.getMatrix());
    }

    @Deprecated
    public static int generateViewId() {
        return View.generateViewId();
    }

    public static AccessibilityDelegateCompat getAccessibilityDelegate(View view) {
        View.AccessibilityDelegate accessibilityDelegateInternal = getAccessibilityDelegateInternal(view);
        if (accessibilityDelegateInternal == null) {
            return null;
        }
        return accessibilityDelegateInternal instanceof AccessibilityDelegateCompat.a ? ((AccessibilityDelegateCompat.a) accessibilityDelegateInternal).f8276a : new AccessibilityDelegateCompat(accessibilityDelegateInternal);
    }

    private static View.AccessibilityDelegate getAccessibilityDelegateInternal(View view) {
        return Build.VERSION.SDK_INT >= 29 ? m.a(view) : getAccessibilityDelegateThroughReflection(view);
    }

    private static View.AccessibilityDelegate getAccessibilityDelegateThroughReflection(View view) {
        if (sAccessibilityDelegateCheckFailed) {
            return null;
        }
        if (sAccessibilityDelegateField == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                sAccessibilityDelegateField = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                sAccessibilityDelegateCheckFailed = true;
                return null;
            }
        }
        try {
            Object obj = sAccessibilityDelegateField.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            sAccessibilityDelegateCheckFailed = true;
            return null;
        }
    }

    @Deprecated
    public static int getAccessibilityLiveRegion(View view) {
        return view.getAccessibilityLiveRegion();
    }

    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
        if (accessibilityNodeProvider != null) {
            return new AccessibilityNodeProviderCompat(accessibilityNodeProvider);
        }
        return null;
    }

    public static CharSequence getAccessibilityPaneTitle(View view) {
        return (CharSequence) paneTitleProperty().e(view);
    }

    private static List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> getActionList(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R$id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R$id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    @Deprecated
    public static float getAlpha(View view) {
        return view.getAlpha();
    }

    public static AutofillIdCompat getAutofillId(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return AutofillIdCompat.toAutofillIdCompat(k.b(view));
        }
        return null;
    }

    private static int getAvailableActionIdFromResources(View view, CharSequence charSequence) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> actionList = getActionList(view);
        for (int i11 = 0; i11 < actionList.size(); i11++) {
            if (TextUtils.equals(charSequence, actionList.get(i11).getLabel())) {
                return actionList.get(i11).getId();
            }
        }
        int i12 = -1;
        int i13 = 0;
        while (true) {
            int[] iArr = ACCESSIBILITY_ACTIONS_RESOURCE_IDS;
            if (i13 >= iArr.length || i12 != -1) {
                break;
            }
            int i14 = iArr[i13];
            boolean z10 = true;
            for (int i15 = 0; i15 < actionList.size(); i15++) {
                z10 &= actionList.get(i15).getId() != i14;
            }
            if (z10) {
                i12 = i14;
            }
            i13++;
        }
        return i12;
    }

    public static ColorStateList getBackgroundTintList(View view) {
        return h.g(view);
    }

    public static PorterDuff.Mode getBackgroundTintMode(View view) {
        return h.h(view);
    }

    @Deprecated
    public static Rect getClipBounds(View view) {
        return view.getClipBounds();
    }

    public static ContentCaptureSessionCompat getContentCaptureSession(View view) {
        ContentCaptureSession contentCaptureSessionB;
        if (Build.VERSION.SDK_INT < 29 || (contentCaptureSessionB = m.b(view)) == null) {
            return null;
        }
        return ContentCaptureSessionCompat.toContentCaptureSessionCompat(contentCaptureSessionB, view);
    }

    @Deprecated
    public static Display getDisplay(View view) {
        return view.getDisplay();
    }

    public static float getElevation(View view) {
        return h.i(view);
    }

    private static Rect getEmptyTempRect() {
        if (sThreadLocalRect == null) {
            sThreadLocalRect = new ThreadLocal<>();
        }
        Rect rect = sThreadLocalRect.get();
        if (rect == null) {
            rect = new Rect();
            sThreadLocalRect.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static OnReceiveContentViewBehavior getFallback(View view) {
        return view instanceof OnReceiveContentViewBehavior ? (OnReceiveContentViewBehavior) view : NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
    }

    @Deprecated
    public static boolean getFitsSystemWindows(View view) {
        return view.getFitsSystemWindows();
    }

    @Deprecated
    public static int getImportantForAccessibility(View view) {
        return view.getImportantForAccessibility();
    }

    @SuppressLint({"InlinedApi"})
    public static int getImportantForAutofill(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return k.c(view);
        }
        return 0;
    }

    public static int getImportantForContentCapture(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return n.b(view);
        }
        return 0;
    }

    @Deprecated
    public static int getLabelFor(View view) {
        return view.getLabelFor();
    }

    @Deprecated
    public static int getLayerType(View view) {
        return view.getLayerType();
    }

    @Deprecated
    public static int getLayoutDirection(View view) {
        return view.getLayoutDirection();
    }

    @Deprecated
    public static Matrix getMatrix(View view) {
        return view.getMatrix();
    }

    @Deprecated
    public static int getMeasuredHeightAndState(View view) {
        return view.getMeasuredHeightAndState();
    }

    @Deprecated
    public static int getMeasuredState(View view) {
        return view.getMeasuredState();
    }

    @Deprecated
    public static int getMeasuredWidthAndState(View view) {
        return view.getMeasuredWidthAndState();
    }

    @Deprecated
    public static int getMinimumHeight(View view) {
        return view.getMinimumHeight();
    }

    @Deprecated
    public static int getMinimumWidth(View view) {
        return view.getMinimumWidth();
    }

    public static int getNextClusterForwardId(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return k.d(view);
        }
        return -1;
    }

    public static String[] getOnReceiveContentMimeTypes(View view) {
        return Build.VERSION.SDK_INT >= 31 ? o.a(view) : (String[]) view.getTag(R$id.tag_on_receive_content_mime_types);
    }

    @Deprecated
    public static int getOverScrollMode(View view) {
        return view.getOverScrollMode();
    }

    @Deprecated
    public static int getPaddingEnd(View view) {
        return view.getPaddingEnd();
    }

    @Deprecated
    public static int getPaddingStart(View view) {
        return view.getPaddingStart();
    }

    @Deprecated
    public static ViewParent getParentForAccessibility(View view) {
        return view.getParentForAccessibility();
    }

    @Deprecated
    public static float getPivotX(View view) {
        return view.getPivotX();
    }

    @Deprecated
    public static float getPivotY(View view) {
        return view.getPivotY();
    }

    public static WindowInsetsCompat getRootWindowInsets(View view) {
        return i.a(view);
    }

    @Deprecated
    public static float getRotation(View view) {
        return view.getRotation();
    }

    @Deprecated
    public static float getRotationX(View view) {
        return view.getRotationX();
    }

    @Deprecated
    public static float getRotationY(View view) {
        return view.getRotationY();
    }

    @Deprecated
    public static float getScaleX(View view) {
        return view.getScaleX();
    }

    @Deprecated
    public static float getScaleY(View view) {
        return view.getScaleY();
    }

    public static int getScrollIndicators(View view) {
        return i.b(view);
    }

    public static CharSequence getStateDescription(View view) {
        return (CharSequence) stateDescriptionProperty().e(view);
    }

    public static List<Rect> getSystemGestureExclusionRects(View view) {
        return Build.VERSION.SDK_INT >= 29 ? m.c(view) : Collections.emptyList();
    }

    public static String getTransitionName(View view) {
        return h.j(view);
    }

    @Deprecated
    public static float getTranslationX(View view) {
        return view.getTranslationX();
    }

    @Deprecated
    public static float getTranslationY(View view) {
        return view.getTranslationY();
    }

    public static float getTranslationZ(View view) {
        return h.k(view);
    }

    @Deprecated
    public static WindowInsetsControllerCompat getWindowInsetsController(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return n.d(view);
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    return WindowCompat.getInsetsController(window, view);
                }
                return null;
            }
        }
        return null;
    }

    @Deprecated
    public static int getWindowSystemUiVisibility(View view) {
        return view.getWindowSystemUiVisibility();
    }

    @Deprecated
    public static float getX(View view) {
        return view.getX();
    }

    @Deprecated
    public static float getY(View view) {
        return view.getY();
    }

    public static float getZ(View view) {
        return h.l(view);
    }

    public static boolean hasAccessibilityDelegate(View view) {
        return getAccessibilityDelegateInternal(view) != null;
    }

    public static boolean hasExplicitFocusable(View view) {
        return Build.VERSION.SDK_INT >= 26 ? k.e(view) : view.hasFocusable();
    }

    public static boolean hasNestedScrollingParent(View view) {
        return h.m(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean hasNestedScrollingParent(View view, int i11) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).hasNestedScrollingParent(i11);
            return false;
        }
        if (i11 == 0) {
            return hasNestedScrollingParent(view);
        }
        return false;
    }

    @Deprecated
    public static boolean hasOnClickListeners(View view) {
        return view.hasOnClickListeners();
    }

    @Deprecated
    public static boolean hasOverlappingRendering(View view) {
        return view.hasOverlappingRendering();
    }

    @Deprecated
    public static boolean hasTransientState(View view) {
        return view.hasTransientState();
    }

    public static boolean isAccessibilityHeading(View view) {
        Boolean bool = (Boolean) accessibilityHeadingProperty().e(view);
        return bool != null && bool.booleanValue();
    }

    @Deprecated
    public static boolean isAttachedToWindow(View view) {
        return view.isAttachedToWindow();
    }

    public static boolean isFocusedByDefault(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return k.f(view);
        }
        return false;
    }

    public static boolean isImportantForAccessibility(View view) {
        return h.n(view);
    }

    public static boolean isImportantForAutofill(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return k.g(view);
        }
        return true;
    }

    public static boolean isImportantForContentCapture(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return n.e(view);
        }
        return false;
    }

    @Deprecated
    public static boolean isInLayout(View view) {
        return view.isInLayout();
    }

    public static boolean isKeyboardNavigationCluster(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return k.h(view);
        }
        return false;
    }

    @Deprecated
    public static boolean isLaidOut(View view) {
        return view.isLaidOut();
    }

    @Deprecated
    public static boolean isLayoutDirectionResolved(View view) {
        return view.isLayoutDirectionResolved();
    }

    public static boolean isNestedScrollingEnabled(View view) {
        return h.o(view);
    }

    @Deprecated
    public static boolean isOpaque(View view) {
        return view.isOpaque();
    }

    @Deprecated
    public static boolean isPaddingRelative(View view) {
        return view.isPaddingRelative();
    }

    public static boolean isScreenReaderFocusable(View view) {
        Boolean bool = (Boolean) screenReaderFocusableProperty().e(view);
        return bool != null && bool.booleanValue();
    }

    @Deprecated
    public static void jumpDrawablesToCurrentState(View view) {
        view.jumpDrawablesToCurrentState();
    }

    public static View keyboardNavigationClusterSearch(View view, View view2, int i11) {
        if (Build.VERSION.SDK_INT >= 26) {
            return k.i(view, view2, i11);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ContentInfoCompat lambda$static$0(ContentInfoCompat contentInfoCompat) {
        return contentInfoCompat;
    }

    static void notifyViewAccessibilityStateChangedIfNeeded(View view, int i11) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z10 = getAccessibilityPaneTitle(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z10) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z10 ? 32 : 2048);
                accessibilityEventObtain.setContentChangeTypes(i11);
                if (z10) {
                    accessibilityEventObtain.getText().add(getAccessibilityPaneTitle(view));
                    setImportantForAccessibilityIfNeeded(view);
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i11 == 32) {
                AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.setEventType(32);
                accessibilityEventObtain2.setContentChangeTypes(i11);
                accessibilityEventObtain2.setSource(view);
                view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.getText().add(getAccessibilityPaneTitle(view));
                accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
                return;
            }
            if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i11);
                } catch (AbstractMethodError e11) {
                    Log.e(TAG, view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e11);
                }
            }
        }
    }

    public static void offsetLeftAndRight(View view, int i11) {
        view.offsetLeftAndRight(i11);
    }

    public static void offsetTopAndBottom(View view, int i11) {
        view.offsetTopAndBottom(i11);
    }

    public static WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets windowInsetsB = g.b(view, windowInsets);
            if (!windowInsetsB.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(windowInsetsB, view);
            }
        }
        return windowInsetsCompat;
    }

    @Deprecated
    public static void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Deprecated
    public static void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat.unwrap());
    }

    @Deprecated
    public static void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onPopulateAccessibilityEvent(accessibilityEvent);
    }

    private static f paneTitleProperty() {
        return new b(R$id.tag_accessibility_pane_title, CharSequence.class, 8, 28);
    }

    @Deprecated
    public static boolean performAccessibilityAction(View view, int i11, Bundle bundle) {
        return view.performAccessibilityAction(i11, bundle);
    }

    public static boolean performHapticFeedback(View view, int i11) {
        int feedbackConstantOrFallback = HapticFeedbackConstantsCompat.getFeedbackConstantOrFallback(i11);
        if (feedbackConstantOrFallback == -1) {
            return false;
        }
        return view.performHapticFeedback(feedbackConstantOrFallback);
    }

    public static boolean performHapticFeedback(View view, int i11, int i12) {
        int feedbackConstantOrFallback = HapticFeedbackConstantsCompat.getFeedbackConstantOrFallback(i11);
        if (feedbackConstantOrFallback == -1) {
            return false;
        }
        return view.performHapticFeedback(feedbackConstantOrFallback, i12);
    }

    public static ContentInfoCompat performReceiveContent(View view, ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("performReceiveContent: ");
            sb2.append(contentInfoCompat);
            sb2.append(", view=");
            sb2.append(view.getClass().getSimpleName());
            sb2.append("[");
            sb2.append(view.getId());
            sb2.append("]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return o.b(view, contentInfoCompat);
        }
        OnReceiveContentListener onReceiveContentListener = (OnReceiveContentListener) view.getTag(R$id.tag_on_receive_content_listener);
        if (onReceiveContentListener == null) {
            return getFallback(view).onReceiveContent(contentInfoCompat);
        }
        ContentInfoCompat contentInfoCompatOnReceiveContent = onReceiveContentListener.onReceiveContent(view, contentInfoCompat);
        if (contentInfoCompatOnReceiveContent == null) {
            return null;
        }
        return getFallback(view).onReceiveContent(contentInfoCompatOnReceiveContent);
    }

    @Deprecated
    public static void postInvalidateOnAnimation(View view) {
        view.postInvalidateOnAnimation();
    }

    @Deprecated
    public static void postInvalidateOnAnimation(View view, int i11, int i12, int i13, int i14) {
        view.postInvalidateOnAnimation(i11, i12, i13, i14);
    }

    @Deprecated
    public static void postOnAnimation(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    @SuppressLint({"LambdaLast"})
    @Deprecated
    public static void postOnAnimationDelayed(View view, Runnable runnable, long j11) {
        view.postOnAnimationDelayed(runnable, j11);
    }

    public static void removeAccessibilityAction(View view, int i11) {
        removeActionWithId(i11, view);
        notifyViewAccessibilityStateChangedIfNeeded(view, 0);
    }

    private static void removeActionWithId(int i11, View view) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> actionList = getActionList(view);
        for (int i12 = 0; i12 < actionList.size(); i12++) {
            if (actionList.get(i12).getId() == i11) {
                actionList.remove(i12);
                return;
            }
        }
    }

    public static void removeOnUnhandledKeyEventListener(View view, OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
        if (Build.VERSION.SDK_INT >= 28) {
            l.e(view, onUnhandledKeyEventListenerCompat);
            return;
        }
        ArrayList arrayList = (ArrayList) view.getTag(R$id.tag_unhandled_key_listeners);
        if (arrayList != null) {
            arrayList.remove(onUnhandledKeyEventListenerCompat);
            if (arrayList.size() == 0) {
                q.i(view);
            }
        }
    }

    public static void replaceAccessibilityAction(View view, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
        if (accessibilityViewCommand == null && charSequence == null) {
            removeAccessibilityAction(view, accessibilityActionCompat.getId());
        } else {
            addAccessibilityAction(view, accessibilityActionCompat.createReplacementAction(charSequence, accessibilityViewCommand));
        }
    }

    public static void requestApplyInsets(View view) {
        g.c(view);
    }

    public static <T extends View> T requireViewById(View view, int i11) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) l.f(view, i11);
        }
        T t11 = (T) view.findViewById(i11);
        if (t11 != null) {
            return t11;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this View");
    }

    @Deprecated
    public static int resolveSizeAndState(int i11, int i12, int i13) {
        return View.resolveSizeAndState(i11, i12, i13);
    }

    public static boolean restoreDefaultFocus(View view) {
        return Build.VERSION.SDK_INT >= 26 ? k.j(view) : view.requestFocus();
    }

    public static void saveAttributeDataForStyleable(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i11, int i12) {
        if (Build.VERSION.SDK_INT >= 29) {
            m.d(view, context, iArr, attributeSet, typedArray, i11, i12);
        }
    }

    private static f screenReaderFocusableProperty() {
        return new a(R$id.tag_screen_reader_focusable, Boolean.class, 28);
    }

    public static void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        if (accessibilityDelegateCompat == null && (getAccessibilityDelegateInternal(view) instanceof AccessibilityDelegateCompat.a)) {
            accessibilityDelegateCompat = new AccessibilityDelegateCompat();
        }
        setImportantForAccessibilityIfNeeded(view);
        view.setAccessibilityDelegate(accessibilityDelegateCompat == null ? null : accessibilityDelegateCompat.getBridge());
    }

    public static void setAccessibilityHeading(View view, boolean z10) {
        accessibilityHeadingProperty().f(view, Boolean.valueOf(z10));
    }

    @Deprecated
    public static void setAccessibilityLiveRegion(View view, int i11) {
        view.setAccessibilityLiveRegion(i11);
    }

    public static void setAccessibilityPaneTitle(View view, CharSequence charSequence) {
        paneTitleProperty().f(view, charSequence);
        if (charSequence != null) {
            sAccessibilityPaneVisibilityManager.a(view);
        } else {
            sAccessibilityPaneVisibilityManager.d(view);
        }
    }

    @Deprecated
    public static void setActivated(View view, boolean z10) {
        view.setActivated(z10);
    }

    @Deprecated
    public static void setAlpha(View view, float f11) {
        view.setAlpha(f11);
    }

    public static void setAutofillHints(View view, String... strArr) {
        if (Build.VERSION.SDK_INT >= 26) {
            k.k(view, strArr);
        }
    }

    public static void setAutofillId(View view, AutofillIdCompat autofillIdCompat) {
        if (Build.VERSION.SDK_INT >= 28) {
            l.i(view, autofillIdCompat);
        }
    }

    @Deprecated
    public static void setBackground(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void setBackgroundTintList(View view, ColorStateList colorStateList) {
        h.p(view, colorStateList);
    }

    public static void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
        h.q(view, mode);
    }

    @SuppressLint({"BanUncheckedReflection"})
    @Deprecated
    public static void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z10) {
        if (sChildrenDrawingOrderMethod == null) {
            try {
                sChildrenDrawingOrderMethod = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e11) {
                Log.e(TAG, "Unable to find childrenDrawingOrderEnabled", e11);
            }
            sChildrenDrawingOrderMethod.setAccessible(true);
        }
        try {
            sChildrenDrawingOrderMethod.invoke(viewGroup, Boolean.valueOf(z10));
        } catch (IllegalAccessException e12) {
            Log.e(TAG, "Unable to invoke childrenDrawingOrderEnabled", e12);
        } catch (IllegalArgumentException e13) {
            Log.e(TAG, "Unable to invoke childrenDrawingOrderEnabled", e13);
        } catch (InvocationTargetException e14) {
            Log.e(TAG, "Unable to invoke childrenDrawingOrderEnabled", e14);
        }
    }

    @Deprecated
    public static void setClipBounds(View view, Rect rect) {
        view.setClipBounds(rect);
    }

    public static void setContentCaptureSession(View view, ContentCaptureSessionCompat contentCaptureSessionCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            m.e(view, contentCaptureSessionCompat);
        }
    }

    public static void setElevation(View view, float f11) {
        h.r(view, f11);
    }

    @Deprecated
    public static void setFitsSystemWindows(View view, boolean z10) {
        view.setFitsSystemWindows(z10);
    }

    public static void setFocusedByDefault(View view, boolean z10) {
        if (Build.VERSION.SDK_INT >= 26) {
            k.l(view, z10);
        }
    }

    @Deprecated
    public static void setHasTransientState(View view, boolean z10) {
        view.setHasTransientState(z10);
    }

    @Deprecated
    public static void setImportantForAccessibility(View view, int i11) {
        view.setImportantForAccessibility(i11);
    }

    private static void setImportantForAccessibilityIfNeeded(View view) {
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    public static void setImportantForAutofill(View view, int i11) {
        if (Build.VERSION.SDK_INT >= 26) {
            k.m(view, i11);
        }
    }

    public static void setImportantForContentCapture(View view, int i11) {
        if (Build.VERSION.SDK_INT >= 30) {
            n.f(view, i11);
        }
    }

    public static void setKeyboardNavigationCluster(View view, boolean z10) {
        if (Build.VERSION.SDK_INT >= 26) {
            k.n(view, z10);
        }
    }

    @Deprecated
    public static void setLabelFor(View view, int i11) {
        view.setLabelFor(i11);
    }

    @Deprecated
    public static void setLayerPaint(View view, Paint paint) {
        view.setLayerPaint(paint);
    }

    @Deprecated
    public static void setLayerType(View view, int i11, Paint paint) {
        view.setLayerType(i11, paint);
    }

    @Deprecated
    public static void setLayoutDirection(View view, int i11) {
        view.setLayoutDirection(i11);
    }

    public static void setNestedScrollingEnabled(View view, boolean z10) {
        h.s(view, z10);
    }

    public static void setNextClusterForwardId(View view, int i11) {
        if (Build.VERSION.SDK_INT >= 26) {
            k.o(view, i11);
        }
    }

    public static void setOnApplyWindowInsetsListener(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        h.t(view, onApplyWindowInsetsListener);
    }

    public static void setOnReceiveContentListener(View view, String[] strArr, OnReceiveContentListener onReceiveContentListener) {
        if (Build.VERSION.SDK_INT >= 31) {
            o.c(view, strArr, onReceiveContentListener);
            return;
        }
        if (strArr == null || strArr.length == 0) {
            strArr = null;
        }
        boolean z10 = false;
        if (onReceiveContentListener != null) {
            androidx.core.util.i.b(strArr != null, "When the listener is set, MIME types must also be set");
        }
        if (strArr != null) {
            for (String str : strArr) {
                if (str.startsWith("*")) {
                    z10 = true;
                    break;
                }
            }
            androidx.core.util.i.b(!z10, "A MIME type set here must not start with *: " + Arrays.toString(strArr));
        }
        view.setTag(R$id.tag_on_receive_content_mime_types, strArr);
        view.setTag(R$id.tag_on_receive_content_listener, onReceiveContentListener);
    }

    @Deprecated
    public static void setOverScrollMode(View view, int i11) {
        view.setOverScrollMode(i11);
    }

    @Deprecated
    public static void setPaddingRelative(View view, int i11, int i12, int i13, int i14) {
        view.setPaddingRelative(i11, i12, i13, i14);
    }

    @Deprecated
    public static void setPivotX(View view, float f11) {
        view.setPivotX(f11);
    }

    @Deprecated
    public static void setPivotY(View view, float f11) {
        view.setPivotY(f11);
    }

    public static void setPointerIcon(View view, PointerIconCompat pointerIconCompat) {
        if (Build.VERSION.SDK_INT >= 24) {
            j.d(view, h0.a(pointerIconCompat != null ? pointerIconCompat.getPointerIcon() : null));
        }
    }

    @Deprecated
    public static void setRotation(View view, float f11) {
        view.setRotation(f11);
    }

    @Deprecated
    public static void setRotationX(View view, float f11) {
        view.setRotationX(f11);
    }

    @Deprecated
    public static void setRotationY(View view, float f11) {
        view.setRotationY(f11);
    }

    @Deprecated
    public static void setSaveFromParentEnabled(View view, boolean z10) {
        view.setSaveFromParentEnabled(z10);
    }

    @Deprecated
    public static void setScaleX(View view, float f11) {
        view.setScaleX(f11);
    }

    @Deprecated
    public static void setScaleY(View view, float f11) {
        view.setScaleY(f11);
    }

    public static void setScreenReaderFocusable(View view, boolean z10) {
        screenReaderFocusableProperty().f(view, Boolean.valueOf(z10));
    }

    public static void setScrollIndicators(View view, int i11) {
        i.c(view, i11);
    }

    public static void setScrollIndicators(View view, int i11, int i12) {
        i.d(view, i11, i12);
    }

    public static void setStateDescription(View view, CharSequence charSequence) {
        stateDescriptionProperty().f(view, charSequence);
    }

    public static void setSystemGestureExclusionRects(View view, List<Rect> list) {
        if (Build.VERSION.SDK_INT >= 29) {
            m.f(view, list);
        }
    }

    public static void setTooltipText(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            k.p(view, charSequence);
        }
    }

    public static void setTransitionName(View view, String str) {
        h.u(view, str);
    }

    @Deprecated
    public static void setTranslationX(View view, float f11) {
        view.setTranslationX(f11);
    }

    @Deprecated
    public static void setTranslationY(View view, float f11) {
        view.setTranslationY(f11);
    }

    public static void setTranslationZ(View view, float f11) {
        h.v(view, f11);
    }

    public static void setWindowInsetsAnimationCallback(View view, WindowInsetsAnimationCompat.Callback callback) {
        WindowInsetsAnimationCompat.setCallback(view, callback);
    }

    @Deprecated
    public static void setX(View view, float f11) {
        view.setX(f11);
    }

    @Deprecated
    public static void setY(View view, float f11) {
        view.setY(f11);
    }

    public static void setZ(View view, float f11) {
        h.w(view, f11);
    }

    public static boolean startDragAndDrop(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object obj, int i11) {
        return Build.VERSION.SDK_INT >= 24 ? j.e(view, clipData, dragShadowBuilder, obj, i11) : view.startDrag(clipData, dragShadowBuilder, obj, i11);
    }

    public static boolean startNestedScroll(View view, int i11) {
        return h.x(view, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean startNestedScroll(View view, int i11, int i12) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).startNestedScroll(i11, i12);
        }
        if (i12 == 0) {
            return startNestedScroll(view, i11);
        }
        return false;
    }

    private static f stateDescriptionProperty() {
        return new c(R$id.tag_state_description, CharSequence.class, 64, 30);
    }

    public static void stopNestedScroll(View view) {
        h.y(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void stopNestedScroll(View view, int i11) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).stopNestedScroll(i11);
        } else if (i11 == 0) {
            stopNestedScroll(view);
        }
    }

    private static void tickleInvalidationFlag(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    @SuppressLint({"NewApi"})
    public static void transformMatrixToGlobal(View view, Matrix matrix) {
        if (Build.VERSION.SDK_INT >= 29) {
            m.g(view, matrix);
            return;
        }
        if (sTryHiddenViewTransformMatrixToGlobal) {
            try {
                m.g(view, matrix);
                return;
            } catch (NoSuchMethodError unused) {
                sTryHiddenViewTransformMatrixToGlobal = false;
            }
        }
        fallbackTransformMatrixToGlobal(view, matrix);
    }

    public static void updateDragShadow(View view, View.DragShadowBuilder dragShadowBuilder) {
        if (Build.VERSION.SDK_INT >= 24) {
            j.f(view, dragShadowBuilder);
        }
    }
}
