package z4;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class h3 extends l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f79233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f79234d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final y4.a f79235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f79236f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map f79237g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Collection f79238h;

    public h3(Collection collection) {
        super(null, null);
        this.f79235e = null;
        this.f79233c = -1;
        this.f79234d = null;
        this.f79236f = null;
        this.f79237g = null;
        this.f79238h = collection;
    }

    public h3(Map map, Object obj) {
        super(null, null);
        this.f79235e = null;
        this.f79233c = -1;
        this.f79234d = null;
        this.f79236f = obj;
        this.f79237g = map;
        this.f79238h = null;
    }

    public h3(y4.a aVar, List list, int i11) {
        super(null, null);
        this.f79235e = aVar;
        this.f79233c = i11;
        this.f79234d = list;
        this.f79236f = null;
        this.f79237g = null;
        this.f79238h = null;
    }

    @Override // z4.l
    public void d(y4.a aVar, Object obj, Type type, Map map) {
    }

    @Override // z4.l
    public void h(Object obj, Object obj2) {
        JSONArray jSONArray;
        Object relatedArray;
        Map map = this.f79237g;
        if (map != null) {
            map.put(this.f79236f, obj2);
            return;
        }
        Collection collection = this.f79238h;
        if (collection != null) {
            collection.add(obj2);
            return;
        }
        this.f79234d.set(this.f79233c, obj2);
        List list = this.f79234d;
        if (!(list instanceof JSONArray) || (relatedArray = (jSONArray = (JSONArray) list).getRelatedArray()) == null || Array.getLength(relatedArray) <= this.f79233c) {
            return;
        }
        if (jSONArray.getComponentType() != null) {
            obj2 = TypeUtils.h(obj2, jSONArray.getComponentType(), this.f79235e.m());
        }
        Array.set(relatedArray, this.f79233c, obj2);
    }
}
