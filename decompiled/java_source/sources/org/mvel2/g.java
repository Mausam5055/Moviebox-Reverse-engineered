package org.mvel2;

import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.mvel2.ast.InvokationContextFactory;
import org.mvel2.ast.Proto;
import org.mvel2.ast.TypeDescriptor;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ImmutableDefaultFactory;
import org.mvel2.util.MethodStub;
import org.mvel2.util.m;
import org.mvel2.util.n;
import org.mvel2.util.p;
import org.mvel2.util.s;
import org.mvel2.util.t;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Object[] f71975o = new Object[0];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Map f71976p = Collections.synchronizedMap(new WeakHashMap(10));

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Map f71977q = Collections.synchronizedMap(new WeakHashMap(10));

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Map f71978r = Collections.synchronizedMap(new WeakHashMap(10));

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Map f71979s = Collections.synchronizedMap(new WeakHashMap(10));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f71980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f71981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f71982c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private char[] f71983d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f71984e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f71985f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Object f71986g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Object f71987h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Object f71988i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Class f71989j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f71990k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f71991l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private VariableResolverFactory f71992m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ParserContext f71993n;

    public g(String str, Object obj) {
        this.f71980a = 0;
        this.f71981b = 0;
        this.f71989j = null;
        this.f71990k = true;
        this.f71991l = false;
        char[] charArray = str.toCharArray();
        this.f71983d = charArray;
        int length = charArray.length;
        this.f71985f = length;
        this.f71984e = length;
        this.f71987h = obj;
        this.f71992m = new ImmutableDefaultFactory();
    }

    public g(char[] cArr, int i11, int i12, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        this.f71989j = null;
        this.f71990k = true;
        this.f71991l = false;
        this.f71983d = cArr;
        this.f71980a = i11;
        this.f71982c = i11;
        this.f71981b = i11;
        this.f71984e = i12;
        this.f71985f = i11 + i12;
        this.f71987h = obj;
        this.f71992m = variableResolverFactory;
        this.f71986g = obj2;
        this.f71993n = parserContext;
    }

    public g(char[] cArr, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        this.f71980a = 0;
        this.f71981b = 0;
        this.f71989j = null;
        this.f71990k = true;
        this.f71991l = false;
        this.f71983d = cArr;
        int length = cArr.length;
        this.f71985f = length;
        this.f71984e = length;
        this.f71987h = obj;
        this.f71992m = variableResolverFactory;
        this.f71986g = obj2;
        this.f71993n = parserContext;
    }

    public static void A(Object obj, VariableResolverFactory variableResolverFactory, String str, Object obj2, ParserContext parserContext) {
        new g(str.toCharArray(), obj, variableResolverFactory, null, parserContext).y(obj2);
    }

    private void D() {
        if (this.f71981b < this.f71985f) {
            while (m.q0(this.f71983d[this.f71981b])) {
                int i11 = this.f71981b + 1;
                this.f71981b = i11;
                if (i11 >= this.f71985f) {
                    return;
                }
            }
        }
    }

    private static void a(Class cls, Integer num, Method method) {
        Map map = f71978r;
        synchronized (map) {
            try {
                WeakHashMap weakHashMap = (WeakHashMap) map.get(cls);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap();
                    map.put(cls, weakHashMap);
                }
                weakHashMap.put(num, new WeakReference(new Object[]{method, method.getParameterTypes()}));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void b(Class cls, Integer num, Member member) {
        Map map = f71976p;
        synchronized (map) {
            try {
                WeakHashMap weakHashMap = (WeakHashMap) map.get(cls);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap();
                    map.put(cls, weakHashMap);
                }
                weakHashMap.put(num, new WeakReference(member));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void c(Class cls, Integer num, Member member) {
        Map map = f71977q;
        synchronized (map) {
            try {
                WeakHashMap weakHashMap = (WeakHashMap) map.get(cls);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap();
                    map.put(cls, weakHashMap);
                }
                weakHashMap.put(num, new WeakReference(member));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private String d() {
        return new String(this.f71983d, this.f71982c, B(this.f71981b) - this.f71982c);
    }

    private static Object[] e(Class cls, Integer num) {
        WeakReference weakReference;
        Map map = (Map) f71978r.get(cls);
        if (map == null || (weakReference = (WeakReference) map.get(num)) == null) {
            return null;
        }
        return (Object[]) weakReference.get();
    }

    public static Class[] f(Method method) {
        Class[] clsArr;
        Map map = f71979s;
        WeakReference weakReference = (WeakReference) map.get(method);
        if (weakReference != null && (clsArr = (Class[]) weakReference.get()) != null) {
            return clsArr;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        map.put(method, new WeakReference(parameterTypes));
        return parameterTypes;
    }

    private static Member g(Class cls, Integer num) {
        WeakReference weakReference;
        WeakHashMap weakHashMap = (WeakHashMap) f71976p.get(cls);
        if (weakHashMap == null || (weakReference = (WeakReference) weakHashMap.get(num)) == null) {
            return null;
        }
        return (Member) weakReference.get();
    }

    private static Member h(Class cls, Integer num) {
        WeakReference weakReference;
        Map map = (Map) f71977q.get(cls);
        if (map == null || (weakReference = (WeakReference) map.get(num)) == null) {
            return null;
        }
        return (Member) weakReference.get();
    }

    private static int i(String str, String str2) {
        return str.hashCode() + str2.hashCode();
    }

    private Object j() {
        this.f71988i = this.f71987h;
        try {
            return !d.f71968h ? u() : n();
        } catch (IllegalAccessException e11) {
            throw new PropertyAccessException("could not access property", this.f71983d, this.f71981b, e11, this.f71993n);
        } catch (IndexOutOfBoundsException e12) {
            int i11 = this.f71981b;
            int i12 = this.f71984e;
            if (i11 >= i12) {
                this.f71981b = i12 - 1;
            }
            throw new PropertyAccessException("array or collections index out of bounds in property: " + new String(this.f71983d, this.f71981b, this.f71984e), this.f71983d, this.f71981b, e12, this.f71993n);
        } catch (NullPointerException e13) {
            throw new PropertyAccessException("null pointer exception in property: " + new String(this.f71983d), this.f71983d, this.f71981b, e13, this.f71993n);
        } catch (InvocationTargetException e14) {
            throw new PropertyAccessException("could not access property", this.f71983d, this.f71981b, e14, this.f71993n);
        } catch (CompileException e15) {
            throw org.mvel2.util.f.a(e15, this.f71983d, this.f71982c);
        } catch (Exception e16) {
            throw new PropertyAccessException("unknown exception in expression: " + new String(this.f71983d), this.f71983d, this.f71981b, e16, this.f71993n);
        }
    }

    public static Object k(String str, Object obj) {
        return new g(str, obj).j();
    }

    public static Object l(String str, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        return new g(str.toCharArray(), obj, variableResolverFactory, obj2, parserContext).j();
    }

    public static Object m(char[] cArr, int i11, int i12, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        return new g(cArr, i11, i12, obj, variableResolverFactory, obj2, parserContext).j();
    }

    private Object n() {
        while (this.f71981b < this.f71985f) {
            int iW = w();
            if (iW == 0) {
                Object objP = p(this.f71988i, d());
                this.f71988i = objP;
                if (objP == null && k10.d.e()) {
                    k10.d.b();
                    d();
                    throw null;
                }
            } else if (iW == 1) {
                Object objT = t(this.f71988i, d());
                this.f71988i = objT;
                if (objT == null && k10.d.d()) {
                    k10.d.a();
                    d();
                    throw null;
                }
            } else if (iW == 2) {
                this.f71988i = s(this.f71988i, d());
            } else if (iW == 3) {
                this.f71988i = v(this.f71988i);
            }
            if (this.f71991l) {
                if (this.f71988i == null) {
                    return null;
                }
                this.f71991l = false;
            } else if (this.f71988i == null && this.f71981b < this.f71985f) {
                throw null;
            }
            this.f71990k = false;
        }
        return this.f71988i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x0211, code lost:
    
        return t(r8, r9);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object o(Object obj, String str) {
        Class<?> cls;
        if (this.f71990k) {
            if ("this".equals(str)) {
                return this.f71987h;
            }
            if (AbstractParser.LITERALS.containsKey(str)) {
                return AbstractParser.LITERALS.get(str);
            }
            VariableResolverFactory variableResolverFactory = this.f71992m;
            if (variableResolverFactory != null && variableResolverFactory.isResolveable(str)) {
                return this.f71992m.getVariableResolver(str).getValue();
            }
        }
        if (obj != null) {
            boolean z10 = obj instanceof Class;
            if (!z10) {
                cls = obj.getClass();
            } else {
                if (d.f71970j && "class".equals(str)) {
                    return obj;
                }
                cls = (Class) obj;
            }
            Member memberG = g(cls, Integer.valueOf(str.hashCode()));
            if (memberG == null) {
                Integer numValueOf = Integer.valueOf(str.hashCode());
                Member memberB = n.b(cls, str);
                b(cls, numValueOf, memberB);
                memberG = memberB;
            }
            boolean z11 = false;
            if (memberG instanceof Method) {
                try {
                    return ((Method) memberG).invoke(obj, f71975o);
                } catch (IllegalAccessException unused) {
                    synchronized (memberG) {
                        try {
                            try {
                                ((Method) memberG).setAccessible(true);
                                return ((Method) memberG).invoke(obj, f71975o);
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        } finally {
                            ((Method) memberG).setAccessible(false);
                        }
                    }
                } catch (IllegalArgumentException e11) {
                    if (memberG.getDeclaringClass().equals(obj)) {
                        try {
                            throw new CompileException("name collision between innerclass: " + Class.forName(memberG.getDeclaringClass().getName() + "$" + str).getCanonicalName() + "; and bean accessor: " + str + " (" + memberG.toString() + ")", this.f71983d, this.f71982c);
                        } catch (ClassNotFoundException unused2) {
                            throw e11;
                        }
                    }
                    throw e11;
                }
            }
            if (memberG != null) {
                Field field = (Field) memberG;
                this.f71989j = p.i(field.getType());
                return field.get(obj);
            }
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (map.containsKey(str) || this.f71991l) {
                    return obj instanceof Proto.b ? ((Proto.b) obj).get(str).c(null, this.f71986g, this.f71992m, m.f72062a) : map.get(str);
                }
            }
            if ("length".equals(str) && obj.getClass().isArray()) {
                return Integer.valueOf(Array.getLength(obj));
            }
            if (z10) {
                Class cls2 = (Class) obj;
                for (Method method : cls2.getMethods()) {
                    if (str.equals(method.getName())) {
                        ParserContext parserContext = this.f71993n;
                        return (parserContext == null || parserContext.getParserConfiguration() == null ? !d.f71967g : !this.f71993n.getParserConfiguration().isAllowNakedMethCall()) ? method : method.invoke(obj, m.f72062a);
                    }
                }
                try {
                    return m.D(this.f71992m, cls2.getName() + "$" + str, this.f71993n);
                } catch (ClassNotFoundException unused3) {
                }
            } else {
                if (k10.d.f(cls)) {
                    k10.d.c(cls);
                    throw null;
                }
                if (obj instanceof org.mvel2.ast.b) {
                    return ((org.mvel2.ast.d) obj).c().getVariableResolver(str).getValue();
                }
            }
        }
        Object objC = C();
        if (objC != null) {
            return ((objC instanceof Class) || (objC instanceof Method)) ? objC : ((Field) objC).get(null);
        }
        if ((r0 = this.f71993n) != null) {
        }
        if (obj == null) {
            throw new PropertyAccessException("unresolvable property or identifier: " + str, this.f71983d, this.f71982c, this.f71993n);
        }
        throw new PropertyAccessException("could not access: " + str + "; in class: " + obj.getClass().getName(), this.f71983d, this.f71982c, this.f71993n);
    }

    private Object p(Object obj, String str) {
        if (obj == null || !k10.d.f(obj.getClass())) {
            k10.a.c(obj, str, this.f71992m);
            return o(obj, str);
        }
        k10.d.c(obj.getClass());
        throw null;
    }

    private ClassLoader q() {
        ParserContext parserContext = this.f71993n;
        return parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader();
    }

    private Object r(Object obj, String str) {
        if (str.length() != 0 && (obj = o(obj, str)) == null) {
            throw new NullPointerException("null pointer on indexed access for: " + str);
        }
        this.f71989j = null;
        int i11 = this.f71981b + 1;
        this.f71981b = i11;
        D();
        if (this.f71981b == this.f71985f || x(']')) {
            throw new PropertyAccessException("unterminated '['", this.f71983d, this.f71981b, this.f71993n);
        }
        char[] cArr = this.f71983d;
        int i12 = this.f71981b;
        this.f71981b = i12 + 1;
        String str2 = new String(cArr, i11, i12 - i11);
        if (obj instanceof Map) {
            return ((Map) obj).get(d.n(str2, obj, this.f71992m));
        }
        if (obj instanceof List) {
            return ((List) obj).get(((Integer) d.n(str2, obj, this.f71992m)).intValue());
        }
        if (!(obj instanceof Collection)) {
            if (obj.getClass().isArray()) {
                return Array.get(obj, ((Integer) d.n(str2, obj, this.f71992m)).intValue());
            }
            if (obj instanceof CharSequence) {
                return Character.valueOf(((CharSequence) obj).charAt(((Integer) d.n(str2, obj, this.f71992m)).intValue()));
            }
            try {
                return TypeDescriptor.getClassReference(this.f71993n, (Class) obj, new TypeDescriptor(this.f71983d, this.f71980a, this.f71984e, 0));
            } catch (Exception e11) {
                throw new PropertyAccessException("illegal use of []: unknown type: " + obj.getClass().getName(), this.f71983d, this.f71982c, e11, this.f71993n);
            }
        }
        int iIntValue = ((Integer) d.n(str2, obj, this.f71992m)).intValue();
        Collection collection = (Collection) obj;
        if (iIntValue <= collection.size()) {
            Iterator it = collection.iterator();
            for (int i13 = 0; i13 < iIntValue; i13++) {
                it.next();
            }
            return it.next();
        }
        throw new PropertyAccessException("index [" + iIntValue + "] out of bounds on collections", this.f71983d, this.f71981b, this.f71993n);
    }

    private Object s(Object obj, String str) {
        if (str.length() != 0) {
            obj = o(obj, str);
        }
        this.f71989j = null;
        if (obj == null) {
            return null;
        }
        int i11 = this.f71981b + 1;
        this.f71981b = i11;
        D();
        if (this.f71981b == this.f71985f || x(']')) {
            throw new PropertyAccessException("unterminated '['", this.f71983d, this.f71981b, this.f71993n);
        }
        char[] cArr = this.f71983d;
        int i12 = this.f71981b;
        this.f71981b = i12 + 1;
        String str2 = new String(cArr, i11, i12 - i11);
        if (obj instanceof Map) {
            if (!k10.d.f(Map.class)) {
                return ((Map) obj).get(d.n(str2, obj, this.f71992m));
            }
            k10.d.c(Map.class);
            throw null;
        }
        if (obj instanceof List) {
            if (!k10.d.f(List.class)) {
                return ((List) obj).get(((Integer) d.n(str2, obj, this.f71992m)).intValue());
            }
            k10.d.c(List.class);
            throw null;
        }
        if (obj instanceof Collection) {
            if (k10.d.f(Collection.class)) {
                k10.d.c(Collection.class);
                throw null;
            }
            int iIntValue = ((Integer) d.n(str2, obj, this.f71992m)).intValue();
            Collection collection = (Collection) obj;
            if (iIntValue <= collection.size()) {
                Iterator it = collection.iterator();
                for (int i13 = 0; i13 < iIntValue; i13++) {
                    it.next();
                }
                return it.next();
            }
            throw new PropertyAccessException("index [" + iIntValue + "] out of bounds on collections", this.f71983d, this.f71981b, this.f71993n);
        }
        if (obj.getClass().isArray()) {
            if (!k10.d.f(Array.class)) {
                return Array.get(obj, ((Integer) d.n(str2, obj, this.f71992m)).intValue());
            }
            k10.d.c(Array.class);
            throw null;
        }
        if (obj instanceof CharSequence) {
            if (!k10.d.f(CharSequence.class)) {
                return Character.valueOf(((CharSequence) obj).charAt(((Integer) d.n(str2, obj, this.f71992m)).intValue()));
            }
            k10.d.c(CharSequence.class);
            throw null;
        }
        try {
            char[] cArr2 = this.f71983d;
            int i14 = this.f71980a;
            return TypeDescriptor.getClassReference(this.f71993n, (Class) obj, new TypeDescriptor(cArr2, i14, this.f71985f - i14, 0));
        } catch (Exception unused) {
            throw new PropertyAccessException("illegal use of []: unknown type: " + obj.getClass().getName(), this.f71983d, this.f71982c, this.f71993n);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0027  */
    private Object t(Object obj, String str) {
        String str2;
        Object[] objArr;
        Class<?>[] parameterTypes;
        Method methodL;
        VariableResolverFactory variableResolverFactory;
        int i11 = this.f71981b;
        if (i11 != this.f71985f) {
            char[] cArr = this.f71983d;
            if (cArr[i11] == '(') {
                int iC = m.c(cArr, i11, '(');
                this.f71981b = iC;
                if (iC - i11 > 1) {
                    str2 = new String(this.f71983d, i11 + 1, (iC - i11) - 1);
                } else {
                    str2 = "";
                }
            } else {
                str2 = "";
            }
        } else {
            str2 = "";
        }
        this.f71981b++;
        int i12 = 0;
        if (str2.length() == 0) {
            objArr = m.f72062a;
        } else {
            List listY0 = m.y0(str2.toCharArray(), 0, -1);
            Object[] objArr2 = new Object[listY0.size()];
            for (int i13 = 0; i13 < listY0.size(); i13++) {
                objArr2[i13] = d.s((char[]) listY0.get(i13), this.f71986g, this.f71992m);
            }
            objArr = objArr2;
        }
        if (this.f71990k && (variableResolverFactory = this.f71992m) != null && variableResolverFactory.isResolveable(str)) {
            Object value = this.f71992m.getVariableResolver(str).getValue();
            if (value instanceof Method) {
                Method method = (Method) value;
                obj = method.getDeclaringClass();
                str = method.getName();
            } else {
                if (!(value instanceof MethodStub)) {
                    if (value instanceof org.mvel2.ast.b) {
                        org.mvel2.ast.b bVar = (org.mvel2.ast.b) value;
                        bVar.b().checkArgumentCount(objArr.length);
                        return bVar.a(null, this.f71986g, this.f71992m, objArr);
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("attempt to optimize a method call for a reference that does not point to a method: ");
                    sb2.append(str);
                    sb2.append(" (reference is type: ");
                    sb2.append(obj != null ? obj.getClass().getName() : null);
                    sb2.append(")");
                    throw new OptimizationFailure(sb2.toString());
                }
                MethodStub methodStub = (MethodStub) value;
                obj = methodStub.getClassReference();
                str = methodStub.getMethodName();
            }
            this.f71990k = false;
        }
        if (obj == null) {
            throw new CompileException("no such method or function: " + str, this.f71983d, this.f71981b);
        }
        Class<?> cls = this.f71989j;
        if (cls == null) {
            cls = obj instanceof Class ? (Class) obj : obj.getClass();
        }
        this.f71989j = null;
        if (cls == Proto.b.class) {
            return ((Proto.b) obj).get(str).c(null, this.f71986g, this.f71992m, objArr);
        }
        Object[] objArrE = e(cls, Integer.valueOf(i(str, str2)));
        if (objArrE != null) {
            methodL = (Method) objArrE[0];
            parameterTypes = (Class[]) objArrE[1];
        } else {
            parameterTypes = null;
            methodL = null;
        }
        if (methodL == null) {
            methodL = m.L(objArr, str, cls, cls.getMethods(), false);
            if (methodL != null) {
                a(cls, Integer.valueOf(i(str, str2)), methodL);
                parameterTypes = methodL.getParameterTypes();
            }
            if (methodL == null && (methodL = m.L(objArr, str, cls, cls.getDeclaredMethods(), false)) != null) {
                a(cls, Integer.valueOf(i(str, str2)), methodL);
                parameterTypes = methodL.getParameterTypes();
            }
        }
        if (methodL == null && cls != obj.getClass() && !(obj instanceof Class)) {
            cls = obj.getClass();
            methodL = m.L(objArr, str, cls, cls.getDeclaredMethods(), false);
            if (methodL != null) {
                a(cls, Integer.valueOf(i(str, str2)), methodL);
                parameterTypes = methodL.getParameterTypes();
            }
        }
        if (obj instanceof org.mvel2.ast.d) {
            VariableResolverFactory variableResolverFactoryC = ((org.mvel2.ast.d) obj).c();
            Object value2 = variableResolverFactoryC.getVariableResolver(str).getValue();
            if (value2 instanceof org.mvel2.ast.d) {
                return ((org.mvel2.ast.d) value2).a(obj, this.f71986g, new InvokationContextFactory(this.f71992m, variableResolverFactoryC), objArr);
            }
        }
        if (methodL != null) {
            while (i12 < objArr.length) {
                objArr[i12] = b.b(objArr[i12], t.b(parameterTypes, i12, methodL.isVarArgs()));
                i12++;
            }
            this.f71989j = p.i(methodL.getReturnType());
            try {
                try {
                    return methodL.invoke(obj, t.a(parameterTypes, objArr, methodL.isVarArgs()));
                } catch (Exception e11) {
                    throw new PropertyAccessException("unable to invoke method: " + str, this.f71983d, this.f71981b, e11, this.f71993n);
                }
            } catch (IllegalAccessException unused) {
                Integer numValueOf = Integer.valueOf(i(str, str2));
                Method methodV = m.V(methodL);
                a(cls, numValueOf, methodV);
                return methodV.invoke(obj, objArr);
            } catch (RuntimeException e12) {
                throw e12;
            } catch (Exception e13) {
                throw new PropertyAccessException("unable to invoke method: " + str, this.f71983d, this.f71981b, e13, this.f71993n);
            }
        }
        s sVar = new s();
        while (i12 < objArr.length) {
            Object obj2 = objArr[i12];
            sVar.d(obj2 != null ? obj2.getClass().getName() : null);
            if (i12 < objArr.length - 1) {
                sVar.d(", ");
            }
            i12++;
        }
        if ("size".equals(str) && objArr.length == 0 && cls.isArray()) {
            return Integer.valueOf(Array.getLength(obj));
        }
        throw new PropertyAccessException("unable to resolve method: " + cls.getName() + "." + str + "(" + sVar.toString() + ") [arglength=" + objArr.length + "]", this.f71983d, this.f71982c, this.f71993n);
    }

    private Object u() {
        while (this.f71981b < this.f71985f) {
            int iW = w();
            if (iW == 0) {
                this.f71988i = o(this.f71988i, d());
            } else if (iW == 1) {
                this.f71988i = t(this.f71988i, d());
            } else if (iW == 2) {
                this.f71988i = r(this.f71988i, d());
            } else if (iW == 3) {
                this.f71988i = v(this.f71988i);
            }
            if (this.f71991l) {
                if (this.f71988i == null) {
                    return null;
                }
                this.f71991l = false;
            }
            this.f71990k = false;
        }
        return this.f71988i;
    }

    private Object v(Object obj) {
        int i11 = this.f71980a;
        int i12 = this.f71981b;
        String strTrim = i11 == i12 ? null : new String(this.f71983d, i11, (i12 - i11) - 1).trim();
        char[] cArr = this.f71983d;
        int i13 = this.f71981b;
        int i14 = i13 + 1;
        int iE = m.e(cArr, i13, this.f71985f, '{', this.f71993n);
        this.f71981b = iE;
        m.z0(strTrim, cArr, i14, iE - i14, obj, this.f71992m);
        this.f71981b++;
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0099  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ab A[LOOP:2: B:46:0x00ab->B:48:0x00b7, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b7 A[LOOP:2: B:46:0x00ab->B:48:0x00b7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:51:0x00c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x00c9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x00ca A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x00cb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x00cc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:65:0x00a4 A[EDGE_INSN: B:65:0x00a4->B:44:0x00a4 BREAK  A[LOOP:1: B:39:0x0090->B:67:?], SYNTHETIC] */
    private int w() {
        int i11;
        int i12;
        int i13;
        char c11;
        char[] cArr = this.f71983d;
        int i14 = this.f71981b;
        this.f71982c = i14;
        char c12 = cArr[i14];
        if (c12 != '.') {
            if (c12 != '?') {
                if (c12 == '[') {
                    return 2;
                }
                if (c12 == '{' && cArr[i14 - 1] == '.') {
                    return 3;
                }
            }
            while (true) {
                i11 = this.f71981b;
                if (i11 < this.f71985f || !m.q0(this.f71983d[i11])) {
                    i12 = this.f71981b;
                    if (i12 >= this.f71985f || this.f71983d[i12] != '.') {
                        break;
                    }
                    this.f71981b = i12 + 1;
                } else {
                    this.f71981b++;
                }
            }
            this.f71982c = i12;
            do {
                i13 = this.f71981b + 1;
                this.f71981b = i13;
                if (i13 < this.f71985f) {
                    break;
                }
            } while (Character.isJavaIdentifierPart(this.f71983d[i13]));
            if (this.f71981b < this.f71985f) {
                return 0;
            }
            while (m.q0(this.f71983d[this.f71981b])) {
                this.f71981b++;
            }
            c11 = this.f71983d[this.f71981b];
            if (c11 != '(') {
                return 1;
            }
            if (c11 != '[') {
                return 0;
            }
            return 2;
        }
        while (true) {
            int i15 = this.f71981b;
            if (i15 >= this.f71985f || !m.q0(this.f71983d[i15])) {
                break;
            }
            this.f71981b++;
        }
        int i16 = this.f71982c;
        if (i16 + 1 != this.f71985f) {
            char[] cArr2 = this.f71983d;
            int i17 = i16 + 1;
            this.f71982c = i17;
            this.f71981b = i17;
            char c13 = cArr2[i17];
            if (c13 == '?') {
                int i18 = i16 + 2;
                this.f71982c = i18;
                this.f71981b = i18;
                this.f71991l = true;
            } else if (c13 == '{') {
                return 3;
            }
        }
        if (this.f71981b == this.f71980a) {
            int i19 = this.f71982c + 1;
            this.f71982c = i19;
            this.f71981b = i19;
            this.f71991l = true;
        }
        while (true) {
            i11 = this.f71981b;
            if (i11 < this.f71985f) {
            }
            i12 = this.f71981b;
            if (i12 >= this.f71985f) {
                break;
            }
            break;
            break;
        }
        this.f71982c = i12;
        do {
            i13 = this.f71981b + 1;
            this.f71981b = i13;
            if (i13 < this.f71985f) {
                break;
                break;
            }
        } while (Character.isJavaIdentifierPart(this.f71983d[i13]));
        if (this.f71981b < this.f71985f) {
            return 0;
        }
        while (m.q0(this.f71983d[this.f71981b])) {
            this.f71981b++;
        }
        c11 = this.f71983d[this.f71981b];
        if (c11 != '(') {
            return 1;
        }
        if (c11 != '[') {
            return 0;
        }
        return 2;
    }

    private boolean x(char c11) {
        while (true) {
            int i11 = this.f71981b;
            int i12 = this.f71985f;
            if (i11 >= i12) {
                return true;
            }
            char[] cArr = this.f71983d;
            char c12 = cArr[i11];
            if (c12 == '\"' || c12 == '\'') {
                this.f71981b = m.h(c12, cArr, i11, i12);
            }
            char[] cArr2 = this.f71983d;
            int i13 = this.f71981b;
            if (cArr2[i13] == c11) {
                return false;
            }
            this.f71981b = i13 + 1;
        }
    }

    private void y(Object obj) {
        this.f71988i = this.f71987h;
        try {
            int i11 = this.f71985f;
            this.f71985f = m.C(this.f71983d);
            Object objJ = j();
            this.f71988i = objJ;
            if (objJ == null) {
                throw new PropertyAccessException("cannot bind to null context: " + new String(this.f71983d, this.f71981b, this.f71984e), this.f71983d, this.f71981b, this.f71993n);
            }
            this.f71985f = i11;
            if (w() == 2) {
                int i12 = this.f71981b + 1;
                this.f71981b = i12;
                D();
                if (this.f71981b == this.f71984e || x(']')) {
                    throw new PropertyAccessException("unterminated '['", this.f71983d, this.f71981b, this.f71993n);
                }
                String str = new String(this.f71983d, i12, this.f71981b - i12);
                if (!d.f71968h) {
                    Object obj2 = this.f71988i;
                    if (obj2 instanceof Map) {
                        ((Map) obj2).put(d.n(str, this.f71987h, this.f71992m), obj);
                        return;
                    }
                    if (obj2 instanceof List) {
                        ((List) obj2).set(((Integer) d.o(str, this.f71987h, this.f71992m, Integer.class)).intValue(), obj);
                        return;
                    }
                    if (k10.d.f(obj2.getClass())) {
                        k10.d.c(this.f71988i.getClass());
                        throw null;
                    }
                    if (this.f71988i.getClass().isArray()) {
                        Array.set(this.f71988i, ((Integer) d.o(str, this.f71987h, this.f71992m, Integer.class)).intValue(), b.b(obj, m.I(this.f71988i.getClass())));
                        return;
                    }
                    throw new PropertyAccessException("cannot bind to collection property: " + new String(this.f71983d) + ": not a recognized collection type: " + this.f71987h.getClass(), this.f71983d, this.f71981b, this.f71993n);
                }
                k10.a.d(this.f71987h, str, this.f71992m, obj);
                Object obj3 = this.f71988i;
                if (obj3 instanceof Map) {
                    if (k10.d.f(Map.class)) {
                        k10.d.c(Map.class);
                        throw null;
                    }
                    ((Map) this.f71988i).put(d.n(str, this.f71987h, this.f71992m), obj);
                    return;
                }
                if (obj3 instanceof List) {
                    if (k10.d.f(List.class)) {
                        k10.d.c(List.class);
                        throw null;
                    }
                    ((List) this.f71988i).set(((Integer) d.o(str, this.f71987h, this.f71992m, Integer.class)).intValue(), obj);
                    return;
                }
                if (obj3.getClass().isArray()) {
                    if (k10.d.f(Array.class)) {
                        k10.d.c(Array.class);
                        throw null;
                    }
                    Array.set(this.f71988i, ((Integer) d.o(str, this.f71987h, this.f71992m, Integer.class)).intValue(), b.b(obj, m.I(this.f71988i.getClass())));
                    return;
                }
                if (k10.d.f(this.f71988i.getClass())) {
                    k10.d.c(this.f71988i.getClass());
                    throw null;
                }
                throw new PropertyAccessException("cannot bind to collection property: " + new String(this.f71983d) + ": not a recognized collection type: " + this.f71987h.getClass(), this.f71983d, this.f71981b, this.f71993n);
            }
            if (d.f71968h && k10.d.f(this.f71988i.getClass())) {
                k10.d.c(this.f71988i.getClass());
                d();
                throw null;
            }
            String strD = d();
            Member memberH = h(this.f71988i.getClass(), Integer.valueOf(strD == null ? 0 : strD.hashCode()));
            if (memberH == null) {
                Class<?> cls = this.f71988i.getClass();
                Integer numValueOf = Integer.valueOf(strD != null ? strD.hashCode() : -1);
                Member memberD = obj != null ? n.d(this.f71988i.getClass(), strD, obj.getClass()) : n.c(this.f71988i.getClass(), strD);
                c(cls, numValueOf, memberD);
                memberH = memberD;
            }
            if (memberH instanceof Method) {
                Method method = (Method) memberH;
                Class[] clsArrF = f(method);
                if (obj == null || clsArrF[0].isAssignableFrom(obj.getClass())) {
                    method.invoke(this.f71988i, obj);
                    return;
                }
                if (b.a(clsArrF[0], obj.getClass())) {
                    method.invoke(this.f71988i, b.b(obj, clsArrF[0]));
                    return;
                }
                throw new CompileException("cannot convert type: " + obj.getClass() + ": to " + method.getParameterTypes()[0], this.f71983d, this.f71981b);
            }
            if (memberH != null) {
                Field field = (Field) memberH;
                if (obj == null || field.getType().isAssignableFrom(obj.getClass())) {
                    field.set(this.f71988i, obj);
                    return;
                }
                if (b.a(field.getType(), obj.getClass())) {
                    field.set(this.f71988i, b.b(obj, field.getType()));
                    return;
                }
                throw new CompileException("cannot convert type: " + obj.getClass() + ": to " + field.getType(), this.f71983d, this.f71981b);
            }
            Object obj4 = this.f71988i;
            if (obj4 instanceof Map) {
                ((Map) obj4).put(d.n(strD, this.f71987h, this.f71992m), obj);
                return;
            }
            if (obj4 instanceof org.mvel2.ast.b) {
                ((org.mvel2.ast.d) obj4).c().getVariableResolver(strD).setValue(obj);
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("could not access/write property (");
            sb2.append(strD);
            sb2.append(") in: ");
            Object obj5 = this.f71988i;
            sb2.append(obj5 == null ? "Unknown" : obj5.getClass().getName());
            throw new PropertyAccessException(sb2.toString(), this.f71983d, this.f71981b, this.f71993n);
        } catch (IllegalAccessException e11) {
            throw new PropertyAccessException("could not access property", this.f71983d, this.f71982c, e11, this.f71993n);
        } catch (InvocationTargetException e12) {
            throw new PropertyAccessException("could not access property", this.f71983d, this.f71982c, e12, this.f71993n);
        }
    }

    public static void z(Object obj, String str, Object obj2) {
        new g(str, obj).y(obj2);
    }

    protected int B(int i11) {
        while (i11 > 0 && m.q0(this.f71983d[i11 - 1])) {
            i11--;
        }
        return i11;
    }

    /* JADX WARN: Code duplicated, block: B:128:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d9 A[Catch: Exception -> 0x011e, TryCatch #0 {Exception -> 0x011e, blocks: (B:3:0x0003, B:4:0x0009, B:6:0x000d, B:17:0x002a, B:20:0x0030, B:27:0x003f, B:28:0x0042, B:30:0x0047, B:32:0x004d, B:36:0x0058, B:38:0x0064, B:40:0x006c, B:41:0x0076, B:43:0x007f, B:44:0x009f, B:46:0x00a4, B:48:0x00ab, B:51:0x00b8, B:54:0x00c0, B:57:0x00c7, B:59:0x00cd, B:69:0x00e8, B:61:0x00d1, B:62:0x00d4, B:64:0x00d9, B:66:0x00df, B:68:0x00e5, B:70:0x00eb, B:71:0x00f2, B:73:0x00f6, B:75:0x00fc, B:80:0x0107, B:82:0x010b, B:84:0x0111), top: B:91:0x0003, inners: #1, #2 }] */
    protected Object C() {
        int i11;
        char[] cArr;
        int i12 = this.f71981b;
        try {
            int i13 = this.f71985f;
            int i14 = i13 - 1;
            boolean z10 = false;
            while (true) {
                int i15 = this.f71980a;
                if (i14 > i15) {
                    char[] cArr2 = this.f71983d;
                    char c11 = cArr2[i14];
                    if (c11 != '\"') {
                        if (c11 != '\'') {
                            int i16 = 1;
                            if (c11 == ')') {
                                int i17 = i14 - 1;
                                int i18 = 1;
                                while (i17 > 0 && i18 != 0) {
                                    char c12 = this.f71983d[i17];
                                    if (c12 == '\"') {
                                        while (i17 > 0) {
                                            cArr = this.f71983d;
                                            if (cArr[i17] == c12) {
                                                break;
                                            }
                                            break;
                                        }
                                    }
                                    switch (c12) {
                                        case '\'':
                                            while (i17 > 0) {
                                                cArr = this.f71983d;
                                                if (cArr[i17] == c12 || cArr[i17 - 1] == '\\') {
                                                }
                                                i17--;
                                                break;
                                            }
                                            break;
                                        case '(':
                                            i18--;
                                            break;
                                        case ')':
                                            i18++;
                                            break;
                                    }
                                    i17--;
                                }
                                z10 = true;
                                int i19 = i17;
                                i14 = i17 + 1;
                                i13 = i19;
                            } else if (c11 == '.') {
                                if (!z10) {
                                    try {
                                        this.f71981b = i13;
                                        String str = new String(cArr2, i15, i13 - i15);
                                        if (d.f71970j && str.endsWith(".class")) {
                                            str = str.substring(0, str.length() - 6);
                                        }
                                        return q().loadClass(str);
                                    } catch (ClassNotFoundException unused) {
                                        ClassLoader classLoaderQ = q();
                                        char[] cArr3 = this.f71983d;
                                        int i20 = this.f71980a;
                                        Class<?> clsLoadClass = classLoaderQ.loadClass(new String(cArr3, i20, i14 - i20));
                                        String str2 = new String(this.f71983d, i14 + 1, (this.f71985f - i14) - 1);
                                        try {
                                            return clsLoadClass.getField(str2);
                                        } catch (NoSuchFieldException unused2) {
                                            for (Method method : clsLoadClass.getMethods()) {
                                                if (str2.equals(method.getName())) {
                                                    return method;
                                                }
                                            }
                                            return null;
                                        }
                                    }
                                }
                                i13 = i14;
                                z10 = false;
                            } else if (c11 == '}') {
                                while (true) {
                                    i14--;
                                    if (i14 <= 0 || i16 == 0) {
                                        break;
                                    }
                                    char c13 = this.f71983d[i14];
                                    if (c13 == '\"' || c13 == '\'') {
                                        while (i14 > 0) {
                                            char[] cArr4 = this.f71983d;
                                            if (cArr4[i14] == c13 || cArr4[i14 - 1] == '\\') {
                                                break;
                                            }
                                            i14--;
                                        }
                                    } else if (c13 == '{') {
                                        i16--;
                                    } else if (c13 == '}') {
                                        i16++;
                                    }
                                }
                            }
                        } else {
                            while (true) {
                                i11 = i14 - 1;
                                if (i11 > 0) {
                                    char[] cArr5 = this.f71983d;
                                    if (cArr5[i11] != '\'' || cArr5[i14 - 2] == '\\') {
                                        i14 = i11;
                                    }
                                }
                            }
                        }
                        i14--;
                    } else {
                        while (true) {
                            i11 = i14 - 1;
                            if (i11 > 0) {
                                char[] cArr6 = this.f71983d;
                                if (cArr6[i11] != '\"' || cArr6[i14 - 2] == '\\') {
                                    i14 = i11;
                                }
                            }
                        }
                    }
                    i14 = i11;
                    i14--;
                }
            }
        } catch (Exception unused3) {
            this.f71981b = i12;
        }
        return null;
    }
}
