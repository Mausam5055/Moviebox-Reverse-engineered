package androidx.datastore.preferences.core;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static final c a() {
        return new MutablePreferences(null, true, 1, null);
    }

    public static final MutablePreferences b(c.b... pairs) {
        Intrinsics.h(pairs, "pairs");
        MutablePreferences mutablePreferences = new MutablePreferences(null, false, 1, null);
        mutablePreferences.g((c.b[]) Arrays.copyOf(pairs, pairs.length));
        return mutablePreferences;
    }
}
