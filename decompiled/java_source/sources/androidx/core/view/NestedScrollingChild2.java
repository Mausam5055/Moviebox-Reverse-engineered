package androidx.core.view;

/* JADX INFO: loaded from: classes.dex */
public interface NestedScrollingChild2 extends NestedScrollingChild {
    boolean dispatchNestedPreScroll(int i11, int i12, int[] iArr, int[] iArr2, int i13);

    boolean dispatchNestedScroll(int i11, int i12, int i13, int i14, int[] iArr, int i15);

    boolean hasNestedScrollingParent(int i11);

    boolean startNestedScroll(int i11, int i12);

    void stopNestedScroll(int i11);
}
