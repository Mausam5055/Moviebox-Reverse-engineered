package androidx.compose.foundation.text;

import android.R;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import i0.h;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/text/TextContextMenuItems;", "", "", "stringId", "<init>", "(Ljava/lang/String;II)V", "", "resolvedString", "(Landroidx/compose/runtime/i;I)Ljava/lang/String;", "I", "Cut", "Copy", "Paste", "SelectAll", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum TextContextMenuItems {
    Cut(R.string.cut),
    Copy(R.string.copy),
    Paste(R.string.paste),
    SelectAll(R.string.selectAll);

    private final int stringId;

    TextContextMenuItems(int i11) {
        this.stringId = i11;
    }

    public final String resolvedString(i iVar, int i11) {
        if (k.H()) {
            k.Q(-309609081, i11, -1, "androidx.compose.foundation.text.TextContextMenuItems.resolvedString (ContextMenu.android.kt:89)");
        }
        String strA = h.a(this.stringId, iVar, 0);
        if (k.H()) {
            k.P();
        }
        return strA;
    }
}
