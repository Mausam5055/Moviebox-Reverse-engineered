package androidx.compose.foundation.lazy.layout;

import androidx.collection.p0;
import androidx.collection.q0;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
public final class NearestRangeKeyIndexMap implements p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p0 f3008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f3009c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3010d;

    public NearestRangeKeyIndexMap(IntRange intRange, j jVar) {
        b bVarC = jVar.c();
        final int first = intRange.getFirst();
        if (first < 0) {
            throw new IllegalStateException("negative nearestRange.first");
        }
        final int iMin = Math.min(intRange.getLast(), bVarC.getSize() - 1);
        if (iMin < first) {
            this.f3008b = q0.a();
            this.f3009c = new Object[0];
            this.f3010d = 0;
        } else {
            int i11 = (iMin - first) + 1;
            this.f3009c = new Object[i11];
            this.f3010d = first;
            final androidx.collection.k0 k0Var = new androidx.collection.k0(i11);
            bVarC.a(first, iMin, new Function1<b.a, Unit>() { // from class: androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((b.a) obj);
                    return Unit.f67061a;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0039  */
                public final void invoke(b.a aVar) {
                    Object objA;
                    Function1 key = ((j.a) aVar.c()).getKey();
                    int iMax = Math.max(first, aVar.b());
                    int iMin2 = Math.min(iMin, (aVar.b() + aVar.a()) - 1);
                    if (iMax > iMin2) {
                        return;
                    }
                    while (true) {
                        if (key == null) {
                            objA = b0.a(iMax);
                        } else {
                            objA = key.invoke(Integer.valueOf(iMax - aVar.b()));
                            if (objA == null) {
                                objA = b0.a(iMax);
                            }
                        }
                        k0Var.r(objA, iMax);
                        this.f3009c[iMax - this.f3010d] = objA;
                        if (iMax == iMin2) {
                            return;
                        } else {
                            iMax++;
                        }
                    }
                }
            });
            this.f3008b = k0Var;
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.p
    public int a(Object obj) {
        p0 p0Var = this.f3008b;
        int iA = p0Var.a(obj);
        if (iA >= 0) {
            return p0Var.f2316c[iA];
        }
        return -1;
    }

    @Override // androidx.compose.foundation.lazy.layout.p
    public Object b(int i11) {
        Object[] objArr = this.f3009c;
        int i12 = i11 - this.f3010d;
        if (i12 < 0 || i12 > ArraysKt.b0(objArr)) {
            return null;
        }
        return objArr[i12];
    }
}
