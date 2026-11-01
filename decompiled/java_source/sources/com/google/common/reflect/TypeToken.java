package com.google.common.reflect;

import com.google.common.base.m;
import com.google.common.base.n;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.common.collect.j2;
import com.google.common.collect.r4;
import com.google.common.collect.s2;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeToken<T> extends com.google.common.reflect.c implements Serializable {
    private static final long serialVersionUID = 3637540370352322684L;
    private transient com.google.common.reflect.e covariantTypeResolver;
    private transient com.google.common.reflect.e invariantTypeResolver;
    private final Type runtimeType;

    private final class ClassSet extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private transient ImmutableSet f30928a;

        private ClassSet() {
            super();
        }

        /* synthetic */ ClassSet(TypeToken typeToken, a aVar) {
            this();
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().classes();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.k2, com.google.common.collect.q2
        /* JADX INFO: renamed from: delegate */
        public Set<TypeToken<? super T>> l() {
            ImmutableSet immutableSet = this.f30928a;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet immutableSetG = j2.e(TypeCollector.f30931a.a().d(TypeToken.this)).c(TypeFilter.IGNORE_TYPE_VARIABLE_OR_WILDCARD).g();
            this.f30928a = immutableSetG;
            return immutableSetG;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) TypeCollector.f30932b.a().c(TypeToken.this.getRawTypes()));
        }
    }

    private final class InterfaceSet extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final transient TypeSet f30929a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private transient ImmutableSet f30930b;

        InterfaceSet(TypeToken<T>.TypeSet typeSet) {
            super();
            this.f30929a = typeSet;
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().interfaces();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.k2, com.google.common.collect.q2
        /* JADX INFO: renamed from: delegate */
        public Set<TypeToken<? super T>> l() {
            ImmutableSet immutableSet = this.f30930b;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet immutableSetG = j2.e(this.f30929a).c(TypeFilter.INTERFACE_ONLY).g();
            this.f30930b = immutableSetG;
            return immutableSetG;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return j2.e(TypeCollector.f30932b.c(TypeToken.this.getRawTypes())).c(new n() { // from class: com.google.common.reflect.f
                @Override // com.google.common.base.n
                public final boolean apply(Object obj) {
                    return ((Class) obj).isInterface();
                }
            }).g();
        }
    }

    private static final class SimpleTypeToken<T> extends TypeToken<T> {
        private static final long serialVersionUID = 0;

        SimpleTypeToken(Type type) {
            super(type, null);
        }
    }

    private static abstract class TypeCollector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final TypeCollector f30931a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final TypeCollector f30932b = new b();

        class a extends TypeCollector {
            a() {
                super(null);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public Iterable e(TypeToken typeToken) {
                return typeToken.getGenericInterfaces();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public Class f(TypeToken typeToken) {
                return typeToken.getRawType();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public TypeToken g(TypeToken typeToken) {
                return typeToken.getGenericSuperclass();
            }
        }

        class b extends TypeCollector {
            b() {
                super(null);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public Iterable e(Class cls) {
                return Arrays.asList(cls.getInterfaces());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public Class f(Class cls) {
                return cls;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public Class g(Class cls) {
                return cls.getSuperclass();
            }
        }

        class c extends d {
            c(TypeCollector typeCollector) {
                super(typeCollector);
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            ImmutableList c(Iterable iterable) {
                ImmutableList.a aVarBuilder = ImmutableList.builder();
                for (T t11 : iterable) {
                    if (!f(t11).isInterface()) {
                        aVarBuilder.a(t11);
                    }
                }
                return super.c(aVarBuilder.e());
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            Iterable e(Object obj) {
                return ImmutableSet.of();
            }
        }

        private static class d extends TypeCollector {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final TypeCollector f30934c;

            d(TypeCollector typeCollector) {
                super(null);
                this.f30934c = typeCollector;
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            Class f(Object obj) {
                return this.f30934c.f(obj);
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            Object g(Object obj) {
                return this.f30934c.g(obj);
            }
        }

        private TypeCollector() {
        }

        /* synthetic */ TypeCollector(a aVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private int b(Object obj, Map map) {
            Integer num = (Integer) map.get(obj);
            if (num != null) {
                return num.intValue();
            }
            boolean zIsInterface = f(obj).isInterface();
            Iterator<T> it = e(obj).iterator();
            int iMax = zIsInterface;
            while (it.hasNext()) {
                iMax = Math.max(iMax, b(it.next(), map));
            }
            Object objG = g(obj);
            int iMax2 = iMax;
            if (objG != null) {
                iMax2 = Math.max(iMax, b(objG, map));
            }
            int i11 = iMax2 + 1;
            map.put(obj, Integer.valueOf(i11));
            return i11;
        }

        private static ImmutableList h(final Map map, final Comparator comparator) {
            return new Ordering<Object>() { // from class: com.google.common.reflect.TypeToken.TypeCollector.4
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.common.collect.Ordering, java.util.Comparator
                public int compare(Object obj, Object obj2) {
                    Comparator comparator2 = comparator;
                    Object obj3 = map.get(obj);
                    Objects.requireNonNull(obj3);
                    Object obj4 = map.get(obj2);
                    Objects.requireNonNull(obj4);
                    return comparator2.compare(obj3, obj4);
                }
            }.immutableSortedCopy(map.keySet());
        }

        final TypeCollector a() {
            return new c(this);
        }

        ImmutableList c(Iterable iterable) {
            HashMap mapO = Maps.o();
            Iterator<T> it = iterable.iterator();
            while (it.hasNext()) {
                b(it.next(), mapO);
            }
            return h(mapO, Ordering.natural().reverse());
        }

        final ImmutableList d(Object obj) {
            return c(ImmutableList.of(obj));
        }

        abstract Iterable e(Object obj);

        abstract Class f(Object obj);

        abstract Object g(Object obj);
    }

    private enum TypeFilter implements n {
        IGNORE_TYPE_VARIABLE_OR_WILDCARD { // from class: com.google.common.reflect.TypeToken.TypeFilter.1
            @Override // com.google.common.reflect.TypeToken.TypeFilter, com.google.common.base.n
            public boolean apply(TypeToken<?> typeToken) {
                return ((((TypeToken) typeToken).runtimeType instanceof TypeVariable) || (((TypeToken) typeToken).runtimeType instanceof WildcardType)) ? false : true;
            }
        },
        INTERFACE_ONLY { // from class: com.google.common.reflect.TypeToken.TypeFilter.2
            @Override // com.google.common.reflect.TypeToken.TypeFilter, com.google.common.base.n
            public boolean apply(TypeToken<?> typeToken) {
                return typeToken.getRawType().isInterface();
            }
        };

        /* synthetic */ TypeFilter(a aVar) {
            this();
        }

        @Override // com.google.common.base.n
        public abstract /* synthetic */ boolean apply(Object obj);
    }

    public class TypeSet extends s2 implements Serializable {
        private static final long serialVersionUID = 0;
        private transient ImmutableSet<TypeToken<? super T>> types;

        TypeSet() {
        }

        public TypeToken<T>.TypeSet classes() {
            return new ClassSet(TypeToken.this, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.k2, com.google.common.collect.q2
        /* JADX INFO: renamed from: delegate */
        public Set<TypeToken<? super T>> l() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.types;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet<TypeToken<? super T>> immutableSetG = j2.e(TypeCollector.f30931a.d(TypeToken.this)).c(TypeFilter.IGNORE_TYPE_VARIABLE_OR_WILDCARD).g();
            this.types = immutableSetG;
            return immutableSetG;
        }

        public TypeToken<T>.TypeSet interfaces() {
            return new InterfaceSet(this);
        }

        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) TypeCollector.f30932b.c(TypeToken.this.getRawTypes()));
        }
    }

    class a extends com.google.common.reflect.a.b {
        a(Method method) {
            super(method);
        }

        @Override // com.google.common.reflect.a
        public TypeToken a() {
            return TypeToken.this;
        }

        @Override // com.google.common.reflect.a
        public String toString() {
            return a() + "." + super.toString();
        }
    }

    class b extends com.google.common.reflect.a.C0415a {
        b(Constructor constructor) {
            super(constructor);
        }

        @Override // com.google.common.reflect.a
        public TypeToken a() {
            return TypeToken.this;
        }

        @Override // com.google.common.reflect.a.C0415a
        Type[] c() {
            return TypeToken.this.getInvariantTypeResolver().l(super.c());
        }

        @Override // com.google.common.reflect.a
        public String toString() {
            return a() + "(" + com.google.common.base.g.h(", ").f(c()) + ")";
        }
    }

    class c extends g {
        c() {
        }

        @Override // com.google.common.reflect.g
        void c(GenericArrayType genericArrayType) {
            a(genericArrayType.getGenericComponentType());
        }

        @Override // com.google.common.reflect.g
        void d(ParameterizedType parameterizedType) {
            a(parameterizedType.getActualTypeArguments());
            a(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.g
        void e(TypeVariable typeVariable) {
            throw new IllegalArgumentException(TypeToken.this.runtimeType + "contains a type variable and is not safe for the operation");
        }

        @Override // com.google.common.reflect.g
        void f(WildcardType wildcardType) {
            a(wildcardType.getLowerBounds());
            a(wildcardType.getUpperBounds());
        }
    }

    class d extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImmutableSet.a f30938b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ TypeToken f30939c;

        d(TypeToken typeToken, ImmutableSet.a aVar) {
            this.f30938b = aVar;
            this.f30939c = typeToken;
        }

        @Override // com.google.common.reflect.g
        void b(Class cls) {
            this.f30938b.a(cls);
        }

        @Override // com.google.common.reflect.g
        void c(GenericArrayType genericArrayType) {
            this.f30938b.a(Types.h(TypeToken.of(genericArrayType.getGenericComponentType()).getRawType()));
        }

        @Override // com.google.common.reflect.g
        void d(ParameterizedType parameterizedType) {
            this.f30938b.a((Class) parameterizedType.getRawType());
        }

        @Override // com.google.common.reflect.g
        void e(TypeVariable typeVariable) {
            a(typeVariable.getBounds());
        }

        @Override // com.google.common.reflect.g
        void f(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type[] f30940a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f30941b;

        e(Type[] typeArr, boolean z10) {
            this.f30940a = typeArr;
            this.f30941b = z10;
        }

        boolean a(Type type) {
            for (Type type2 : this.f30940a) {
                boolean zIsSubtypeOf = TypeToken.of(type2).isSubtypeOf(type);
                boolean z10 = this.f30941b;
                if (zIsSubtypeOf == z10) {
                    return z10;
                }
            }
            return !this.f30941b;
        }

        boolean b(Type type) {
            TypeToken<?> typeTokenOf = TypeToken.of(type);
            for (Type type2 : this.f30940a) {
                boolean zIsSubtypeOf = typeTokenOf.isSubtypeOf(type2);
                boolean z10 = this.f30941b;
                if (zIsSubtypeOf == z10) {
                    return z10;
                }
            }
            return !this.f30941b;
        }
    }

    protected TypeToken() {
        Type typeCapture = capture();
        this.runtimeType = typeCapture;
        m.x(!(typeCapture instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", typeCapture);
    }

    protected TypeToken(Class<?> cls) {
        Type typeCapture = super.capture();
        if (typeCapture instanceof Class) {
            this.runtimeType = typeCapture;
        } else {
            this.runtimeType = com.google.common.reflect.e.d(cls).j(typeCapture);
        }
    }

    private TypeToken(Type type) {
        this.runtimeType = (Type) m.o(type);
    }

    /* synthetic */ TypeToken(Type type, a aVar) {
        this(type);
    }

    private static e any(Type[] typeArr) {
        return new e(typeArr, true);
    }

    private TypeToken<? super T> boundAsSuperclass(Type type) {
        TypeToken<? super T> typeToken = (TypeToken<? super T>) of(type);
        if (typeToken.getRawType().isInterface()) {
            return null;
        }
        return typeToken;
    }

    private ImmutableList<TypeToken<? super T>> boundsAsInterfaces(Type[] typeArr) {
        ImmutableCollection.b bVarBuilder = ImmutableList.builder();
        for (Type type : typeArr) {
            TypeToken<?> typeTokenOf = of(type);
            if (typeTokenOf.getRawType().isInterface()) {
                bVarBuilder.a(typeTokenOf);
            }
        }
        return bVarBuilder.e();
    }

    private static Type canonicalizeTypeArg(TypeVariable<?> typeVariable, Type type) {
        return type instanceof WildcardType ? canonicalizeWildcardType(typeVariable, (WildcardType) type) : canonicalizeWildcardsInType(type);
    }

    private static WildcardType canonicalizeWildcardType(TypeVariable<?> typeVariable, WildcardType wildcardType) {
        Type[] bounds = typeVariable.getBounds();
        ArrayList arrayList = new ArrayList();
        for (Type type : wildcardType.getUpperBounds()) {
            if (!any(bounds).a(type)) {
                arrayList.add(canonicalizeWildcardsInType(type));
            }
        }
        return new Types.WildcardTypeImpl(wildcardType.getLowerBounds(), (Type[]) arrayList.toArray(new Type[0]));
    }

    private static ParameterizedType canonicalizeWildcardsInParameterizedType(ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i11 = 0; i11 < actualTypeArguments.length; i11++) {
            actualTypeArguments[i11] = canonicalizeTypeArg(typeParameters[i11], actualTypeArguments[i11]);
        }
        return Types.m(parameterizedType.getOwnerType(), cls, actualTypeArguments);
    }

    private static Type canonicalizeWildcardsInType(Type type) {
        if (type instanceof ParameterizedType) {
            return canonicalizeWildcardsInParameterizedType((ParameterizedType) type);
        }
        return type instanceof GenericArrayType ? Types.j(canonicalizeWildcardsInType(((GenericArrayType) type).getGenericComponentType())) : type;
    }

    private static e every(Type[] typeArr) {
        return new e(typeArr, false);
    }

    private TypeToken<? extends T> getArraySubtype(Class<?> cls) {
        Class<?> componentType = cls.getComponentType();
        if (componentType != null) {
            TypeToken<?> componentType2 = getComponentType();
            Objects.requireNonNull(componentType2);
            return (TypeToken<? extends T>) of(newArrayClassOrGenericArrayType(componentType2.getSubtype(componentType).runtimeType));
        }
        throw new IllegalArgumentException(cls + " does not appear to be a subtype of " + this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TypeToken<? super T> getArraySupertype(Class<? super T> cls) {
        TypeToken<?> componentType = getComponentType();
        if (componentType != 0) {
            Class<?> componentType2 = cls.getComponentType();
            Objects.requireNonNull(componentType2);
            return (TypeToken<? super T>) of(newArrayClassOrGenericArrayType(componentType.getSupertype(componentType2).runtimeType));
        }
        throw new IllegalArgumentException(cls + " isn't a super type of " + this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.common.reflect.e getCovariantTypeResolver() {
        com.google.common.reflect.e eVar = this.covariantTypeResolver;
        if (eVar != null) {
            return eVar;
        }
        com.google.common.reflect.e eVarD = com.google.common.reflect.e.d(this.runtimeType);
        this.covariantTypeResolver = eVarD;
        return eVarD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.common.reflect.e getInvariantTypeResolver() {
        com.google.common.reflect.e eVar = this.invariantTypeResolver;
        if (eVar != null) {
            return eVar;
        }
        com.google.common.reflect.e eVarF = com.google.common.reflect.e.f(this.runtimeType);
        this.invariantTypeResolver = eVarF;
        return eVarF;
    }

    private Type getOwnerTypeIfPresent() {
        Type type = this.runtimeType;
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getOwnerType();
        }
        if (type instanceof Class) {
            return ((Class) type).getEnclosingClass();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImmutableSet<Class<? super T>> getRawTypes() {
        ImmutableSet.a aVarBuilder = ImmutableSet.builder();
        new d(this, aVarBuilder).a(this.runtimeType);
        return aVarBuilder.e();
    }

    private TypeToken<? extends T> getSubtypeFromLowerBounds(Class<?> cls, Type[] typeArr) {
        if (typeArr.length > 0) {
            return (TypeToken<? extends T>) of(typeArr[0]).getSubtype(cls);
        }
        throw new IllegalArgumentException(cls + " isn't a subclass of " + this);
    }

    private TypeToken<? super T> getSupertypeFromUpperBounds(Class<? super T> cls, Type[] typeArr) {
        for (Type type : typeArr) {
            TypeToken<?> typeTokenOf = of(type);
            if (typeTokenOf.isSubtypeOf(cls)) {
                return (TypeToken<? super T>) typeTokenOf.getSupertype(cls);
            }
        }
        throw new IllegalArgumentException(cls + " isn't a super type of " + this);
    }

    private boolean is(Type type, TypeVariable<?> typeVariable) {
        if (this.runtimeType.equals(type)) {
            return true;
        }
        if (!(type instanceof WildcardType)) {
            return canonicalizeWildcardsInType(this.runtimeType).equals(canonicalizeWildcardsInType(type));
        }
        WildcardType wildcardTypeCanonicalizeWildcardType = canonicalizeWildcardType(typeVariable, (WildcardType) type);
        return every(wildcardTypeCanonicalizeWildcardType.getUpperBounds()).b(this.runtimeType) && every(wildcardTypeCanonicalizeWildcardType.getLowerBounds()).a(this.runtimeType);
    }

    private boolean isOwnedBySubtypeOf(Type type) {
        Iterator<Object> it = getTypes().iterator();
        while (it.hasNext()) {
            Type ownerTypeIfPresent = ((TypeToken) it.next()).getOwnerTypeIfPresent();
            if (ownerTypeIfPresent != null && of(ownerTypeIfPresent).isSubtypeOf(type)) {
                return true;
            }
        }
        return false;
    }

    private boolean isSubtypeOfArrayType(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (!(type instanceof Class)) {
            if (type instanceof GenericArrayType) {
                return of(((GenericArrayType) type).getGenericComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
            }
            return false;
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            return of((Class) cls.getComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
        }
        return false;
    }

    private boolean isSubtypeOfParameterizedType(ParameterizedType parameterizedType) {
        Class<? super Object> rawType = of(parameterizedType).getRawType();
        if (!someRawTypeIsSubclassOf(rawType)) {
            return false;
        }
        TypeVariable<Class<? super Object>>[] typeParameters = rawType.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i11 = 0; i11 < typeParameters.length; i11++) {
            if (!of(getCovariantTypeResolver().j(typeParameters[i11])).is(actualTypeArguments[i11], typeParameters[i11])) {
                return false;
            }
        }
        return Modifier.isStatic(((Class) parameterizedType.getRawType()).getModifiers()) || parameterizedType.getOwnerType() == null || isOwnedBySubtypeOf(parameterizedType.getOwnerType());
    }

    private boolean isSupertypeOfArray(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (type instanceof Class) {
            Class cls = (Class) type;
            return !cls.isArray() ? cls.isAssignableFrom(Object[].class) : of(genericArrayType.getGenericComponentType()).isSubtypeOf(cls.getComponentType());
        }
        if (type instanceof GenericArrayType) {
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(((GenericArrayType) this.runtimeType).getGenericComponentType());
        }
        return false;
    }

    private boolean isWrapper() {
        return com.google.common.primitives.d.b().contains(this.runtimeType);
    }

    private static Type newArrayClassOrGenericArrayType(Type type) {
        return Types.JavaVersion.JAVA7.newArrayType(type);
    }

    public static <T> TypeToken<T> of(Class<T> cls) {
        return new SimpleTypeToken(cls);
    }

    public static TypeToken<?> of(Type type) {
        return new SimpleTypeToken(type);
    }

    private TypeToken<?> resolveSupertype(Type type) {
        TypeToken<?> typeTokenOf = of(getCovariantTypeResolver().j(type));
        typeTokenOf.covariantTypeResolver = this.covariantTypeResolver;
        typeTokenOf.invariantTypeResolver = this.invariantTypeResolver;
        return typeTokenOf;
    }

    private Type resolveTypeArgsForSubclass(Class<?> cls) {
        if ((this.runtimeType instanceof Class) && (cls.getTypeParameters().length == 0 || getRawType().getTypeParameters().length != 0)) {
            return cls;
        }
        TypeToken genericType = toGenericType(cls);
        return new com.google.common.reflect.e().n(genericType.getSupertype(getRawType()).runtimeType, this.runtimeType).j(genericType.runtimeType);
    }

    private boolean someRawTypeIsSubclassOf(Class<?> cls) {
        r4 it = getRawTypes().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom((Class) it.next())) {
                return true;
            }
        }
        return false;
    }

    static <T> TypeToken<? extends T> toGenericType(Class<T> cls) {
        if (cls.isArray()) {
            return (TypeToken<? extends T>) of(Types.j(toGenericType(cls.getComponentType()).runtimeType));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) ? null : toGenericType(cls.getEnclosingClass()).runtimeType;
        return (typeParameters.length > 0 || !(type == null || type == cls.getEnclosingClass())) ? (TypeToken<? extends T>) of(Types.m(type, cls, typeParameters)) : of((Class) cls);
    }

    public final com.google.common.reflect.a constructor(Constructor<?> constructor) {
        m.k(constructor.getDeclaringClass() == getRawType(), "%s not declared by %s", constructor, getRawType());
        return new b(constructor);
    }

    public boolean equals(Object obj) {
        if (obj instanceof TypeToken) {
            return this.runtimeType.equals(((TypeToken) obj).runtimeType);
        }
        return false;
    }

    public final TypeToken<?> getComponentType() {
        Type typeI = Types.i(this.runtimeType);
        if (typeI == null) {
            return null;
        }
        return of(typeI);
    }

    final ImmutableList<TypeToken<? super T>> getGenericInterfaces() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundsAsInterfaces(((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return boundsAsInterfaces(((WildcardType) type).getUpperBounds());
        }
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (Type type2 : getRawType().getGenericInterfaces()) {
            aVarBuilder.a(resolveSupertype(type2));
        }
        return aVarBuilder.e();
    }

    final TypeToken<? super T> getGenericSuperclass() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundAsSuperclass(((TypeVariable) type).getBounds()[0]);
        }
        if (type instanceof WildcardType) {
            return boundAsSuperclass(((WildcardType) type).getUpperBounds()[0]);
        }
        Type genericSuperclass = getRawType().getGenericSuperclass();
        if (genericSuperclass == null) {
            return null;
        }
        return (TypeToken<? super T>) resolveSupertype(genericSuperclass);
    }

    public final Class<? super T> getRawType() {
        return (Class) getRawTypes().iterator().next();
    }

    public final TypeToken<? extends T> getSubtype(Class<?> cls) {
        m.j(!(this.runtimeType instanceof TypeVariable), "Cannot get subtype of type variable <%s>", this);
        Type type = this.runtimeType;
        if (type instanceof WildcardType) {
            return getSubtypeFromLowerBounds(cls, ((WildcardType) type).getLowerBounds());
        }
        if (isArray()) {
            return getArraySubtype(cls);
        }
        m.k(getRawType().isAssignableFrom(cls), "%s isn't a subclass of %s", cls, this);
        TypeToken<? extends T> typeToken = (TypeToken<? extends T>) of(resolveTypeArgsForSubclass(cls));
        m.k(typeToken.isSubtypeOf((TypeToken<?>) this), "%s does not appear to be a subtype of %s", typeToken, this);
        return typeToken;
    }

    public final TypeToken<? super T> getSupertype(Class<? super T> cls) {
        m.k(someRawTypeIsSubclassOf(cls), "%s is not a super class of %s", cls, this);
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return getSupertypeFromUpperBounds(cls, ((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return getSupertypeFromUpperBounds(cls, ((WildcardType) type).getUpperBounds());
        }
        return cls.isArray() ? getArraySupertype(cls) : (TypeToken<? super T>) resolveSupertype(toGenericType(cls).runtimeType);
    }

    public final Type getType() {
        return this.runtimeType;
    }

    public final TypeToken<T>.TypeSet getTypes() {
        return new TypeSet();
    }

    public int hashCode() {
        return this.runtimeType.hashCode();
    }

    public final boolean isArray() {
        return getComponentType() != null;
    }

    public final boolean isPrimitive() {
        Type type = this.runtimeType;
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public final boolean isSubtypeOf(TypeToken<?> typeToken) {
        return isSubtypeOf(typeToken.getType());
    }

    public final boolean isSubtypeOf(Type type) {
        m.o(type);
        if (type instanceof WildcardType) {
            return any(((WildcardType) type).getLowerBounds()).b(this.runtimeType);
        }
        Type type2 = this.runtimeType;
        if (type2 instanceof WildcardType) {
            return any(((WildcardType) type2).getUpperBounds()).a(type);
        }
        if (type2 instanceof TypeVariable) {
            return type2.equals(type) || any(((TypeVariable) this.runtimeType).getBounds()).a(type);
        }
        if (type2 instanceof GenericArrayType) {
            return of(type).isSupertypeOfArray((GenericArrayType) this.runtimeType);
        }
        if (type instanceof Class) {
            return someRawTypeIsSubclassOf((Class) type);
        }
        if (type instanceof ParameterizedType) {
            return isSubtypeOfParameterizedType((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return isSubtypeOfArrayType((GenericArrayType) type);
        }
        return false;
    }

    public final boolean isSupertypeOf(TypeToken<?> typeToken) {
        return typeToken.isSubtypeOf(getType());
    }

    public final boolean isSupertypeOf(Type type) {
        return of(type).isSubtypeOf(getType());
    }

    public final com.google.common.reflect.a method(Method method) {
        m.k(someRawTypeIsSubclassOf(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new a(method);
    }

    final TypeToken<T> rejectTypeVariables() {
        new c().a(this.runtimeType);
        return this;
    }

    public final TypeToken<?> resolveType(Type type) {
        m.o(type);
        return of(getInvariantTypeResolver().j(type));
    }

    public String toString() {
        return Types.s(this.runtimeType);
    }

    public final TypeToken<T> unwrap() {
        return isWrapper() ? of(com.google.common.primitives.d.c((Class) this.runtimeType)) : this;
    }

    public final <X> TypeToken<T> where(com.google.common.reflect.d dVar, TypeToken<X> typeToken) {
        new com.google.common.reflect.e();
        throw null;
    }

    public final <X> TypeToken<T> where(com.google.common.reflect.d dVar, Class<X> cls) {
        return where(dVar, of((Class) cls));
    }

    public final TypeToken<T> wrap() {
        return isPrimitive() ? of(com.google.common.primitives.d.d((Class) this.runtimeType)) : this;
    }

    protected Object writeReplace() {
        return of(new com.google.common.reflect.e().j(this.runtimeType));
    }
}
