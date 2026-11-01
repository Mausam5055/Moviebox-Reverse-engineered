package androidx.core.view;

/* JADX INFO: loaded from: classes.dex */
public interface NestedScrollingChild {
    boolean dispatchNestedFling(float f11, float f12, boolean z10);

    boolean dispatchNestedPreFling(float f11, float f12);

    boolean dispatchNestedPreScroll(int i11, int i12, int[] iArr, int[] iArr2);

    boolean dispatchNestedScroll(int i11, int i12, int i13, int i14, int[] iArr);

    boolean hasNestedScrollingParent();

    boolean isNestedScrollingEnabled();

    void setNestedScrollingEnabled(boolean z10);

    boolean startNestedScroll(int i11);

    void stopNestedScroll();
}
