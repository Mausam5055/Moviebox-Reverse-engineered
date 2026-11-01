package retrofit2;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Unit;
import okhttp3.ResponseBody;
import okio.Buffer;

/* JADX INFO: loaded from: classes7.dex */
abstract class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Type[] f74491a = new Type[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f74492b = true;

    private static final class a implements GenericArrayType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f74493a;

        a(Type type) {
            this.f74493a = type;
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && o0.d(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f74493a;
        }

        public int hashCode() {
            return this.f74493a.hashCode();
        }

        public String toString() {
            return o0.u(this.f74493a) + "[]";
        }
    }

    static final class b implements ParameterizedType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f74494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Type f74495b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Type[] f74496c;

        b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() == null)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                Objects.requireNonNull(type3, "typeArgument == null");
                o0.b(type3);
            }
            this.f74494a = type;
            this.f74495b = type2;
            this.f74496c = (Type[]) typeArr.clone();
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && o0.d(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f74496c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f74494a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f74495b;
        }

        public int hashCode() {
            int iHashCode = Arrays.hashCode(this.f74496c) ^ this.f74495b.hashCode();
            Type type = this.f74494a;
            return iHashCode ^ (type != null ? type.hashCode() : 0);
        }

        public String toString() {
            Type[] typeArr = this.f74496c;
            if (typeArr.length == 0) {
                return o0.u(this.f74495b);
            }
            StringBuilder sb2 = new StringBuilder((typeArr.length + 1) * 30);
            sb2.append(o0.u(this.f74495b));
            sb2.append("<");
            sb2.append(o0.u(this.f74496c[0]));
            for (int i11 = 1; i11 < this.f74496c.length; i11++) {
                sb2.append(", ");
                sb2.append(o0.u(this.f74496c[i11]));
            }
            sb2.append(">");
            return sb2.toString();
        }
    }

    private static final class c implements WildcardType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f74497a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Type f74498b;

        c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr2.length != 1) {
                typeArr[0].getClass();
                o0.b(typeArr[0]);
                this.f74498b = null;
                this.f74497a = typeArr[0];
                return;
            }
            typeArr2[0].getClass();
            o0.b(typeArr2[0]);
            if (typeArr[0] != Object.class) {
                throw new IllegalArgumentException();
            }
            this.f74498b = typeArr2[0];
            this.f74497a = Object.class;
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && o0.d(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f74498b;
            return type != null ? new Type[]{type} : o0.f74491a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f74497a};
        }

        public int hashCode() {
            Type type = this.f74498b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f74497a.hashCode() + 31);
        }

        public String toString() {
            if (this.f74498b != null) {
                return "? super " + o0.u(this.f74498b);
            }
            if (this.f74497a == Object.class) {
                return UrlUtils.QUESTION_MARK;
            }
            return "? extends " + o0.u(this.f74497a);
        }
    }

    static ResponseBody a(ResponseBody responseBody) throws IOException {
        Buffer buffer = new Buffer();
        responseBody.source().readAll(buffer);
        return ResponseBody.create(responseBody.contentType(), responseBody.contentLength(), buffer);
    }

    static void b(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    private static Class c(TypeVariable typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    static boolean d(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return d(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    static Type e(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i11 = 0; i11 < length; i11++) {
                Class<?> cls3 = interfaces[i11];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i11];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return e(cls.getGenericInterfaces()[i11], interfaces[i11], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return e(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    static Type f(int i11, ParameterizedType parameterizedType) {
        Type type = parameterizedType.getActualTypeArguments()[i11];
        return type instanceof WildcardType ? ((WildcardType) type).getLowerBounds()[0] : type;
    }

    static Type g(int i11, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i11 >= 0 && i11 < actualTypeArguments.length) {
            Type type = actualTypeArguments[i11];
            return type instanceof WildcardType ? ((WildcardType) type).getUpperBounds()[0] : type;
        }
        throw new IllegalArgumentException("Index " + i11 + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
    }

    static Class h(Type type) {
        Objects.requireNonNull(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) h(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return h(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
    }

    static Type i(Type type, Class cls, Class cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return r(type, cls, e(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    static boolean j(Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (j(type2)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            return j(((GenericArrayType) type).getGenericComponentType());
        }
        if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
            return true;
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    private static int k(Object[] objArr, Object obj) {
        for (int i11 = 0; i11 < objArr.length; i11++) {
            if (obj.equals(objArr[i11])) {
                return i11;
            }
        }
        throw new NoSuchElementException();
    }

    static boolean l(Annotation[] annotationArr, Class cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    static boolean m(Type type) {
        return f74492b && type == Unit.class;
    }

    static RuntimeException n(Method method, String str, Object... objArr) {
        return o(method, null, str, objArr);
    }

    static RuntimeException o(Method method, Throwable th2, String str, Object... objArr) {
        return new IllegalArgumentException(String.format(str, objArr) + "\n    for method " + method.getDeclaringClass().getSimpleName() + "." + method.getName(), th2);
    }

    static RuntimeException p(Method method, int i11, String str, Object... objArr) {
        return n(method, str + " (" + b0.f74393b.a(method, i11) + ")", objArr);
    }

    static RuntimeException q(Method method, Throwable th2, int i11, String str, Object... objArr) {
        return o(method, th2, str + " (" + b0.f74393b.a(method, i11) + ")", objArr);
    }

    static Type r(Type type, Class cls, Type type2) {
        Type type3;
        WildcardType wildcardType;
        Type type4 = type2;
        while (type4 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type4;
            Type typeS = s(type, cls, typeVariable);
            if (typeS == typeVariable) {
                return typeS;
            }
            type4 = typeS;
        }
        if (type4 instanceof Class) {
            Class cls2 = (Class) type4;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type typeR = r(type, cls, componentType);
                return componentType == typeR ? cls2 : new a(typeR);
            }
        }
        if (type4 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type4;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type typeR2 = r(type, cls, genericComponentType);
            return genericComponentType == typeR2 ? genericArrayType : new a(typeR2);
        }
        if (type4 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type4;
            Type ownerType = parameterizedType.getOwnerType();
            Type typeR3 = r(type, cls, ownerType);
            boolean z10 = typeR3 != ownerType;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i11 = 0; i11 < length; i11++) {
                Type typeR4 = r(type, cls, actualTypeArguments[i11]);
                if (typeR4 != actualTypeArguments[i11]) {
                    if (!z10) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z10 = true;
                    }
                    actualTypeArguments[i11] = typeR4;
                }
            }
            return z10 ? new b(typeR3, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
        }
        if (type4 instanceof WildcardType) {
            wildcardType = (WildcardType) type4;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (lowerBounds.length == 1) {
                Type typeR5 = r(type, cls, lowerBounds[0]);
                if (typeR5 != lowerBounds[0]) {
                    type3 = type4;
                    type3 = wildcardType;
                    return new c(new Type[]{Object.class}, new Type[]{typeR5});
                }
            } else if (upperBounds.length == 1) {
                type3 = type4;
                type3 = wildcardType;
                Type typeR6 = r(type, cls, upperBounds[0]);
                type3 = wildcardType;
                if (typeR6 != upperBounds[0]) {
                    return new c(new Type[]{typeR6}, f74491a);
                }
            }
        }
        type3 = type4;
        type3 = wildcardType;
        type3 = type4;
        type3 = wildcardType;
        type3 = type4;
        return type3;
    }

    private static Type s(Type type, Class cls, TypeVariable typeVariable) {
        Class clsC = c(typeVariable);
        if (clsC == null) {
            return typeVariable;
        }
        Type typeE = e(type, cls, clsC);
        if (!(typeE instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) typeE).getActualTypeArguments()[k(clsC.getTypeParameters(), typeVariable)];
    }

    static void t(Throwable th2) {
        if (th2 instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th2);
        }
        if (th2 instanceof ThreadDeath) {
            throw ((ThreadDeath) th2);
        }
        if (th2 instanceof LinkageError) {
            throw ((LinkageError) th2);
        }
    }

    static String u(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
