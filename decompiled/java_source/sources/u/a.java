package u;

import java.util.Map;
import kotlin.collections.AbstractMutableSet;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends AbstractMutableSet {
    public final boolean a(Map.Entry entry) {
        if ((entry instanceof Object ? entry : null) instanceof Map.Entry) {
            return c(entry);
        }
        return false;
    }

    public abstract boolean c(Map.Entry entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return a((Map.Entry) obj);
        }
        return false;
    }

    public final boolean e(Map.Entry entry) {
        if ((entry instanceof Object ? entry : null) instanceof Map.Entry) {
            return f(entry);
        }
        return false;
    }

    public abstract boolean f(Map.Entry entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return e((Map.Entry) obj);
        }
        return false;
    }
}
