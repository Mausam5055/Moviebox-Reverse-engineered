package xe;

import com.google.zxing.DecodeHintType;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class k implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Collection f78221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map f78222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f78223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78224d;

    public k() {
    }

    public k(Collection collection) {
        this.f78221a = collection;
    }

    public k(Collection collection, Map map, String str, int i11) {
        this.f78221a = collection;
        this.f78222b = map;
        this.f78223c = str;
        this.f78224d = i11;
    }

    @Override // xe.h
    public g a(Map map) {
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        enumMap.putAll(map);
        Map map2 = this.f78222b;
        if (map2 != null) {
            enumMap.putAll(map2);
        }
        Collection collection = this.f78221a;
        if (collection != null) {
            enumMap.put(DecodeHintType.POSSIBLE_FORMATS, collection);
        }
        String str = this.f78223c;
        if (str != null) {
            enumMap.put(DecodeHintType.CHARACTER_SET, str);
        }
        com.google.zxing.f fVar = new com.google.zxing.f();
        fVar.e(enumMap);
        int i11 = this.f78224d;
        if (i11 == 0) {
            return new g(fVar);
        }
        if (i11 != 1) {
            return i11 != 2 ? new g(fVar) : new m(fVar);
        }
        return new l(fVar);
    }
}
