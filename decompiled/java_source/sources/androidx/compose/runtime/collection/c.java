package androidx.compose.runtime.collection;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(List list, int i11) {
        int size = list.size();
        if (i11 < 0 || i11 >= size) {
            throw new IndexOutOfBoundsException("Index " + i11 + " is out of bounds. The list has " + size + " elements.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(List list, int i11, int i12) {
        int size = list.size();
        if (i11 > i12) {
            throw new IllegalArgumentException("Indices are out of order. fromIndex (" + i11 + ") is greater than toIndex (" + i12 + ").");
        }
        if (i11 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i11 + ") is less than 0.");
        }
        if (i12 <= size) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i12 + ") is more than than the list size (" + size + ')');
    }
}
