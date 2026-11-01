package androidx.compose.ui.node;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f5419b = new int[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.compose.runtime.collection.b[] f5420c = new androidx.compose.runtime.collection.b[16];

    public final boolean a() {
        int i11 = this.f5418a;
        return i11 > 0 && this.f5419b[i11 - 1] >= 0;
    }

    public final Object b() {
        int i11 = this.f5418a;
        if (i11 <= 0) {
            throw new IllegalStateException("Cannot call pop() on an empty stack. Guard with a call to isNotEmpty()");
        }
        int i12 = i11 - 1;
        int i13 = this.f5419b[i12];
        androidx.compose.runtime.collection.b bVar = this.f5420c[i12];
        Intrinsics.e(bVar);
        if (i13 > 0) {
            int[] iArr = this.f5419b;
            iArr[i12] = iArr[i12] - 1;
        } else if (i13 == 0) {
            this.f5420c[i12] = null;
            this.f5418a--;
        }
        return bVar.m()[i13];
    }

    public final void c(androidx.compose.runtime.collection.b bVar) {
        if (bVar.p()) {
            return;
        }
        int i11 = this.f5418a;
        int[] iArr = this.f5419b;
        if (i11 >= iArr.length) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length * 2);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f5419b = iArrCopyOf;
            androidx.compose.runtime.collection.b[] bVarArr = this.f5420c;
            Object[] objArrCopyOf = Arrays.copyOf(bVarArr, bVarArr.length * 2);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f5420c = (androidx.compose.runtime.collection.b[]) objArrCopyOf;
        }
        this.f5419b[i11] = bVar.n() - 1;
        this.f5420c[i11] = bVar;
        this.f5418a++;
    }
}
