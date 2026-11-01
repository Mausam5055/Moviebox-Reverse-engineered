package androidx.compose.ui.platform;

import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.compose.ui.SessionMutex;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class i0 implements kotlinx.coroutines.n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f5804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.compose.ui.text.input.e0 f5805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.coroutines.n0 f5806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicReference f5807d = SessionMutex.a();

    public i0(View view, androidx.compose.ui.text.input.e0 e0Var, kotlinx.coroutines.n0 n0Var) {
        this.f5804a = view;
        this.f5805b = e0Var;
        this.f5806c = n0Var;
    }

    public final InputConnection a(EditorInfo editorInfo) {
        android.support.v4.media.session.c.a(SessionMutex.c(this.f5807d));
        return null;
    }

    public final boolean b() {
        android.support.v4.media.session.c.a(SessionMutex.c(this.f5807d));
        return false;
    }

    @Override // kotlinx.coroutines.n0
    public CoroutineContext getCoroutineContext() {
        return this.f5806c.getCoroutineContext();
    }
}
