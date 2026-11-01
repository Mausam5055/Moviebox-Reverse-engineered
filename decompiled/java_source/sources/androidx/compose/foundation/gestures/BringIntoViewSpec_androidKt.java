package androidx.compose.foundation.gestures;

import android.content.Context;
import androidx.compose.animation.core.u;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.r;
import androidx.compose.runtime.s1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class BringIntoViewSpec_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s1 f2630a = CompositionLocalKt.e(new Function1<r, d>() { // from class: androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt$LocalBringIntoViewSpec$1
        @Override // kotlin.jvm.functions.Function1
        public final d invoke(r rVar) {
            return !((Context) rVar.c(AndroidCompositionLocals_androidKt.g())).getPackageManager().hasSystemFeature("android.software.leanback") ? d.f2716a.b() : BringIntoViewSpec_androidKt.b();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final d f2631b = new a();

    public static final class a implements d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f2633c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float f2632b = 0.3f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final androidx.compose.animation.core.g f2634d = androidx.compose.animation.core.h.f(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 0, new u(0.25f, 0.1f, 0.25f, 1.0f), 2, null);

        a() {
        }

        @Override // androidx.compose.foundation.gestures.d
        public float a(float f11, float f12, float f13) {
            float fAbs = Math.abs((f12 + f11) - f11);
            boolean z10 = fAbs <= f13;
            float f14 = (this.f2632b * f13) - (this.f2633c * fAbs);
            float f15 = f13 - f14;
            if (z10 && f15 < fAbs) {
                f14 = f13 - fAbs;
            }
            return f11 - f14;
        }

        @Override // androidx.compose.foundation.gestures.d
        public androidx.compose.animation.core.g b() {
            return this.f2634d;
        }
    }

    public static final s1 a() {
        return f2630a;
    }

    public static final d b() {
        return f2631b;
    }
}
