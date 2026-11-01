package androidx.window.layout;

import android.app.Activity;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInfoTrackerImpl implements x {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f15330d = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c0 f15331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f15332c;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public WindowInfoTrackerImpl(c0 windowMetricsCalculator, v windowBackend) {
        Intrinsics.h(windowMetricsCalculator, "windowMetricsCalculator");
        Intrinsics.h(windowBackend, "windowBackend");
        this.f15331b = windowMetricsCalculator;
        this.f15332c = windowBackend;
    }

    @Override // androidx.window.layout.x
    public kotlinx.coroutines.flow.b a(Activity activity) {
        Intrinsics.h(activity, "activity");
        return kotlinx.coroutines.flow.d.s(new WindowInfoTrackerImpl$windowLayoutInfo$1(this, activity, null));
    }
}
