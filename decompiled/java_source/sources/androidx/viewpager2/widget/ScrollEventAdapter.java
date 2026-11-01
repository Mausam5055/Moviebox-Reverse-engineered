package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class ScrollEventAdapter extends RecyclerView.r {
    private static final int NO_POSITION = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_IN_PROGRESS_FAKE_DRAG = 4;
    private static final int STATE_IN_PROGRESS_IMMEDIATE_SCROLL = 3;
    private static final int STATE_IN_PROGRESS_MANUAL_DRAG = 1;
    private static final int STATE_IN_PROGRESS_SMOOTH_SCROLL = 2;
    private int mAdapterState;
    private ViewPager2.OnPageChangeCallback mCallback;
    private boolean mDataSetChangeHappened;
    private boolean mDispatchSelected;
    private int mDragStartPosition;
    private boolean mFakeDragging;

    @NonNull
    private final LinearLayoutManager mLayoutManager;

    @NonNull
    private final RecyclerView mRecyclerView;
    private boolean mScrollHappened;
    private int mScrollState;
    private ScrollEventValues mScrollValues;
    private int mTarget;

    @NonNull
    private final ViewPager2 mViewPager;

    private static final class ScrollEventValues {
        float mOffset;
        int mOffsetPx;
        int mPosition;

        ScrollEventValues() {
        }

        void reset() {
            this.mPosition = -1;
            this.mOffset = 0.0f;
            this.mOffsetPx = 0;
        }
    }

    ScrollEventAdapter(@NonNull ViewPager2 viewPager2) {
        this.mViewPager = viewPager2;
        RecyclerView recyclerView = viewPager2.mRecyclerView;
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.mScrollValues = new ScrollEventValues();
        resetState();
    }

    private void dispatchScrolled(int i11, float f11, int i12) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrolled(i11, f11, i12);
        }
    }

    private void dispatchSelected(int i11) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(i11);
        }
    }

    private void dispatchStateChanged(int i11) {
        if ((this.mAdapterState == 3 && this.mScrollState == 0) || this.mScrollState == i11) {
            return;
        }
        this.mScrollState = i11;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i11);
        }
    }

    private int getPosition() {
        return this.mLayoutManager.findFirstVisibleItemPosition();
    }

    private boolean isInAnyDraggingState() {
        int i11 = this.mAdapterState;
        return i11 == 1 || i11 == 4;
    }

    private void resetState() {
        this.mAdapterState = 0;
        this.mScrollState = 0;
        this.mScrollValues.reset();
        this.mDragStartPosition = -1;
        this.mTarget = -1;
        this.mDispatchSelected = false;
        this.mScrollHappened = false;
        this.mFakeDragging = false;
        this.mDataSetChangeHappened = false;
    }

    private void startDrag(boolean z10) {
        this.mFakeDragging = z10;
        this.mAdapterState = z10 ? 4 : 1;
        int i11 = this.mTarget;
        if (i11 != -1) {
            this.mDragStartPosition = i11;
            this.mTarget = -1;
        } else if (this.mDragStartPosition == -1) {
            this.mDragStartPosition = getPosition();
        }
        dispatchStateChanged(1);
    }

    private void updateScrollEventValues() {
        int top;
        ScrollEventValues scrollEventValues = this.mScrollValues;
        int iFindFirstVisibleItemPosition = this.mLayoutManager.findFirstVisibleItemPosition();
        scrollEventValues.mPosition = iFindFirstVisibleItemPosition;
        if (iFindFirstVisibleItemPosition == -1) {
            scrollEventValues.reset();
            return;
        }
        View viewFindViewByPosition = this.mLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
        if (viewFindViewByPosition == null) {
            scrollEventValues.reset();
            return;
        }
        int leftDecorationWidth = this.mLayoutManager.getLeftDecorationWidth(viewFindViewByPosition);
        int rightDecorationWidth = this.mLayoutManager.getRightDecorationWidth(viewFindViewByPosition);
        int topDecorationHeight = this.mLayoutManager.getTopDecorationHeight(viewFindViewByPosition);
        int bottomDecorationHeight = this.mLayoutManager.getBottomDecorationHeight(viewFindViewByPosition);
        ViewGroup.LayoutParams layoutParams = viewFindViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            leftDecorationWidth += marginLayoutParams.leftMargin;
            rightDecorationWidth += marginLayoutParams.rightMargin;
            topDecorationHeight += marginLayoutParams.topMargin;
            bottomDecorationHeight += marginLayoutParams.bottomMargin;
        }
        int height = viewFindViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = viewFindViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        if (this.mLayoutManager.getOrientation() == 0) {
            top = (viewFindViewByPosition.getLeft() - leftDecorationWidth) - this.mRecyclerView.getPaddingLeft();
            if (this.mViewPager.isRtl()) {
                top = -top;
            }
            height = width;
        } else {
            top = (viewFindViewByPosition.getTop() - topDecorationHeight) - this.mRecyclerView.getPaddingTop();
        }
        int i11 = -top;
        scrollEventValues.mOffsetPx = i11;
        if (i11 >= 0) {
            scrollEventValues.mOffset = height == 0 ? 0.0f : i11 / height;
        } else {
            if (!new AnimateLayoutChangeDetector(this.mLayoutManager).mayHaveInterferingAnimations()) {
                throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(scrollEventValues.mOffsetPx)));
            }
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        }
    }

    double getRelativeScrollPosition() {
        updateScrollEventValues();
        ScrollEventValues scrollEventValues = this.mScrollValues;
        return ((double) scrollEventValues.mPosition) + ((double) scrollEventValues.mOffset);
    }

    int getScrollState() {
        return this.mScrollState;
    }

    boolean isDragging() {
        return this.mScrollState == 1;
    }

    boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    boolean isIdle() {
        return this.mScrollState == 0;
    }

    void notifyBeginFakeDrag() {
        this.mAdapterState = 4;
        startDrag(true);
    }

    void notifyDataSetChangeHappened() {
        this.mDataSetChangeHappened = true;
    }

    void notifyEndFakeDrag() {
        if (!isDragging() || this.mFakeDragging) {
            this.mFakeDragging = false;
            updateScrollEventValues();
            ScrollEventValues scrollEventValues = this.mScrollValues;
            if (scrollEventValues.mOffsetPx != 0) {
                dispatchStateChanged(2);
                return;
            }
            int i11 = scrollEventValues.mPosition;
            if (i11 != this.mDragStartPosition) {
                dispatchSelected(i11);
            }
            dispatchStateChanged(0);
            resetState();
        }
    }

    void notifyProgrammaticScroll(int i11, boolean z10) {
        this.mAdapterState = z10 ? 2 : 3;
        this.mFakeDragging = false;
        boolean z11 = this.mTarget != i11;
        this.mTarget = i11;
        dispatchStateChanged(2);
        if (z11) {
            dispatchSelected(i11);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i11) {
        if (!(this.mAdapterState == 1 && this.mScrollState == 1) && i11 == 1) {
            startDrag(false);
            return;
        }
        if (isInAnyDraggingState() && i11 == 2) {
            if (this.mScrollHappened) {
                dispatchStateChanged(2);
                this.mDispatchSelected = true;
                return;
            }
            return;
        }
        if (isInAnyDraggingState() && i11 == 0) {
            updateScrollEventValues();
            if (this.mScrollHappened) {
                ScrollEventValues scrollEventValues = this.mScrollValues;
                if (scrollEventValues.mOffsetPx == 0) {
                    int i12 = this.mDragStartPosition;
                    int i13 = scrollEventValues.mPosition;
                    if (i12 != i13) {
                        dispatchSelected(i13);
                    }
                }
            } else {
                int i14 = this.mScrollValues.mPosition;
                if (i14 != -1) {
                    dispatchScrolled(i14, 0.0f, 0);
                }
            }
            dispatchStateChanged(0);
            resetState();
        }
        if (this.mAdapterState == 2 && i11 == 0 && this.mDataSetChangeHappened) {
            updateScrollEventValues();
            ScrollEventValues scrollEventValues2 = this.mScrollValues;
            if (scrollEventValues2.mOffsetPx == 0) {
                int i15 = this.mTarget;
                int i16 = scrollEventValues2.mPosition;
                if (i15 != i16) {
                    if (i16 == -1) {
                        i16 = 0;
                    }
                    dispatchSelected(i16);
                }
                dispatchStateChanged(0);
                resetState();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001f  */
    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(@NonNull RecyclerView recyclerView, int i11, int i12) {
        ScrollEventValues scrollEventValues;
        int i13;
        this.mScrollHappened = true;
        updateScrollEventValues();
        if (this.mDispatchSelected) {
            this.mDispatchSelected = false;
            if (i12 > 0) {
                scrollEventValues = this.mScrollValues;
                if (scrollEventValues.mOffsetPx != 0) {
                    i13 = scrollEventValues.mPosition + 1;
                } else {
                    i13 = this.mScrollValues.mPosition;
                }
            } else {
                if (i12 == 0) {
                    if ((i11 < 0) == this.mViewPager.isRtl()) {
                        scrollEventValues = this.mScrollValues;
                        if (scrollEventValues.mOffsetPx != 0) {
                            i13 = scrollEventValues.mPosition + 1;
                        }
                    }
                }
                i13 = this.mScrollValues.mPosition;
            }
            this.mTarget = i13;
            if (this.mDragStartPosition != i13) {
                dispatchSelected(i13);
            }
        } else if (this.mAdapterState == 0) {
            int i14 = this.mScrollValues.mPosition;
            if (i14 == -1) {
                i14 = 0;
            }
            dispatchSelected(i14);
        }
        ScrollEventValues scrollEventValues2 = this.mScrollValues;
        int i15 = scrollEventValues2.mPosition;
        if (i15 == -1) {
            i15 = 0;
        }
        dispatchScrolled(i15, scrollEventValues2.mOffset, scrollEventValues2.mOffsetPx);
        ScrollEventValues scrollEventValues3 = this.mScrollValues;
        int i16 = scrollEventValues3.mPosition;
        int i17 = this.mTarget;
        if ((i16 == i17 || i17 == -1) && scrollEventValues3.mOffsetPx == 0 && this.mScrollState != 1) {
            dispatchStateChanged(0);
            resetState();
        }
    }

    void setOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallback = onPageChangeCallback;
    }
}
