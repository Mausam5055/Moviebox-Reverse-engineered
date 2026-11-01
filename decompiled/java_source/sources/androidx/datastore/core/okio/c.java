package androidx.datastore.core.okio;

import androidx.datastore.core.k;
import androidx.datastore.core.l;
import kotlin.jvm.internal.Intrinsics;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static final k a(Path path) {
        Intrinsics.h(path, "path");
        return l.a(path.normalized().toString());
    }
}
