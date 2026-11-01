package androidx.compose.foundation.text.selection;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "", "invoke", "androidx/compose/foundation/text/ContextMenu_androidKt$TextItem$2"}, k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TextFieldSelectionManager_androidKt$contextMenuBuilder$1$invoke$$inlined$TextItem$4 extends Lambda implements Function0<Unit> {
    final /* synthetic */ o.a $state;
    final /* synthetic */ TextFieldSelectionManager $this_contextMenuBuilder$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager_androidKt$contextMenuBuilder$1$invoke$$inlined$TextItem$4(o.a aVar, TextFieldSelectionManager textFieldSelectionManager) {
        super(0);
        this.$state = aVar;
        this.$this_contextMenuBuilder$inlined = textFieldSelectionManager;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Object invoke() {
        m72invoke();
        return Unit.f67061a;
    }

    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
    public final void m72invoke() {
        this.$this_contextMenuBuilder$inlined.l();
        o.b.a(this.$state);
    }
}
