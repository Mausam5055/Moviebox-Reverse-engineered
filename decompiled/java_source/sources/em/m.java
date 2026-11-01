package em;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class m implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        if (type == null || !(type instanceof ParameterizedType)) {
            return mVar.l((Map) obj, b(), null, null);
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type type2 = parameterizedType.getActualTypeArguments()[0];
        Type type3 = parameterizedType.getActualTypeArguments()[1];
        Map map = (Map) obj;
        HashMap mapB = b();
        if (type2 == Object.class) {
            type2 = null;
        }
        return mVar.l(map, mapB, type2, type3 != Object.class ? type3 : null);
    }

    protected HashMap b() {
        return new HashMap();
    }
}
