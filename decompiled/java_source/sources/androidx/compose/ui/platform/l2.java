package androidx.compose.ui.platform;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.sequences.Sequence;

/* JADX INFO: loaded from: classes.dex */
public final class l2 implements Sequence {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f5841a = new ArrayList();

    public final void c(String str, Object obj) {
        this.f5841a.add(new k2(str, obj));
    }

    @Override // kotlin.sequences.Sequence
    public Iterator iterator() {
        return this.f5841a.iterator();
    }
}
