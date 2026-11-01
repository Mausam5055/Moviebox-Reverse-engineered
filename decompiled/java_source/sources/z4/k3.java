package z4;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class k3 extends o {
    public k3(y4.h hVar, Class cls) {
        super(hVar, cls, cls);
    }

    private Throwable s(String str, Throwable th2, Class cls) {
        Constructor<?> constructor = null;
        Constructor<?> constructor2 = null;
        Constructor<?> constructor3 = null;
        for (Constructor<?> constructor4 : cls.getConstructors()) {
            Class<?>[] parameterTypes = constructor4.getParameterTypes();
            if (parameterTypes.length == 0) {
                constructor3 = constructor4;
            } else if (parameterTypes.length == 1 && parameterTypes[0] == String.class) {
                constructor2 = constructor4;
            } else if (parameterTypes.length == 2 && parameterTypes[0] == String.class && parameterTypes[1] == Throwable.class) {
                constructor = constructor4;
            }
        }
        if (constructor != null) {
            return (Throwable) constructor.newInstance(str, th2);
        }
        if (constructor2 != null) {
            return (Throwable) constructor2.newInstance(str);
        }
        if (constructor3 != null) {
            return (Throwable) constructor3.newInstance(null);
        }
        return null;
    }

    @Override // z4.o, z4.b2
    public int b() {
        return 12;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003c  */
    @Override // z4.o, z4.b2
    public Object c(y4.a aVar, Type type, Object obj) throws Throwable {
        Class clsJ;
        Throwable thS;
        y4.b bVar = aVar.f78831f;
        o oVar = null;
        if (bVar.q0() == 8) {
            bVar.Z();
            return null;
        }
        if (aVar.u() == 2) {
            aVar.E0(0);
        } else if (bVar.q0() != 12) {
            throw new JSONException("syntax error");
        }
        if (type == null || !(type instanceof Class)) {
            clsJ = null;
        } else {
            clsJ = (Class) type;
            if (!Throwable.class.isAssignableFrom(clsJ)) {
                clsJ = null;
            }
        }
        HashMap map = null;
        Throwable th2 = null;
        String strK0 = null;
        StackTraceElement[] stackTraceElementArr = null;
        while (true) {
            String strI = bVar.i(aVar.v());
            if (strI == null) {
                if (bVar.q0() == 13) {
                    bVar.c0(16);
                    break;
                }
                if (bVar.q0() != 16 || !bVar.n(Feature.AllowArbitraryCommas)) {
                }
            }
            bVar.q(4);
            if (com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(strI)) {
                if (bVar.q0() != 4) {
                    throw new JSONException("syntax error");
                }
                clsJ = aVar.m().j(bVar.k0(), Throwable.class, bVar.r());
                bVar.c0(16);
            } else if ("message".equals(strI)) {
                if (bVar.q0() == 8) {
                    strK0 = null;
                } else {
                    if (bVar.q0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strK0 = bVar.k0();
                }
                bVar.Z();
            } else if ("cause".equals(strI)) {
                th2 = (Throwable) c(aVar, null, "cause");
            } else if ("stackTrace".equals(strI)) {
                stackTraceElementArr = (StackTraceElement[]) aVar.m0(StackTraceElement[].class);
            } else {
                if (map == null) {
                    map = new HashMap();
                }
                map.put(strI, aVar.T());
            }
            if (bVar.q0() == 13) {
                bVar.c0(16);
                break;
            }
        }
        if (clsJ == null) {
            thS = new Exception(strK0, th2);
        } else {
            if (!Throwable.class.isAssignableFrom(clsJ)) {
                throw new JSONException("type not match, not Throwable. " + clsJ.getName());
            }
            try {
                thS = s(strK0, th2, clsJ);
                if (thS == null) {
                    thS = new Exception(strK0, th2);
                }
            } catch (Exception e11) {
                throw new JSONException("create instance error", e11);
            }
        }
        if (stackTraceElementArr != null) {
            thS.setStackTrace(stackTraceElementArr);
        }
        if (map != null) {
            if (clsJ != null) {
                if (clsJ == this.f79249c) {
                    oVar = this;
                } else {
                    b2 b2VarP = aVar.m().p(clsJ);
                    if (b2VarP instanceof o) {
                        oVar = (o) b2VarP;
                    }
                }
            }
            if (oVar != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    Object value = entry.getValue();
                    l lVarJ = oVar.j(str);
                    if (lVarJ != null) {
                        com.alibaba.fastjson.util.d dVar = lVarJ.f79243a;
                        if (!dVar.f18201e.isInstance(value)) {
                            value = TypeUtils.h(value, dVar.f18202f, aVar.m());
                        }
                        lVarJ.h(thS, value);
                    }
                }
            }
        }
        return thS;
    }
}
