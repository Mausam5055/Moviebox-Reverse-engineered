package androidx.compose.ui.platform;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class j implements q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ClipboardManager f5824a;

    public j(ClipboardManager clipboardManager) {
        this.f5824a = clipboardManager;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public j(Context context) {
        Object systemService = context.getSystemService("clipboard");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        this((ClipboardManager) systemService);
    }

    @Override // androidx.compose.ui.platform.q0
    public AnnotatedString a() {
        ClipData primaryClip = this.f5824a.getPrimaryClip();
        if (primaryClip == null || primaryClip.getItemCount() <= 0) {
            return null;
        }
        ClipData.Item itemAt = primaryClip.getItemAt(0);
        return k.a(itemAt != null ? itemAt.getText() : null);
    }

    @Override // androidx.compose.ui.platform.q0
    public boolean b() {
        ClipDescription primaryClipDescription = this.f5824a.getPrimaryClipDescription();
        if (primaryClipDescription != null) {
            return primaryClipDescription.hasMimeType("text/*");
        }
        return false;
    }

    @Override // androidx.compose.ui.platform.q0
    public void c(AnnotatedString annotatedString) {
        this.f5824a.setPrimaryClip(ClipData.newPlainText("plain text", k.b(annotatedString)));
    }
}
