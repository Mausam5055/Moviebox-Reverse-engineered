package androidx.compose.ui.platform;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class e extends androidx.compose.ui.platform.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f5776c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static e f5777d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a() {
            if (e.f5777d == null) {
                e.f5777d = new e(null);
            }
            e eVar = e.f5777d;
            Intrinsics.f(eVar, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.ParagraphTextSegmentIterator");
            return eVar;
        }
    }

    private e() {
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final boolean i(int i11) {
        return i11 > 0 && d().charAt(i11 + (-1)) != '\n' && (i11 == d().length() || d().charAt(i11) == '\n');
    }

    private final boolean j(int i11) {
        return d().charAt(i11) != '\n' && (i11 == 0 || d().charAt(i11 - 1) == '\n');
    }

    @Override // androidx.compose.ui.platform.f
    public int[] a(int i11) {
        int length = d().length();
        if (length <= 0 || i11 >= length) {
            return null;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < length && d().charAt(i11) == '\n' && !j(i11)) {
            i11++;
        }
        if (i11 >= length) {
            return null;
        }
        int i12 = i11 + 1;
        while (i12 < length && !i(i12)) {
            i12++;
        }
        return c(i11, i12);
    }

    @Override // androidx.compose.ui.platform.f
    public int[] b(int i11) {
        int length = d().length();
        if (length <= 0 || i11 <= 0) {
            return null;
        }
        if (i11 > length) {
            i11 = length;
        }
        while (i11 > 0 && d().charAt(i11 - 1) == '\n' && !i(i11)) {
            i11--;
        }
        if (i11 <= 0) {
            return null;
        }
        int i12 = i11 - 1;
        while (i12 > 0 && !j(i12)) {
            i12--;
        }
        return c(i12, i11);
    }
}
