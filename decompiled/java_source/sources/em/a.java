package em;

import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class a implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        List list = (List) obj;
        mVar.d().a("values");
        try {
            try {
                Class<?> componentType = cls.getComponentType() != null ? cls.getComponentType() : mVar.e(mVar.d());
                if (componentType == null) {
                    throw new com.transsion.json.k("Missing concrete class for array.  You might require a use() method.");
                }
                Object objNewInstance = Array.newInstance(componentType, list.size());
                for (int i11 = 0; i11 < list.size(); i11++) {
                    Array.set(objNewInstance, i11, mVar.j(list.get(i11), componentType));
                }
                mVar.d().d();
                return objNewInstance;
            } catch (ClassNotFoundException e11) {
                throw new com.transsion.json.k(String.format("%s: Could not find class %s", mVar.d(), e11.getMessage()), e11);
            }
        } catch (Throwable th2) {
            mVar.d().d();
            throw th2;
        }
    }
}
