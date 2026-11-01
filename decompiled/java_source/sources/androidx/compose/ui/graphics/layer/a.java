package androidx.compose.ui.graphics.layer;

import androidx.collection.MutableScatterSet;
import androidx.compose.ui.graphics.h4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private GraphicsLayer f4507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private GraphicsLayer f4508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MutableScatterSet f4509c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MutableScatterSet f4510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4511e;

    public final boolean i(GraphicsLayer graphicsLayer) {
        if (!this.f4511e) {
            h4.a("Only add dependencies during a tracking");
        }
        MutableScatterSet mutableScatterSet = this.f4509c;
        if (mutableScatterSet != null) {
            Intrinsics.e(mutableScatterSet);
            mutableScatterSet.h(graphicsLayer);
        } else if (this.f4507a != null) {
            MutableScatterSet mutableScatterSetA = androidx.collection.w0.a();
            GraphicsLayer graphicsLayer2 = this.f4507a;
            Intrinsics.e(graphicsLayer2);
            mutableScatterSetA.h(graphicsLayer2);
            mutableScatterSetA.h(graphicsLayer);
            this.f4509c = mutableScatterSetA;
            this.f4507a = null;
        } else {
            this.f4507a = graphicsLayer;
        }
        MutableScatterSet mutableScatterSet2 = this.f4510d;
        if (mutableScatterSet2 != null) {
            Intrinsics.e(mutableScatterSet2);
            return !mutableScatterSet2.x(graphicsLayer);
        }
        if (this.f4508b != graphicsLayer) {
            return true;
        }
        this.f4508b = null;
        return false;
    }
}
