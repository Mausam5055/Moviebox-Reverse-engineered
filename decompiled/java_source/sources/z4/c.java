package z4;

import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.ParameterizedTypeImpl;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class c extends l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f79220c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f79221d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b2 f79222e;

    public c(y4.h hVar, Class cls, com.alibaba.fastjson.util.d dVar) {
        super(cls, dVar);
        Type type = dVar.f18202f;
        if (!(type instanceof ParameterizedType)) {
            this.f79220c = Object.class;
            return;
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type2).getUpperBounds();
            if (upperBounds.length == 1) {
                type2 = upperBounds[0];
            }
        }
        this.f79220c = type2;
    }

    @Override // z4.l
    public int b() {
        return 14;
    }

    @Override // z4.l
    public void d(y4.a aVar, Object obj, Type type, Map map) {
        y4.b bVar = aVar.f78831f;
        int iQ0 = bVar.q0();
        if (iQ0 == 8 || (iQ0 == 4 && bVar.k0().length() == 0)) {
            if (obj == null) {
                map.put(this.f79243a.f18197a, null);
                return;
            } else {
                i(obj, null);
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        y4.g gVarN = aVar.n();
        aVar.z0(gVarN, obj, this.f79243a.f18197a);
        k(aVar, type, arrayList);
        aVar.B0(gVarN);
        if (obj == null) {
            map.put(this.f79243a.f18197a, arrayList);
        } else {
            h(obj, arrayList);
        }
    }

    public final void k(y4.a aVar, Type type, Collection collection) {
        Class cls;
        int i11;
        int i12;
        Type typeB = this.f79220c;
        b2 b2VarP = this.f79222e;
        int i13 = 0;
        if (type instanceof ParameterizedType) {
            if (typeB instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) typeB;
                ParameterizedType parameterizedType = (ParameterizedType) type;
                cls = parameterizedType.getRawType() instanceof Class ? (Class) parameterizedType.getRawType() : null;
                if (cls == null) {
                    i12 = -1;
                    break;
                }
                int length = cls.getTypeParameters().length;
                i12 = 0;
                while (true) {
                    if (i12 >= length) {
                        i12 = -1;
                        break;
                    } else if (cls.getTypeParameters()[i12].getName().equals(typeVariable.getName())) {
                        break;
                    } else {
                        i12++;
                    }
                }
                if (i12 != -1) {
                    typeB = parameterizedType.getActualTypeArguments()[i12];
                    if (!typeB.equals(this.f79220c)) {
                        b2VarP = aVar.m().p(typeB);
                    }
                }
            } else if (typeB instanceof ParameterizedType) {
                ParameterizedType parameterizedType2 = (ParameterizedType) typeB;
                Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                if (actualTypeArguments.length == 1) {
                    Type type2 = actualTypeArguments[0];
                    if (type2 instanceof TypeVariable) {
                        TypeVariable typeVariable2 = (TypeVariable) type2;
                        ParameterizedType parameterizedType3 = (ParameterizedType) type;
                        cls = parameterizedType3.getRawType() instanceof Class ? (Class) parameterizedType3.getRawType() : null;
                        if (cls == null) {
                            i11 = -1;
                            break;
                        }
                        int length2 = cls.getTypeParameters().length;
                        i11 = 0;
                        while (true) {
                            if (i11 >= length2) {
                                i11 = -1;
                                break;
                            } else if (cls.getTypeParameters()[i11].getName().equals(typeVariable2.getName())) {
                                break;
                            } else {
                                i11++;
                            }
                        }
                        if (i11 != -1) {
                            actualTypeArguments[0] = parameterizedType3.getActualTypeArguments()[i11];
                            typeB = com.alibaba.fastjson.g.b(new ParameterizedTypeImpl(actualTypeArguments, parameterizedType2.getOwnerType(), parameterizedType2.getRawType()));
                        }
                    }
                }
            }
        } else if ((typeB instanceof TypeVariable) && (type instanceof Class)) {
            Class cls2 = (Class) type;
            TypeVariable typeVariable3 = (TypeVariable) typeB;
            cls2.getTypeParameters();
            int length3 = cls2.getTypeParameters().length;
            for (int i14 = 0; i14 < length3; i14++) {
                TypeVariable typeVariable4 = cls2.getTypeParameters()[i14];
                if (typeVariable4.getName().equals(typeVariable3.getName())) {
                    Type[] bounds = typeVariable4.getBounds();
                    if (bounds.length != 1) {
                        break;
                    }
                    typeB = bounds[0];
                    break;
                }
            }
        }
        y4.b bVar = aVar.f78831f;
        int iQ0 = bVar.q0();
        if (iQ0 != 14) {
            if (iQ0 == 4 && this.f79243a.f18215s) {
                String strK0 = bVar.k0();
                bVar.Z();
                new y4.a(strK0).d0(collection);
                return;
            } else {
                if (b2VarP == null) {
                    b2VarP = aVar.m().p(typeB);
                    this.f79222e = b2VarP;
                }
                collection.add(b2VarP.c(aVar, typeB, 0));
                aVar.k(collection);
                return;
            }
        }
        if (b2VarP == null) {
            b2VarP = aVar.m().p(typeB);
            this.f79222e = b2VarP;
            this.f79221d = b2VarP.b();
        }
        b2 b2Var = b2VarP;
        bVar.c0(this.f79221d);
        while (true) {
            if (bVar.n(Feature.AllowArbitraryCommas)) {
                while (bVar.q0() == 16) {
                    bVar.Z();
                }
            }
            if (bVar.q0() == 15) {
                bVar.c0(16);
                return;
            }
            collection.add(b2Var.c(aVar, typeB, Integer.valueOf(i13)));
            aVar.k(collection);
            if (bVar.q0() == 16) {
                bVar.c0(this.f79221d);
            }
            i13++;
        }
    }
}
