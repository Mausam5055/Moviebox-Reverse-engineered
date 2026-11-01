package com.google.common.reflect;

import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.common.base.Predicates;
import com.google.common.base.j;
import com.google.common.base.m;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.g3;
import com.google.common.collect.r4;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
abstract class Types {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.google.common.base.g f30942a = com.google.common.base.g.h(", ").j("null");

    private enum ClassOwnership {
        OWNED_BY_ENCLOSING_CLASS { // from class: com.google.common.reflect.Types.ClassOwnership.1
            @Override // com.google.common.reflect.Types.ClassOwnership
            Class<?> getOwnerType(Class<?> cls) {
                return cls.getEnclosingClass();
            }
        },
        LOCAL_CLASS_HAS_NO_OWNER { // from class: com.google.common.reflect.Types.ClassOwnership.2
            @Override // com.google.common.reflect.Types.ClassOwnership
            Class<?> getOwnerType(Class<?> cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        };

        static final ClassOwnership JVM_BEHAVIOR = detectJvmBehavior();

        class a {
            a() {
            }
        }

        class b extends a {
            b() {
            }
        }

        /* synthetic */ ClassOwnership(a aVar) {
            this();
        }

        private static ClassOwnership detectJvmBehavior() {
            new b();
            ParameterizedType parameterizedType = (ParameterizedType) b.class.getGenericSuperclass();
            Objects.requireNonNull(parameterizedType);
            ParameterizedType parameterizedType2 = parameterizedType;
            for (ClassOwnership classOwnership : values()) {
                if (classOwnership.getOwnerType(a.class) == parameterizedType2.getOwnerType()) {
                    return classOwnership;
                }
            }
            throw new AssertionError();
        }

        abstract Class<?> getOwnerType(Class<?> cls);
    }

    private static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type componentType;

        GenericArrayTypeImpl(Type type) {
            this.componentType = JavaVersion.CURRENT.usedInGenericType(type);
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return j.a(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return Types.s(this.componentType) + "[]";
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.google.common.reflect.Types$JavaVersion, still in use, count: 1, list:
  (r0v0 com.google.common.reflect.Types$JavaVersion) from 0x0063: SPUT (r0v0 com.google.common.reflect.Types$JavaVersion) com.google.common.reflect.Types.JavaVersion.CURRENT com.google.common.reflect.Types$JavaVersion
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static abstract class JavaVersion {
        JAVA6 { // from class: com.google.common.reflect.Types.JavaVersion.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.Types.JavaVersion
            public GenericArrayType newArrayType(Type type) {
                return new GenericArrayTypeImpl(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type usedInGenericType(Type type) {
                m.o(type);
                if (!(type instanceof Class)) {
                    return type;
                }
                Class cls = (Class) type;
                return cls.isArray() ? new GenericArrayTypeImpl(cls.getComponentType()) : type;
            }
        },
        JAVA7 { // from class: com.google.common.reflect.Types.JavaVersion.2
            @Override // com.google.common.reflect.Types.JavaVersion
            Type newArrayType(Type type) {
                return type instanceof Class ? Types.h((Class) type) : new GenericArrayTypeImpl(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type usedInGenericType(Type type) {
                return (Type) m.o(type);
            }
        },
        JAVA8 { // from class: com.google.common.reflect.Types.JavaVersion.3
            @Override // com.google.common.reflect.Types.JavaVersion
            Type newArrayType(Type type) {
                return JavaVersion.JAVA7.newArrayType(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            String typeName(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", null).invoke(type, null);
                } catch (IllegalAccessException e11) {
                    e = e11;
                    throw new RuntimeException(e);
                } catch (NoSuchMethodException unused) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e12) {
                    e = e12;
                    throw new RuntimeException(e);
                }
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type usedInGenericType(Type type) {
                return JavaVersion.JAVA7.usedInGenericType(type);
            }
        },
        JAVA9 { // from class: com.google.common.reflect.Types.JavaVersion.4
            @Override // com.google.common.reflect.Types.JavaVersion
            boolean jdkTypeDuplicatesOwnerName() {
                return false;
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type newArrayType(Type type) {
                return JavaVersion.JAVA8.newArrayType(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            String typeName(Type type) {
                return JavaVersion.JAVA8.typeName(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            Type usedInGenericType(Type type) {
                return JavaVersion.JAVA8.usedInGenericType(type);
            }
        };

        static final JavaVersion CURRENT;

        class a extends com.google.common.reflect.c {
            a() {
            }
        }

        class b extends com.google.common.reflect.c {
            b() {
            }
        }

        static {
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new a().capture().toString().contains("java.util.Map.java.util.Map")) {
                    CURRENT = javaVersion;
                    return;
                } else {
                    CURRENT = javaVersion;
                    return;
                }
            }
            if (new b().capture() instanceof Class) {
                CURRENT = javaVersion;
            } else {
                CURRENT = javaVersion;
            }
        }

        private JavaVersion(String str, int i11) {
            super(str, i11);
        }

        /* synthetic */ JavaVersion(String str, int i11, a aVar) {
            this(str, i11);
        }

        public static JavaVersion valueOf(String str) {
            return (JavaVersion) Enum.valueOf(JavaVersion.class, str);
        }

        public static JavaVersion[] values() {
            return (JavaVersion[]) $VALUES.clone();
        }

        boolean jdkTypeDuplicatesOwnerName() {
            return true;
        }

        abstract Type newArrayType(Type type);

        String typeName(Type type) {
            return Types.s(type);
        }

        final ImmutableList<Type> usedInGenericType(Type[] typeArr) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (Type type : typeArr) {
                aVarBuilder.a(usedInGenericType(type));
            }
            return aVarBuilder.e();
        }

        abstract Type usedInGenericType(Type type);
    }

    private static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableList<Type> argumentsList;
        private final Type ownerType;
        private final Class<?> rawType;

        ParameterizedTypeImpl(Type type, Class<?> cls, Type[] typeArr) {
            m.o(cls);
            m.d(typeArr.length == cls.getTypeParameters().length);
            Types.f(typeArr, "type parameter");
            this.ownerType = type;
            this.rawType = cls;
            this.argumentsList = JavaVersion.CURRENT.usedInGenericType(typeArr);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            return getRawType().equals(parameterizedType.getRawType()) && j.a(getOwnerType(), parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return Types.r(this.argumentsList);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.ownerType;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.rawType;
        }

        public int hashCode() {
            Type type = this.ownerType;
            return ((type == null ? 0 : type.hashCode()) ^ this.argumentsList.hashCode()) ^ this.rawType.hashCode();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            if (this.ownerType != null) {
                JavaVersion javaVersion = JavaVersion.CURRENT;
                if (javaVersion.jdkTypeDuplicatesOwnerName()) {
                    sb2.append(javaVersion.typeName(this.ownerType));
                    sb2.append('.');
                }
            }
            sb2.append(this.rawType.getName());
            sb2.append('<');
            com.google.common.base.g gVar = Types.f30942a;
            ImmutableList<Type> immutableList = this.argumentsList;
            final JavaVersion javaVersion2 = JavaVersion.CURRENT;
            Objects.requireNonNull(javaVersion2);
            sb2.append(gVar.d(g3.s(immutableList, new com.google.common.base.f() { // from class: com.google.common.reflect.h
                @Override // com.google.common.base.f
                public final Object apply(Object obj) {
                    return javaVersion2.typeName((Type) obj);
                }
            })));
            sb2.append('>');
            return sb2.toString();
        }
    }

    static final class WildcardTypeImpl implements WildcardType, Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableList<Type> lowerBounds;
        private final ImmutableList<Type> upperBounds;

        WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            Types.f(typeArr, "lower bound for wildcard");
            Types.f(typeArr2, "upper bound for wildcard");
            JavaVersion javaVersion = JavaVersion.CURRENT;
            this.lowerBounds = javaVersion.usedInGenericType(typeArr);
            this.upperBounds = javaVersion.usedInGenericType(typeArr2);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) obj;
            return this.lowerBounds.equals(Arrays.asList(wildcardType.getLowerBounds())) && this.upperBounds.equals(Arrays.asList(wildcardType.getUpperBounds()));
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return Types.r(this.lowerBounds);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return Types.r(this.upperBounds);
        }

        public int hashCode() {
            return this.lowerBounds.hashCode() ^ this.upperBounds.hashCode();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(UrlUtils.QUESTION_MARK);
            r4 it = this.lowerBounds.iterator();
            while (it.hasNext()) {
                Type type = (Type) it.next();
                sb2.append(" super ");
                sb2.append(JavaVersion.CURRENT.typeName(type));
            }
            for (Type type2 : Types.g(this.upperBounds)) {
                sb2.append(" extends ");
                sb2.append(JavaVersion.CURRENT.typeName(type2));
            }
            return sb2.toString();
        }
    }

    class a extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AtomicReference f30943b;

        a(AtomicReference atomicReference) {
            this.f30943b = atomicReference;
        }

        @Override // com.google.common.reflect.g
        void b(Class cls) {
            this.f30943b.set(cls.getComponentType());
        }

        @Override // com.google.common.reflect.g
        void c(GenericArrayType genericArrayType) {
            this.f30943b.set(genericArrayType.getGenericComponentType());
        }

        @Override // com.google.common.reflect.g
        void e(TypeVariable typeVariable) {
            this.f30943b.set(Types.p(typeVariable.getBounds()));
        }

        @Override // com.google.common.reflect.g
        void f(WildcardType wildcardType) {
            this.f30943b.set(Types.p(wildcardType.getUpperBounds()));
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final boolean f30944a = !b.class.getTypeParameters()[0].equals(Types.k(b.class, "X", new Type[0]));
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final GenericDeclaration f30945a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f30946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ImmutableList f30947c;

        c(GenericDeclaration genericDeclaration, String str, Type[] typeArr) {
            Types.f(typeArr, "bound for type variable");
            this.f30945a = (GenericDeclaration) m.o(genericDeclaration);
            this.f30946b = (String) m.o(str);
            this.f30947c = ImmutableList.copyOf(typeArr);
        }

        public GenericDeclaration a() {
            return this.f30945a;
        }

        public String b() {
            return this.f30946b;
        }

        public boolean equals(Object obj) {
            if (!b.f30944a) {
                if (!(obj instanceof TypeVariable)) {
                    return false;
                }
                TypeVariable typeVariable = (TypeVariable) obj;
                return this.f30946b.equals(typeVariable.getName()) && this.f30945a.equals(typeVariable.getGenericDeclaration());
            }
            if (obj == null || !Proxy.isProxyClass(obj.getClass()) || !(Proxy.getInvocationHandler(obj) instanceof d)) {
                return false;
            }
            c cVar = ((d) Proxy.getInvocationHandler(obj)).f30949a;
            return this.f30946b.equals(cVar.b()) && this.f30945a.equals(cVar.a()) && this.f30947c.equals(cVar.f30947c);
        }

        public int hashCode() {
            return this.f30945a.hashCode() ^ this.f30946b.hashCode();
        }

        public String toString() {
            return this.f30946b;
        }
    }

    private static final class d implements InvocationHandler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final ImmutableMap f30948b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f30949a;

        static {
            ImmutableMap.b bVarBuilder = ImmutableMap.builder();
            for (Method method : c.class.getMethods()) {
                if (method.getDeclaringClass().equals(c.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    bVarBuilder.h(method.getName(), method);
                }
            }
            f30948b = bVarBuilder.c();
        }

        d(c cVar) {
            this.f30949a = cVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = (Method) f30948b.get(name);
            if (method2 == null) {
                throw new UnsupportedOperationException(name);
            }
            try {
                return method2.invoke(this.f30949a, objArr);
            } catch (InvocationTargetException e11) {
                throw e11.getCause();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(Type[] typeArr, String str) {
        for (Type type : typeArr) {
            if (type instanceof Class) {
                Class cls = (Class) type;
                m.k(!cls.isPrimitive(), "Primitive type '%s' used as %s", cls, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterable g(Iterable iterable) {
        return g3.e(iterable, Predicates.i(Predicates.f(Object.class)));
    }

    static Class h(Class cls) {
        return Array.newInstance((Class<?>) cls, 0).getClass();
    }

    static Type i(Type type) {
        m.o(type);
        AtomicReference atomicReference = new AtomicReference();
        new a(atomicReference).a(type);
        return (Type) atomicReference.get();
    }

    static Type j(Type type) {
        if (!(type instanceof WildcardType)) {
            return JavaVersion.CURRENT.newArrayType(type);
        }
        WildcardType wildcardType = (WildcardType) type;
        Type[] lowerBounds = wildcardType.getLowerBounds();
        m.e(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
        if (lowerBounds.length == 1) {
            return q(j(lowerBounds[0]));
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        m.e(upperBounds.length == 1, "Wildcard should have only one upper bound.");
        return o(j(upperBounds[0]));
    }

    static TypeVariable k(GenericDeclaration genericDeclaration, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return n(genericDeclaration, str, typeArr);
    }

    static ParameterizedType l(Class cls, Type... typeArr) {
        return new ParameterizedTypeImpl(ClassOwnership.JVM_BEHAVIOR.getOwnerType(cls), cls, typeArr);
    }

    static ParameterizedType m(Type type, Class cls, Type... typeArr) {
        if (type == null) {
            return l(cls, typeArr);
        }
        m.o(typeArr);
        m.j(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
        return new ParameterizedTypeImpl(type, cls, typeArr);
    }

    private static TypeVariable n(GenericDeclaration genericDeclaration, String str, Type[] typeArr) {
        return (TypeVariable) com.google.common.reflect.b.a(TypeVariable.class, new d(new c(genericDeclaration, str, typeArr)));
    }

    static WildcardType o(Type type) {
        return new WildcardTypeImpl(new Type[0], new Type[]{type});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Type p(Type[] typeArr) {
        for (Type type : typeArr) {
            Type typeI = i(type);
            if (typeI != null) {
                if (typeI instanceof Class) {
                    Class cls = (Class) typeI;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return o(typeI);
            }
        }
        return null;
    }

    static WildcardType q(Type type) {
        return new WildcardTypeImpl(new Type[]{type}, new Type[]{Object.class});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Type[] r(Collection collection) {
        return (Type[]) collection.toArray(new Type[0]);
    }

    static String s(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
