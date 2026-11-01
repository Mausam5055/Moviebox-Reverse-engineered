package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class j implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile Class f255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile Method f257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile Method f258d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static j f259e = new j();

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        Class<?>[] interfaces = obj.getClass().getInterfaces();
        if (interfaces.length == 1 && interfaces[0].isAnnotation()) {
            Class<?> cls = interfaces[0];
            if (f255a == null && !f256b) {
                try {
                    f255a = Class.forName("sun.reflect.annotation.AnnotationType");
                } catch (Throwable th2) {
                    f256b = true;
                    throw new JSONException("not support Type Annotation.", th2);
                }
            }
            if (f255a == null) {
                throw new JSONException("not support Type Annotation.");
            }
            if (f257c == null && !f256b) {
                try {
                    f257c = f255a.getMethod("getInstance", Class.class);
                } catch (Throwable th3) {
                    f256b = true;
                    throw new JSONException("not support Type Annotation.", th3);
                }
            }
            if (f258d == null && !f256b) {
                try {
                    f258d = f255a.getMethod("members", null);
                } catch (Throwable th4) {
                    f256b = true;
                    throw new JSONException("not support Type Annotation.", th4);
                }
            }
            if (f257c == null || f256b) {
                throw new JSONException("not support Type Annotation.");
            }
            try {
                try {
                    Map map = (Map) f258d.invoke(f257c.invoke(null, cls), null);
                    JSONObject jSONObject = new JSONObject(map.size());
                    Object objInvoke = null;
                    for (Map.Entry entry : map.entrySet()) {
                        try {
                            objInvoke = ((Method) entry.getValue()).invoke(obj, null);
                        } catch (IllegalAccessException | InvocationTargetException unused) {
                        }
                        jSONObject.put((String) entry.getKey(), com.alibaba.fastjson.a.toJSON(objInvoke));
                    }
                    o0Var.A(jSONObject);
                } catch (Throwable th5) {
                    f256b = true;
                    throw new JSONException("not support Type Annotation.", th5);
                }
            } catch (Throwable th6) {
                f256b = true;
                throw new JSONException("not support Type Annotation.", th6);
            }
        }
    }
}
