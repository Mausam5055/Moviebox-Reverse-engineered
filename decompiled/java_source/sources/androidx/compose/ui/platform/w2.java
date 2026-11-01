package androidx.compose.ui.platform;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class w2 implements v2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f5873b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final androidx.compose.runtime.i1 f5874c = androidx.compose.runtime.u2.c(androidx.compose.ui.input.pointer.g0.a(androidx.compose.ui.input.pointer.r.a()), null, 2, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.i1 f5875a = androidx.compose.runtime.u2.c(Boolean.FALSE, null, 2, null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public void a(int i11) {
        f5874c.setValue(androidx.compose.ui.input.pointer.g0.a(i11));
    }

    public void b(boolean z10) {
        this.f5875a.setValue(Boolean.valueOf(z10));
    }
}
