package em;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class b implements com.transsion.json.o {
    @Override // com.transsion.json.o
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        try {
            return mVar.k((Map) obj, b(cls), type);
        } catch (IllegalAccessException e11) {
            throw new com.transsion.json.k(mVar.d() + ":There was an exception trying to instantiate an instance of " + cls.getName(), e11);
        } catch (InstantiationException e12) {
            throw new com.transsion.json.k(mVar.d() + ":There was an exception trying to instantiate an instance of " + cls.getName(), e12);
        } catch (NoSuchMethodException e13) {
            throw new com.transsion.json.k(mVar.d() + ": " + cls.getName() + " lacks a no argument constructor.  com.zero.json will instantiate any protected, private, or public no-arg constructor.", e13);
        } catch (InvocationTargetException e14) {
            throw new com.transsion.json.k(mVar.d() + ":There was an exception trying to instantiate an instance of " + cls.getName(), e14);
        }
    }

    protected Object b(Class cls) throws NoSuchMethodException {
        Constructor declaredConstructor = cls.getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return declaredConstructor.newInstance(null);
    }
}
