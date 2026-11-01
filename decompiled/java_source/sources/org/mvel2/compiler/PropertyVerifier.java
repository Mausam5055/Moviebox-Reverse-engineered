package org.mvel2.compiler;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.ast.Function;
import org.mvel2.c;
import org.mvel2.d;
import org.mvel2.optimizers.AbstractOptimizer;
import org.mvel2.optimizers.impl.refl.nodes.WithAccessor;
import org.mvel2.util.f;
import org.mvel2.util.l;
import org.mvel2.util.m;
import org.mvel2.util.n;
import org.mvel2.util.s;

/* JADX INFO: loaded from: classes7.dex */
public class PropertyVerifier extends AbstractOptimizer {
    private static final int COL = 2;
    private static final int DONE = -1;
    private static final int METH = 1;
    private static final int NORM = 0;
    private static final int WITH = 3;
    private boolean classLiteral;
    private Class ctx;
    private boolean deepProperty;
    private boolean first;
    private boolean fqcn;
    private List<String> inputs;
    private boolean methodCall;
    private Map<String, Type> paramTypes;
    private boolean resolvedExternally;

    public PropertyVerifier(String str, ParserContext parserContext) {
        this.inputs = new LinkedList();
        this.first = false;
        this.classLiteral = false;
        this.methodCall = false;
        this.deepProperty = false;
        this.fqcn = false;
        this.ctx = null;
        char[] charArray = str.toCharArray();
        this.expr = charArray;
        int length = charArray.length;
        this.end = length;
        this.length = length;
        this.pCtx = parserContext;
    }

    public PropertyVerifier(String str, ParserContext parserContext, Class cls) {
        this.inputs = new LinkedList();
        this.first = false;
        this.classLiteral = false;
        this.methodCall = false;
        this.deepProperty = false;
        this.fqcn = false;
        this.ctx = null;
        char[] charArray = str.toCharArray();
        this.expr = charArray;
        int length = charArray.length;
        this.length = length;
        this.end = length;
        if (str.length() > 0 && str.charAt(0) == '.') {
            this.start = 1;
            this.f71960st = 1;
            this.cursor = 1;
        }
        this.pCtx = parserContext;
        this.ctx = cls;
    }

    public PropertyVerifier(char[] cArr, int i11, int i12, ParserContext parserContext) {
        this.inputs = new LinkedList();
        this.first = false;
        this.classLiteral = false;
        this.methodCall = false;
        this.deepProperty = false;
        this.fqcn = false;
        this.ctx = null;
        this.expr = cArr;
        this.start = i11;
        this.length = i12;
        this.end = i11 + i12;
        this.pCtx = parserContext;
    }

    public PropertyVerifier(char[] cArr, ParserContext parserContext) {
        this.inputs = new LinkedList();
        this.first = false;
        this.classLiteral = false;
        this.methodCall = false;
        this.deepProperty = false;
        this.fqcn = false;
        this.ctx = null;
        this.expr = cArr;
        int length = cArr.length;
        this.end = length;
        this.length = length;
        this.pCtx = parserContext;
    }

    private Class getBeanProperty(Class cls, String str) {
        char c11;
        if (this.first) {
            if (this.pCtx.hasVarOrInput(str)) {
                if (this.pCtx.isStrictTypeEnforcement()) {
                    recordTypeParmsForProperty(str);
                }
                return this.pCtx.getVarOrInputType(str);
            }
            if (this.pCtx.hasImport(str)) {
                this.resolvedExternally = false;
                return this.pCtx.getImport(str);
            }
            if (!this.pCtx.isStrongTyping()) {
                return Object.class;
            }
            if (this.pCtx.hasVarOrInput("this")) {
                if (this.pCtx.isStrictTypeEnforcement()) {
                    recordTypeParmsForProperty("this");
                }
                cls = this.pCtx.getVarOrInputType("this");
                this.resolvedExternally = false;
            }
        }
        this.f71960st = this.cursor;
        Member memberB = cls != null ? n.b(cls, str) : null;
        if (d.f71970j && "class".equals(str)) {
            return Class.class;
        }
        if (memberB instanceof Field) {
            if (!this.pCtx.isStrictTypeEnforcement()) {
                return ((Field) memberB).getType();
            }
            Field field = (Field) memberB;
            if (field.getGenericType() != null) {
                if (field.getGenericType() instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) field.getGenericType();
                    this.pCtx.setLastTypeParameters(parameterizedType.getActualTypeArguments());
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    TypeVariable[] typeParameters = type2Class(parameterizedType.getRawType()).getTypeParameters();
                    if (actualTypeArguments.length > 0 && this.paramTypes == null) {
                        this.paramTypes = new HashMap();
                    }
                    for (int i11 = 0; i11 < actualTypeArguments.length; i11++) {
                        this.paramTypes.put(typeParameters[i11].toString(), actualTypeArguments[i11]);
                    }
                } else if (field.getGenericType() instanceof TypeVariable) {
                    Type typeRemove = this.paramTypes.remove(((TypeVariable) field.getGenericType()).getName());
                    if (typeRemove != null && (typeRemove instanceof Class)) {
                        return (Class) typeRemove;
                    }
                }
            }
            return field.getType();
        }
        if (memberB != null) {
            return getReturnType(cls, (Method) memberB);
        }
        ParserContext parserContext = this.pCtx;
        if (parserContext != null && this.first && parserContext.hasImport(str) && this.pCtx.getImport(str) != null) {
            return this.pCtx.getImport(str);
        }
        ParserContext parserContext2 = this.pCtx;
        if (parserContext2 != null && parserContext2.getLastTypeParameters() != null && this.pCtx.getLastTypeParameters().length != 0) {
            if (!Collection.class.isAssignableFrom(cls)) {
                c11 = Map.class.isAssignableFrom(cls) ? (char) 1 : (char) 0;
            }
            Type type = this.pCtx.getLastTypeParameters()[c11];
            this.pCtx.setLastTypeParameters(null);
            return type instanceof ParameterizedType ? Object.class : (Class) type;
        }
        if (this.pCtx != null && "length".equals(str) && cls.isArray()) {
            return Integer.class;
        }
        Object objTryStaticAccess = tryStaticAccess();
        if (objTryStaticAccess != null) {
            this.fqcn = true;
            this.resolvedExternally = false;
            if (objTryStaticAccess instanceof Class) {
                boolean z10 = (d.f71970j && new String(this.expr, this.end - 6, 6).equals(".class")) ? false : true;
                this.classLiteral = z10;
                return z10 ? (Class) objTryStaticAccess : Class.class;
            }
            if (objTryStaticAccess instanceof Field) {
                try {
                    return ((Field) objTryStaticAccess).get(null).getClass();
                } catch (Exception e11) {
                    throw new CompileException("in verifier: ", this.expr, this.start, e11);
                }
            }
            try {
                return ((Method) objTryStaticAccess).getReturnType();
            } catch (Exception e12) {
                throw new CompileException("in verifier: ", this.expr, this.start, e12);
            }
        }
        if (cls != null) {
            try {
                return m.D(this.variableFactory, cls.getName() + "$" + str, this.pCtx);
            } catch (ClassNotFoundException unused) {
            }
        }
        ParserContext parserContext3 = this.pCtx;
        if (parserContext3 == null || parserContext3.getParserConfiguration() == null ? d.f71967g : this.pCtx.getParserConfiguration().isAllowNakedMethCall()) {
            Class method = getMethod(cls, str);
            if (method != Object.class) {
                return method;
            }
        }
        if (!this.pCtx.isStrictTypeEnforcement()) {
            return Object.class;
        }
        throw new CompileException("unqualified type in strict mode for: " + str, this.expr, this.tkStart);
    }

    private Class getCollectionProperty(Class cls, String str) {
        Class beanProperty;
        Type type;
        Class<Object> cls2 = Object.class;
        Class clsT = cls;
        if (this.first) {
            if (this.pCtx.hasVarOrInput(str)) {
                clsT = m.T(this.pCtx.getVarOrInputType(str));
            } else if (this.pCtx.hasImport(str)) {
                this.resolvedExternally = false;
                clsT = m.T(this.pCtx.getImport(str));
            } else {
                clsT = cls2;
            }
        }
        Class componentType = cls2;
        if (this.pCtx.isStrictTypeEnforcement()) {
            if (str.length() != 0) {
                beanProperty = clsT;
                beanProperty = getBeanProperty(clsT, str);
            }
            beanProperty = clsT;
            if (Map.class.isAssignableFrom(beanProperty)) {
                if (this.pCtx.getLastTypeParameters() != null && this.pCtx.getLastTypeParameters().length != 0) {
                    type = cls2;
                    type = cls2;
                    type = this.pCtx.getLastTypeParameters()[1];
                }
                type = cls2;
                type = cls2;
                type = cls2;
                componentType = type2Class(type);
            } else if (Collection.class.isAssignableFrom(beanProperty)) {
                if (this.pCtx.getLastTypeParameters() != null && this.pCtx.getLastTypeParameters().length != 0) {
                    componentType = cls2;
                    componentType = cls2;
                    componentType = type2Class(this.pCtx.getLastTypeParameters()[0]);
                }
            } else if (beanProperty.isArray()) {
                componentType = beanProperty.getComponentType();
            } else {
                if (this.pCtx.isStrongTyping()) {
                    throw new CompileException("unknown collection type: " + beanProperty + "; property=" + str, this.expr, this.start);
                }
                componentType = beanProperty;
            }
        }
        componentType = cls2;
        componentType = cls2;
        componentType = cls2;
        this.cursor++;
        skipWhitespace();
        int i11 = this.cursor;
        if (scanTo(']')) {
            addFatalError("unterminated [ in token");
        }
        d.a(new String(this.expr, i11, this.cursor - i11), this.pCtx);
        this.cursor++;
        return componentType;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x008a  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b1  */
    private Class getMethod(Class cls, String str) {
        Class varOrInputType;
        String str2;
        Class[] clsArr;
        String str3;
        List list;
        String str4;
        String name = str;
        int i11 = this.cursor;
        int i12 = 0;
        if (this.first) {
            this.first = false;
            this.methodCall = true;
            if (this.pCtx.hasImport(name)) {
                Method method = this.pCtx.getStaticImport(name).getMethod();
                varOrInputType = method.getDeclaringClass();
                name = method.getName();
            } else {
                Function function = this.pCtx.getFunction(name);
                if (function != null && function.getEgressType() != null) {
                    this.resolvedExternally = false;
                    int iD = m.d(this.expr, this.cursor, this.end, '(');
                    this.cursor = iD;
                    function.checkArgumentCount(m.y0(iD - i11 > 1 ? m.K0(this.expr, i11 + 1, (iD - i11) - 1) : new char[0], 0, -1).size());
                    return function.getEgressType();
                }
                if (this.pCtx.hasVarOrInput("this")) {
                    if (this.pCtx.isStrictTypeEnforcement()) {
                        recordTypeParmsForProperty("this");
                    }
                    varOrInputType = this.pCtx.getVarOrInputType("this");
                    this.resolvedExternally = false;
                } else {
                    varOrInputType = cls;
                }
            }
        } else {
            varOrInputType = cls;
        }
        String str5 = name;
        int i13 = this.cursor;
        int i14 = this.end;
        if (i13 < i14) {
            char[] cArr = this.expr;
            if (cArr[i13] == '(') {
                int iD2 = m.d(cArr, i13, i14, '(');
                this.cursor = iD2;
                if (iD2 - i11 > 1) {
                    str2 = new String(this.expr, i11 + 1, (iD2 - i11) - 1);
                } else {
                    str2 = "";
                }
            } else {
                str2 = "";
            }
        } else {
            str2 = "";
        }
        this.cursor++;
        List listY0 = m.y0(str2.toCharArray(), 0, -1);
        if (listY0.size() == 0) {
            clsArr = new Class[0];
            listY0 = Collections.emptyList();
        } else {
            Class[] clsArr2 = new Class[listY0.size()];
            List<c> errorList = this.pCtx.getErrorList().isEmpty() ? this.pCtx.getErrorList() : new ArrayList<>(this.pCtx.getErrorList());
            CompileException compileExceptionA = null;
            for (int i15 = 0; i15 < listY0.size(); i15++) {
                try {
                    clsArr2[i15] = d.c((char[]) listY0.get(i15), this.pCtx);
                    if ("null".equals(String.valueOf((char[]) listY0.get(i15)))) {
                        clsArr2[i15] = l.class;
                    }
                } catch (CompileException e11) {
                    compileExceptionA = f.a(e11, this.expr, this.f71960st);
                }
                if (errorList.size() < this.pCtx.getErrorList().size()) {
                    for (c cVar : this.pCtx.getErrorList()) {
                        if (!errorList.contains(cVar)) {
                            cVar.j(this.expr);
                            cVar.i(new String(this.expr).substring(this.f71960st).indexOf(new String((char[]) listY0.get(i15))) + this.f71960st);
                            cVar.h(0);
                            cVar.k(0);
                            cVar.a();
                        }
                    }
                }
                if (compileExceptionA != null) {
                    throw compileExceptionA;
                }
            }
            clsArr = clsArr2;
        }
        Method methodJ = m.J(clsArr, str5, varOrInputType, varOrInputType.getMethods(), this.pCtx.isStrongTyping());
        Class<Object> cls2 = Object.class;
        String str6 = ")";
        if (methodJ == null && (methodJ = m.J(clsArr, str5, varOrInputType, varOrInputType.getDeclaredMethods(), this.pCtx.isStrongTyping())) == null) {
            s sVar = new s();
            while (i12 < clsArr.length) {
                Class cls3 = clsArr[i12];
                sVar.d(cls3 != null ? cls3.getName() : null);
                if (i12 < clsArr.length - 1) {
                    sVar.d(", ");
                }
                i12++;
            }
            if (("size".equals(str5) || "length".equals(str5)) && clsArr.length == 0 && varOrInputType.isArray()) {
                return Integer.class;
            }
            if (!this.pCtx.isStrictTypeEnforcement()) {
                return cls2;
            }
            throw new CompileException("unable to resolve method using strict-mode: " + varOrInputType.getName() + "." + str5 + "(" + sVar.toString() + ")", this.expr, this.tkStart);
        }
        if (!this.pCtx.isStrictTypeEnforcement() || methodJ.getGenericReturnType() == null) {
            str3 = ")";
        } else {
            HashMap map = new HashMap();
            Type[] genericParameterTypes = methodJ.getGenericParameterTypes();
            int i16 = 0;
            while (i16 < genericParameterTypes.length) {
                Type type = genericParameterTypes[i16];
                Class<Object> cls4 = cls2;
                if (type instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    str4 = str6;
                    list = listY0;
                    Class cls5 = this.pCtx.getImport(new String((char[]) listY0.get(i16)));
                    if (cls5 != null) {
                        if (parameterizedType.getRawType().equals(Class.class)) {
                            map.put(parameterizedType.getActualTypeArguments()[0].toString(), cls5);
                        } else {
                            map.put(genericParameterTypes[i16].toString(), cls5);
                        }
                    }
                    i16++;
                    cls2 = cls4;
                    str6 = str4;
                    listY0 = list;
                } else {
                    list = listY0;
                    str4 = str6;
                }
                i16++;
                cls2 = cls4;
                str6 = str4;
                listY0 = list;
            }
            Class<Object> cls6 = cls2;
            str3 = str6;
            i12 = 0;
            if (this.pCtx.isStrictTypeEnforcement() && varOrInputType.getTypeParameters().length != 0 && this.pCtx.getLastTypeParameters() != null && this.pCtx.getLastTypeParameters().length == varOrInputType.getTypeParameters().length) {
                TypeVariable[] typeParameters = varOrInputType.getTypeParameters();
                for (int i17 = 0; i17 < typeParameters.length; i17++) {
                    map.put(typeParameters[i17].getName(), this.pCtx.getLastTypeParameters()[i17] instanceof Class ? type2Class(this.pCtx.getLastTypeParameters()[i17]) : cls6);
                }
            }
            Type genericReturnType = methodJ.getGenericReturnType();
            String string = genericReturnType.toString();
            if (genericReturnType instanceof ParameterizedType) {
                this.pCtx.setLastTypeParameters(((ParameterizedType) genericReturnType).getActualTypeArguments());
            }
            Map<String, Type> map2 = this.paramTypes;
            if (map2 != null && map2.containsKey(string)) {
                return type2Class(this.paramTypes.get(string));
            }
            if (map.containsKey(string)) {
                return (Class) map.get(string);
            }
        }
        if (!Modifier.isPublic(methodJ.getModifiers()) && this.pCtx.isStrictTypeEnforcement()) {
            s sVar2 = new s();
            while (i12 < clsArr.length) {
                Class cls7 = clsArr[i12];
                sVar2.d(cls7 != null ? cls7.getName() : null);
                if (i12 < clsArr.length - 1) {
                    sVar2.d(", ");
                }
                i12++;
            }
            String string2 = Modifier.toString(methodJ.getModifiers());
            if (string2.trim().equals("")) {
                string2 = "<package local>";
            }
            addFatalError("the referenced method is not accessible: " + varOrInputType.getName() + "." + str5 + "(" + sVar2.toString() + str3 + " (scope: " + string2 + "; required: public", this.tkStart);
        }
        return getReturnType(varOrInputType, methodJ);
    }

    private Class getReturnType(Class cls, Method method) {
        Class<?> declaringClass = method.getDeclaringClass();
        if (cls == declaringClass) {
            return returnGenericType(method);
        }
        Type genericReturnType = method.getGenericReturnType();
        if (genericReturnType instanceof TypeVariable) {
            String name = ((TypeVariable) genericReturnType).getName();
            Type genericSuperclass = cls.getGenericSuperclass();
            Class<? super Object> superclass = cls.getSuperclass();
            while (superclass != null && superclass != declaringClass) {
                genericSuperclass = superclass.getGenericSuperclass();
                superclass = superclass.getSuperclass();
            }
            if (superclass == null) {
                return returnGenericType(method);
            }
            if (genericSuperclass instanceof ParameterizedType) {
                TypeVariable<Class<? super Object>>[] typeParameters = superclass.getTypeParameters();
                int i11 = 0;
                while (true) {
                    if (i11 >= typeParameters.length) {
                        i11 = -1;
                        break;
                    }
                    if (typeParameters[i11].getName().equals(name)) {
                        break;
                    }
                    i11++;
                }
                if (i11 < 0) {
                    return returnGenericType(method);
                }
                Type type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[i11];
                return type instanceof Class ? (Class) type : returnGenericType(method);
            }
        }
        return returnGenericType(method);
    }

    private Class getWithProperty(Class cls) {
        String strTrim = new String(this.expr, 0, this.cursor - 1).trim();
        int i11 = this.cursor;
        int i12 = i11 + 1;
        int iE = m.e(this.expr, i11, this.end, '{', this.pCtx);
        ParserContext parserContext = this.pCtx;
        char[] cArr = this.expr;
        this.cursor = iE + 1;
        new WithAccessor(parserContext, strTrim, cArr, i12, iE - i12, cls);
        return cls;
    }

    private void recordParametricReturnedType(Type type) {
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            this.pCtx.setLastTypeParameters(parameterizedType.getActualTypeArguments());
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            TypeVariable[] typeParameters = type2Class(parameterizedType.getRawType()).getTypeParameters();
            if (actualTypeArguments.length > 0 && this.paramTypes == null) {
                this.paramTypes = new HashMap();
            }
            for (int i11 = 0; i11 < actualTypeArguments.length; i11++) {
                this.paramTypes.put(typeParameters[i11].toString(), actualTypeArguments[i11]);
            }
        }
    }

    private void recordTypeParmsForProperty(String str) {
        if (this.pCtx.isStrictTypeEnforcement()) {
            ParserContext parserContext = this.pCtx;
            parserContext.setLastTypeParameters(parserContext.getTypeParametersAsArray(str));
        }
    }

    private Class<?> returnGenericType(Method method) {
        Type genericReturnType = method.getGenericReturnType();
        recordParametricReturnedType(genericReturnType);
        String string = genericReturnType.toString();
        if (genericReturnType instanceof ParameterizedType) {
            this.pCtx.setLastTypeParameters(((ParameterizedType) genericReturnType).getActualTypeArguments());
        }
        Map<String, Type> map = this.paramTypes;
        return (map == null || !map.containsKey(string)) ? method.getReturnType() : type2Class(this.paramTypes.get(string));
    }

    private static Class type2Class(Type type) {
        if (!(type instanceof Class)) {
            type = ((ParameterizedType) type).getRawType();
        }
        return (Class) type;
    }

    public Class analyze() {
        this.cursor = this.start;
        this.resolvedExternally = true;
        if (this.ctx == null) {
            this.ctx = Object.class;
            this.first = true;
        }
        while (this.cursor < this.end) {
            this.classLiteral = false;
            int iNextSubToken = nextSubToken();
            if (iNextSubToken == 0) {
                this.ctx = getBeanProperty(this.ctx, capture());
            } else if (iNextSubToken == 1) {
                this.ctx = getMethod(this.ctx, capture());
            } else if (iNextSubToken == 2) {
                this.ctx = getCollectionProperty(this.ctx, capture());
            } else if (iNextSubToken == 3) {
                this.ctx = getWithProperty(this.ctx);
            }
            if (this.cursor < this.length && !this.first) {
                this.deepProperty = true;
            }
            this.first = false;
        }
        return this.ctx;
    }

    public Class getCtx() {
        return this.ctx;
    }

    public List<String> getInputs() {
        return this.inputs;
    }

    public boolean isClassLiteral() {
        return this.classLiteral;
    }

    public boolean isDeepProperty() {
        return this.deepProperty;
    }

    public boolean isFqcn() {
        return this.fqcn;
    }

    public boolean isInput() {
        return this.resolvedExternally && !this.methodCall;
    }

    public boolean isMethodCall() {
        return this.methodCall;
    }

    public boolean isResolvedExternally() {
        return this.resolvedExternally;
    }

    public void setCtx(Class cls) {
        this.ctx = cls;
    }

    public void setInputs(List<String> list) {
        this.inputs = list;
    }
}
