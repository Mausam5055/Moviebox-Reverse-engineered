package androidx.compose.foundation.text;

import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\u000b¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "invoke", "(Landroidx/compose/runtime/i;I)Ljava/lang/String;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class ContextMenu_androidKt$TextItem$1 extends Lambda implements Function2<i, Integer, String> {
    final /* synthetic */ TextContextMenuItems $label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextMenu_androidKt$TextItem$1(TextContextMenuItems textContextMenuItems) {
        super(2);
        this.$label = textContextMenuItems;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke((i) obj, ((Number) obj2).intValue());
    }

    public final String invoke(i iVar, int i11) {
        iVar.P(-1451087197);
        if (k.H()) {
            k.Q(-1451087197, i11, -1, "androidx.compose.foundation.text.TextItem.<anonymous> (ContextMenu.android.kt:98)");
        }
        String strResolvedString = this.$label.resolvedString(iVar, 0);
        if (k.H()) {
            k.P();
        }
        iVar.K();
        return strResolvedString;
    }
}
