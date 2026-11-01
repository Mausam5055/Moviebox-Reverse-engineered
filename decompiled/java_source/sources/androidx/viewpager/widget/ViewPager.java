package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final boolean USE_CACHE = false;
    private int mActivePointerId;
    PagerAdapter mAdapter;
    private List<g> mAdapterChangeListeners;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private ArrayList<View> mDrawingOrderedChildren;
    private final Runnable mEndScrollRunnable;
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private h mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsScrollStarted;
    private boolean mIsUnableToDrag;
    private final ArrayList<d> mItems;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset;
    private EdgeEffect mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private j mObserver;
    private int mOffscreenPageLimit;
    private h mOnPageChangeListener;
    private List<h> mOnPageChangeListeners;
    private int mPageMargin;
    private i mPageTransformer;
    private int mPageTransformerLayerType;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState;
    private ClassLoader mRestoredClassLoader;
    private int mRestoredCurItem;
    private EdgeEffect mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private final d mTempItem;
    private final Rect mTempRect;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    static final int[] LAYOUT_ATTRS = {R.attr.layout_gravity};
    private static final Comparator<d> COMPARATOR = new Comparator<d>() { // from class: androidx.viewpager.widget.ViewPager.1
        @Override // java.util.Comparator
        public int compare(d dVar, d dVar2) {
            return dVar.f15265b - dVar2.f15265b;
        }
    };
    private static final Interpolator sInterpolator = new a();
    private static final ViewPositionComparator sPositionComparator = new ViewPositionComparator();

    /* JADX INFO: loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        Parcelable adapterState;
        ClassLoader loader;
        int position;

        static class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.position = parcel.readInt();
            this.adapterState = parcel.readParcelable(classLoader);
            this.loader = classLoader;
        }

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.adapterState, i11);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static class ViewPositionComparator implements Comparator<View> {
        ViewPositionComparator() {
        }

        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            e eVar = (e) view.getLayoutParams();
            e eVar2 = (e) view2.getLayoutParams();
            boolean z10 = eVar.f15269a;
            if (z10 != eVar2.f15269a) {
                return z10 ? 1 : -1;
            }
            return eVar.f15273e - eVar2.f15273e;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f11) {
            float f12 = f11 - 1.0f;
            return (f12 * f12 * f12 * f12 * f12) + 1.0f;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class b implements OnApplyWindowInsetsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f15262a = new Rect();

        b() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            WindowInsetsCompat windowInsetsCompatOnApplyWindowInsets = ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
            if (windowInsetsCompatOnApplyWindowInsets.isConsumed()) {
                return windowInsetsCompatOnApplyWindowInsets;
            }
            Rect rect = this.f15262a;
            rect.left = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetLeft();
            rect.top = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetTop();
            rect.right = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetRight();
            rect.bottom = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetBottom();
            int childCount = ViewPager.this.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                WindowInsetsCompat windowInsetsCompatDispatchApplyWindowInsets = ViewCompat.dispatchApplyWindowInsets(ViewPager.this.getChildAt(i11), windowInsetsCompatOnApplyWindowInsets);
                rect.left = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetLeft(), rect.left);
                rect.top = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetTop(), rect.top);
                rect.right = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetRight(), rect.right);
                rect.bottom = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetBottom(), rect.bottom);
            }
            return windowInsetsCompatOnApplyWindowInsets.replaceSystemWindowInsets(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    @Retention(RetentionPolicy.RUNTIME)
    public @interface c {
    }

    /* JADX INFO: loaded from: classes2.dex */
    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f15264a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f15265b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f15266c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f15267d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f15268e;

        d() {
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class e extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f15269a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15270b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f15271c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f15272d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f15273e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f15274f;

        public e() {
            super(-1, -1);
            this.f15271c = 0.0f;
        }

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f15271c = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.LAYOUT_ATTRS);
            this.f15270b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class f extends AccessibilityDelegateCompat {
        f() {
        }

        private boolean a() {
            PagerAdapter pagerAdapter = ViewPager.this.mAdapter;
            return pagerAdapter != null && pagerAdapter.getCount() > 1;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            PagerAdapter pagerAdapter;
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(a());
            if (accessibilityEvent.getEventType() != 4096 || (pagerAdapter = ViewPager.this.mAdapter) == null) {
                return;
            }
            accessibilityEvent.setItemCount(pagerAdapter.getCount());
            accessibilityEvent.setFromIndex(ViewPager.this.mCurItem);
            accessibilityEvent.setToIndex(ViewPager.this.mCurItem);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
            accessibilityNodeInfoCompat.setScrollable(a());
            if (ViewPager.this.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i11, Bundle bundle) {
            if (super.performAccessibilityAction(view, i11, bundle)) {
                return true;
            }
            if (i11 == 4096) {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.mCurItem + 1);
                return true;
            }
            if (i11 != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            }
            ViewPager viewPager2 = ViewPager.this;
            viewPager2.setCurrentItem(viewPager2.mCurItem - 1);
            return true;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface g {
        void a(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface h {
        void onPageScrollStateChanged(int i11);

        void onPageScrolled(int i11, float f11, int i12);

        void onPageSelected(int i11);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface i {
    }

    /* JADX INFO: loaded from: classes2.dex */
    private class j extends DataSetObserver {
        j() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.dataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.dataSetChanged();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class k implements h {
        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageScrollStateChanged(int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageScrolled(int i11, float f11, int i12) {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageSelected(int i11) {
        }
    }

    public ViewPager(@NonNull Context context) {
        super(context);
        this.mItems = new ArrayList<>();
        this.mTempItem = new d();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new Runnable() { // from class: androidx.viewpager.widget.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.populate();
            }
        };
        this.mScrollState = 0;
        initViewPager();
    }

    public ViewPager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mItems = new ArrayList<>();
        this.mTempItem = new d();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new Runnable() { // from class: androidx.viewpager.widget.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.populate();
            }
        };
        this.mScrollState = 0;
        initViewPager();
    }

    private void a(d dVar, int i11, d dVar2) {
        int i12;
        int i13;
        d dVar3;
        d dVar4;
        int count = this.mAdapter.getCount();
        int clientWidth = getClientWidth();
        float f11 = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        if (dVar2 != null) {
            int i14 = dVar2.f15265b;
            int i15 = dVar.f15265b;
            if (i14 < i15) {
                float pageWidth = dVar2.f15268e + dVar2.f15267d + f11;
                int i16 = i14 + 1;
                int i17 = 0;
                while (i16 <= dVar.f15265b && i17 < this.mItems.size()) {
                    d dVar5 = this.mItems.get(i17);
                    while (true) {
                        dVar4 = dVar5;
                        if (i16 <= dVar4.f15265b || i17 >= this.mItems.size() - 1) {
                            break;
                        }
                        i17++;
                        dVar5 = this.mItems.get(i17);
                    }
                    while (i16 < dVar4.f15265b) {
                        pageWidth += this.mAdapter.getPageWidth(i16) + f11;
                        i16++;
                    }
                    dVar4.f15268e = pageWidth;
                    pageWidth += dVar4.f15267d + f11;
                    i16++;
                }
            } else if (i14 > i15) {
                int size = this.mItems.size() - 1;
                float pageWidth2 = dVar2.f15268e;
                while (true) {
                    i14--;
                    if (i14 < dVar.f15265b || size < 0) {
                        break;
                    }
                    d dVar6 = this.mItems.get(size);
                    while (true) {
                        dVar3 = dVar6;
                        if (i14 >= dVar3.f15265b || size <= 0) {
                            break;
                        }
                        size--;
                        dVar6 = this.mItems.get(size);
                    }
                    while (i14 > dVar3.f15265b) {
                        pageWidth2 -= this.mAdapter.getPageWidth(i14) + f11;
                        i14--;
                    }
                    pageWidth2 -= dVar3.f15267d + f11;
                    dVar3.f15268e = pageWidth2;
                }
            }
        }
        int size2 = this.mItems.size();
        float pageWidth3 = dVar.f15268e;
        int i18 = dVar.f15265b;
        int i19 = i18 - 1;
        this.mFirstOffset = i18 == 0 ? pageWidth3 : -3.4028235E38f;
        int i20 = count - 1;
        this.mLastOffset = i18 == i20 ? (dVar.f15267d + pageWidth3) - 1.0f : Float.MAX_VALUE;
        int i21 = i11 - 1;
        while (i21 >= 0) {
            d dVar7 = this.mItems.get(i21);
            while (true) {
                i13 = dVar7.f15265b;
                if (i19 <= i13) {
                    break;
                }
                pageWidth3 -= this.mAdapter.getPageWidth(i19) + f11;
                i19--;
            }
            pageWidth3 -= dVar7.f15267d + f11;
            dVar7.f15268e = pageWidth3;
            if (i13 == 0) {
                this.mFirstOffset = pageWidth3;
            }
            i21--;
            i19--;
        }
        float pageWidth4 = dVar.f15268e + dVar.f15267d + f11;
        int i22 = dVar.f15265b + 1;
        int i23 = i11 + 1;
        while (i23 < size2) {
            d dVar8 = this.mItems.get(i23);
            while (true) {
                i12 = dVar8.f15265b;
                if (i22 >= i12) {
                    break;
                }
                pageWidth4 += this.mAdapter.getPageWidth(i22) + f11;
                i22++;
            }
            if (i12 == i20) {
                this.mLastOffset = (dVar8.f15267d + pageWidth4) - 1.0f;
            }
            dVar8.f15268e = pageWidth4;
            pageWidth4 += dVar8.f15267d + f11;
            i23++;
            i22++;
        }
        this.mNeedCalculatePageOffsets = false;
    }

    private void b(boolean z10) {
        boolean z11 = this.mScrollState == 2;
        if (z11) {
            setScrollingCacheEnabled(false);
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.mScroller.getCurrX();
                int currY = this.mScroller.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m(currX);
                    }
                }
            }
        }
        this.mPopulatePending = false;
        for (int i11 = 0; i11 < this.mItems.size(); i11++) {
            d dVar = this.mItems.get(i11);
            if (dVar.f15266c) {
                dVar.f15266c = false;
                z11 = true;
            }
        }
        if (z11) {
            if (z10) {
                ViewCompat.postOnAnimation(this, this.mEndScrollRunnable);
            } else {
                this.mEndScrollRunnable.run();
            }
        }
    }

    private int c(int i11, float f11, int i12, int i13) {
        if (Math.abs(i13) <= this.mFlingDistance || Math.abs(i12) <= this.mMinimumVelocity) {
            i11 += (int) (f11 + (i11 >= this.mCurItem ? 0.4f : 0.6f));
        } else if (i12 <= 0) {
            i11++;
        }
        if (this.mItems.size() <= 0) {
            return i11;
        }
        d dVar = this.mItems.get(0);
        ArrayList<d> arrayList = this.mItems;
        return Math.max(dVar.f15265b, Math.min(i11, arrayList.get(arrayList.size() - 1).f15265b));
    }

    private void d(int i11, float f11, int i12) {
        h hVar = this.mOnPageChangeListener;
        if (hVar != null) {
            hVar.onPageScrolled(i11, f11, i12);
        }
        List<h> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                h hVar2 = this.mOnPageChangeListeners.get(i13);
                if (hVar2 != null) {
                    hVar2.onPageScrolled(i11, f11, i12);
                }
            }
        }
        h hVar3 = this.mInternalPageChangeListener;
        if (hVar3 != null) {
            hVar3.onPageScrolled(i11, f11, i12);
        }
    }

    private void e(int i11) {
        h hVar = this.mOnPageChangeListener;
        if (hVar != null) {
            hVar.onPageSelected(i11);
        }
        List<h> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                h hVar2 = this.mOnPageChangeListeners.get(i12);
                if (hVar2 != null) {
                    hVar2.onPageSelected(i11);
                }
            }
        }
        h hVar3 = this.mInternalPageChangeListener;
        if (hVar3 != null) {
            hVar3.onPageSelected(i11);
        }
    }

    private void f(int i11) {
        h hVar = this.mOnPageChangeListener;
        if (hVar != null) {
            hVar.onPageScrollStateChanged(i11);
        }
        List<h> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                h hVar2 = this.mOnPageChangeListeners.get(i12);
                if (hVar2 != null) {
                    hVar2.onPageScrollStateChanged(i11);
                }
            }
        }
        h hVar3 = this.mInternalPageChangeListener;
        if (hVar3 != null) {
            hVar3.onPageScrollStateChanged(i11);
        }
    }

    private void g() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private Rect h(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    private d i() {
        int i11;
        int clientWidth = getClientWidth();
        float f11 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f12 = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        int i12 = 0;
        boolean z10 = true;
        d dVar = null;
        int i13 = -1;
        float f13 = 0.0f;
        while (i12 < this.mItems.size()) {
            d dVar2 = this.mItems.get(i12);
            if (!z10 && dVar2.f15265b != (i11 = i13 + 1)) {
                dVar2 = this.mTempItem;
                dVar2.f15268e = f11 + f13 + f12;
                dVar2.f15265b = i11;
                dVar2.f15267d = this.mAdapter.getPageWidth(i11);
                i12--;
            }
            d dVar3 = dVar2;
            f11 = dVar3.f15268e;
            float f14 = dVar3.f15267d + f11 + f12;
            if (!z10 && scrollX < f11) {
                return dVar;
            }
            if (scrollX < f14 || i12 == this.mItems.size() - 1) {
                return dVar3;
            }
            int i14 = dVar3.f15265b;
            float f15 = dVar3.f15267d;
            i12++;
            z10 = false;
            i13 = i14;
            f13 = f15;
            dVar = dVar3;
        }
        return dVar;
    }

    private static boolean j(View view) {
        return view.getClass().getAnnotation(c.class) != null;
    }

    private boolean k(float f11, float f12) {
        return (f11 < ((float) this.mGutterSize) && f12 > 0.0f) || (f11 > ((float) (getWidth() - this.mGutterSize)) && f12 < 0.0f);
    }

    private void l(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            int i11 = actionIndex == 0 ? 1 : 0;
            this.mLastMotionX = motionEvent.getX(i11);
            this.mActivePointerId = motionEvent.getPointerId(i11);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private boolean m(int i11) {
        if (this.mItems.size() == 0) {
            if (this.mFirstLayout) {
                return false;
            }
            this.mCalledSuper = false;
            onPageScrolled(0, 0.0f, 0);
            if (this.mCalledSuper) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        d dVarI = i();
        int clientWidth = getClientWidth();
        int i12 = this.mPageMargin;
        int i13 = clientWidth + i12;
        float f11 = clientWidth;
        int i14 = dVarI.f15265b;
        float f12 = ((i11 / f11) - dVarI.f15268e) / (dVarI.f15267d + (i12 / f11));
        this.mCalledSuper = false;
        onPageScrolled(i14, f12, (int) (i13 * f12));
        if (this.mCalledSuper) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private boolean n(float f11) {
        boolean z10;
        boolean z11;
        float f12 = this.mLastMotionX - f11;
        this.mLastMotionX = f11;
        float scrollX = getScrollX() + f12;
        float clientWidth = getClientWidth();
        float f13 = this.mFirstOffset * clientWidth;
        float f14 = this.mLastOffset * clientWidth;
        boolean z12 = false;
        d dVar = this.mItems.get(0);
        ArrayList<d> arrayList = this.mItems;
        d dVar2 = arrayList.get(arrayList.size() - 1);
        if (dVar.f15265b != 0) {
            f13 = dVar.f15268e * clientWidth;
            z10 = false;
        } else {
            z10 = true;
        }
        if (dVar2.f15265b != this.mAdapter.getCount() - 1) {
            f14 = dVar2.f15268e * clientWidth;
            z11 = false;
        } else {
            z11 = true;
        }
        if (scrollX < f13) {
            if (z10) {
                this.mLeftEdge.onPull(Math.abs(f13 - scrollX) / clientWidth);
                z12 = true;
            }
            scrollX = f13;
        } else if (scrollX > f14) {
            if (z11) {
                this.mRightEdge.onPull(Math.abs(scrollX - f14) / clientWidth);
                z12 = true;
            }
            scrollX = f14;
        }
        int i11 = (int) scrollX;
        this.mLastMotionX += scrollX - i11;
        scrollTo(i11, getScrollY());
        m(i11);
        return z12;
    }

    private void o(int i11, int i12, int i13, int i14) {
        if (i12 > 0 && !this.mItems.isEmpty()) {
            if (!this.mScroller.isFinished()) {
                this.mScroller.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i12 - getPaddingLeft()) - getPaddingRight()) + i14)) * (((i11 - getPaddingLeft()) - getPaddingRight()) + i13)), getScrollY());
                return;
            }
        }
        d dVarInfoForPosition = infoForPosition(this.mCurItem);
        int iMin = (int) ((dVarInfoForPosition != null ? Math.min(dVarInfoForPosition.f15268e, this.mLastOffset) : 0.0f) * ((i11 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            b(false);
            scrollTo(iMin, getScrollY());
        }
    }

    private void p() {
        int i11 = 0;
        while (i11 < getChildCount()) {
            if (!((e) getChildAt(i11).getLayoutParams()).f15269a) {
                removeViewAt(i11);
                i11--;
            }
            i11++;
        }
    }

    private void q(boolean z10) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    private boolean r() {
        this.mActivePointerId = -1;
        g();
        this.mLeftEdge.onRelease();
        this.mRightEdge.onRelease();
        return this.mLeftEdge.isFinished() || this.mRightEdge.isFinished();
    }

    private void s(int i11, boolean z10, int i12, boolean z11) {
        d dVarInfoForPosition = infoForPosition(i11);
        int clientWidth = dVarInfoForPosition != null ? (int) (getClientWidth() * Math.max(this.mFirstOffset, Math.min(dVarInfoForPosition.f15268e, this.mLastOffset))) : 0;
        if (z10) {
            smoothScrollTo(clientWidth, 0, i12);
            if (z11) {
                e(i11);
                return;
            }
            return;
        }
        if (z11) {
            e(i11);
        }
        b(false);
        scrollTo(clientWidth, 0);
        m(clientWidth);
    }

    private void setScrollingCacheEnabled(boolean z10) {
        if (this.mScrollingCacheEnabled != z10) {
            this.mScrollingCacheEnabled = z10;
        }
    }

    private void t() {
        if (this.mDrawingOrder != 0) {
            ArrayList<View> arrayList = this.mDrawingOrderedChildren;
            if (arrayList == null) {
                this.mDrawingOrderedChildren = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                this.mDrawingOrderedChildren.add(getChildAt(i11));
            }
            Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i11, int i12) {
        d dVarInfoForChild;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i13 = 0; i13 < getChildCount(); i13++) {
                View childAt = getChildAt(i13);
                if (childAt.getVisibility() == 0 && (dVarInfoForChild = infoForChild(childAt)) != null && dVarInfoForChild.f15265b == this.mCurItem) {
                    childAt.addFocusables(arrayList, i11, i12);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i12 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    d addNewItem(int i11, int i12) {
        d dVar = new d();
        dVar.f15265b = i11;
        dVar.f15264a = this.mAdapter.instantiateItem((ViewGroup) this, i11);
        dVar.f15267d = this.mAdapter.getPageWidth(i11);
        if (i12 < 0 || i12 >= this.mItems.size()) {
            this.mItems.add(dVar);
        } else {
            this.mItems.add(i12, dVar);
        }
        return dVar;
    }

    public void addOnAdapterChangeListener(@NonNull g gVar) {
        if (this.mAdapterChangeListeners == null) {
            this.mAdapterChangeListeners = new ArrayList();
        }
        this.mAdapterChangeListeners.add(gVar);
    }

    public void addOnPageChangeListener(@NonNull h hVar) {
        if (this.mOnPageChangeListeners == null) {
            this.mOnPageChangeListeners = new ArrayList();
        }
        this.mOnPageChangeListeners.add(hVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        d dVarInfoForChild;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (dVarInfoForChild = infoForChild(childAt)) != null && dVarInfoForChild.f15265b == this.mCurItem) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        e eVar = (e) layoutParams;
        boolean zJ = eVar.f15269a | j(view);
        eVar.f15269a = zJ;
        if (!this.mInLayout) {
            super.addView(view, i11, layoutParams);
        } else {
            if (zJ) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            eVar.f15272d = true;
            addViewInLayout(view, i11, layoutParams);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00bf  */
    public boolean arrowScroll(int i11) {
        boolean zPageLeft;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
            break;
        }
        if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(viewFindFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb2.append(" => ");
                        sb2.append(parent2.getClass().getSimpleName());
                    }
                    Log.e(TAG, "arrowScroll tried to find focus based on non-child current focused view " + sb2.toString());
                    viewFindFocus = null;
                    break;
                }
                if (parent == this) {
                    break;
                }
                parent = parent.getParent();
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i11);
        if (viewFindNextFocus == null || viewFindNextFocus == viewFindFocus) {
            if (i11 == 17 || i11 == 1) {
                zPageLeft = pageLeft();
            } else if (i11 == 66 || i11 == 2) {
                zPageLeft = pageRight();
            } else {
                zPageLeft = false;
            }
        } else if (i11 == 17) {
            zPageLeft = (viewFindFocus == null || h(this.mTempRect, viewFindNextFocus).left < h(this.mTempRect, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : pageLeft();
        } else if (i11 == 66) {
            zPageLeft = (viewFindFocus == null || h(this.mTempRect, viewFindNextFocus).left > h(this.mTempRect, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : pageRight();
        } else {
            zPageLeft = false;
        }
        if (zPageLeft) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i11));
        }
        return zPageLeft;
    }

    public boolean beginFakeDrag() {
        if (this.mIsBeingDragged) {
            return false;
        }
        this.mFakeDragging = true;
        setScrollState(1);
        this.mLastMotionX = 0.0f;
        this.mInitialMotionX = 0.0f;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, 0.0f, 0.0f, 0);
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        this.mFakeDragBeginTime = jUptimeMillis;
        return true;
    }

    protected boolean canScroll(View view, boolean z10, int i11, int i12, int i13) {
        int i14;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i15 = i12 + scrollX;
                if (i15 >= childAt.getLeft() && i15 < childAt.getRight() && (i14 = i13 + scrollY) >= childAt.getTop() && i14 < childAt.getBottom() && canScroll(childAt, true, i11, i15 - childAt.getLeft(), i14 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z10 && view.canScrollHorizontally(-i11);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i11) {
        if (this.mAdapter == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i11 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.mFirstOffset));
        }
        return i11 > 0 && scrollX < ((int) (((float) clientWidth) * this.mLastOffset));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof e) && super.checkLayoutParams(layoutParams);
    }

    public void clearOnPageChangeListeners() {
        List<h> list = this.mOnPageChangeListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        this.mIsScrollStarted = true;
        if (this.mScroller.isFinished() || !this.mScroller.computeScrollOffset()) {
            b(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.mScroller.getCurrX();
        int currY = this.mScroller.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m(currX)) {
                this.mScroller.abortAnimation();
                scrollTo(0, currY);
            }
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    void dataSetChanged() {
        int count = this.mAdapter.getCount();
        this.mExpectedAdapterCount = count;
        boolean z10 = this.mItems.size() < (this.mOffscreenPageLimit * 2) + 1 && this.mItems.size() < count;
        int iMax = this.mCurItem;
        int i11 = 0;
        boolean z11 = false;
        while (i11 < this.mItems.size()) {
            d dVar = this.mItems.get(i11);
            int itemPosition = this.mAdapter.getItemPosition(dVar.f15264a);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.mItems.remove(i11);
                    i11--;
                    if (!z11) {
                        this.mAdapter.startUpdate((ViewGroup) this);
                        z11 = true;
                    }
                    this.mAdapter.destroyItem((ViewGroup) this, dVar.f15265b, dVar.f15264a);
                    int i12 = this.mCurItem;
                    if (i12 == dVar.f15265b) {
                        iMax = Math.max(0, Math.min(i12, count - 1));
                    }
                } else {
                    int i13 = dVar.f15265b;
                    if (i13 != itemPosition) {
                        if (i13 == this.mCurItem) {
                            iMax = itemPosition;
                        }
                        dVar.f15265b = itemPosition;
                    }
                }
                z10 = true;
            }
            i11++;
        }
        if (z11) {
            this.mAdapter.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (z10) {
            int childCount = getChildCount();
            for (int i14 = 0; i14 < childCount; i14++) {
                e eVar = (e) getChildAt(i14).getLayoutParams();
                if (!eVar.f15269a) {
                    eVar.f15271c = 0.0f;
                }
            }
            setCurrentItemInternal(iMax, false, true);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        d dVarInfoForChild;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (dVarInfoForChild = infoForChild(childAt)) != null && dVarInfoForChild.f15265b == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    float distanceInfluenceForSnapDuration(float f11) {
        return (float) Math.sin((f11 - 0.5f) * 0.47123894f);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        PagerAdapter pagerAdapter;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (pagerAdapter = this.mAdapter) != null && pagerAdapter.getCount() > 1)) {
            if (!this.mLeftEdge.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.mFirstOffset * width);
                this.mLeftEdge.setSize(height, width);
                zDraw = this.mLeftEdge.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.mRightEdge.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.mLastOffset + 1.0f)) * width2);
                this.mRightEdge.setSize(height2, width2);
                zDraw |= this.mRightEdge.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.mLeftEdge.finish();
            this.mRightEdge.finish();
        }
        if (zDraw) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mMarginDrawable;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public void endFakeDrag() {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.mAdapter != null) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
            this.mPopulatePending = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            d dVarI = i();
            setCurrentItemInternal(c(dVarI.f15265b, ((scrollX / clientWidth) - dVarI.f15268e) / dVarI.f15267d, xVelocity, (int) (this.mLastMotionX - this.mInitialMotionX)), true, true, xVelocity);
        }
        g();
        this.mFakeDragging = false;
    }

    public boolean executeKeyEvent(@NonNull KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                return keyEvent.hasModifiers(2) ? pageLeft() : arrowScroll(17);
            }
            if (keyCode == 22) {
                return keyEvent.hasModifiers(2) ? pageRight() : arrowScroll(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return arrowScroll(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return arrowScroll(1);
                }
            }
        }
        return false;
    }

    public void fakeDragBy(float f11) {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.mAdapter == null) {
            return;
        }
        this.mLastMotionX += f11;
        float scrollX = getScrollX() - f11;
        float clientWidth = getClientWidth();
        float f12 = this.mFirstOffset * clientWidth;
        float f13 = this.mLastOffset * clientWidth;
        d dVar = this.mItems.get(0);
        ArrayList<d> arrayList = this.mItems;
        d dVar2 = arrayList.get(arrayList.size() - 1);
        if (dVar.f15265b != 0) {
            f12 = dVar.f15268e * clientWidth;
        }
        if (dVar2.f15265b != this.mAdapter.getCount() - 1) {
            f13 = dVar2.f15268e * clientWidth;
        }
        if (scrollX < f12) {
            scrollX = f12;
        } else if (scrollX > f13) {
            scrollX = f13;
        }
        int i11 = (int) scrollX;
        this.mLastMotionX += scrollX - i11;
        scrollTo(i11, getScrollY());
        m(i11);
        MotionEvent motionEventObtain = MotionEvent.obtain(this.mFakeDragBeginTime, SystemClock.uptimeMillis(), 2, this.mLastMotionX, 0.0f, 0);
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new e();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Nullable
    public PagerAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i11, int i12) {
        if (this.mDrawingOrder == 2) {
            i12 = (i11 - 1) - i12;
        }
        return ((e) this.mDrawingOrderedChildren.get(i12).getLayoutParams()).f15274f;
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public int getPageMargin() {
        return this.mPageMargin;
    }

    d infoForAnyChild(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return infoForChild(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    d infoForChild(View view) {
        for (int i11 = 0; i11 < this.mItems.size(); i11++) {
            d dVar = this.mItems.get(i11);
            if (this.mAdapter.isViewFromObject(view, dVar.f15264a)) {
                return dVar;
            }
        }
        return null;
    }

    d infoForPosition(int i11) {
        for (int i12 = 0; i12 < this.mItems.size(); i12++) {
            d dVar = this.mItems.get(i12);
            if (dVar.f15265b == i11) {
                return dVar;
            }
        }
        return null;
    }

    void initViewPager() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f11 = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMinimumVelocity = (int) (400.0f * f11);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffect(context);
        this.mRightEdge = new EdgeEffect(context);
        this.mFlingDistance = (int) (25.0f * f11);
        this.mCloseEnough = (int) (2.0f * f11);
        this.mDefaultGutterSize = (int) (f11 * 16.0f);
        ViewCompat.setAccessibilityDelegate(this, new f());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, new b());
    }

    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.mEndScrollRunnable);
        Scroller scroller = this.mScroller;
        if (scroller != null && !scroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i11;
        float f11;
        super.onDraw(canvas);
        if (this.mPageMargin <= 0 || this.mMarginDrawable == null || this.mItems.size() <= 0 || this.mAdapter == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f12 = width;
        float f13 = this.mPageMargin / f12;
        int i12 = 0;
        d dVar = this.mItems.get(0);
        float f14 = dVar.f15268e;
        int size = this.mItems.size();
        int i13 = dVar.f15265b;
        int i14 = this.mItems.get(size - 1).f15265b;
        while (i13 < i14) {
            while (true) {
                i11 = dVar.f15265b;
                if (i13 <= i11 || i12 >= size) {
                    break;
                }
                i12++;
                dVar = this.mItems.get(i12);
            }
            if (i13 == i11) {
                float f15 = dVar.f15268e;
                float f16 = dVar.f15267d;
                f11 = (f15 + f16) * f12;
                f14 = f15 + f16 + f13;
            } else {
                float pageWidth = this.mAdapter.getPageWidth(i13);
                f11 = (f14 + pageWidth) * f12;
                f14 += pageWidth + f13;
            }
            if (this.mPageMargin + f11 > scrollX) {
                this.mMarginDrawable.setBounds(Math.round(f11), this.mTopPageBounds, Math.round(this.mPageMargin + f11), this.mBottomPageBounds);
                this.mMarginDrawable.draw(canvas);
            }
            if (f11 > scrollX + width) {
                return;
            }
            i13++;
            f13 = f13;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            r();
            return false;
        }
        if (action != 0) {
            if (this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag) {
                return false;
            }
        }
        if (action == 0) {
            float x10 = motionEvent.getX();
            this.mInitialMotionX = x10;
            this.mLastMotionX = x10;
            float y10 = motionEvent.getY();
            this.mInitialMotionY = y10;
            this.mLastMotionY = y10;
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mIsUnableToDrag = false;
            this.mIsScrollStarted = true;
            this.mScroller.computeScrollOffset();
            if (this.mScrollState != 2 || Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) <= this.mCloseEnough) {
                b(false);
                this.mIsBeingDragged = false;
            } else {
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                populate();
                this.mIsBeingDragged = true;
                q(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i11 = this.mActivePointerId;
            if (i11 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i11);
                float x11 = motionEvent.getX(iFindPointerIndex);
                float f11 = x11 - this.mLastMotionX;
                float fAbs = Math.abs(f11);
                float y11 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y11 - this.mInitialMotionY);
                if (f11 != 0.0f && !k(this.mLastMotionX, f11) && canScroll(this, false, (int) f11, (int) x11, (int) y11)) {
                    this.mLastMotionX = x11;
                    this.mLastMotionY = y11;
                    this.mIsUnableToDrag = true;
                    return false;
                }
                int i12 = this.mTouchSlop;
                if (fAbs > i12 && fAbs * 0.5f > fAbs2) {
                    this.mIsBeingDragged = true;
                    q(true);
                    setScrollState(1);
                    float f12 = this.mInitialMotionX;
                    float f13 = this.mTouchSlop;
                    this.mLastMotionX = f11 > 0.0f ? f12 + f13 : f12 - f13;
                    this.mLastMotionY = y11;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > i12) {
                    this.mIsUnableToDrag = true;
                }
                if (this.mIsBeingDragged && n(x11)) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
            }
        } else if (action == 6) {
            l(motionEvent);
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        return this.mIsBeingDragged;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        boolean z11;
        d dVarInfoForChild;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i15 = i13 - i11;
        int i16 = i14 - i12;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i17 = 0;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.f15269a) {
                    int i19 = eVar.f15270b;
                    int i20 = i19 & 7;
                    int i21 = i19 & 112;
                    if (i20 != 1) {
                        if (i20 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i20 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i15 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i21 != 16) {
                            if (i21 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i21 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i16 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i22 = paddingLeft + scrollX;
                            childAt.layout(i22, paddingTop, childAt.getMeasuredWidth() + i22, paddingTop + childAt.getMeasuredHeight());
                            i17++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i16 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i23 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i23;
                        int i24 = paddingLeft + scrollX;
                        childAt.layout(i24, paddingTop, childAt.getMeasuredWidth() + i24, paddingTop + childAt.getMeasuredHeight());
                        i17++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i15 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i25 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i25;
                    if (i21 != 16) {
                        if (i21 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i21 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i16 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i26 = paddingLeft + scrollX;
                        childAt.layout(i26, paddingTop, childAt.getMeasuredWidth() + i26, paddingTop + childAt.getMeasuredHeight());
                        i17++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i16 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i27 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i27;
                    int i28 = paddingLeft + scrollX;
                    childAt.layout(i28, paddingTop, childAt.getMeasuredWidth() + i28, paddingTop + childAt.getMeasuredHeight());
                    i17++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i29 = (i15 - paddingLeft) - paddingRight;
        for (int i30 = 0; i30 < childCount; i30++) {
            View childAt2 = getChildAt(i30);
            if (childAt2.getVisibility() != 8) {
                e eVar2 = (e) childAt2.getLayoutParams();
                if (!eVar2.f15269a && (dVarInfoForChild = infoForChild(childAt2)) != null) {
                    float f11 = i29;
                    int i31 = ((int) (dVarInfoForChild.f15268e * f11)) + paddingLeft;
                    if (eVar2.f15272d) {
                        eVar2.f15272d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f11 * eVar2.f15271c), 1073741824), View.MeasureSpec.makeMeasureSpec((i16 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i31, paddingTop, childAt2.getMeasuredWidth() + i31, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.mTopPageBounds = paddingTop;
        this.mBottomPageBounds = i16 - paddingBottom;
        this.mDecorChildCount = i17;
        if (this.mFirstLayout) {
            z11 = false;
            s(this.mCurItem, false, 0, false);
        } else {
            z11 = false;
        }
        this.mFirstLayout = z11;
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        e eVar;
        e eVar2;
        int i13;
        setMeasuredDimension(View.getDefaultSize(0, i11), View.getDefaultSize(0, i12));
        int measuredWidth = getMeasuredWidth();
        this.mGutterSize = Math.min(measuredWidth / 10, this.mDefaultGutterSize);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i14 = 0;
        while (true) {
            boolean z10 = true;
            int i15 = 1073741824;
            if (i14 >= childCount) {
                break;
            }
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8 && (eVar2 = (e) childAt.getLayoutParams()) != null && eVar2.f15269a) {
                int i16 = eVar2.f15270b;
                int i17 = i16 & 7;
                int i18 = i16 & 112;
                boolean z11 = i18 == 48 || i18 == 80;
                if (i17 != 3 && i17 != 5) {
                    z10 = false;
                }
                int i19 = Integer.MIN_VALUE;
                if (z11) {
                    i13 = Integer.MIN_VALUE;
                    i19 = 1073741824;
                } else {
                    i13 = z10 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i20 = ((ViewGroup.LayoutParams) eVar2).width;
                if (i20 != -2) {
                    if (i20 == -1) {
                        i20 = paddingLeft;
                    }
                    i19 = 1073741824;
                } else {
                    i20 = paddingLeft;
                }
                int i21 = ((ViewGroup.LayoutParams) eVar2).height;
                if (i21 == -2) {
                    i21 = measuredHeight;
                    i15 = i13;
                } else if (i21 == -1) {
                    i21 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i20, i19), View.MeasureSpec.makeMeasureSpec(i21, i15));
                if (z11) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z10) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i14++;
        }
        this.mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        int childCount2 = getChildCount();
        for (int i22 = 0; i22 < childCount2; i22++) {
            View childAt2 = getChildAt(i22);
            if (childAt2.getVisibility() != 8 && ((eVar = (e) childAt2.getLayoutParams()) == null || !eVar.f15269a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * eVar.f15271c), 1073741824), this.mChildHeightMeasureSpec);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0064  */
    protected void onPageScrolled(int i11, float f11, int i12) {
        int iMax;
        int width;
        int left;
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.f15269a) {
                    int i14 = eVar.f15270b & 7;
                    if (i14 != 1) {
                        if (i14 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i14 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i15 = iMax;
                    width = paddingLeft;
                    paddingLeft = i15;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        d(i11, f11, i12);
        this.mCalledSuper = true;
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i11, Rect rect) {
        int i12;
        int i13;
        int i14;
        d dVarInfoForChild;
        int childCount = getChildCount();
        if ((i11 & 2) != 0) {
            i13 = childCount;
            i12 = 0;
            i14 = 1;
        } else {
            i12 = childCount - 1;
            i13 = -1;
            i14 = -1;
        }
        while (i12 != i13) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() == 0 && (dVarInfoForChild = infoForChild(childAt)) != null && dVarInfoForChild.f15265b == this.mCurItem && childAt.requestFocus(i11, rect)) {
                return true;
            }
            i12 += i14;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter != null) {
            pagerAdapter.restoreState(savedState.adapterState, savedState.loader);
            setCurrentItemInternal(savedState.position, false, true);
        } else {
            this.mRestoredCurItem = savedState.position;
            this.mRestoredAdapterState = savedState.adapterState;
            this.mRestoredClassLoader = savedState.loader;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.mCurItem;
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter != null) {
            savedState.adapterState = pagerAdapter.saveState();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (i11 != i13) {
            int i15 = this.mPageMargin;
            o(i11, i13, i15, i15);
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00dc  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        PagerAdapter pagerAdapter;
        if (this.mFakeDragging) {
            return true;
        }
        boolean zR = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (pagerAdapter = this.mAdapter) == null || pagerAdapter.getCount() == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.mScroller.abortAnimation();
            this.mPopulatePending = false;
            populate();
            float x10 = motionEvent.getX();
            this.mInitialMotionX = x10;
            this.mLastMotionX = x10;
            float y10 = motionEvent.getY();
            this.mInitialMotionY = y10;
            this.mLastMotionY = y10;
            this.mActivePointerId = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.mLastMotionX = motionEvent.getX(actionIndex);
                        this.mActivePointerId = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        l(motionEvent);
                        this.mLastMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId));
                    }
                } else if (this.mIsBeingDragged) {
                    s(this.mCurItem, true, 0, false);
                    zR = r();
                }
            } else if (!this.mIsBeingDragged) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (iFindPointerIndex == -1) {
                    zR = r();
                } else {
                    float x11 = motionEvent.getX(iFindPointerIndex);
                    float fAbs = Math.abs(x11 - this.mLastMotionX);
                    float y11 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y11 - this.mLastMotionY);
                    if (fAbs > this.mTouchSlop && fAbs > fAbs2) {
                        this.mIsBeingDragged = true;
                        q(true);
                        float f11 = this.mInitialMotionX;
                        this.mLastMotionX = x11 - f11 > 0.0f ? f11 + this.mTouchSlop : f11 - this.mTouchSlop;
                        this.mLastMotionY = y11;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.mIsBeingDragged) {
                        zR = n(motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)));
                    }
                }
            } else if (this.mIsBeingDragged) {
                zR = n(motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)));
            }
        } else if (this.mIsBeingDragged) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
            this.mPopulatePending = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            d dVarI = i();
            float f12 = clientWidth;
            setCurrentItemInternal(c(dVarI.f15265b, ((scrollX / f12) - dVarI.f15268e) / (dVarI.f15267d + (this.mPageMargin / f12)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)) - this.mInitialMotionX)), true, true, xVelocity);
            zR = r();
        }
        if (zR) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        return true;
    }

    boolean pageLeft() {
        int i11 = this.mCurItem;
        if (i11 <= 0) {
            return false;
        }
        setCurrentItem(i11 - 1, true);
        return true;
    }

    boolean pageRight() {
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter == null || this.mCurItem >= pagerAdapter.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.mCurItem + 1, true);
        return true;
    }

    void populate() {
        populate(this.mCurItem);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00cb A[PHI: r7 r10 r15
  0x00cb: PHI (r7v6 int) = (r7v5 int), (r7v4 int), (r7v9 int) binds: [B:64:0x00ef, B:61:0x00d9, B:53:0x00c0] A[DONT_GENERATE, DONT_INLINE]
  0x00cb: PHI (r10v9 int) = (r10v1 int), (r10v8 int), (r10v12 int) binds: [B:64:0x00ef, B:61:0x00d9, B:53:0x00c0] A[DONT_GENERATE, DONT_INLINE]
  0x00cb: PHI (r15v7 float) = (r15v5 float), (r15v6 float), (r15v4 float) binds: [B:64:0x00ef, B:61:0x00d9, B:53:0x00c0] A[DONT_GENERATE, DONT_INLINE]] */
    void populate(int i11) {
        d dVarInfoForPosition;
        String hexString;
        d dVarAddNewItem;
        d dVarInfoForChild;
        d dVar;
        int i12 = this.mCurItem;
        if (i12 != i11) {
            dVarInfoForPosition = infoForPosition(i12);
            this.mCurItem = i11;
        } else {
            dVarInfoForPosition = null;
        }
        if (this.mAdapter == null) {
            t();
            return;
        }
        if (this.mPopulatePending) {
            t();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        this.mAdapter.startUpdate((ViewGroup) this);
        int i13 = this.mOffscreenPageLimit;
        int iMax = Math.max(0, this.mCurItem - i13);
        int count = this.mAdapter.getCount();
        int iMin = Math.min(count - 1, this.mCurItem + i13);
        if (count != this.mExpectedAdapterCount) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.mExpectedAdapterCount + ", found: " + count + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.mAdapter.getClass());
        }
        int i14 = 0;
        while (true) {
            if (i14 < this.mItems.size()) {
                dVarAddNewItem = this.mItems.get(i14);
                int i15 = dVarAddNewItem.f15265b;
                int i16 = this.mCurItem;
                if (i15 >= i16) {
                    if (i15 != i16) {
                        break;
                    } else {
                        break;
                    }
                }
                i14++;
            }
            dVarAddNewItem = null;
            break;
        }
        if (dVarAddNewItem == null && count > 0) {
            dVarAddNewItem = addNewItem(this.mCurItem, i14);
        }
        if (dVarAddNewItem != null) {
            int i17 = i14 - 1;
            d dVar2 = i17 >= 0 ? this.mItems.get(i17) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - dVarAddNewItem.f15267d) + (getPaddingLeft() / clientWidth);
            float f11 = 0.0f;
            for (int i18 = this.mCurItem - 1; i18 >= 0; i18--) {
                if (f11 < paddingLeft || i18 >= iMax) {
                    if (dVar2 == null || i18 != dVar2.f15265b) {
                        f11 += addNewItem(i18, i17 + 1).f15267d;
                        i14++;
                        if (i17 >= 0) {
                            dVar = this.mItems.get(i17);
                        } else {
                            dVar = null;
                        }
                    } else {
                        f11 += dVar2.f15267d;
                        i17--;
                        if (i17 >= 0) {
                            dVar = this.mItems.get(i17);
                        } else {
                            dVar = null;
                        }
                    }
                    dVar2 = dVar;
                } else {
                    if (dVar2 == null) {
                        break;
                    }
                    if (i18 == dVar2.f15265b && !dVar2.f15266c) {
                        this.mItems.remove(i17);
                        this.mAdapter.destroyItem((ViewGroup) this, i18, dVar2.f15264a);
                        i17--;
                        i14--;
                        if (i17 >= 0) {
                            dVar = this.mItems.get(i17);
                        } else {
                            dVar = null;
                        }
                        dVar2 = dVar;
                    }
                }
            }
            float f12 = dVarAddNewItem.f15267d;
            int i19 = i14 + 1;
            if (f12 < 2.0f) {
                d dVar3 = i19 < this.mItems.size() ? this.mItems.get(i19) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i20 = this.mCurItem;
                while (true) {
                    i20++;
                    if (i20 >= count) {
                        break;
                    }
                    if (f12 >= paddingRight && i20 > iMin) {
                        if (dVar3 == null) {
                            break;
                        }
                        if (i20 == dVar3.f15265b && !dVar3.f15266c) {
                            this.mItems.remove(i19);
                            this.mAdapter.destroyItem((ViewGroup) this, i20, dVar3.f15264a);
                            if (i19 < this.mItems.size()) {
                                dVar3 = this.mItems.get(i19);
                            }
                        }
                    } else if (dVar3 == null || i20 != dVar3.f15265b) {
                        d dVarAddNewItem2 = addNewItem(i20, i19);
                        i19++;
                        f12 += dVarAddNewItem2.f15267d;
                        dVar3 = i19 < this.mItems.size() ? this.mItems.get(i19) : null;
                    } else {
                        f12 += dVar3.f15267d;
                        i19++;
                        if (i19 < this.mItems.size()) {
                            dVar3 = this.mItems.get(i19);
                        }
                    }
                }
            }
            a(dVarAddNewItem, i14, dVarInfoForPosition);
            this.mAdapter.setPrimaryItem((ViewGroup) this, this.mCurItem, dVarAddNewItem.f15264a);
        }
        this.mAdapter.finishUpdate((ViewGroup) this);
        int childCount = getChildCount();
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt = getChildAt(i21);
            e eVar = (e) childAt.getLayoutParams();
            eVar.f15274f = i21;
            if (!eVar.f15269a && eVar.f15271c == 0.0f && (dVarInfoForChild = infoForChild(childAt)) != null) {
                eVar.f15271c = dVarInfoForChild.f15267d;
                eVar.f15273e = dVarInfoForChild.f15265b;
            }
        }
        t();
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            d dVarInfoForAnyChild = viewFindFocus != null ? infoForAnyChild(viewFindFocus) : null;
            if (dVarInfoForAnyChild == null || dVarInfoForAnyChild.f15265b != this.mCurItem) {
                for (int i22 = 0; i22 < getChildCount(); i22++) {
                    View childAt2 = getChildAt(i22);
                    d dVarInfoForChild2 = infoForChild(childAt2);
                    if (dVarInfoForChild2 != null && dVarInfoForChild2.f15265b == this.mCurItem && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    public void removeOnAdapterChangeListener(@NonNull g gVar) {
        List<g> list = this.mAdapterChangeListeners;
        if (list != null) {
            list.remove(gVar);
        }
    }

    public void removeOnPageChangeListener(@NonNull h hVar) {
        List<h> list = this.mOnPageChangeListeners;
        if (list != null) {
            list.remove(hVar);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.mInLayout) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(@Nullable PagerAdapter pagerAdapter) {
        PagerAdapter pagerAdapter2 = this.mAdapter;
        if (pagerAdapter2 != null) {
            pagerAdapter2.setViewPagerObserver(null);
            this.mAdapter.startUpdate((ViewGroup) this);
            for (int i11 = 0; i11 < this.mItems.size(); i11++) {
                d dVar = this.mItems.get(i11);
                this.mAdapter.destroyItem((ViewGroup) this, dVar.f15265b, dVar.f15264a);
            }
            this.mAdapter.finishUpdate((ViewGroup) this);
            this.mItems.clear();
            p();
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter3 = this.mAdapter;
        this.mAdapter = pagerAdapter;
        this.mExpectedAdapterCount = 0;
        if (pagerAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new j();
            }
            this.mAdapter.setViewPagerObserver(this.mObserver);
            this.mPopulatePending = false;
            boolean z10 = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
                setCurrentItemInternal(this.mRestoredCurItem, false, true);
                this.mRestoredCurItem = -1;
                this.mRestoredAdapterState = null;
                this.mRestoredClassLoader = null;
            } else if (z10) {
                requestLayout();
            } else {
                populate();
            }
        }
        List<g> list = this.mAdapterChangeListeners;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.mAdapterChangeListeners.size();
        for (int i12 = 0; i12 < size; i12++) {
            this.mAdapterChangeListeners.get(i12).a(this, pagerAdapter3, pagerAdapter);
        }
    }

    public void setCurrentItem(int i11) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i11, !this.mFirstLayout, false);
    }

    public void setCurrentItem(int i11, boolean z10) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i11, z10, false);
    }

    void setCurrentItemInternal(int i11, boolean z10, boolean z11) {
        setCurrentItemInternal(i11, z10, z11, 0);
    }

    void setCurrentItemInternal(int i11, boolean z10, boolean z11, int i12) {
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter == null || pagerAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z11 && this.mCurItem == i11 && this.mItems.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i11 < 0) {
            i11 = 0;
        } else if (i11 >= this.mAdapter.getCount()) {
            i11 = this.mAdapter.getCount() - 1;
        }
        int i13 = this.mOffscreenPageLimit;
        int i14 = this.mCurItem;
        if (i11 > i14 + i13 || i11 < i14 - i13) {
            for (int i15 = 0; i15 < this.mItems.size(); i15++) {
                this.mItems.get(i15).f15266c = true;
            }
        }
        boolean z12 = this.mCurItem != i11;
        if (!this.mFirstLayout) {
            populate(i11);
            s(i11, z10, i12, z12);
        } else {
            this.mCurItem = i11;
            if (z12) {
                e(i11);
            }
            requestLayout();
        }
    }

    h setInternalPageChangeListener(h hVar) {
        h hVar2 = this.mInternalPageChangeListener;
        this.mInternalPageChangeListener = hVar;
        return hVar2;
    }

    public void setOffscreenPageLimit(int i11) {
        if (i11 < 1) {
            Log.w(TAG, "Requested offscreen page limit " + i11 + " too small; defaulting to 1");
            i11 = 1;
        }
        if (i11 != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = i11;
            populate();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(h hVar) {
        this.mOnPageChangeListener = hVar;
    }

    public void setPageMargin(int i11) {
        int i12 = this.mPageMargin;
        this.mPageMargin = i11;
        int width = getWidth();
        o(width, width, i11, i12);
        requestLayout();
    }

    public void setPageMarginDrawable(int i11) {
        setPageMarginDrawable(androidx.core.content.b.getDrawable(getContext(), i11));
    }

    public void setPageMarginDrawable(@Nullable Drawable drawable) {
        this.mMarginDrawable = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z10, @Nullable i iVar) {
        setPageTransformer(z10, iVar, 2);
    }

    public void setPageTransformer(boolean z10, @Nullable i iVar, int i11) {
        boolean z11 = iVar != null;
        setChildrenDrawingOrderEnabled(z11);
        if (z11) {
            this.mDrawingOrder = z10 ? 2 : 1;
            this.mPageTransformerLayerType = i11;
        } else {
            this.mDrawingOrder = 0;
        }
        if (z11) {
            populate();
        }
    }

    void setScrollState(int i11) {
        if (this.mScrollState == i11) {
            return;
        }
        this.mScrollState = i11;
        f(i11);
    }

    void smoothScrollTo(int i11, int i12) {
        smoothScrollTo(i11, i12, 0);
    }

    void smoothScrollTo(int i11, int i12, int i13) {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.mScroller;
        if (scroller == null || scroller.isFinished()) {
            scrollX = getScrollX();
        } else {
            scrollX = this.mIsScrollStarted ? this.mScroller.getCurrX() : this.mScroller.getStartX();
            this.mScroller.abortAnimation();
            setScrollingCacheEnabled(false);
        }
        int i14 = scrollX;
        int scrollY = getScrollY();
        int i15 = i11 - i14;
        int i16 = i12 - scrollY;
        if (i15 == 0 && i16 == 0) {
            b(false);
            populate();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i17 = clientWidth / 2;
        float f11 = clientWidth;
        float f12 = i17;
        float fDistanceInfluenceForSnapDuration = f12 + (distanceInfluenceForSnapDuration(Math.min(1.0f, (Math.abs(i15) * 1.0f) / f11)) * f12);
        int iAbs2 = Math.abs(i13);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fDistanceInfluenceForSnapDuration / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i15) / ((f11 * this.mAdapter.getPageWidth(this.mCurItem)) + this.mPageMargin)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.mIsScrollStarted = false;
        this.mScroller.startScroll(i14, scrollY, i15, i16, iMin);
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mMarginDrawable;
    }
}
