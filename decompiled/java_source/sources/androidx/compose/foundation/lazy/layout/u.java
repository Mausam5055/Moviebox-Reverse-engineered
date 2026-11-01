package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.a3;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.r2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class u implements a3 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f3072e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i1 f3075c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3076d;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final IntRange b(int i11, int i12, int i13) {
            int i14 = (i11 / i12) * i12;
            return RangesKt.t(Math.max(i14 - i13, 0), i14 + i12 + i13);
        }
    }

    public u(int i11, int i12, int i13) {
        this.f3073a = i12;
        this.f3074b = i13;
        this.f3075c = r2.e(f3072e.b(i11, i12, i13), r2.j());
        this.f3076d = i11;
    }

    private void d(IntRange intRange) {
        this.f3075c.setValue(intRange);
    }

    @Override // androidx.compose.runtime.a3
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public IntRange getValue() {
        return (IntRange) this.f3075c.getValue();
    }

    public final void e(int i11) {
        if (i11 != this.f3076d) {
            this.f3076d = i11;
            d(f3072e.b(i11, this.f3073a, this.f3074b));
        }
    }
}
