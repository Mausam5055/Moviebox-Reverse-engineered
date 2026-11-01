package androidx.compose.ui.platform;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
/* synthetic */ class AndroidComposeView$focusOwner$3 extends FunctionReferenceImpl implements Function1<androidx.compose.ui.focus.b, Boolean> {
    AndroidComposeView$focusOwner$3(Object obj) {
        super(1, obj, AndroidComposeView.class, "onMoveFocusInChildren", "onMoveFocusInChildren-3ESFkO8(I)Z", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return m153invoke3ESFkO8(((androidx.compose.ui.focus.b) obj).o());
    }

    /* JADX INFO: renamed from: invoke-3ESFkO8, reason: not valid java name */
    public final Boolean m153invoke3ESFkO8(int i11) {
        return Boolean.valueOf(((AndroidComposeView) this.receiver).z(i11));
    }
}
