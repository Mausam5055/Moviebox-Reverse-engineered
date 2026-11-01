package androidx.compose.runtime.collection;

import androidx.collection.ScatterSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static final Set a(ScatterSet scatterSet) {
        return new ScatterSetWrapper(scatterSet);
    }
}
