package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b f20341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.c f20342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.c f20343c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b.b f20344d = com.bykv.vk.openvk.preload.a.b.b.b.a();

    public static final class a<T> extends r<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.a.b.h<T> f20351a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<String, b> f20352b;

        a(com.bykv.vk.openvk.preload.a.b.h<T> hVar, Map<String, b> map) {
            this.f20351a = hVar;
            this.f20352b = map;
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            T tA = this.f20351a.a();
            try {
                aVar.c();
                while (aVar.e()) {
                    b bVar = this.f20352b.get(aVar.g());
                    if (bVar == null || !bVar.f20355c) {
                        aVar.n();
                    } else {
                        bVar.a(aVar, tA);
                    }
                }
                aVar.d();
                return tA;
            } catch (IllegalAccessException e11) {
                throw new AssertionError(e11);
            } catch (IllegalStateException e12) {
                throw new p(e12);
            }
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t11) throws IOException {
            if (t11 == null) {
                cVar.h();
                return;
            }
            cVar.f();
            try {
                for (b bVar : this.f20352b.values()) {
                    if (bVar.a(t11)) {
                        cVar.a(bVar.f20353a);
                        bVar.a(cVar, t11);
                    }
                }
                cVar.g();
            } catch (IllegalAccessException e11) {
                throw new AssertionError(e11);
            }
        }
    }

    static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f20353a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f20354b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final boolean f20355c;

        protected b(String str, boolean z10, boolean z11) {
            this.f20353a = str;
            this.f20354b = z10;
            this.f20355c = z11;
        }

        abstract void a(com.bykv.vk.openvk.preload.a.d.a aVar, Object obj) throws IllegalAccessException, IOException;

        abstract void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IllegalAccessException, IOException;

        abstract boolean a(Object obj) throws IllegalAccessException, IOException;
    }

    public h(com.bykv.vk.openvk.preload.a.b.b bVar, com.bykv.vk.openvk.preload.a.c cVar, com.bykv.vk.openvk.preload.a.b.c cVar2) {
        this.f20341a = bVar;
        this.f20342b = cVar;
        this.f20343c = cVar2;
    }

    private List<String> a(Field field) {
        com.bykv.vk.openvk.preload.a.a.b bVar = (com.bykv.vk.openvk.preload.a.a.b) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.b.class);
        if (bVar == null) {
            return Collections.singletonList(this.f20342b.a(field));
        }
        String strA = bVar.a();
        String[] strArrB = bVar.b();
        if (strArrB.length == 0) {
            return Collections.singletonList(strA);
        }
        ArrayList arrayList = new ArrayList(strArrB.length + 1);
        arrayList.add(strA);
        for (String str : strArrB) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    private Map<String, b> a(final com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<?> aVar, Class<?> cls) {
        int i11;
        boolean z10;
        int i12;
        Field[] fieldArr;
        com.bykv.vk.openvk.preload.a.c.a<?> aVar2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type typeB = aVar.b();
        com.bykv.vk.openvk.preload.a.c.a<?> aVarA = aVar;
        Class<?> clsA = cls;
        while (clsA != Object.class) {
            Field[] declaredFields = clsA.getDeclaredFields();
            int length = declaredFields.length;
            boolean z11 = false;
            int i13 = 0;
            while (i13 < length) {
                Field field = declaredFields[i13];
                boolean zA = this.a(field, true);
                boolean zA2 = this.a(field, z11);
                if (zA || zA2) {
                    this.f20344d.a(field);
                    Type typeA = com.bykv.vk.openvk.preload.a.b.a.a(aVarA.b(), clsA, field.getGenericType());
                    List<String> listA = this.a(field);
                    int size = listA.size();
                    ?? r11 = z11;
                    b bVar = null;
                    while (r11 < size) {
                        com.bykv.vk.openvk.preload.a.c.a<?> aVar3 = aVarA;
                        String str = listA.get(r11);
                        boolean z12 = r11 != 0 ? z11 : zA;
                        final com.bykv.vk.openvk.preload.a.c.a<?> aVarA2 = com.bykv.vk.openvk.preload.a.c.a.a(typeA);
                        Class<? super Object> clsA2 = aVarA2.a();
                        boolean z13 = (clsA2 instanceof Class) && clsA2.isPrimitive();
                        com.bykv.vk.openvk.preload.a.a.a aVar4 = (com.bykv.vk.openvk.preload.a.a.a) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.a.class);
                        r<?> rVarA = aVar4 != null ? d.a(this.f20341a, dVar, aVarA2, aVar4) : null;
                        boolean z14 = rVarA != null;
                        if (rVarA == null) {
                            rVarA = dVar.a((com.bykv.vk.openvk.preload.a.c.a) aVarA2);
                        }
                        final r<?> rVar = rVarA;
                        ?? r25 = r11;
                        int i14 = size;
                        List<String> list = listA;
                        final Field field2 = field;
                        Field field3 = field;
                        final boolean z15 = z14;
                        int i15 = i13;
                        int i16 = length;
                        Field[] fieldArr2 = declaredFields;
                        final boolean z16 = z13;
                        b bVar2 = (b) linkedHashMap.put(str, new b(str, z12, zA2) { // from class: com.bykv.vk.openvk.preload.a.b.a.h.1
                            @Override // com.bykv.vk.openvk.preload.a.b.a.h.b
                            final void a(com.bykv.vk.openvk.preload.a.d.a aVar5, Object obj) throws IllegalAccessException, IOException {
                                Object objA = rVar.a(aVar5);
                                if (objA == null && z16) {
                                    return;
                                }
                                field2.set(obj, objA);
                            }

                            @Override // com.bykv.vk.openvk.preload.a.b.a.h.b
                            final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IllegalAccessException, IOException {
                                (z15 ? rVar : new l(dVar, rVar, aVarA2.b())).a(cVar, field2.get(obj));
                            }

                            @Override // com.bykv.vk.openvk.preload.a.b.a.h.b
                            public final boolean a(Object obj) throws IllegalAccessException, IOException {
                                return this.f20354b && field2.get(obj) != obj;
                            }
                        });
                        if (bVar == null) {
                            bVar = bVar2;
                        }
                        this = this;
                        aVarA = aVar3;
                        zA = z12;
                        z11 = false;
                        length = i16;
                        declaredFields = fieldArr2;
                        size = i14;
                        listA = list;
                        field = field3;
                        i13 = i15;
                        r11 = (r25 == true ? 1 : 0) + 1;
                    }
                    i11 = i13;
                    z10 = z11;
                    i12 = length;
                    fieldArr = declaredFields;
                    aVar2 = aVarA;
                    if (bVar != null) {
                        throw new IllegalArgumentException(typeB + " declares multiple JSON fields named " + bVar.f20353a);
                    }
                } else {
                    i11 = i13;
                    z10 = z11;
                    i12 = length;
                    fieldArr = declaredFields;
                    aVar2 = aVarA;
                }
                i13 = i11 + 1;
                this = this;
                clsA = clsA;
                aVarA = aVar2;
                z11 = z10;
                length = i12;
                declaredFields = fieldArr;
            }
            Class<?> cls2 = clsA;
            aVarA = com.bykv.vk.openvk.preload.a.c.a.a(com.bykv.vk.openvk.preload.a.b.a.a(aVarA.b(), cls2, cls2.getGenericSuperclass()));
            clsA = aVarA.a();
        }
        return linkedHashMap;
    }

    private boolean a(Field field, boolean z10) {
        com.bykv.vk.openvk.preload.a.b.c cVar = this.f20343c;
        return (cVar.a(field.getType(), z10) || cVar.a(field, z10)) ? false : true;
    }

    @Override // com.bykv.vk.openvk.preload.a.s
    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Class<? super T> clsA = aVar.a();
        if (Object.class.isAssignableFrom(clsA)) {
            return new a(this.f20341a.a(aVar), a(dVar, aVar, clsA));
        }
        return null;
    }
}
