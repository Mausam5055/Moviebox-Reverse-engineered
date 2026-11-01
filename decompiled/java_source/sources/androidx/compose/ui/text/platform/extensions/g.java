package androidx.compose.ui.text.platform.extensions;

import android.text.style.TtsSpan;
import androidx.compose.ui.text.f0;
import androidx.compose.ui.text.h0;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {
    public static final TtsSpan a(f0 f0Var) {
        if (f0Var instanceof h0) {
            return b((h0) f0Var);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final TtsSpan b(h0 h0Var) {
        return new TtsSpan.VerbatimBuilder(h0Var.a()).build();
    }
}
