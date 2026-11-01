package org.mvel2.util;

import com.cloud.tmc.offline.download.model.TaskResultKt;
import java.io.File;
import java.io.FileWriter;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.mvel2.CompileException;
import org.mvel2.OptimizationFailure;
import org.mvel2.ParserContext;
import org.mvel2.ast.ASTNode;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.BlankLiteral;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.compiler.ExecutableAccessor;
import org.mvel2.compiler.ExecutableAccessorSafe;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.compiler.ExpressionCompiler;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object[] f72062a = new Object[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class[] f72063b = new Class[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f72064c = Collections.synchronizedMap(new WeakHashMap(10));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f72065d = Collections.synchronizedMap(new WeakHashMap(1, 1.0f));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map f72066e = Collections.synchronizedMap(new WeakHashMap(10));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final HashMap f72067f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Map f72068g;

    static {
        HashMap map = new HashMap();
        f72067f = map;
        map.put(BigDecimal.class, 110);
        map.put(BigInteger.class, 111);
        map.put(String.class, 1);
        Class cls = Integer.TYPE;
        map.put(cls, 101);
        map.put(Integer.class, 106);
        Class cls2 = Short.TYPE;
        map.put(cls2, 100);
        map.put(Short.class, 105);
        Class cls3 = Float.TYPE;
        map.put(cls3, 104);
        Integer numValueOf = Integer.valueOf(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY);
        map.put(Float.class, numValueOf);
        Class cls4 = Double.TYPE;
        map.put(cls4, 103);
        map.put(Double.class, 109);
        Class cls5 = Long.TYPE;
        map.put(cls5, 102);
        map.put(Long.class, 107);
        Class cls6 = Boolean.TYPE;
        map.put(cls6, 7);
        map.put(Boolean.class, 15);
        Class cls7 = Byte.TYPE;
        map.put(cls7, 9);
        map.put(Byte.class, 113);
        Class cls8 = Character.TYPE;
        map.put(cls8, 8);
        map.put(Character.class, 112);
        map.put(BlankLiteral.class, 200);
        HashMap map2 = new HashMap(30, 0.5f);
        f72068g = map2;
        map2.put(Integer.class, 106);
        map2.put(Double.class, 109);
        map2.put(Boolean.class, 15);
        map2.put(String.class, 1);
        map2.put(Long.class, 107);
        map2.put(Short.class, 105);
        map2.put(Float.class, numValueOf);
        map2.put(Byte.class, 113);
        map2.put(Character.class, 112);
        map2.put(BigDecimal.class, 110);
        map2.put(BigInteger.class, 111);
        map2.put(InternalNumber.class, 110);
        map2.put(cls, 101);
        map2.put(cls4, 103);
        map2.put(cls6, 7);
        map2.put(cls5, 102);
        map2.put(cls2, 100);
        map2.put(cls3, 104);
        map2.put(cls7, 9);
        map2.put(cls8, 8);
        map2.put(BlankLiteral.class, 200);
    }

    public static boolean A(char[] cArr, int i11, int i12, char[] cArr2) {
        if (cArr2.length > cArr.length) {
            return false;
        }
        int length = cArr2.length - 1;
        int i13 = (i11 + i12) - 1;
        while (length >= 0) {
            int i14 = i13 - 1;
            int i15 = length - 1;
            if (cArr[i13] != cArr2[length]) {
                return false;
            }
            i13 = i14;
            length = i15;
        }
        return true;
    }

    public static String A0(char c11, int i11) {
        char[] cArr = new char[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            cArr[i12] = c11;
        }
        return new String(cArr);
    }

    public static int B(char[] cArr, int i11, int i12, char c11) {
        int i13 = i12 + i11;
        while (i11 < i13) {
            if (cArr[i11] == c11) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int B0(Object obj) {
        if (obj == null) {
            return 0;
        }
        return a(obj.getClass());
    }

    public static int C(char[] cArr) {
        int i11 = 0;
        for (int length = cArr.length - 1; length >= 0; length--) {
            char c11 = cArr[length];
            if (c11 == ']') {
                i11++;
            }
            if (c11 == '[') {
                i11--;
            }
            if ((i11 == 0 && c11 == '.') || c11 == '[') {
                return length;
            }
        }
        return -1;
    }

    public static int C0(Class cls, Class cls2) {
        Class<?>[] interfaces;
        if (cls.isInterface() && (interfaces = cls2.getInterfaces()) != null) {
            for (Class<?> cls3 : interfaces) {
                if (cls3 == cls) {
                    return 1;
                }
                if (cls.isAssignableFrom(cls3)) {
                    return C0(cls, cls2.getSuperclass());
                }
            }
        }
        return 0;
    }

    public static Class D(VariableResolverFactory variableResolverFactory, String str, ParserContext parserContext) throws ClassNotFoundException {
        try {
            if (AbstractParser.LITERALS.containsKey(str)) {
                return (Class) AbstractParser.LITERALS.get(str);
            }
            if (variableResolverFactory == null || !variableResolverFactory.isResolveable(str)) {
                return (parserContext == null || !parserContext.hasImport(str)) ? v(str, parserContext) : parserContext.getImport(str);
            }
            return (Class) variableResolverFactory.getVariableResolver(str).getValue();
        } catch (ClassNotFoundException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new RuntimeException("class not found: " + str, e12);
        }
    }

    public static float D0(String str, String str2) {
        float length;
        float f11 = 0.0f;
        if (str == null || str2 == null) {
            return (str == null && str2 == null) ? 1.0f : 0.0f;
        }
        char[] charArray = str.toCharArray();
        char[] charArray2 = str2.toCharArray();
        if (charArray.length > charArray2.length) {
            length = charArray.length;
        } else {
            length = charArray2.length;
            charArray2 = charArray;
            charArray = charArray2;
        }
        for (int i11 = 0; i11 < charArray.length && i11 < charArray2.length; i11++) {
            if (charArray[i11] == charArray2[i11]) {
                f11 += 1.0f;
            }
        }
        return f11 / length;
    }

    public static ClassImportResolverFactory E(VariableResolverFactory variableResolverFactory, ParserContext parserContext) {
        if (variableResolverFactory == null) {
            throw new OptimizationFailure("unable to import classes.  no variable resolver factory available.");
        }
        for (VariableResolverFactory nextFactory = variableResolverFactory; nextFactory != null; nextFactory = nextFactory.getNextFactory()) {
            if (nextFactory instanceof ClassImportResolverFactory) {
                return (ClassImportResolverFactory) nextFactory;
            }
        }
        return (ClassImportResolverFactory) k10.e.a(variableResolverFactory, new ClassImportResolverFactory(null, null, false));
    }

    public static int E0(char[] cArr, int i11) {
        int i12;
        while (i11 != cArr.length) {
            char c11 = cArr[i11];
            if (c11 != '\n' && c11 != '\r') {
                if (c11 != '/' || (i12 = i11 + 1) == cArr.length) {
                    if (!q0(c11)) {
                        break;
                    }
                } else {
                    char c12 = cArr[i12];
                    if (c12 == '*') {
                        int length = cArr.length - 1;
                        cArr[i11] = ' ';
                        i11 = i12;
                        while (i11 != length && (cArr[i11] != '*' || cArr[i11 + 1] != '/')) {
                            cArr[i11] = ' ';
                            i11++;
                        }
                        if (i11 != length) {
                            cArr[i11 + 1] = ' ';
                            cArr[i11] = ' ';
                            i11 += 2;
                        }
                    } else {
                        if (c12 != '/') {
                            break;
                        }
                        cArr[i11] = ' ';
                        i11 = i12;
                        while (i11 != cArr.length && cArr[i11] != '\n') {
                            cArr[i11] = ' ';
                            i11++;
                        }
                        if (i11 != cArr.length) {
                            cArr[i11] = ' ';
                            i11++;
                        }
                    }
                }
            }
            i11++;
        }
        return i11;
    }

    public static Class F(String str, ClassLoader classLoader, ClassNotFoundException classNotFoundException) throws ClassNotFoundException {
        while (true) {
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf <= 0) {
                throw classNotFoundException;
            }
            str = str.substring(0, iLastIndexOf) + "$" + str.substring(iLastIndexOf + 1);
            try {
                return classLoader.loadClass(str);
            } catch (ClassNotFoundException unused) {
            }
        }
    }

    public static char[] F0(char[] cArr, int i11, int i12) {
        if (i11 >= i12) {
            return new char[0];
        }
        int i13 = i12 - i11;
        char[] cArr2 = new char[i13];
        for (int i14 = 0; i14 != i13; i14++) {
            cArr2[i14] = cArr[i14 + i11];
        }
        return cArr2;
    }

    public static int G(char[] cArr, int i11, int i12, char c11) {
        for (int i13 = i12 + i11; i13 >= i11; i13--) {
            if (cArr[i13] == c11) {
                return i13;
            }
        }
        return -1;
    }

    public static Serializable G0(String str, ParserContext parserContext) {
        return b(new ExpressionCompiler(str, parserContext)._compile());
    }

    public static Class H(String str, ClassLoader classLoader) {
        try {
            return classLoader.loadClass(str);
        } catch (ClassNotFoundException e11) {
            return F(str, classLoader, e11);
        }
    }

    public static Serializable H0(char[] cArr) {
        return b(new ExpressionCompiler(cArr)._compile());
    }

    public static Class I(Class cls) {
        while (cls.isArray()) {
            cls = cls.getComponentType();
        }
        return cls;
    }

    public static Serializable I0(char[] cArr, int i11, int i12, ParserContext parserContext) {
        return b(new ExpressionCompiler(cArr, i11, i12, parserContext)._compile());
    }

    public static Method J(Class[] clsArr, String str, Class cls, Method[] methodArr, boolean z10) {
        return K(clsArr, str, cls, methodArr, z10, false);
    }

    public static Serializable J0(char[] cArr, ParserContext parserContext) {
        return b(new ExpressionCompiler(cArr, parserContext)._compile());
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0058  */
    public static Method K(Class[] clsArr, String str, Class cls, Method[] methodArr, boolean z10, boolean z11) {
        int iS;
        Method method = null;
        if (methodArr.length == 0) {
            return null;
        }
        int i11 = -1;
        boolean z12 = false;
        while (true) {
            for (Method method2 : methodArr) {
                if ((!z11 || Modifier.isStatic(method2.getModifiers())) && str.equals(method2.getName())) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    if (parameterTypes.length != 0 || clsArr.length != 0) {
                        boolean zIsVarArgs = method2.isVarArgs();
                        if (!Z(clsArr, parameterTypes, zIsVarArgs) && (iS = S(clsArr, z10, parameterTypes, zIsVarArgs)) != 0) {
                            if (iS > i11) {
                                method = method2;
                                i11 = iS;
                            } else if (iS == i11 && e0(method2, method) && !zIsVarArgs) {
                                method = method2;
                            }
                        }
                    } else if (method == null || e0(method2, method)) {
                        method = method2;
                    }
                }
            }
            if (method != null || z12 || !cls.isInterface()) {
                break;
            }
            Method[] methods = Object.class.getMethods();
            Method[] methodArr2 = new Method[methodArr.length + methods.length];
            for (int i12 = 0; i12 < methodArr.length; i12++) {
                methodArr2[i12] = methodArr[i12];
            }
            for (int i13 = 0; i13 < methods.length; i13++) {
                methodArr2[methodArr.length + i13] = methods[i13];
            }
            z12 = true;
            methodArr = methodArr2;
        }
        return method;
    }

    public static char[] K0(char[] cArr, int i11, int i12) {
        char[] cArr2 = new char[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            cArr2[i13] = cArr[i13 + i11];
        }
        return cArr2;
    }

    public static Method L(Object[] objArr, String str, Class cls, Method[] methodArr, boolean z10) {
        Class[] clsArr = new Class[objArr.length];
        for (int i11 = 0; i11 != objArr.length; i11++) {
            Object obj = objArr[i11];
            clsArr[i11] = obj != null ? obj.getClass() : null;
        }
        return J(clsArr, str, cls, methodArr, z10);
    }

    public static char[] L0(char[] cArr, int i11, int i12) {
        if (i12 <= 0) {
            return new char[0];
        }
        int i13 = i12 + i11;
        while (i13 > 0 && q0(cArr[i13 - 1])) {
            i13--;
        }
        while (q0(cArr[i11]) && i11 < i13) {
            i11++;
        }
        int i14 = i13 - i11;
        return i14 == 0 ? new char[0] : K0(cArr, i11, i14);
    }

    public static Constructor M(Class[] clsArr, Class cls, boolean z10) {
        Constructor constructor = null;
        int i11 = 0;
        for (Constructor constructor2 : P(cls)) {
            boolean zIsVarArgs = constructor2.isVarArgs();
            Class[] clsArrO = O(constructor2);
            if (!Z(clsArr, clsArrO, zIsVarArgs)) {
                if (clsArr.length == 0 && clsArrO.length == 0) {
                    return constructor2;
                }
                int iS = S(clsArr, z10, clsArrO, zIsVarArgs);
                if (iS != 0 && iS > i11) {
                    constructor = constructor2;
                    i11 = iS;
                }
            }
        }
        return constructor;
    }

    public static int M0(char[] cArr, int i11, int i12) {
        if (i12 > cArr.length) {
            i12 = cArr.length;
        }
        while (i12 != 0 && i12 >= i11 && q0(cArr[i12 - 1])) {
            i12--;
        }
        return i12;
    }

    public static Constructor N(Object[] objArr, Class cls, boolean z10) {
        Class[] clsArr = new Class[objArr.length];
        for (int i11 = 0; i11 != objArr.length; i11++) {
            Object obj = objArr[i11];
            if (obj != null) {
                clsArr[i11] = obj.getClass();
            }
        }
        return M(clsArr, cls, z10);
    }

    public static int N0(char[] cArr, int i11) {
        while (i11 != cArr.length && q0(cArr[i11])) {
            i11++;
        }
        return i11;
    }

    private static Class[] O(Constructor constructor) {
        Class[] clsArr;
        Map map = f72064c;
        WeakReference weakReference = (WeakReference) map.get(constructor);
        if (weakReference != null && (clsArr = (Class[]) weakReference.get()) != null) {
            return clsArr;
        }
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        map.put(constructor, new WeakReference(parameterTypes));
        return parameterTypes;
    }

    public static Class O0(Class cls) {
        if (cls == Integer.class || cls == Integer.TYPE) {
            return Integer.TYPE;
        }
        if (cls == Integer[].class || cls == int[].class) {
            return int[].class;
        }
        if (cls == Long.class || cls == Long.TYPE) {
            return Long.TYPE;
        }
        if (cls == Long[].class || cls == long[].class) {
            return long[].class;
        }
        if (cls == Character.class || cls == Character.TYPE) {
            return Character.TYPE;
        }
        if (cls == Character[].class || cls == char[].class) {
            return char[].class;
        }
        if (cls == Short.class || cls == Short.TYPE) {
            return Short.TYPE;
        }
        if (cls == Short[].class || cls == short[].class) {
            return short[].class;
        }
        if (cls == Double.class || cls == Double.TYPE) {
            return Double.TYPE;
        }
        if (cls == Double[].class || cls == double[].class) {
            return double[].class;
        }
        if (cls == Float.class || cls == Float.TYPE) {
            return Float.TYPE;
        }
        if (cls == Float[].class || cls == float[].class) {
            return float[].class;
        }
        if (cls == Boolean.class || cls == Boolean.TYPE) {
            return Boolean.TYPE;
        }
        if (cls == Boolean[].class || cls == boolean[].class) {
            return boolean[].class;
        }
        if (cls == Byte.class || cls == Byte.TYPE) {
            return Byte.TYPE;
        }
        return (cls == Byte[].class || cls == byte[].class) ? byte[].class : cls;
    }

    public static Constructor[] P(Class cls) {
        Constructor[] constructorArr;
        Map map = f72066e;
        WeakReference weakReference = (WeakReference) map.get(cls);
        if (weakReference != null && (constructorArr = (Constructor[]) weakReference.get()) != null) {
            return constructorArr;
        }
        Constructor<?>[] constructors = cls.getConstructors();
        map.put(cls, new WeakReference(constructors));
        return constructors;
    }

    public static FileWriter Q() {
        return new FileWriter(new File(org.mvel2.d.x()), true);
    }

    public static Method R(String str, Class[] clsArr, Class cls, Class cls2) {
        for (Method method : cls2.getMethods()) {
            if (str.equals(method.getName()) && cls == method.getReturnType()) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == clsArr.length) {
                    for (int i11 = 0; i11 < parameterTypes.length; i11++) {
                        if (parameterTypes[i11] == clsArr[i11]) {
                        }
                    }
                    return method;
                }
                continue;
            }
        }
        return null;
    }

    private static int S(Class[] clsArr, boolean z10, Class[] clsArr2, boolean z11) {
        Class cls;
        int i11 = 0;
        int i12 = 0;
        int iC0 = 0;
        while (true) {
            if (i12 == clsArr.length) {
                i11 = iC0;
                break;
            }
            Class componentType = (!z11 || i12 < clsArr2.length + (-1)) ? clsArr2[i12] : clsArr2[clsArr2.length - 1].getComponentType();
            Class cls2 = clsArr[i12];
            if (cls2 == null) {
                if (componentType.isPrimitive()) {
                    break;
                }
                iC0 += 7;
            } else if (componentType == cls2) {
                iC0 += 8;
            } else if ((componentType.isPrimitive() && f(componentType) == clsArr[i12]) || (clsArr[i12].isPrimitive() && O0(clsArr[i12]) == componentType)) {
                iC0 += 7;
            } else if (componentType.isAssignableFrom(clsArr[i12])) {
                iC0 += 6;
            } else if (l0(clsArr[i12], componentType)) {
                iC0 += 5;
            } else if (k0(clsArr[i12], componentType)) {
                iC0 += 4;
            } else if (!f(componentType).isAssignableFrom(f(clsArr[i12])) || Object.class == (cls = clsArr[i12])) {
                if (z10 || !org.mvel2.b.a(componentType, clsArr[i12])) {
                    if (componentType != Object.class && clsArr[i12] != l.class) {
                        break;
                    }
                } else if ((componentType.isArray() && clsArr[i12].isArray()) || (componentType == Character.TYPE && clsArr[i12] == String.class)) {
                    iC0++;
                }
                iC0++;
            } else {
                iC0 += C0(componentType, cls) + 3;
            }
            i12++;
        }
        return (i11 == 0 && z11 && clsArr2.length + (-1) == clsArr.length) ? i11 + 3 : i11;
    }

    public static Class T(Class cls) {
        return cls.isArray() ? cls.getComponentType() : cls;
    }

    public static Method U(Class cls, Method method) {
        if (Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        Method method2 = method;
        for (Class superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            for (Class<?> cls2 : superclass.getInterfaces()) {
                Method methodR = R(name, parameterTypes, returnType, cls2);
                if (methodR != null) {
                    method2 = methodR;
                }
            }
        }
        if (method2 != method) {
            return method2;
        }
        while (cls != null) {
            Method methodR2 = R(name, parameterTypes, returnType, cls);
            if (methodR2 != null) {
                method2 = methodR2;
            }
            cls = cls.getSuperclass();
        }
        return method2;
    }

    public static Method V(Method method) {
        return U(method.getDeclaringClass(), method);
    }

    public static int W(char[] cArr, int i11) {
        char c11;
        int i12;
        int i13 = i11 - 1;
        cArr[i13] = 0;
        char c12 = cArr[i11];
        if (c12 == '\"') {
            cArr[i11] = '\"';
            return 1;
        }
        if (c12 == '\'') {
            cArr[i11] = '\'';
            return 1;
        }
        if (c12 == '\\') {
            cArr[i11] = '\\';
            return 1;
        }
        if (c12 == 'b') {
            cArr[i11] = '\b';
            return 1;
        }
        if (c12 == 'f') {
            cArr[i11] = '\f';
            return 1;
        }
        if (c12 == 'n') {
            cArr[i11] = '\n';
            return 1;
        }
        if (c12 == 'r') {
            cArr[i11] = '\r';
            return 1;
        }
        if (c12 == 't') {
            cArr[i11] = '\t';
            return 1;
        }
        if (c12 != 'u') {
            int i14 = i11;
            do {
                c11 = cArr[i14];
                if (c11 < '0' || c11 >= '8') {
                    throw new CompileException("illegal escape sequence: " + cArr[i14], cArr, i14);
                }
                if (i14 != i11 && cArr[i11] > '3') {
                    cArr[i13] = (char) Integer.decode("0" + new String(cArr, i11, (i14 - i11) + 1)).intValue();
                    cArr[i11] = 0;
                    cArr[i11 + 1] = 0;
                    return 2;
                }
                i12 = i14 - i11;
                if (i12 == 2) {
                    cArr[i13] = (char) Integer.decode("0" + new String(cArr, i11, i12 + 1)).intValue();
                    cArr[i11] = 0;
                    cArr[i11 + 1] = 0;
                    cArr[i11 + 2] = 0;
                    return 3;
                }
                i14++;
                if (i14 == cArr.length || c11 < '0') {
                    break;
                }
            } while (c11 <= '7');
            cArr[i13] = (char) Integer.decode("0" + new String(cArr, i11, i12 + 1)).intValue();
            cArr[i11] = 0;
            return 1;
        }
        int i15 = i11 + 4;
        if (i15 > cArr.length) {
            throw new CompileException("illegal unicode escape sequence", cArr, i11);
        }
        int i16 = i11;
        while (true) {
            i16++;
            if (i16 - i11 == 5) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("0x");
                int i17 = i11 + 1;
                sb2.append(new String(cArr, i17, 4));
                cArr[i13] = (char) Integer.decode(sb2.toString()).intValue();
                cArr[i11] = 0;
                cArr[i17] = 0;
                cArr[i11 + 2] = 0;
                cArr[i11 + 3] = 0;
                cArr[i15] = 0;
                return 5;
            }
            char c13 = cArr[i16];
            if (c13 <= '/' || c13 >= ':') {
                if (c13 <= '@' || c13 >= 'G') {
                    throw new CompileException("illegal unicode escape sequence", cArr, i16);
                }
            }
        }
    }

    public static Object X(char[] cArr, int i11, int i12) {
        if (i12 != 1 && cArr[i11] == '0' && cArr[i11 + 1] != '.') {
            int i13 = (i11 + i12) - 1;
            if (!b0(cArr[i13])) {
                char c11 = cArr[i13];
                if (c11 == 'B') {
                    return new BigDecimal(new String(cArr, i11, i12 - 1));
                }
                if (c11 == 'I') {
                    return new BigInteger(new String(cArr, i11, i12 - 1));
                }
                if (c11 == 'L' || c11 == 'l') {
                    return Long.decode(new String(cArr, i11, i12 - 1));
                }
            }
            return Integer.decode(new String(cArr, i11, i12));
        }
        int i14 = (i11 + i12) - 1;
        if (b0(cArr[i14])) {
            int iT0 = t0(cArr, i11, i12);
            if (iT0 == 110) {
                return new BigDecimal(cArr, MathContext.DECIMAL128);
            }
            switch (iT0) {
                case 101:
                    return Integer.valueOf(Integer.parseInt(new String(cArr, i11, i12)));
                case 102:
                    return Long.valueOf(Long.parseLong(new String(cArr, i11, i12)));
                case 103:
                    return Double.valueOf(Double.parseDouble(new String(cArr, i11, i12)));
                case 104:
                    return Float.valueOf(Float.parseFloat(new String(cArr, i11, i12)));
                default:
                    return new String(cArr, i11, i12);
            }
        }
        char c12 = cArr[i14];
        if (c12 != '.') {
            if (c12 == 'B') {
                return new BigDecimal(new String(cArr, i11, i12 - 1));
            }
            if (c12 != 'D') {
                if (c12 != 'F') {
                    if (c12 == 'I') {
                        return new BigInteger(new String(cArr, i11, i12 - 1));
                    }
                    if (c12 != 'L') {
                        if (c12 != 'd') {
                            if (c12 != 'f') {
                                if (c12 != 'l') {
                                    throw new CompileException("unrecognized numeric literal", cArr, i11);
                                }
                            }
                        }
                    }
                    return Long.valueOf(Long.parseLong(new String(cArr, i11, i12 - 1)));
                }
                return Float.valueOf(Float.parseFloat(new String(cArr, i11, i12 - 1)));
            }
        }
        return Double.valueOf(Double.parseDouble(new String(cArr, i11, i12 - 1)));
    }

    public static String Y(char[] cArr) {
        int i11 = 0;
        int iW = 0;
        while (i11 < cArr.length) {
            if (cArr[i11] == '\\') {
                i11++;
                iW += W(cArr, i11);
            }
            i11++;
        }
        if (iW == 0) {
            return new String(cArr);
        }
        char[] cArr2 = new char[cArr.length - iW];
        int i12 = 0;
        for (char c11 : cArr) {
            if (c11 != 0) {
                cArr2[i12] = c11;
                i12++;
            }
        }
        return new String(cArr2);
    }

    private static boolean Z(Class[] clsArr, Class[] clsArr2, boolean z10) {
        if (!z10 || clsArr2.length - 1 <= clsArr.length) {
            return (z10 || clsArr2.length == clsArr.length) ? false : true;
        }
        return true;
    }

    public static int a(Class cls) {
        Integer num = (Integer) f72068g.get(cls);
        if (num == null) {
            return (cls == null || !Collection.class.isAssignableFrom(cls)) ? 0 : 50;
        }
        return num.intValue();
    }

    public static boolean a0(char[] cArr, int i11, int i12) {
        if (i12 > i11 + 2) {
            int i13 = i12 - 2;
            if (n0(cArr, i11, i13) && cArr[i13] == '[' && cArr[i12 - 1] == ']') {
                return true;
            }
        }
        return false;
    }

    private static Serializable b(CompiledExpression compiledExpression) {
        if (!compiledExpression.isSingleNode()) {
            return compiledExpression;
        }
        ASTNode firstNode = compiledExpression.getFirstNode();
        if (!firstNode.isLiteral() || firstNode.isThisVal()) {
            return firstNode.canSerializeAccessor() ? new ExecutableAccessorSafe(firstNode, compiledExpression.getKnownEgressType()) : new ExecutableAccessor(firstNode, compiledExpression.getKnownEgressType());
        }
        return new ExecutableLiteral(firstNode.getLiteralValue());
    }

    public static boolean b0(int i11) {
        return i11 > 47 && i11 < 58;
    }

    public static int c(char[] cArr, int i11, char c11) {
        return d(cArr, i11, cArr.length, c11);
    }

    public static boolean c0(int i11) {
        return (i11 > 96 && i11 < 123) || (i11 > 64 && i11 < 91) || ((i11 > 47 && i11 < 58) || i11 == 95 || i11 == 36 || Character.isJavaIdentifierPart(i11));
    }

    public static int d(char[] cArr, int i11, int i12, char c11) {
        char c12;
        int iH;
        int i13;
        if (c11 == '(') {
            c12 = ')';
        } else if (c11 != '[') {
            c12 = c11 != '{' ? c11 : '}';
        } else {
            c12 = ']';
        }
        if (c11 == c12) {
            iH = i11 + 1;
            while (iH < i12) {
                if (cArr[iH] == c11) {
                    return iH;
                }
                iH++;
            }
        } else {
            iH = i11 + 1;
            int i14 = 1;
            while (iH < i12) {
                if (iH < i12 && cArr[iH] == '/') {
                    int i15 = iH + 1;
                    if (i15 == i12) {
                        return iH;
                    }
                    char c13 = cArr[i15];
                    if (c13 == '/') {
                        iH = i15;
                        while (iH < i12 && cArr[iH] != '\n') {
                            iH++;
                        }
                    } else if (c13 == '*') {
                        iH += 2;
                        while (iH < i12 && (cArr[iH] != '*' || (i13 = iH + 1) >= i12 || cArr[i13] != '/')) {
                            iH++;
                        }
                    }
                }
                if (iH == i12) {
                    return iH;
                }
                char c14 = cArr[iH];
                if (c14 == '\'' || c14 == '\"') {
                    iH = h(c14, cArr, iH, i12);
                } else if (c14 == c11) {
                    i14++;
                } else if (c14 == c12 && (i14 = i14 - 1) == 0) {
                    return iH;
                }
                iH++;
            }
        }
        if (c11 == '(') {
            throw new CompileException("unbalanced braces ( ... )", cArr, iH);
        }
        if (c11 == '[') {
            throw new CompileException("unbalanced braces [ ... ]", cArr, iH);
        }
        if (c11 != '{') {
            throw new CompileException("unterminated string literal", cArr, iH);
        }
        throw new CompileException("unbalanced braces { ... }", cArr, iH);
    }

    public static boolean d0(char c11) {
        if (c11 == '(' || c11 == '[') {
            return true;
        }
        return q0(c11);
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0088  */
    public static int e(char[] cArr, int i11, int i12, char c11, ParserContext parserContext) {
        char c12;
        if (c11 == '(') {
            c12 = ')';
        } else if (c11 != '[') {
            c12 = c11 != '{' ? c11 : '}';
        } else {
            c12 = ']';
        }
        if (c11 == c12) {
            for (int i13 = i11 + 1; i13 != i12; i13++) {
                if (cArr[i13] == c11) {
                    return i13;
                }
            }
        } else {
            int iH = i11 + 1;
            int i14 = 0;
            int i15 = 1;
            while (iH < i12) {
                if (q0(cArr[iH])) {
                    char c13 = cArr[iH];
                    if (c13 != '\n') {
                        if (c13 == '\r') {
                            continue;
                        }
                        iH++;
                    } else {
                        if (parserContext != null) {
                            parserContext.setLineOffset((short) iH);
                        }
                        i14++;
                    }
                } else if (iH < i12 && cArr[iH] == '/') {
                    int i16 = iH + 1;
                    if (i16 == i12) {
                        return iH;
                    }
                    char c14 = cArr[i16];
                    if (c14 == '/') {
                        iH = i16;
                        while (iH < i12 && cArr[iH] != '\n') {
                            iH++;
                        }
                    } else if (c14 == '*') {
                        iH += 2;
                        while (iH != i12) {
                            char c15 = cArr[iH];
                            if (c15 == '\n' || c15 == '\r') {
                                if (parserContext != null) {
                                    parserContext.setLineOffset((short) iH);
                                }
                                i14++;
                            } else if (c15 == '*') {
                                int i17 = iH + 1;
                                if (i17 < i12 && cArr[i17] == '/') {
                                    break;
                                }
                                if (parserContext != null) {
                                    parserContext.setLineOffset((short) iH);
                                }
                                i14++;
                            } else {
                                continue;
                            }
                            iH++;
                        }
                    }
                }
                if (iH == i12) {
                    return iH;
                }
                char c16 = cArr[iH];
                if (c16 == '\'' || c16 == '\"') {
                    iH = h(c16, cArr, iH, i12);
                } else if (c16 == c11) {
                    i15++;
                } else if (c16 == c12 && (i15 = i15 - 1) == 0) {
                    if (parserContext != null) {
                        parserContext.incrementLineCount(i14);
                    }
                    return iH;
                }
                iH++;
            }
        }
        if (c11 == '(') {
            throw new CompileException("unbalanced braces ( ... )", cArr, i11);
        }
        if (c11 == '[') {
            throw new CompileException("unbalanced braces [ ... ]", cArr, i11);
        }
        if (c11 != '{') {
            throw new CompileException("unterminated string literal", cArr, i11);
        }
        throw new CompileException("unbalanced braces { ... }", cArr, i11);
    }

    private static boolean e0(Method method, Method method2) {
        return method2.getReturnType().isAssignableFrom(method.getReturnType()) && method2.getDeclaringClass().isAssignableFrom(method.getDeclaringClass());
    }

    public static Class f(Class cls) {
        Class cls2 = Integer.class;
        if (cls != Integer.TYPE && cls != cls2) {
            cls2 = Integer[].class;
            if (cls != int[].class && cls != cls2) {
                cls2 = Character.class;
                if (cls != Character.TYPE && cls != cls2) {
                    cls2 = Character[].class;
                    if (cls != char[].class && cls != cls2) {
                        cls2 = Long.class;
                        if (cls != Long.TYPE && cls != cls2) {
                            cls2 = Long[].class;
                            if (cls != long[].class && cls != cls2) {
                                cls2 = Short.class;
                                if (cls != Short.TYPE && cls != cls2) {
                                    cls2 = Short[].class;
                                    if (cls != short[].class && cls != cls2) {
                                        cls2 = Double.class;
                                        if (cls != Double.TYPE && cls != cls2) {
                                            cls2 = Double[].class;
                                            if (cls != double[].class && cls != cls2) {
                                                cls2 = Float.class;
                                                if (cls != Float.TYPE && cls != cls2) {
                                                    cls2 = Float[].class;
                                                    if (cls != float[].class && cls != cls2) {
                                                        cls2 = Boolean.class;
                                                        if (cls != Boolean.TYPE && cls != cls2) {
                                                            cls2 = Boolean[].class;
                                                            if (cls != boolean[].class && cls != cls2) {
                                                                cls2 = Byte.class;
                                                                if (cls != Byte.TYPE && cls != cls2) {
                                                                    cls2 = Byte[].class;
                                                                    if (cls != byte[].class && cls != cls2) {
                                                                        return cls;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return cls2;
    }

    public static boolean f0(String str) {
        for (char c11 : str.toCharArray()) {
            if (c11 == '.' || !c0(c11)) {
                return true;
            }
        }
        return false;
    }

    public static String[] g(char[] cArr, int i11, int i12) {
        int i13 = i11 + i12;
        boolean z10 = false;
        int i14 = 0;
        for (int i15 = i11; i15 < i13; i15++) {
            char c11 = cArr[i15];
            if (c11 == '\"') {
                z10 = !z10;
            } else if (c11 == '(') {
                i14++;
            } else if (c11 == ')' && !z10) {
                int i16 = i14 - 1;
                if (1 == i14) {
                    int i17 = i15 + 1;
                    return new String[]{x(cArr, i11, i17 - i11), x(cArr, i17, i13 - i17)};
                }
                i14 = i16;
            }
        }
        return new String[]{new String(cArr, i11, i12)};
    }

    public static boolean g0(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof String) {
            return h0((String) obj);
        }
        if (obj instanceof char[]) {
            return h0(new String((char[]) obj));
        }
        return (obj instanceof Integer) || (obj instanceof BigDecimal) || (obj instanceof BigInteger) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof Character);
    }

    public static int h(char c11, char[] cArr, int i11, int i12) {
        int i13;
        char c12;
        while (true) {
            i13 = i11 + 1;
            if (i13 >= i12 || (c12 = cArr[i13]) == c11) {
                break;
            }
            i11 = c12 == '\\' ? i11 + 2 : i13;
        }
        if (i13 >= i12 || cArr[i13] != c11) {
            throw new CompileException("unterminated string literal", cArr, i13);
        }
        return i13;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    /* JADX WARN: Code duplicated, block: B:6:0x0010  */
    public static boolean h0(String str) {
        boolean z10;
        int i11;
        int length = str.length();
        if (length <= 1) {
            z10 = true;
            i11 = 0;
        } else if (str.charAt(0) == '-') {
            i11 = 1;
            z10 = true;
        } else if (str.charAt(0) != '~') {
            z10 = true;
            i11 = 0;
        } else if (str.charAt(1) == '-') {
            i11 = 2;
            z10 = true;
        } else {
            i11 = 1;
            z10 = true;
        }
        while (i11 < length) {
            char cCharAt = str.charAt(i11);
            if (!b0(cCharAt)) {
                if (cCharAt != '.' || !z10) {
                    return false;
                }
                z10 = false;
            }
            i11++;
        }
        return length > 0;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x002e  */
    public static int i(char[] cArr, int i11, int i12, ParserContext parserContext) {
        while (i11 != cArr.length) {
            char c11 = cArr[i11];
            if (c11 != '\"') {
                if (c11 != ',' && c11 != ';') {
                    if (c11 != '[' && c11 != '{') {
                        if (c11 != '}') {
                            if (c11 == '\'') {
                                i11 = h(c11, cArr, i11, cArr.length);
                            } else if (c11 != '(') {
                                continue;
                            }
                        }
                    }
                    i11 = e(cArr, i11, i12, c11, parserContext);
                    if (i11 >= cArr.length) {
                    }
                }
                return i11;
            }
            i11 = h(c11, cArr, i11, cArr.length);
            i11++;
        }
        return i11;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0021  */
    public static boolean i0(char[] cArr, int i11, int i12) {
        int i13;
        char c11;
        int i14;
        int i15;
        int i16 = i11 + i12;
        char c12 = '-';
        boolean z10 = true;
        if (i12 <= 1) {
            i13 = i11;
        } else {
            char c13 = cArr[i11];
            if (c13 == '-') {
                i15 = i11 + 1;
                if (cArr[i15] != '-') {
                }
                i13 = i15 + 1;
            } else if (c13 != '~') {
                i13 = i11;
            }
            i15 = i11;
            i13 = i15 + 1;
        }
        boolean z11 = true;
        while (i13 < i16) {
            char c14 = cArr[i13];
            if (b0(c14)) {
                c11 = c12;
            } else if (z11 && c14 == '.') {
                c11 = c12;
                z11 = false;
            } else {
                if (i12 != z10 && i13 == i16 - 1) {
                    if (c14 != '.') {
                        return c14 == 'B' || c14 == 'D' || c14 == 'F' || c14 == 'I' || c14 == 'L' || c14 == 'd' || c14 == 'f' || c14 == 'l';
                    }
                    throw new CompileException("invalid number literal: " + new String(cArr), cArr, i11);
                }
                if (i13 == i11 + 1 && c14 == 'x' && cArr[i11] == '0') {
                    int i17 = i13 + 1;
                    while (i17 < i16) {
                        char c15 = cArr[i17];
                        if (!b0(c15) && ((c15 < 'A' || c15 > 'F') && (c15 < 'a' || c15 > 'f'))) {
                            return i17 == i12 - 1 && (c15 == 'B' || c15 == 'I' || c15 == 'L' || c15 == 'l');
                        }
                        i17++;
                    }
                    return i12 + (-2) > 0;
                }
                if (i13 == i11 || (i14 = i13 + 1) >= i16 || !(c14 == 'E' || c14 == 'e')) {
                    if (i13 == i11) {
                        return false;
                    }
                    throw new CompileException("invalid number literal: " + new String(cArr, i11, i12), cArr, i11);
                }
                char c16 = cArr[i14];
                c11 = '-';
                i13 = (c16 == '-' || c16 == '+') ? i13 + 2 : i14;
                z10 = true;
            }
            i13 += z10 ? 1 : 0;
            c12 = c11;
        }
        if (i16 > i11) {
            return z10;
        }
        return false;
    }

    public static int j(char[] cArr, int i11, int i12, ParserContext parserContext) {
        char c11;
        while (i11 != cArr.length && (c11 = cArr[i11]) != '(') {
            if (c11 == '[') {
                i11 = e(cArr, i11, i12, '[', parserContext);
            } else if (c11 == '{' || q0(c11)) {
                return i11;
            }
            i11++;
        }
        return i11;
    }

    public static boolean j0(Object obj) {
        if (obj == null) {
            return false;
        }
        Class<?> cls = obj instanceof Class ? (Class) obj : obj.getClass();
        return cls == Integer.TYPE || cls == Long.TYPE || cls == Short.TYPE || cls == Double.TYPE || cls == Float.TYPE || Number.class.isAssignableFrom(cls);
    }

    public static void k(String str) {
        if (o0(str)) {
            throw new RuntimeException("illegal use of reserved word: " + str);
        }
        if (b0(str.charAt(0))) {
            throw new RuntimeException("not an identifier: " + str);
        }
    }

    public static boolean k0(Class cls, Class cls2) {
        if ((cls.isPrimitive() ? f(cls) : cls) == null || !Number.class.isAssignableFrom(cls)) {
            return false;
        }
        if (cls2.isPrimitive()) {
            cls2 = f(cls2);
        }
        if (cls2 != null) {
            return Number.class.isAssignableFrom(cls2);
        }
        return false;
    }

    public static boolean l(Object obj, Object obj2) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof String) {
            return ((String) obj).contains(String.valueOf(obj2));
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).contains(obj2);
        }
        if (obj instanceof Map) {
            return ((Map) obj).containsKey(obj2);
        }
        if (obj.getClass().isArray()) {
            if (obj.getClass().getComponentType().isPrimitive()) {
                return t(obj, obj2);
            }
            for (Object obj3 : (Object[]) obj) {
                if ((obj2 == null && obj3 == null) || ((Boolean) m10.a.g(obj3, 18, obj2)).booleanValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean l0(Class cls, Class cls2) {
        Class cls3;
        if (!cls2.isPrimitive()) {
            return false;
        }
        Class clsO0 = O0(cls);
        if (clsO0.isPrimitive()) {
            return (cls2 == Double.TYPE && clsO0 == Float.TYPE) || (cls2 == Float.TYPE && clsO0 == Long.TYPE) || ((cls2 == Long.TYPE && clsO0 == Integer.TYPE) || ((cls2 == (cls3 = Integer.TYPE) && clsO0 == Character.TYPE) || ((cls2 == cls3 && clsO0 == Short.TYPE) || (cls2 == Short.TYPE && clsO0 == Byte.TYPE))));
        }
        return false;
    }

    private static boolean m(boolean[] zArr, Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        for (boolean z10 : zArr) {
            if (z10 == zBooleanValue) {
                return true;
            }
        }
        return false;
    }

    public static boolean m0(Class cls) {
        return cls == Integer.class || cls == Boolean.class || cls == Long.class || cls == Double.class || cls == Float.class || cls == Character.class || cls == Short.class || cls == Byte.class;
    }

    private static boolean n(byte[] bArr, Byte b11) {
        byte bByteValue = b11.byteValue();
        for (byte b12 : bArr) {
            if (b12 == bByteValue) {
                return true;
            }
        }
        return false;
    }

    public static boolean n0(char[] cArr, int i11, int i12) {
        while (i11 < i12) {
            if (!c0(cArr[i11])) {
                return false;
            }
            i11++;
        }
        return true;
    }

    private static boolean o(char[] cArr, Character ch2) {
        char cCharValue = ch2.charValue();
        for (char c11 : cArr) {
            if (c11 == cCharValue) {
                return true;
            }
        }
        return false;
    }

    public static boolean o0(String str) {
        return AbstractParser.LITERALS.containsKey(str) || AbstractParser.OPERATORS.containsKey(str);
    }

    private static boolean p(double[] dArr, Double d11) {
        double dDoubleValue = d11.doubleValue();
        for (double d12 : dArr) {
            if (d12 == dDoubleValue) {
                return true;
            }
        }
        return false;
    }

    public static boolean p0(char[] cArr, int i11) {
        if (i11 >= cArr.length) {
            return false;
        }
        while (i11 != cArr.length && q0(cArr[i11])) {
            i11++;
        }
        return i11 == cArr.length || cArr[i11] != ';';
    }

    private static boolean q(float[] fArr, Float f11) {
        float fFloatValue = f11.floatValue();
        for (float f12 : fArr) {
            if (f12 == fFloatValue) {
                return true;
            }
        }
        return false;
    }

    public static boolean q0(char c11) {
        return c11 < '!';
    }

    private static boolean r(int[] iArr, Integer num) {
        int iIntValue = num.intValue();
        for (int i11 : iArr) {
            if (i11 == iIntValue) {
                return true;
            }
        }
        return false;
    }

    public static Object r0(BigDecimal bigDecimal, int i11) {
        if (i11 == 109 || bigDecimal.scale() > 0) {
            return Double.valueOf(bigDecimal.doubleValue());
        }
        return (i11 == 107 || bigDecimal.longValue() > 2147483647L) ? Long.valueOf(bigDecimal.longValue()) : Integer.valueOf(bigDecimal.intValue());
    }

    private static boolean s(long[] jArr, Long l11) {
        long jLongValue = l11.longValue();
        for (long j11 : jArr) {
            if (j11 == jLongValue) {
                return true;
            }
        }
        return false;
    }

    public static int s0(char[] cArr, int i11) {
        if (i11 + 1 >= cArr.length) {
            throw new CompileException("unexpected end of statement", cArr, i11);
        }
        while (i11 != cArr.length && q0(cArr[i11])) {
            i11++;
        }
        return i11;
    }

    private static boolean t(Object obj, Object obj2) {
        Class<?> componentType = obj.getClass().getComponentType();
        if (componentType == Boolean.TYPE) {
            return (obj2 instanceof Boolean) && m((boolean[]) obj, (Boolean) obj2);
        }
        if (componentType == Integer.TYPE) {
            return (obj2 instanceof Integer) && r((int[]) obj, (Integer) obj2);
        }
        if (componentType == Long.TYPE) {
            return (obj2 instanceof Long) && s((long[]) obj, (Long) obj2);
        }
        if (componentType == Double.TYPE) {
            return (obj2 instanceof Double) && p((double[]) obj, (Double) obj2);
        }
        if (componentType == Float.TYPE) {
            return (obj2 instanceof Float) && q((float[]) obj, (Float) obj2);
        }
        if (componentType == Character.TYPE) {
            return (obj2 instanceof Character) && o((char[]) obj, (Character) obj2);
        }
        if (componentType == Short.TYPE) {
            return (obj2 instanceof Short) && u((short[]) obj, (Short) obj2);
        }
        if (componentType == Byte.TYPE) {
            return (obj2 instanceof Byte) && n((byte[]) obj, (Byte) obj2);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0019  */
    public static int t0(char[] cArr, int i11, int i12) {
        int i13;
        if (i12 <= 1) {
            i13 = i11;
        } else {
            char c11 = cArr[i11];
            if (c11 == '-') {
                i13 = i11 + 1;
            } else if (c11 == '~') {
                i13 = i11 + 1;
                if (cArr[i13] == '-') {
                    i13 = i11 + 2;
                }
            } else {
                i13 = i11;
            }
        }
        int i14 = i11 + i12;
        boolean z10 = false;
        while (i13 < i14) {
            char c12 = cArr[i13];
            if (!b0(c12)) {
                if (c12 != '.') {
                    if (c12 != 'E' && c12 != 'e') {
                        return -1;
                    }
                    int i15 = i13 + 1;
                    i13 = (i13 >= i14 || cArr[i15] != '-') ? i15 : i13 + 2;
                }
                z10 = true;
            }
            i13++;
        }
        if (i12 == 0) {
            return -1;
        }
        if (z10) {
            return 103;
        }
        return i12 > 9 ? 102 : 101;
    }

    private static boolean u(short[] sArr, Short sh2) {
        short sShortValue = sh2.shortValue();
        for (short s11 : sArr) {
            if (s11 == sShortValue) {
                return true;
            }
        }
        return false;
    }

    public static int u0(char c11) {
        if (c11 == '%') {
            return 4;
        }
        if (c11 == '&') {
            return 6;
        }
        if (c11 == '*') {
            return 2;
        }
        if (c11 == '+') {
            return 0;
        }
        if (c11 == '/') {
            return 3;
        }
        if (c11 == '^') {
            return 8;
        }
        if (c11 == '|') {
            return 7;
        }
        if (c11 == 187) {
            return 9;
        }
        if (c11 != 171) {
            return c11 != 172 ? -1 : 11;
        }
        return 10;
    }

    public static Class v(String str, ParserContext parserContext) throws ClassNotFoundException {
        Class<?> cls;
        Class cls2;
        ClassLoader classLoader = parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader();
        Map map = f72065d;
        Map mapSynchronizedMap = (Map) map.get(classLoader);
        if (mapSynchronizedMap == null) {
            mapSynchronizedMap = Collections.synchronizedMap(new WeakHashMap(10));
            map.put(classLoader, mapSynchronizedMap);
        }
        WeakReference weakReference = (WeakReference) mapSynchronizedMap.get(str);
        if (weakReference != null && (cls2 = (Class) weakReference.get()) != null) {
            return cls2;
        }
        try {
            cls = Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException e11) {
            if (classLoader == Thread.currentThread().getContextClassLoader()) {
                throw e11;
            }
            cls = Class.forName(str, true, Thread.currentThread().getContextClassLoader());
        }
        mapSynchronizedMap.put(str, new WeakReference(cls));
        return cls;
    }

    public static Serializable v0(CompiledExpression compiledExpression) {
        return (!compiledExpression.isImportInjectionRequired() && compiledExpression.getParserConfiguration().isAllowBootstrapBypass() && compiledExpression.isSingleNode()) ? b(compiledExpression) : compiledExpression;
    }

    public static char[] w(String str, char[] cArr, int i11, int i12, int i13) {
        char c11;
        if (i13 == -1) {
            return cArr;
        }
        if (i13 == 0) {
            c11 = '+';
        } else if (i13 == 1) {
            c11 = '-';
        } else if (i13 == 2) {
            c11 = '*';
        } else if (i13 == 3) {
            c11 = '/';
        } else if (i13 == 4) {
            c11 = '%';
        } else if (i13 == 6) {
            c11 = '&';
        } else if (i13 == 7) {
            c11 = '|';
        } else if (i13 != 20) {
            switch (i13) {
                case 9:
                    c11 = 187;
                    break;
                case 10:
                    c11 = 171;
                    break;
                case 11:
                    c11 = 172;
                    break;
                default:
                    c11 = 0;
                    break;
            }
        } else {
            c11 = '#';
        }
        char[] charArray = str.toCharArray();
        char[] cArr2 = new char[str.length() + i12 + 1];
        System.arraycopy(charArray, 0, cArr2, 0, str.length());
        cArr2[str.length()] = c11;
        System.arraycopy(cArr, i11, cArr2, str.length() + 1, i12);
        return cArr2;
    }

    public static List w0(char[] cArr) {
        int i11;
        int i12 = 0;
        while (true) {
            if (i12 >= cArr.length) {
                i11 = -1;
                break;
            }
            if (cArr[i12] == '(') {
                i11 = i12 + 1;
                break;
            }
            i12++;
        }
        if (i11 == -1) {
            return Collections.emptyList();
        }
        int i13 = i11 - 1;
        return y0(cArr, i11, (c(cArr, i13, '(') - i13) - 1);
    }

    public static String x(char[] cArr, int i11, int i12) {
        int i13 = i12 + i11;
        if (i13 > cArr.length) {
            return new String(cArr);
        }
        while (i11 != i13 && cArr[i11] < '!') {
            i11++;
        }
        while (i13 != i11 && cArr[i13 - 1] < '!') {
            i13--;
        }
        return new String(cArr, i11, i13 - i11);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0045  */
    public static String[] x0(char[] cArr, int i11, int i12) {
        LinkedList linkedList = new LinkedList();
        if (i12 == -1) {
            i12 = cArr.length;
        }
        int i13 = i11 + i12;
        int i14 = i11;
        while (i11 < i13) {
            char c11 = cArr[i11];
            if (c11 == '\"') {
                i11 = h('\"', cArr, i11, cArr.length);
            } else if (c11 == ',') {
                if (i11 > i14) {
                    while (q0(cArr[i14])) {
                        i14++;
                    }
                    String str = new String(cArr, i14, i11 - i14);
                    k(str);
                    linkedList.add(str);
                }
                while (q0(cArr[i11])) {
                    i11++;
                }
                i14 = i11 + 1;
            } else if (c11 == '[' || c11 == '{') {
                i11 = c(cArr, i11, c11);
            } else if (c11 == '\'') {
                i11 = h('\'', cArr, i11, cArr.length);
            } else if (c11 == '(') {
                i11 = c(cArr, i11, c11);
            } else if (!q0(c11) && !c0(cArr[i11])) {
                throw new CompileException("expected parameter", cArr, i14);
            }
            i11++;
        }
        if (i14 < i13 && i11 > i14) {
            String strX = x(cArr, i14, i11 - i14);
            if (strX.length() > 0) {
                k(strX);
                linkedList.add(strX);
            }
        } else if (linkedList.size() == 0) {
            String strX2 = x(cArr, i14, i12);
            if (strX2.length() > 0) {
                k(strX2);
                linkedList.add(strX2);
            }
        }
        return (String[]) linkedList.toArray(new String[linkedList.size()]);
    }

    private static Method y(Class cls, Method method) {
        String name = method.getName();
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Method method2 : cls2.getMethods()) {
                if (method2.getParameterTypes().length == 0 && name.equals(method2.getName())) {
                    return method2;
                }
            }
        }
        if (cls.getSuperclass() != null) {
            return y(cls.getSuperclass(), method);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public static List y0(char[] cArr, int i11, int i12) {
        ArrayList arrayList = new ArrayList();
        if (i12 == -1) {
            i12 = cArr.length;
        }
        int i13 = i11 + i12;
        int i14 = i11;
        while (i11 < i13) {
            char c11 = cArr[i11];
            if (c11 == '\"') {
                i11 = h('\"', cArr, i11, cArr.length);
            } else if (c11 == ',') {
                if (i11 > i14) {
                    while (q0(cArr[i14])) {
                        i14++;
                    }
                    arrayList.add(L0(cArr, i14, i11 - i14));
                }
                while (q0(cArr[i11])) {
                    i11++;
                }
                i14 = i11 + 1;
            } else if (c11 == '[' || c11 == '{') {
                i11 = c(cArr, i11, c11);
            } else if (c11 == '\'') {
                i11 = h('\'', cArr, i11, cArr.length);
            } else if (c11 == '(') {
                i11 = c(cArr, i11, c11);
            }
            i11++;
        }
        if (i14 < i13 && i11 > i14) {
            char[] cArrL0 = L0(cArr, i14, i11 - i14);
            if (cArrL0.length > 0) {
                arrayList.add(cArrL0);
            }
        } else if (arrayList.size() == 0) {
            char[] cArrL1 = L0(cArr, i14, i12);
            if (cArrL1.length > 0) {
                arrayList.add(cArrL1);
            }
        }
        return arrayList;
    }

    public static Method z(Method method) {
        return y(method.getDeclaringClass(), method);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0106 A[PHI: r8
  0x0106: PHI (r8v8 int) = (r8v6 int), (r8v9 int) binds: [B:70:0x012e, B:57:0x0104] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:76:0x013b  */
    /* JADX WARN: Code duplicated, block: B:81:0x0148  */
    public static void z0(String str, char[] cArr, int i11, int i12, Object obj, VariableResolverFactory variableResolverFactory) {
        int i13;
        int i14 = i11 + i12;
        int iD = i11;
        int i15 = iD;
        String strTrim = "";
        int iU0 = -1;
        while (iD < i14) {
            char c11 = cArr[iD];
            if (c11 == '\"') {
                iD = d(cArr, iD, i14, c11);
            } else if (c11 == '%') {
                i13 = iD + 1;
                if (i13 < i14 && cArr[i13] == '=') {
                    iU0 = u0(c11);
                }
            } else if (c11 != '/') {
                if (c11 == '=') {
                    strTrim = new String(cArr, i15, (iD - i15) - (iU0 != -1 ? 1 : 0)).trim();
                    i15 = iD + 1;
                } else if (c11 != '[' && c11 != '{' && c11 != '\'' && c11 != '(') {
                    switch (c11) {
                        case '*':
                        case '+':
                        case '-':
                            i13 = iD + 1;
                            if (i13 < i14) {
                            }
                            break;
                        case ',':
                            if (strTrim == null) {
                                if (str == null) {
                                    try {
                                        org.mvel2.d.n(new String(cArr, i15, iD - i15), obj, variableResolverFactory);
                                    } catch (CompileException e11) {
                                        e11.setCursor(i15 + (e11.getCursor() - (e11.getExpr().length - i12)));
                                        e11.setExpr(cArr);
                                        throw e11;
                                    }
                                } else {
                                    StringBuilder sb2 = new StringBuilder(str);
                                    sb2.append('.');
                                    sb2.append(cArr, i15, iD - i15);
                                    org.mvel2.d.n(sb2.toString(), obj, variableResolverFactory);
                                }
                                iD++;
                            } else {
                                if (iU0 != -1) {
                                    if (str == null) {
                                        throw new CompileException("operative assignment not possible here", cArr, i11);
                                    }
                                    try {
                                        org.mvel2.d.B(obj, strTrim, org.mvel2.d.n(new String(w(str + "." + strTrim, cArr, i15, iD - i15, iU0)), obj, variableResolverFactory));
                                    } catch (CompileException e12) {
                                        e12.setCursor(i15 + (e12.getCursor() - (e12.getExpr().length - i12)));
                                        e12.setExpr(cArr);
                                        throw e12;
                                    }
                                    e12.setCursor(i15 + (e12.getCursor() - (e12.getExpr().length - i12)));
                                    e12.setExpr(cArr);
                                    throw e12;
                                }
                                org.mvel2.d.B(obj, strTrim, org.mvel2.d.q(cArr, i15, iD - i15, obj, variableResolverFactory));
                                iD++;
                                strTrim = null;
                            }
                            i15 = iD;
                            iU0 = -1;
                            break;
                    }
                } else {
                    iD = d(cArr, iD, i14, c11);
                }
            } else if (iD < i14 && cArr[iD + 1] == '/') {
                while (iD < i14 && cArr[iD] != '\n') {
                    cArr[iD] = ' ';
                    iD++;
                }
                if (strTrim == null) {
                    i15 = iD;
                }
            } else if (iD < i14 && cArr[iD + 1] == '*') {
                int i16 = i14 - 1;
                while (iD < i16 && (cArr[iD] != '*' || cArr[iD + 1] != '/')) {
                    cArr[iD] = ' ';
                    iD++;
                }
                int i17 = iD + 1;
                cArr[iD] = ' ';
                iD += 2;
                cArr[i17] = ' ';
                if (strTrim == null) {
                    i15 = iD;
                }
            } else if (iD < i14 && cArr[iD + 1] == '=') {
                iU0 = 3;
            }
            iD++;
        }
        if (i15 != i14) {
            if (strTrim != null) {
                try {
                    if (!"".equals(strTrim)) {
                        if (iU0 == -1) {
                            org.mvel2.d.B(obj, strTrim, org.mvel2.d.q(cArr, i15, i14 - i15, obj, variableResolverFactory));
                            return;
                        }
                        if (str == null) {
                            throw new CompileException("operative assignment not possible here", cArr, i11);
                        }
                        org.mvel2.d.B(obj, strTrim, org.mvel2.d.n(new String(w(str + "." + strTrim, cArr, i15, i14 - i15, iU0)), obj, variableResolverFactory));
                        return;
                    }
                } catch (CompileException e13) {
                    e13.setCursor(i15 + (e13.getCursor() - (e13.getExpr().length - i12)));
                    e13.setExpr(cArr);
                    throw e13;
                }
            }
            if (str == null) {
                org.mvel2.d.n(new String(cArr, i15, i14 - i15), obj, variableResolverFactory);
            } else {
                org.mvel2.d.n(new s(str).a('.').e(cArr, i15, i14 - i15).toString(), obj, variableResolverFactory);
            }
        }
    }
}
