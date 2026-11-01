package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static final f a(f fVar, b bVar, NestedScrollDispatcher nestedScrollDispatcher) {
        return fVar.e(new NestedScrollElement(bVar, nestedScrollDispatcher));
    }
}
