package k;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a extends b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap f66455e = new HashMap();

    @Override // k.b
    protected b.c b(Object obj) {
        return (b.c) this.f66455e.get(obj);
    }

    public boolean contains(Object obj) {
        return this.f66455e.containsKey(obj);
    }

    @Override // k.b
    public Object g(Object obj, Object obj2) {
        b.c cVarB = b(obj);
        if (cVarB != null) {
            return cVarB.f66461b;
        }
        this.f66455e.put(obj, f(obj, obj2));
        return null;
    }

    @Override // k.b
    public Object h(Object obj) {
        Object objH = super.h(obj);
        this.f66455e.remove(obj);
        return objH;
    }

    public Map.Entry j(Object obj) {
        if (contains(obj)) {
            return ((b.c) this.f66455e.get(obj)).f66463d;
        }
        return null;
    }
}
