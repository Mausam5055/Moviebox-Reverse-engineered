package androidx.compose.ui.platform;

import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f5801b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f5802c = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AccessibilityManager f5803a;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public i(Context context) {
        Object systemService = context.getSystemService("accessibility");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
        this.f5803a = (AccessibilityManager) systemService;
    }
}
