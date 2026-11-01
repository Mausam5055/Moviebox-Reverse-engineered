package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f166c = com.alibaba.fastjson.util.b.g(o0.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f167d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final String f168e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final String f169f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final String f170g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final String f171h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final String f172i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final String f173j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final String f174k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final com.alibaba.fastjson.util.a f175a = new com.alibaba.fastjson.util.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicLong f176b = new AtomicLong();

    /* JADX INFO: renamed from: a5.a$a, reason: collision with other inner class name */
    static class C0004a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        static int f177h = 6;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        static int f178i = 7;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        static int f179j = 8;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.alibaba.fastjson.util.d[] f180a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f181b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final f1 f182c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f183d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Map f184e = new HashMap();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f185f = 9;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f186g;

        public C0004a(com.alibaba.fastjson.util.d[] dVarArr, f1 f1Var, String str, boolean z10, boolean z11) {
            this.f180a = dVarArr;
            this.f181b = str;
            this.f182c = f1Var;
            this.f183d = z10;
            this.f186g = z11 || f1Var.f199a.isEnum();
        }

        public int f(String str) {
            int length = this.f180a.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (this.f180a[i11].f18197a.equals(str)) {
                    return i11;
                }
            }
            return -1;
        }

        public int g(String str) {
            if (((Integer) this.f184e.get(str)) == null) {
                Map map = this.f184e;
                int i11 = this.f185f;
                this.f185f = i11 + 1;
                map.put(str, Integer.valueOf(i11));
            }
            return ((Integer) this.f184e.get(str)).intValue();
        }

        public int h(String str, int i11) {
            if (((Integer) this.f184e.get(str)) == null) {
                this.f184e.put(str, Integer.valueOf(this.f185f));
                this.f185f += i11;
            }
            return ((Integer) this.f184e.get(str)).intValue();
        }
    }

    static {
        String strG = com.alibaba.fastjson.util.b.g(z0.class);
        f167d = strG;
        f168e = "L" + strG + ";";
        String strG2 = com.alibaba.fastjson.util.b.g(j1.class);
        f169f = strG2;
        f170g = "L" + strG2 + ";";
        f171h = com.alibaba.fastjson.util.b.g(p0.class);
        f172i = "L" + com.alibaba.fastjson.util.b.g(p0.class) + ";";
        f173j = com.alibaba.fastjson.util.b.b(e1.class);
        f174k = com.alibaba.fastjson.util.b.b(i1.class);
    }

    private void A(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d[] dVarArr, C0004a c0004a) {
        String str;
        char c11;
        boolean z10;
        a aVar;
        char c12;
        int i11;
        Class cls2;
        com.alibaba.fastjson.asm.f fVar;
        int i12;
        int i13;
        String str2;
        int i14;
        char c13;
        a aVar2 = this;
        com.alibaba.fastjson.util.d[] dVarArr2 = dVarArr;
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        hVar.c(25, 1);
        hVar.c(25, 0);
        String str3 = f166c;
        hVar.j(182, str3, "hasPropertyFilters", "(" + f174k + ")Z");
        hVar.a(154, fVar2);
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 2);
        hVar.c(25, 3);
        hVar.c(25, 4);
        hVar.c(21, 5);
        String str4 = f171h;
        StringBuilder sb2 = new StringBuilder();
        String str5 = "(L";
        sb2.append("(L");
        sb2.append(str3);
        String str6 = ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V";
        sb2.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
        hVar.j(183, str4, "writeNoneASM", sb2.toString());
        hVar.h(177);
        hVar.l(fVar2);
        String str7 = "out";
        hVar.c(25, c0004a.g("out"));
        hVar.c(16, 91);
        String str8 = f169f;
        String str9 = "(I)V";
        hVar.j(182, str8, "write", "(I)V");
        int length = dVarArr2.length;
        if (length == 0) {
            hVar.c(25, c0004a.g("out"));
            hVar.c(16, 93);
            hVar.j(182, str8, "write", "(I)V");
            return;
        }
        int i15 = 0;
        while (i15 < length) {
            int i16 = i15 == length + (-1) ? 93 : 44;
            com.alibaba.fastjson.util.d dVar = dVarArr2[i15];
            Class cls3 = dVar.f18201e;
            hVar.d(dVar.f18197a);
            hVar.c(58, C0004a.f177h);
            if (cls3 == Byte.TYPE || cls3 == Short.TYPE || cls3 == Integer.TYPE) {
                str = str7;
                length = length;
                i15 = i15;
                str5 = str5;
                str9 = str9;
                c11 = 25;
                z10 = false;
                hVar.c(25, c0004a.g(str));
                hVar.h(89);
                aVar = this;
                aVar.i(hVar, c0004a, dVar);
                String str10 = f169f;
                hVar.j(182, str10, "writeInt", str9);
                c12 = 16;
                hVar.c(16, i16);
                hVar.j(182, str10, "write", str9);
            } else {
                if (cls3 == Long.TYPE) {
                    hVar.c(25, c0004a.g(str7));
                    hVar.h(89);
                    aVar2.i(hVar, c0004a, dVar);
                    String str11 = f169f;
                    c13 = 182;
                    hVar.j(182, str11, "writeLong", "(J)V");
                    hVar.c(16, i16);
                    hVar.j(182, str11, "write", str9);
                } else if (cls3 == Float.TYPE) {
                    hVar.c(25, c0004a.g(str7));
                    hVar.h(89);
                    aVar2.i(hVar, c0004a, dVar);
                    hVar.h(4);
                    String str12 = f169f;
                    c13 = 182;
                    hVar.j(182, str12, "writeFloat", "(FZ)V");
                    hVar.c(16, i16);
                    hVar.j(182, str12, "write", str9);
                } else if (cls3 == Double.TYPE) {
                    hVar.c(25, c0004a.g(str7));
                    hVar.h(89);
                    aVar2.i(hVar, c0004a, dVar);
                    hVar.h(4);
                    String str13 = f169f;
                    c13 = 182;
                    hVar.j(182, str13, "writeDouble", "(DZ)V");
                    hVar.c(16, i16);
                    hVar.j(182, str13, "write", str9);
                } else {
                    if (cls3 == Boolean.TYPE) {
                        hVar.c(25, c0004a.g(str7));
                        hVar.h(89);
                        aVar2.i(hVar, c0004a, dVar);
                        String str14 = f169f;
                        hVar.j(182, str14, "write", "(Z)V");
                        hVar.c(16, i16);
                        hVar.j(182, str14, "write", str9);
                    } else if (cls3 == Character.TYPE) {
                        hVar.c(25, c0004a.g(str7));
                        aVar2.i(hVar, c0004a, dVar);
                        hVar.j(184, "java/lang/Character", "toString", "(C)Ljava/lang/String;");
                        hVar.c(16, i16);
                        hVar.j(182, f169f, "writeString", "(Ljava/lang/String;C)V");
                        z10 = false;
                        c12 = 16;
                        aVar = aVar2;
                        str = str7;
                        c11 = 25;
                    } else if (cls3 == String.class) {
                        hVar.c(25, c0004a.g(str7));
                        aVar2.i(hVar, c0004a, dVar);
                        hVar.c(16, i16);
                        hVar.j(182, f169f, "writeString", "(Ljava/lang/String;C)V");
                        length = length;
                        i15 = i15;
                        str5 = str5;
                        str9 = str9;
                        z10 = false;
                        c12 = 16;
                        aVar = aVar2;
                        str = str7;
                        c11 = 25;
                    } else {
                        if (cls3.isEnum()) {
                            hVar.c(25, c0004a.g(str7));
                            hVar.h(89);
                            aVar2.i(hVar, c0004a, dVar);
                            String str15 = f169f;
                            hVar.j(182, str15, "writeEnum", "(Ljava/lang/Enum;)V");
                            hVar.c(16, i16);
                            hVar.j(182, str15, "write", str9);
                        } else if (List.class.isAssignableFrom(cls3)) {
                            Type type = dVar.f18202f;
                            Type type2 = type instanceof Class ? Object.class : ((ParameterizedType) type).getActualTypeArguments()[0];
                            if (!(type2 instanceof Class) || (cls2 = (Class) type2) == Object.class) {
                                cls2 = null;
                            }
                            aVar2.i(hVar, c0004a, dVar);
                            hVar.f(PsExtractor.AUDIO_STREAM, "java/util/List");
                            hVar.c(58, c0004a.g("list"));
                            if (cls2 == String.class && c0004a.f183d) {
                                hVar.c(25, c0004a.g(str7));
                                hVar.c(25, c0004a.g("list"));
                                hVar.j(182, f169f, "write", "(Ljava/util/List;)V");
                                str = str7;
                                i14 = 182;
                                str5 = str5;
                                str2 = str9;
                                i12 = 25;
                                i13 = 16;
                            } else {
                                com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
                                hVar.c(25, c0004a.g("list"));
                                hVar.a(199, fVar4);
                                hVar.c(25, c0004a.g(str7));
                                String str16 = f169f;
                                Type type3 = type2;
                                String str17 = str6;
                                hVar.j(182, str16, "writeNull", "()V");
                                hVar.a(167, fVar3);
                                hVar.l(fVar4);
                                hVar.c(25, c0004a.g("list"));
                                hVar.j(185, "java/util/List", "size", "()I");
                                hVar.c(54, c0004a.g("size"));
                                hVar.c(25, c0004a.g(str7));
                                hVar.c(16, 91);
                                hVar.j(182, str16, "write", str9);
                                com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
                                hVar.h(3);
                                String str18 = str5;
                                hVar.c(54, c0004a.g("i"));
                                hVar.l(fVar5);
                                hVar.c(21, c0004a.g("i"));
                                hVar.c(21, c0004a.g("size"));
                                hVar.a(162, fVar7);
                                hVar.c(21, c0004a.g("i"));
                                hVar.a(153, fVar6);
                                hVar.c(25, c0004a.g(str7));
                                hVar.c(16, 44);
                                hVar.j(182, str16, "write", str9);
                                hVar.l(fVar6);
                                hVar.c(25, c0004a.g("list"));
                                hVar.c(21, c0004a.g("i"));
                                hVar.j(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
                                hVar.c(58, c0004a.g("list_item"));
                                com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar9 = new com.alibaba.fastjson.asm.f();
                                String str19 = str9;
                                hVar.c(25, c0004a.g("list_item"));
                                hVar.a(199, fVar9);
                                hVar.c(25, c0004a.g(str7));
                                String str20 = str7;
                                hVar.j(182, str16, "writeNull", "()V");
                                hVar.a(167, fVar8);
                                hVar.l(fVar9);
                                com.alibaba.fastjson.asm.f fVar10 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar11 = new com.alibaba.fastjson.asm.f();
                                if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                                    fVar5 = fVar5;
                                    fVar8 = fVar8;
                                    str6 = str17;
                                    str5 = str18;
                                    fVar = fVar11;
                                } else {
                                    hVar.c(25, c0004a.g("list_item"));
                                    hVar.j(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                                    hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                                    hVar.a(166, fVar11);
                                    aVar2.k(c0004a, hVar, dVar, cls2);
                                    hVar.c(58, c0004a.g("list_item_desc"));
                                    com.alibaba.fastjson.asm.f fVar12 = new com.alibaba.fastjson.asm.f();
                                    com.alibaba.fastjson.asm.f fVar13 = new com.alibaba.fastjson.asm.f();
                                    if (c0004a.f183d) {
                                        hVar.c(25, c0004a.g("list_item_desc"));
                                        String str21 = f171h;
                                        hVar.f(193, str21);
                                        hVar.a(153, fVar12);
                                        hVar.c(25, c0004a.g("list_item_desc"));
                                        hVar.f(PsExtractor.AUDIO_STREAM, str21);
                                        hVar.c(25, 1);
                                        hVar.c(25, c0004a.g("list_item"));
                                        if (c0004a.f186g) {
                                            hVar.h(1);
                                        } else {
                                            hVar.c(21, c0004a.g("i"));
                                            hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                                        }
                                        hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                                        hVar.d(Integer.valueOf(dVar.f18205i));
                                        StringBuilder sb3 = new StringBuilder();
                                        str5 = str18;
                                        sb3.append(str5);
                                        sb3.append(f166c);
                                        str6 = str17;
                                        sb3.append(str6);
                                        hVar.j(182, str21, "writeAsArrayNonContext", sb3.toString());
                                        hVar.a(167, fVar13);
                                        hVar.l(fVar12);
                                    } else {
                                        fVar8 = fVar8;
                                        fVar11 = fVar11;
                                        str6 = str17;
                                        str5 = str18;
                                    }
                                    hVar.c(25, c0004a.g("list_item_desc"));
                                    hVar.c(25, 1);
                                    hVar.c(25, c0004a.g("list_item"));
                                    if (c0004a.f186g) {
                                        hVar.h(1);
                                    } else {
                                        hVar.c(21, c0004a.g("i"));
                                        hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                                    }
                                    hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                                    hVar.d(Integer.valueOf(dVar.f18205i));
                                    hVar.j(185, f167d, "write", str5 + f166c + str6);
                                    hVar.l(fVar13);
                                    fVar10 = fVar10;
                                    hVar.a(167, fVar10);
                                    fVar = fVar11;
                                }
                                hVar.l(fVar);
                                hVar.c(25, 1);
                                hVar.c(25, c0004a.g("list_item"));
                                if (c0004a.f186g) {
                                    hVar.h(1);
                                } else {
                                    hVar.c(21, c0004a.g("i"));
                                    hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                                }
                                if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                                    hVar.j(182, f166c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
                                } else {
                                    hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b((Class) type3)));
                                    hVar.d(Integer.valueOf(dVar.f18205i));
                                    hVar.j(182, f166c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                                }
                                hVar.l(fVar10);
                                hVar.l(fVar8);
                                hVar.e(c0004a.g("i"), 1);
                                hVar.a(167, fVar5);
                                hVar.l(fVar7);
                                str = str20;
                                i12 = 25;
                                hVar.c(25, c0004a.g(str));
                                i13 = 16;
                                hVar.c(16, 93);
                                str2 = str19;
                                i14 = 182;
                                hVar.j(182, str16, "write", str2);
                                hVar.l(fVar3);
                            }
                            hVar.c(i12, c0004a.g(str));
                            hVar.c(i13, i16);
                            hVar.j(i14, f169f, "write", str2);
                            aVar = this;
                            str9 = str2;
                            c11 = 25;
                            z10 = false;
                        } else {
                            String str22 = str7;
                            length = length;
                            i15 = i15;
                            str5 = str5;
                            String str23 = str9;
                            com.alibaba.fastjson.asm.f fVar14 = new com.alibaba.fastjson.asm.f();
                            com.alibaba.fastjson.asm.f fVar15 = new com.alibaba.fastjson.asm.f();
                            i(hVar, c0004a, dVar);
                            hVar.h(89);
                            hVar.c(58, c0004a.g("field_" + dVar.f18201e.getName()));
                            hVar.a(199, fVar15);
                            hVar.c(25, c0004a.g(str22));
                            String str24 = f169f;
                            int i17 = i16;
                            hVar.j(182, str24, "writeNull", "()V");
                            hVar.a(167, fVar14);
                            hVar.l(fVar15);
                            com.alibaba.fastjson.asm.f fVar16 = new com.alibaba.fastjson.asm.f();
                            com.alibaba.fastjson.asm.f fVar17 = new com.alibaba.fastjson.asm.f();
                            hVar.c(25, c0004a.g("field_" + dVar.f18201e.getName()));
                            hVar.j(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                            hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls3)));
                            hVar.a(166, fVar17);
                            j(c0004a, hVar, dVar);
                            hVar.c(58, c0004a.g("fied_ser"));
                            com.alibaba.fastjson.asm.f fVar18 = new com.alibaba.fastjson.asm.f();
                            com.alibaba.fastjson.asm.f fVar19 = new com.alibaba.fastjson.asm.f();
                            if (c0004a.f183d && Modifier.isPublic(cls3.getModifiers())) {
                                hVar.c(25, c0004a.g("fied_ser"));
                                String str25 = f171h;
                                hVar.f(193, str25);
                                hVar.a(153, fVar18);
                                hVar.c(25, c0004a.g("fied_ser"));
                                hVar.f(PsExtractor.AUDIO_STREAM, str25);
                                hVar.c(25, 1);
                                hVar.c(25, c0004a.g("field_" + dVar.f18201e.getName()));
                                hVar.c(25, C0004a.f177h);
                                hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls3)));
                                hVar.d(Integer.valueOf(dVar.f18205i));
                                hVar.j(182, str25, "writeAsArrayNonContext", str5 + f166c + str6);
                                hVar.a(167, fVar19);
                                hVar.l(fVar18);
                            }
                            hVar.c(25, c0004a.g("fied_ser"));
                            hVar.c(25, 1);
                            hVar.c(25, c0004a.g("field_" + dVar.f18201e.getName()));
                            hVar.c(25, C0004a.f177h);
                            hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls3)));
                            hVar.d(Integer.valueOf(dVar.f18205i));
                            String str26 = f167d;
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(str5);
                            String str27 = f166c;
                            sb4.append(str27);
                            sb4.append(str6);
                            hVar.j(185, str26, "write", sb4.toString());
                            hVar.l(fVar19);
                            hVar.a(167, fVar16);
                            hVar.l(fVar17);
                            String strK = dVar.k();
                            hVar.c(25, 1);
                            hVar.c(25, c0004a.g("field_" + dVar.f18201e.getName()));
                            if (strK != null) {
                                hVar.d(strK);
                                i11 = 182;
                                hVar.j(182, str27, "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
                            } else {
                                i11 = 182;
                                hVar.c(25, C0004a.f177h);
                                Type type4 = dVar.f18202f;
                                if ((type4 instanceof Class) && ((Class) type4).isPrimitive()) {
                                    hVar.j(182, str27, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
                                } else {
                                    z10 = false;
                                    hVar.c(25, 0);
                                    hVar.b(180, c0004a.f181b, dVar.f18197a + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                                    hVar.d(Integer.valueOf(dVar.f18205i));
                                    i11 = 182;
                                    hVar.j(182, str27, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                                }
                                hVar.l(fVar16);
                                hVar.l(fVar14);
                                str = str22;
                                c11 = 25;
                                hVar.c(25, c0004a.g(str));
                                hVar.c(16, i17);
                                str9 = str23;
                                hVar.j(i11, str24, "write", str9);
                                aVar = this;
                            }
                            z10 = false;
                            hVar.l(fVar16);
                            hVar.l(fVar14);
                            str = str22;
                            c11 = 25;
                            hVar.c(25, c0004a.g(str));
                            hVar.c(16, i17);
                            str9 = str23;
                            hVar.j(i11, str24, "write", str9);
                            aVar = this;
                        }
                        c12 = 16;
                    }
                    aVar = aVar2;
                    str = str7;
                    str5 = str5;
                    str9 = str9;
                    c11 = 25;
                    z10 = false;
                    c12 = 16;
                }
                z10 = false;
                c12 = 16;
                aVar = aVar2;
                str = str7;
                c11 = 25;
            }
            str9 = str9;
            i15++;
            dVarArr2 = dVarArr;
            length = length;
            str7 = str;
            aVar2 = aVar;
            str5 = str5;
        }
    }

    private void B(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d[] dVarArr, C0004a c0004a) {
        String str;
        int i11;
        int i12;
        String str2;
        Class cls2;
        com.alibaba.fastjson.util.d[] dVarArr2 = dVarArr;
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        int length = dVarArr2.length;
        String str3 = "out";
        if (!c0004a.f183d) {
            com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
            hVar.c(25, c0004a.g("out"));
            hVar.d(Integer.valueOf(SerializerFeature.PrettyFormat.mask));
            hVar.j(182, f169f, "isEnabled", "(I)Z");
            hVar.a(154, fVar3);
            int length2 = dVarArr2.length;
            int i13 = 0;
            while (true) {
                if (i13 >= length2) {
                    hVar.a(167, fVar2);
                    break;
                }
                int i14 = length2;
                if (dVarArr2[i13].f18198b != null) {
                    hVar.c(25, c0004a.g("out"));
                    hVar.d(Integer.valueOf(SerializerFeature.IgnoreErrorGetter.mask));
                    hVar.j(182, f169f, "isEnabled", "(I)Z");
                    hVar.a(153, fVar2);
                    break;
                }
                i13++;
                length2 = i14;
            }
            hVar.l(fVar3);
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 2);
            hVar.c(25, 3);
            hVar.c(25, 4);
            hVar.c(21, 5);
            hVar.j(183, f171h, "write", "(L" + f166c + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            hVar.h(177);
            hVar.l(fVar2);
        }
        if (!c0004a.f186g) {
            com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 2);
            hVar.c(21, 5);
            hVar.j(182, f171h, "writeReference", "(L" + f166c + ";Ljava/lang/Object;I)Z");
            hVar.a(153, fVar4);
            hVar.h(177);
            hVar.l(fVar4);
        }
        if (c0004a.f183d) {
            str = c0004a.f186g ? "writeAsArrayNonContext" : "writeAsArray";
        } else {
            str = "writeAsArrayNormal";
        }
        int i15 = c0004a.f182c.f205g;
        SerializerFeature serializerFeature = SerializerFeature.BeanToArray;
        if ((i15 & serializerFeature.mask) == 0) {
            com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
            hVar.c(25, c0004a.g("out"));
            hVar.d(Integer.valueOf(serializerFeature.mask));
            hVar.j(182, f169f, "isEnabled", "(I)Z");
            hVar.a(153, fVar5);
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 2);
            hVar.c(25, 3);
            hVar.c(25, 4);
            hVar.c(21, 5);
            hVar.j(182, c0004a.f181b, str, "(L" + f166c + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            hVar.h(177);
            hVar.l(fVar5);
        } else {
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 2);
            hVar.c(25, 3);
            hVar.c(25, 4);
            hVar.c(21, 5);
            hVar.j(182, c0004a.f181b, str, "(L" + f166c + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            hVar.h(177);
        }
        String str4 = "parent";
        if (!c0004a.f186g) {
            hVar.c(25, 1);
            String str5 = f166c;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("()");
            String str6 = f173j;
            sb2.append(str6);
            hVar.j(182, str5, "getContext", sb2.toString());
            hVar.c(58, c0004a.g("parent"));
            hVar.c(25, 1);
            hVar.c(25, c0004a.g("parent"));
            hVar.c(25, 2);
            hVar.c(25, 3);
            hVar.d(Integer.valueOf(c0004a.f182c.f205g));
            hVar.j(182, str5, "setContext", "(" + str6 + "Ljava/lang/Object;Ljava/lang/Object;I)V");
        }
        boolean z10 = (c0004a.f182c.f205g & SerializerFeature.WriteClassName.mask) != 0;
        if (z10 || !c0004a.f183d) {
            com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
            if (z10) {
                i11 = 182;
            } else {
                hVar.c(25, 1);
                hVar.c(25, 4);
                hVar.c(25, 2);
                i11 = 182;
                hVar.j(182, f166c, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
                hVar.a(153, fVar7);
            }
            hVar.c(25, 4);
            hVar.c(25, 2);
            hVar.j(i11, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            hVar.a(165, fVar7);
            hVar.l(fVar8);
            hVar.c(25, c0004a.g("out"));
            hVar.c(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
            hVar.j(i11, f169f, "write", "(I)V");
            hVar.c(25, 0);
            hVar.c(25, 1);
            if (c0004a.f182c.f201c != null) {
                hVar.d(c0004a.f182c.f201c);
            } else {
                hVar.h(1);
            }
            hVar.c(25, 2);
            hVar.j(182, f171h, "writeClassName", "(L" + f166c + ";Ljava/lang/String;Ljava/lang/Object;)V");
            hVar.c(16, 44);
            hVar.a(167, fVar6);
            hVar.l(fVar7);
            hVar.c(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
            hVar.l(fVar6);
        } else {
            hVar.c(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
            str4 = "parent";
        }
        hVar.c(54, c0004a.g("seperator"));
        if (!c0004a.f183d) {
            c(hVar, c0004a);
        }
        if (c0004a.f183d) {
            i12 = 0;
        } else {
            hVar.c(25, c0004a.g("out"));
            hVar.j(182, f169f, "isNotWriteDefaultValue", "()Z");
            hVar.c(54, c0004a.g("notWriteDefaultValue"));
            hVar.c(25, 1);
            hVar.c(25, 0);
            String str7 = f166c;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("(");
            String str8 = f174k;
            sb3.append(str8);
            sb3.append(")Z");
            hVar.j(182, str7, "checkValue", sb3.toString());
            hVar.c(54, c0004a.g("checkValue"));
            hVar.c(25, 1);
            i12 = 0;
            hVar.c(25, 0);
            hVar.j(182, str7, "hasNameFilters", "(" + str8 + ")Z");
            hVar.c(54, c0004a.g("hasNameFilters"));
        }
        while (i12 < length) {
            com.alibaba.fastjson.util.d dVar = dVarArr2[i12];
            Class cls3 = dVar.f18201e;
            hVar.d(dVar.f18197a);
            hVar.c(58, C0004a.f177h);
            if (cls3 == Byte.TYPE || cls3 == Short.TYPE || cls3 == Integer.TYPE) {
                str2 = str3;
                m(cls, hVar, dVar, c0004a, c0004a.g(cls3.getName()), 'I');
            } else {
                if (cls3 == Long.TYPE) {
                    cls2 = cls;
                    p(cls2, hVar, dVar, c0004a);
                } else {
                    cls2 = cls;
                    if (cls3 == Float.TYPE) {
                        h(cls2, hVar, dVar, c0004a);
                    } else if (cls3 == Double.TYPE) {
                        e(cls2, hVar, dVar, c0004a);
                    } else if (cls3 == Boolean.TYPE) {
                        str2 = str3;
                        m(cls, hVar, dVar, c0004a, c0004a.g("boolean"), 'Z');
                    } else {
                        str2 = str3;
                        if (cls3 == Character.TYPE) {
                            m(cls, hVar, dVar, c0004a, c0004a.g("char"), 'C');
                        } else if (cls3 == String.class) {
                            w(cls2, hVar, dVar, c0004a);
                        } else if (cls3 == BigDecimal.class) {
                            d(cls2, hVar, dVar, c0004a);
                        } else if (List.class.isAssignableFrom(cls3)) {
                            o(cls2, hVar, dVar, c0004a);
                        } else if (cls3.isEnum()) {
                            f(cls2, hVar, dVar, c0004a);
                        } else {
                            s(cls2, hVar, dVar, c0004a);
                        }
                    }
                }
                str2 = str3;
            }
            i12++;
            dVarArr2 = dVarArr;
            str3 = str2;
        }
        String str9 = str3;
        if (!c0004a.f183d) {
            a(hVar, c0004a);
        }
        com.alibaba.fastjson.asm.f fVar9 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar10 = new com.alibaba.fastjson.asm.f();
        hVar.c(21, c0004a.g("seperator"));
        hVar.g(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        hVar.a(160, fVar9);
        hVar.c(25, c0004a.g(str9));
        hVar.c(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        String str10 = f169f;
        hVar.j(182, str10, "write", "(I)V");
        hVar.l(fVar9);
        hVar.c(25, c0004a.g(str9));
        hVar.c(16, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        hVar.j(182, str10, "write", "(I)V");
        hVar.l(fVar10);
        hVar.l(fVar);
        if (c0004a.f186g) {
            return;
        }
        hVar.c(25, 1);
        hVar.c(25, c0004a.g(str4));
        hVar.j(182, f166c, "setContext", "(" + f173j + ")V");
    }

    private void a(com.alibaba.fastjson.asm.h hVar, C0004a c0004a) {
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 2);
        hVar.c(21, c0004a.g("seperator"));
        hVar.j(182, f171h, "writeAfter", "(L" + f166c + ";Ljava/lang/Object;C)C");
        hVar.c(54, c0004a.g("seperator"));
    }

    private void b(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        Class cls = dVar.f18201e;
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 2);
        hVar.c(25, C0004a.f177h);
        if (cls == Byte.TYPE) {
            hVar.c(21, c0004a.g("byte"));
            hVar.j(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
        } else if (cls == Short.TYPE) {
            hVar.c(21, c0004a.g("short"));
            hVar.j(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
        } else if (cls == Integer.TYPE) {
            hVar.c(21, c0004a.g("int"));
            hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        } else if (cls == Character.TYPE) {
            hVar.c(21, c0004a.g("char"));
            hVar.j(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
        } else if (cls == Long.TYPE) {
            hVar.c(22, c0004a.h("long", 2));
            hVar.j(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
        } else if (cls == Float.TYPE) {
            hVar.c(23, c0004a.g("float"));
            hVar.j(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
        } else if (cls == Double.TYPE) {
            hVar.c(24, c0004a.h("double", 2));
            hVar.j(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
        } else if (cls == Boolean.TYPE) {
            hVar.c(21, c0004a.g("boolean"));
            hVar.j(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
        } else if (cls == BigDecimal.class) {
            hVar.c(25, c0004a.g("decimal"));
        } else if (cls == String.class) {
            hVar.c(25, c0004a.g("string"));
        } else if (cls.isEnum()) {
            hVar.c(25, c0004a.g("enum"));
        } else if (List.class.isAssignableFrom(cls)) {
            hVar.c(25, c0004a.g("list"));
        } else {
            hVar.c(25, c0004a.g("object"));
        }
        hVar.j(182, f171h, "apply", "(L" + f166c + ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z");
    }

    private void c(com.alibaba.fastjson.asm.h hVar, C0004a c0004a) {
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 2);
        hVar.c(21, c0004a.g("seperator"));
        hVar.j(182, f171h, "writeBefore", "(L" + f166c + ";Ljava/lang/Object;C)C");
        hVar.c(54, c0004a.g("seperator"));
    }

    private void d(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0004a, fVar);
        i(hVar, c0004a, dVar);
        hVar.c(58, c0004a.g("decimal"));
        g(hVar, dVar, c0004a, fVar);
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        hVar.l(fVar2);
        hVar.c(25, c0004a.g("decimal"));
        hVar.a(199, fVar3);
        l(hVar, dVar, c0004a);
        hVar.a(167, fVar4);
        hVar.l(fVar3);
        hVar.c(25, c0004a.g("out"));
        hVar.c(21, c0004a.g("seperator"));
        hVar.c(25, C0004a.f177h);
        hVar.c(25, c0004a.g("decimal"));
        hVar.j(182, f169f, "writeFieldValue", "(CLjava/lang/String;Ljava/math/BigDecimal;)V");
        v(hVar, c0004a);
        hVar.a(167, fVar4);
        hVar.l(fVar4);
        hVar.l(fVar);
    }

    private void e(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0004a, fVar);
        i(hVar, c0004a, dVar);
        hVar.c(57, c0004a.h("double", 2));
        g(hVar, dVar, c0004a, fVar);
        hVar.c(25, c0004a.g("out"));
        hVar.c(21, c0004a.g("seperator"));
        hVar.c(25, C0004a.f177h);
        hVar.c(24, c0004a.h("double", 2));
        hVar.j(182, f169f, "writeFieldValue", "(CLjava/lang/String;D)V");
        v(hVar, c0004a);
        hVar.l(fVar);
    }

    private void f(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0004a, fVar3);
        i(hVar, c0004a, dVar);
        hVar.f(PsExtractor.AUDIO_STREAM, "java/lang/Enum");
        hVar.c(58, c0004a.g("enum"));
        g(hVar, dVar, c0004a, fVar3);
        hVar.c(25, c0004a.g("enum"));
        hVar.a(199, fVar);
        l(hVar, dVar, c0004a);
        hVar.a(167, fVar2);
        hVar.l(fVar);
        if (c0004a.f183d) {
            hVar.c(25, c0004a.g("out"));
            hVar.c(21, c0004a.g("seperator"));
            hVar.c(25, C0004a.f177h);
            hVar.c(25, c0004a.g("enum"));
            hVar.j(182, "java/lang/Enum", "name", "()Ljava/lang/String;");
            hVar.j(182, f169f, "writeFieldValueStringWithDoubleQuote", "(CLjava/lang/String;Ljava/lang/String;)V");
        } else {
            hVar.c(25, c0004a.g("out"));
            hVar.c(21, c0004a.g("seperator"));
            String str = f169f;
            hVar.j(182, str, "write", "(I)V");
            hVar.c(25, c0004a.g("out"));
            hVar.c(25, C0004a.f177h);
            hVar.h(3);
            hVar.j(182, str, "writeFieldName", "(Ljava/lang/String;Z)V");
            hVar.c(25, 1);
            hVar.c(25, c0004a.g("enum"));
            hVar.c(25, C0004a.f177h);
            hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(dVar.f18201e)));
            hVar.d(Integer.valueOf(dVar.f18205i));
            hVar.j(182, f166c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
        }
        v(hVar, c0004a);
        hVar.l(fVar2);
        hVar.l(fVar3);
    }

    private void g(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a, com.alibaba.fastjson.asm.f fVar) {
        if (dVar.f18211o) {
            hVar.c(25, c0004a.g("out"));
            hVar.d(Integer.valueOf(SerializerFeature.SkipTransientField.mask));
            hVar.j(182, f169f, "isEnabled", "(I)Z");
            hVar.a(154, fVar);
        }
        r(hVar, dVar, c0004a, fVar);
        if (c0004a.f183d) {
            return;
        }
        b(hVar, dVar, c0004a);
        hVar.a(153, fVar);
        t(hVar, dVar, c0004a);
        u(hVar, dVar, c0004a, fVar);
    }

    private void h(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0004a, fVar);
        i(hVar, c0004a, dVar);
        hVar.c(56, c0004a.g("float"));
        g(hVar, dVar, c0004a, fVar);
        hVar.c(25, c0004a.g("out"));
        hVar.c(21, c0004a.g("seperator"));
        hVar.c(25, C0004a.f177h);
        hVar.c(23, c0004a.g("float"));
        hVar.j(182, f169f, "writeFieldValue", "(CLjava/lang/String;F)V");
        v(hVar, c0004a);
        hVar.l(fVar);
    }

    private void i(com.alibaba.fastjson.asm.h hVar, C0004a c0004a, com.alibaba.fastjson.util.d dVar) {
        Method method = dVar.f18198b;
        if (method != null) {
            hVar.c(25, c0004a.g("entity"));
            Class<?> declaringClass = method.getDeclaringClass();
            hVar.j(declaringClass.isInterface() ? 185 : 182, com.alibaba.fastjson.util.b.g(declaringClass), method.getName(), com.alibaba.fastjson.util.b.c(method));
            if (method.getReturnType().equals(dVar.f18201e)) {
                return;
            }
            hVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(dVar.f18201e));
            return;
        }
        hVar.c(25, c0004a.g("entity"));
        Field field = dVar.f18199c;
        hVar.b(180, com.alibaba.fastjson.util.b.g(dVar.f18203g), field.getName(), com.alibaba.fastjson.util.b.b(field.getType()));
        if (field.getType().equals(dVar.f18201e)) {
            return;
        }
        hVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(dVar.f18201e));
    }

    private void j(C0004a c0004a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        hVar.c(25, 0);
        String str = c0004a.f181b;
        String str2 = dVar.f18197a + "_asm_ser_";
        String str3 = f168e;
        hVar.b(180, str, str2, str3);
        hVar.a(199, fVar);
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(dVar.f18201e)));
        hVar.j(182, f166c, "getObjectWriter", "(Ljava/lang/Class;)" + str3);
        hVar.b(181, c0004a.f181b, dVar.f18197a + "_asm_ser_", str3);
        hVar.l(fVar);
        hVar.c(25, 0);
        hVar.b(180, c0004a.f181b, dVar.f18197a + "_asm_ser_", str3);
    }

    private void k(C0004a c0004a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, Class cls) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        hVar.c(25, 0);
        String str = c0004a.f181b;
        String str2 = dVar.f18197a + "_asm_list_item_ser_";
        String str3 = f168e;
        hVar.b(180, str, str2, str3);
        hVar.a(199, fVar);
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls)));
        hVar.j(182, f166c, "getObjectWriter", "(Ljava/lang/Class;)" + str3);
        hVar.b(181, c0004a.f181b, dVar.f18197a + "_asm_list_item_ser_", str3);
        hVar.l(fVar);
        hVar.c(25, 0);
        hVar.b(180, c0004a.f181b, dVar.f18197a + "_asm_list_item_ser_", str3);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0099  */
    /* JADX WARN: Code duplicated, block: B:25:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:43:0x0138  */
    private void l(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        int i11;
        int mask;
        int mask2;
        Class cls = dVar.f18201e;
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        hVar.l(fVar);
        x4.b bVarE = dVar.e();
        int iOf = bVarE != null ? SerializerFeature.of(bVarE.serialzeFeatures()) : 0;
        x4.d dVar2 = c0004a.f182c.f202d;
        if (dVar2 != null) {
            iOf |= SerializerFeature.of(dVar2.serialzeFeatures());
        }
        if (cls == String.class) {
            mask = SerializerFeature.WriteMapNullValue.getMask();
            mask2 = SerializerFeature.WriteNullStringAsEmpty.getMask();
        } else if (Number.class.isAssignableFrom(cls)) {
            mask = SerializerFeature.WriteMapNullValue.getMask();
            mask2 = SerializerFeature.WriteNullNumberAsZero.getMask();
        } else {
            if (!Collection.class.isAssignableFrom(cls)) {
                if (Boolean.class == cls) {
                    mask = SerializerFeature.WriteMapNullValue.getMask();
                    mask2 = SerializerFeature.WriteNullBooleanAsFalse.getMask();
                } else {
                    i11 = SerializerFeature.WRITE_MAP_NULL_FEATURES;
                }
                if ((iOf & i11) == 0) {
                    hVar.c(25, c0004a.g("out"));
                    hVar.d(Integer.valueOf(i11));
                    hVar.j(182, f169f, "isEnabled", "(I)Z");
                    hVar.a(153, fVar2);
                }
                hVar.l(fVar3);
                hVar.c(25, c0004a.g("out"));
                hVar.c(21, c0004a.g("seperator"));
                String str = f169f;
                hVar.j(182, str, "write", "(I)V");
                x(hVar, c0004a);
                hVar.c(25, c0004a.g("out"));
                hVar.d(Integer.valueOf(iOf));
                if (cls != String.class || cls == Character.class) {
                    hVar.d(Integer.valueOf(SerializerFeature.WriteNullStringAsEmpty.mask));
                } else if (Number.class.isAssignableFrom(cls)) {
                    hVar.d(Integer.valueOf(SerializerFeature.WriteNullNumberAsZero.mask));
                } else if (cls == Boolean.class) {
                    hVar.d(Integer.valueOf(SerializerFeature.WriteNullBooleanAsFalse.mask));
                } else if (Collection.class.isAssignableFrom(cls) || cls.isArray()) {
                    hVar.d(Integer.valueOf(SerializerFeature.WriteNullListAsEmpty.mask));
                } else {
                    hVar.d(0);
                }
                hVar.j(182, str, "writeNull", "(II)V");
                v(hVar, c0004a);
                hVar.a(167, fVar4);
                hVar.l(fVar2);
                hVar.l(fVar4);
            }
            mask = SerializerFeature.WriteMapNullValue.getMask();
            mask2 = SerializerFeature.WriteNullListAsEmpty.getMask();
        }
        i11 = mask | mask2;
        if ((iOf & i11) == 0) {
            hVar.c(25, c0004a.g("out"));
            hVar.d(Integer.valueOf(i11));
            hVar.j(182, f169f, "isEnabled", "(I)Z");
            hVar.a(153, fVar2);
        }
        hVar.l(fVar3);
        hVar.c(25, c0004a.g("out"));
        hVar.c(21, c0004a.g("seperator"));
        String str2 = f169f;
        hVar.j(182, str2, "write", "(I)V");
        x(hVar, c0004a);
        hVar.c(25, c0004a.g("out"));
        hVar.d(Integer.valueOf(iOf));
        if (cls != String.class) {
            hVar.d(Integer.valueOf(SerializerFeature.WriteNullStringAsEmpty.mask));
        } else {
            hVar.d(Integer.valueOf(SerializerFeature.WriteNullStringAsEmpty.mask));
        }
        hVar.j(182, str2, "writeNull", "(II)V");
        v(hVar, c0004a);
        hVar.a(167, fVar4);
        hVar.l(fVar2);
        hVar.l(fVar4);
    }

    private void m(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a, int i11, char c11) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0004a, fVar);
        i(hVar, c0004a, dVar);
        hVar.c(54, i11);
        g(hVar, dVar, c0004a, fVar);
        hVar.c(25, c0004a.g("out"));
        hVar.c(21, c0004a.g("seperator"));
        hVar.c(25, C0004a.f177h);
        hVar.c(21, i11);
        hVar.j(182, f169f, "writeFieldValue", "(CLjava/lang/String;" + c11 + ")V");
        v(hVar, c0004a);
        hVar.l(fVar);
    }

    private void n(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a, com.alibaba.fastjson.asm.f fVar) {
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.d(dVar.f18207k);
        hVar.j(182, f171h, "applyLabel", "(L" + f166c + ";Ljava/lang/String;)Z");
        hVar.a(153, fVar);
    }

    private void o(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        com.alibaba.fastjson.asm.f fVar;
        String str;
        com.alibaba.fastjson.util.d dVar2;
        com.alibaba.fastjson.asm.f fVar2;
        int i11;
        int i12;
        int i13;
        Type typeV = TypeUtils.V(dVar.f18202f);
        Class cls2 = null;
        Class cls3 = typeV instanceof Class ? (Class) typeV : null;
        if (cls3 != Object.class && cls3 != Serializable.class) {
            cls2 = cls3;
        }
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0004a, fVar3);
        i(hVar, c0004a, dVar);
        hVar.f(PsExtractor.AUDIO_STREAM, "java/util/List");
        hVar.c(58, c0004a.g("list"));
        g(hVar, dVar, c0004a, fVar3);
        hVar.c(25, c0004a.g("list"));
        hVar.a(199, fVar4);
        l(hVar, dVar, c0004a);
        hVar.a(167, fVar5);
        hVar.l(fVar4);
        hVar.c(25, c0004a.g("out"));
        hVar.c(21, c0004a.g("seperator"));
        String str2 = f169f;
        hVar.j(182, str2, "write", "(I)V");
        x(hVar, c0004a);
        hVar.c(25, c0004a.g("list"));
        hVar.j(185, "java/util/List", "size", "()I");
        hVar.c(54, c0004a.g("size"));
        com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
        hVar.c(21, c0004a.g("size"));
        hVar.h(3);
        hVar.a(160, fVar6);
        hVar.c(25, c0004a.g("out"));
        hVar.d("[]");
        hVar.j(182, str2, "write", "(Ljava/lang/String;)V");
        hVar.a(167, fVar7);
        hVar.l(fVar6);
        if (!c0004a.f186g) {
            hVar.c(25, 1);
            hVar.c(25, c0004a.g("list"));
            hVar.c(25, C0004a.f177h);
            hVar.j(182, f166c, "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)V");
        }
        if (typeV == String.class && c0004a.f183d) {
            hVar.c(25, c0004a.g("out"));
            hVar.c(25, c0004a.g("list"));
            hVar.j(182, str2, "write", "(Ljava/util/List;)V");
            i12 = 25;
            i13 = 182;
            i11 = 1;
        } else {
            hVar.c(25, c0004a.g("out"));
            hVar.c(16, 91);
            hVar.j(182, str2, "write", "(I)V");
            com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar9 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar10 = new com.alibaba.fastjson.asm.f();
            hVar.h(3);
            hVar.c(54, c0004a.g("i"));
            hVar.l(fVar8);
            hVar.c(21, c0004a.g("i"));
            hVar.c(21, c0004a.g("size"));
            hVar.a(162, fVar10);
            hVar.c(21, c0004a.g("i"));
            hVar.a(153, fVar9);
            hVar.c(25, c0004a.g("out"));
            hVar.c(16, 44);
            hVar.j(182, str2, "write", "(I)V");
            hVar.l(fVar9);
            hVar.c(25, c0004a.g("list"));
            hVar.c(21, c0004a.g("i"));
            hVar.j(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            hVar.c(58, c0004a.g("list_item"));
            com.alibaba.fastjson.asm.f fVar11 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar12 = new com.alibaba.fastjson.asm.f();
            hVar.c(25, c0004a.g("list_item"));
            hVar.a(199, fVar12);
            hVar.c(25, c0004a.g("out"));
            hVar.j(182, str2, "writeNull", "()V");
            hVar.a(167, fVar11);
            hVar.l(fVar12);
            com.alibaba.fastjson.asm.f fVar13 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar14 = new com.alibaba.fastjson.asm.f();
            if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                fVar11 = fVar11;
                fVar = fVar13;
                str = "write";
                dVar2 = dVar;
                fVar2 = fVar14;
            } else {
                hVar.c(25, c0004a.g("list_item"));
                hVar.j(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                hVar.a(166, fVar14);
                dVar2 = dVar;
                k(c0004a, hVar, dVar2, cls2);
                hVar.c(58, c0004a.g("list_item_desc"));
                com.alibaba.fastjson.asm.f fVar15 = new com.alibaba.fastjson.asm.f();
                com.alibaba.fastjson.asm.f fVar16 = new com.alibaba.fastjson.asm.f();
                if (c0004a.f183d) {
                    String str3 = (c0004a.f186g && c0004a.f183d) ? "writeDirectNonContext" : "write";
                    hVar.c(25, c0004a.g("list_item_desc"));
                    String str4 = f171h;
                    hVar.f(193, str4);
                    hVar.a(153, fVar15);
                    hVar.c(25, c0004a.g("list_item_desc"));
                    hVar.f(PsExtractor.AUDIO_STREAM, str4);
                    hVar.c(25, 1);
                    hVar.c(25, c0004a.g("list_item"));
                    if (c0004a.f186g) {
                        hVar.h(1);
                    } else {
                        hVar.c(21, c0004a.g("i"));
                        hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    }
                    hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                    hVar.d(Integer.valueOf(dVar2.f18205i));
                    hVar.j(182, str4, str3, "(L" + f166c + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                    hVar.a(167, fVar16);
                    hVar.l(fVar15);
                } else {
                    fVar11 = fVar11;
                    fVar14 = fVar14;
                }
                hVar.c(25, c0004a.g("list_item_desc"));
                hVar.c(25, 1);
                hVar.c(25, c0004a.g("list_item"));
                if (c0004a.f186g) {
                    hVar.h(1);
                } else {
                    hVar.c(21, c0004a.g("i"));
                    hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                }
                hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                hVar.d(Integer.valueOf(dVar2.f18205i));
                str = "write";
                hVar.j(185, f167d, str, "(L" + f166c + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                hVar.l(fVar16);
                fVar = fVar13;
                hVar.a(167, fVar);
                fVar2 = fVar14;
            }
            hVar.l(fVar2);
            hVar.c(25, 1);
            hVar.c(25, c0004a.g("list_item"));
            if (c0004a.f186g) {
                hVar.h(1);
            } else {
                hVar.c(21, c0004a.g("i"));
                hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            }
            if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                hVar.j(182, f166c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b((Class) typeV)));
                hVar.d(Integer.valueOf(dVar2.f18205i));
                hVar.j(182, f166c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
            hVar.l(fVar);
            hVar.l(fVar11);
            i11 = 1;
            hVar.e(c0004a.g("i"), 1);
            hVar.a(167, fVar8);
            hVar.l(fVar10);
            i12 = 25;
            hVar.c(25, c0004a.g("out"));
            hVar.c(16, 93);
            i13 = 182;
            hVar.j(182, str2, str, "(I)V");
        }
        hVar.c(i12, i11);
        hVar.j(i13, f166c, "popContext", "()V");
        hVar.l(fVar7);
        v(hVar, c0004a);
        hVar.l(fVar5);
        hVar.l(fVar3);
    }

    private void p(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0004a, fVar);
        i(hVar, c0004a, dVar);
        hVar.c(55, c0004a.h("long", 2));
        g(hVar, dVar, c0004a, fVar);
        hVar.c(25, c0004a.g("out"));
        hVar.c(21, c0004a.g("seperator"));
        hVar.c(25, C0004a.f177h);
        hVar.c(22, c0004a.h("long", 2));
        hVar.j(182, f169f, "writeFieldValue", "(CLjava/lang/String;J)V");
        v(hVar, c0004a);
        hVar.l(fVar);
    }

    private void q(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a, com.alibaba.fastjson.asm.f fVar) {
        if (!c0004a.f183d) {
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 2);
            hVar.c(25, C0004a.f177h);
            hVar.j(182, f171h, "applyName", "(L" + f166c + ";Ljava/lang/Object;Ljava/lang/String;)Z");
            hVar.a(153, fVar);
            n(hVar, dVar, c0004a, fVar);
        }
        if (dVar.f18199c == null) {
            hVar.c(25, c0004a.g("out"));
            hVar.d(Integer.valueOf(SerializerFeature.IgnoreNonFieldGetter.mask));
            hVar.j(182, f169f, "isEnabled", "(I)Z");
            hVar.a(154, fVar);
        }
    }

    private void r(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a, com.alibaba.fastjson.asm.f fVar) {
        if (c0004a.f183d) {
            return;
        }
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        hVar.c(21, c0004a.g("notWriteDefaultValue"));
        hVar.a(153, fVar2);
        Class cls = dVar.f18201e;
        if (cls == Boolean.TYPE) {
            hVar.c(21, c0004a.g("boolean"));
            hVar.a(153, fVar);
        } else if (cls == Byte.TYPE) {
            hVar.c(21, c0004a.g("byte"));
            hVar.a(153, fVar);
        } else if (cls == Short.TYPE) {
            hVar.c(21, c0004a.g("short"));
            hVar.a(153, fVar);
        } else if (cls == Integer.TYPE) {
            hVar.c(21, c0004a.g("int"));
            hVar.a(153, fVar);
        } else if (cls == Long.TYPE) {
            hVar.c(22, c0004a.g("long"));
            hVar.h(9);
            hVar.h(148);
            hVar.a(153, fVar);
        } else if (cls == Float.TYPE) {
            hVar.c(23, c0004a.g("float"));
            hVar.h(11);
            hVar.h(149);
            hVar.a(153, fVar);
        } else if (cls == Double.TYPE) {
            hVar.c(24, c0004a.g("double"));
            hVar.h(14);
            hVar.h(151);
            hVar.a(153, fVar);
        }
        hVar.l(fVar2);
    }

    private void s(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0004a, fVar);
        i(hVar, c0004a, dVar);
        hVar.c(58, c0004a.g("object"));
        g(hVar, dVar, c0004a, fVar);
        y(hVar, dVar, c0004a, fVar);
        hVar.l(fVar);
    }

    private void t(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        hVar.c(21, c0004a.g("hasNameFilters"));
        hVar.a(153, fVar);
        Class cls = dVar.f18201e;
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 2);
        hVar.c(25, C0004a.f177h);
        if (cls == Byte.TYPE) {
            hVar.c(21, c0004a.g("byte"));
            hVar.j(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
        } else if (cls == Short.TYPE) {
            hVar.c(21, c0004a.g("short"));
            hVar.j(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
        } else if (cls == Integer.TYPE) {
            hVar.c(21, c0004a.g("int"));
            hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        } else if (cls == Character.TYPE) {
            hVar.c(21, c0004a.g("char"));
            hVar.j(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
        } else if (cls == Long.TYPE) {
            hVar.c(22, c0004a.h("long", 2));
            hVar.j(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
        } else if (cls == Float.TYPE) {
            hVar.c(23, c0004a.g("float"));
            hVar.j(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
        } else if (cls == Double.TYPE) {
            hVar.c(24, c0004a.h("double", 2));
            hVar.j(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
        } else if (cls == Boolean.TYPE) {
            hVar.c(21, c0004a.g("boolean"));
            hVar.j(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
        } else if (cls == BigDecimal.class) {
            hVar.c(25, c0004a.g("decimal"));
        } else if (cls == String.class) {
            hVar.c(25, c0004a.g("string"));
        } else if (cls.isEnum()) {
            hVar.c(25, c0004a.g("enum"));
        } else if (List.class.isAssignableFrom(cls)) {
            hVar.c(25, c0004a.g("list"));
        } else {
            hVar.c(25, c0004a.g("object"));
        }
        hVar.j(182, f171h, "processKey", "(L" + f166c + ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;");
        hVar.c(58, C0004a.f177h);
        hVar.l(fVar);
    }

    private void u(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a, com.alibaba.fastjson.asm.f fVar) {
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        Class cls = dVar.f18201e;
        if (cls.isPrimitive()) {
            com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
            hVar.c(21, c0004a.g("checkValue"));
            hVar.a(154, fVar3);
            hVar.h(1);
            hVar.h(89);
            hVar.c(58, C0004a.f178i);
            hVar.c(58, C0004a.f179j);
            hVar.a(167, fVar2);
            hVar.l(fVar3);
        }
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 0);
        hVar.d(Integer.valueOf(c0004a.f(dVar.f18197a)));
        String str = f171h;
        hVar.j(182, str, "getBeanContext", "(I)" + com.alibaba.fastjson.util.b.b(p.class));
        hVar.c(25, 2);
        hVar.c(25, C0004a.f177h);
        if (cls == Byte.TYPE) {
            hVar.c(21, c0004a.g("byte"));
            hVar.j(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
            hVar.h(89);
            hVar.c(58, C0004a.f178i);
        } else if (cls == Short.TYPE) {
            hVar.c(21, c0004a.g("short"));
            hVar.j(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
            hVar.h(89);
            hVar.c(58, C0004a.f178i);
        } else if (cls == Integer.TYPE) {
            hVar.c(21, c0004a.g("int"));
            hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            hVar.h(89);
            hVar.c(58, C0004a.f178i);
        } else if (cls == Character.TYPE) {
            hVar.c(21, c0004a.g("char"));
            hVar.j(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
            hVar.h(89);
            hVar.c(58, C0004a.f178i);
        } else if (cls == Long.TYPE) {
            hVar.c(22, c0004a.h("long", 2));
            hVar.j(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
            hVar.h(89);
            hVar.c(58, C0004a.f178i);
        } else if (cls == Float.TYPE) {
            hVar.c(23, c0004a.g("float"));
            hVar.j(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
            hVar.h(89);
            hVar.c(58, C0004a.f178i);
        } else if (cls == Double.TYPE) {
            hVar.c(24, c0004a.h("double", 2));
            hVar.j(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
            hVar.h(89);
            hVar.c(58, C0004a.f178i);
        } else if (cls == Boolean.TYPE) {
            hVar.c(21, c0004a.g("boolean"));
            hVar.j(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
            hVar.h(89);
            hVar.c(58, C0004a.f178i);
        } else if (cls == BigDecimal.class) {
            hVar.c(25, c0004a.g("decimal"));
            hVar.c(58, C0004a.f178i);
            hVar.c(25, C0004a.f178i);
        } else if (cls == String.class) {
            hVar.c(25, c0004a.g("string"));
            hVar.c(58, C0004a.f178i);
            hVar.c(25, C0004a.f178i);
        } else if (cls.isEnum()) {
            hVar.c(25, c0004a.g("enum"));
            hVar.c(58, C0004a.f178i);
            hVar.c(25, C0004a.f178i);
        } else if (List.class.isAssignableFrom(cls)) {
            hVar.c(25, c0004a.g("list"));
            hVar.c(58, C0004a.f178i);
            hVar.c(25, C0004a.f178i);
        } else {
            hVar.c(25, c0004a.g("object"));
            hVar.c(58, C0004a.f178i);
            hVar.c(25, C0004a.f178i);
        }
        hVar.j(182, str, "processValue", "(L" + f166c + ";" + com.alibaba.fastjson.util.b.b(p.class) + "Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;");
        hVar.c(58, C0004a.f179j);
        hVar.c(25, C0004a.f178i);
        hVar.c(25, C0004a.f179j);
        hVar.a(165, fVar2);
        y(hVar, dVar, c0004a, fVar);
        hVar.a(167, fVar);
        hVar.l(fVar2);
    }

    private void v(com.alibaba.fastjson.asm.h hVar, C0004a c0004a) {
        hVar.c(16, 44);
        hVar.c(54, c0004a.g("seperator"));
    }

    private void w(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        if (dVar.f18197a.equals(c0004a.f182c.f201c)) {
            hVar.c(25, 1);
            hVar.c(25, 4);
            hVar.c(25, 2);
            hVar.j(182, f166c, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
            hVar.a(154, fVar);
        }
        q(hVar, dVar, c0004a, fVar);
        i(hVar, c0004a, dVar);
        hVar.c(58, c0004a.g("string"));
        g(hVar, dVar, c0004a, fVar);
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        hVar.c(25, c0004a.g("string"));
        hVar.a(199, fVar2);
        l(hVar, dVar, c0004a);
        hVar.a(167, fVar3);
        hVar.l(fVar2);
        if ("trim".equals(dVar.f18216t)) {
            hVar.c(25, c0004a.g("string"));
            hVar.j(182, "java/lang/String", "trim", "()Ljava/lang/String;");
            hVar.c(58, c0004a.g("string"));
        }
        if (c0004a.f183d) {
            hVar.c(25, c0004a.g("out"));
            hVar.c(21, c0004a.g("seperator"));
            hVar.c(25, C0004a.f177h);
            hVar.c(25, c0004a.g("string"));
            hVar.j(182, f169f, "writeFieldValueStringWithDoubleQuoteCheck", "(CLjava/lang/String;Ljava/lang/String;)V");
        } else {
            hVar.c(25, c0004a.g("out"));
            hVar.c(21, c0004a.g("seperator"));
            hVar.c(25, C0004a.f177h);
            hVar.c(25, c0004a.g("string"));
            hVar.j(182, f169f, "writeFieldValue", "(CLjava/lang/String;Ljava/lang/String;)V");
        }
        v(hVar, c0004a);
        hVar.l(fVar3);
        hVar.l(fVar);
    }

    private void x(com.alibaba.fastjson.asm.h hVar, C0004a c0004a) {
        if (c0004a.f183d) {
            hVar.c(25, c0004a.g("out"));
            hVar.c(25, C0004a.f177h);
            hVar.j(182, f169f, "writeFieldNameDirect", "(Ljava/lang/String;)V");
        } else {
            hVar.c(25, c0004a.g("out"));
            hVar.c(25, C0004a.f177h);
            hVar.h(3);
            hVar.j(182, f169f, "writeFieldName", "(Ljava/lang/String;Z)V");
        }
    }

    private void y(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0004a c0004a, com.alibaba.fastjson.asm.f fVar) {
        com.alibaba.fastjson.asm.f fVar2;
        com.alibaba.fastjson.asm.f fVar3;
        String str;
        String strK = dVar.k();
        Class cls = dVar.f18201e;
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        if (c0004a.f183d) {
            hVar.c(25, c0004a.g("object"));
        } else {
            hVar.c(25, C0004a.f179j);
        }
        hVar.h(89);
        hVar.c(58, c0004a.g("object"));
        hVar.a(199, fVar4);
        l(hVar, dVar, c0004a);
        hVar.a(167, fVar);
        hVar.l(fVar4);
        hVar.c(25, c0004a.g("out"));
        hVar.c(21, c0004a.g("seperator"));
        hVar.j(182, f169f, "write", "(I)V");
        x(hVar, c0004a);
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
        if (!Modifier.isPublic(cls.getModifiers()) || y4.h.w(cls)) {
            fVar2 = fVar5;
            fVar3 = fVar6;
        } else {
            hVar.c(25, c0004a.g("object"));
            hVar.j(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls)));
            hVar.a(166, fVar6);
            j(c0004a, hVar, dVar);
            hVar.c(58, c0004a.g("fied_ser"));
            com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
            hVar.c(25, c0004a.g("fied_ser"));
            String str2 = f171h;
            hVar.f(193, str2);
            hVar.a(153, fVar7);
            int i11 = dVar.f18205i;
            boolean z10 = (SerializerFeature.DisableCircularReferenceDetect.mask & i11) != 0;
            boolean z11 = (SerializerFeature.BeanToArray.mask & i11) != 0;
            if (z10 || (c0004a.f186g && c0004a.f183d)) {
                str = z11 ? "writeAsArrayNonContext" : "writeDirectNonContext";
            } else {
                str = z11 ? "writeAsArray" : "write";
            }
            hVar.c(25, c0004a.g("fied_ser"));
            hVar.f(PsExtractor.AUDIO_STREAM, str2);
            hVar.c(25, 1);
            hVar.c(25, c0004a.g("object"));
            hVar.c(25, C0004a.f177h);
            hVar.c(25, 0);
            hVar.b(180, c0004a.f181b, dVar.f18197a + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            hVar.d(Integer.valueOf(dVar.f18205i));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("(L");
            String str3 = f166c;
            sb2.append(str3);
            sb2.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            hVar.j(182, str2, str, sb2.toString());
            hVar.a(167, fVar8);
            hVar.l(fVar7);
            hVar.c(25, c0004a.g("fied_ser"));
            hVar.c(25, 1);
            hVar.c(25, c0004a.g("object"));
            hVar.c(25, C0004a.f177h);
            hVar.c(25, 0);
            hVar.b(180, c0004a.f181b, dVar.f18197a + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            hVar.d(Integer.valueOf(dVar.f18205i));
            hVar.j(185, f167d, "write", "(L" + str3 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            hVar.l(fVar8);
            fVar2 = fVar5;
            hVar.a(167, fVar2);
            fVar3 = fVar6;
        }
        hVar.l(fVar3);
        hVar.c(25, 1);
        if (c0004a.f183d) {
            hVar.c(25, c0004a.g("object"));
        } else {
            hVar.c(25, C0004a.f179j);
        }
        if (strK != 0) {
            hVar.d(strK);
            hVar.j(182, f166c, "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
        } else {
            hVar.c(25, C0004a.f177h);
            Type type = dVar.f18202f;
            if ((type instanceof Class) && ((Class) type).isPrimitive()) {
                hVar.j(182, f166c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                if (dVar.f18201e == String.class) {
                    hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(String.class)));
                } else {
                    hVar.c(25, 0);
                    hVar.b(180, c0004a.f181b, dVar.f18197a + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                }
                hVar.d(Integer.valueOf(dVar.f18205i));
                hVar.j(182, f166c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
        }
        hVar.l(fVar2);
        v(hVar, c0004a);
    }

    public p0 z(f1 f1Var) {
        String str;
        String str2;
        String str3;
        Class<String> cls;
        boolean z10;
        Class<f1> cls2;
        boolean z11;
        com.alibaba.fastjson.util.d[] dVarArr;
        a aVar;
        int i11;
        String str4;
        boolean z12;
        boolean z13;
        String str5;
        boolean z14;
        boolean z15;
        int i12;
        char c11;
        int i13;
        int i14;
        Method method;
        Class cls3 = f1Var.f199a;
        if (cls3.isPrimitive()) {
            throw new JSONException("unsupportd class " + cls3.getName());
        }
        x4.d dVar = (x4.d) TypeUtils.N(cls3, x4.d.class);
        com.alibaba.fastjson.util.d[] dVarArr2 = f1Var.f203e;
        for (com.alibaba.fastjson.util.d dVar2 : dVarArr2) {
            if (dVar2.f18199c == null && (method = dVar2.f18198b) != null && method.getDeclaringClass().isInterface()) {
                return new p0(f1Var);
            }
        }
        com.alibaba.fastjson.util.d[] dVarArr3 = f1Var.f204f;
        boolean z16 = dVarArr3 == f1Var.f203e;
        if (dVarArr3.length > 256) {
            return new p0(f1Var);
        }
        for (com.alibaba.fastjson.util.d dVar3 : dVarArr3) {
            if (!com.alibaba.fastjson.util.b.a(dVar3.m().getName())) {
                return new p0(f1Var);
            }
        }
        String str6 = "ASMSerializer_" + this.f176b.incrementAndGet() + "_" + cls3.getSimpleName();
        Package r11 = a.class.getPackage();
        if (r11 != null) {
            String name = r11.getName();
            str2 = name + "." + str6;
            str = name.replace('.', '/') + "/" + str6;
        } else {
            str = str6;
            str2 = str;
        }
        com.alibaba.fastjson.asm.c cVar = new com.alibaba.fastjson.asm.c();
        cVar.k(49, 33, str, f171h, new String[]{f167d});
        int length = dVarArr3.length;
        int i15 = 0;
        while (true) {
            str3 = str2;
            cls = String.class;
            if (i15 >= length) {
                break;
            }
            int i16 = length;
            com.alibaba.fastjson.util.d dVar4 = dVarArr3[i15];
            com.alibaba.fastjson.util.d[] dVarArr4 = dVarArr2;
            if (dVar4.f18201e.isPrimitive() || dVar4.f18201e == cls) {
                i14 = 1;
            } else {
                new com.alibaba.fastjson.asm.d(cVar, 1, dVar4.f18197a + "_asm_fieldType", "Ljava/lang/reflect/Type;").c();
                if (List.class.isAssignableFrom(dVar4.f18201e)) {
                    new com.alibaba.fastjson.asm.d(cVar, 1, dVar4.f18197a + "_asm_list_item_ser_", f168e).c();
                }
                i14 = 1;
                new com.alibaba.fastjson.asm.d(cVar, 1, dVar4.f18197a + "_asm_ser_", f168e).c();
            }
            i15 += i14;
            length = i16;
            str2 = str3;
            dVarArr2 = dVarArr4;
        }
        com.alibaba.fastjson.util.d[] dVarArr5 = dVarArr2;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        Class<f1> cls4 = f1.class;
        sb2.append(com.alibaba.fastjson.util.b.b(cls4));
        sb2.append(")V");
        com.alibaba.fastjson.asm.i iVar = new com.alibaba.fastjson.asm.i(cVar, 1, "<init>", sb2.toString(), null, null);
        iVar.c(25, 0);
        iVar.c(25, 1);
        iVar.j(183, f171h, "<init>", "(" + com.alibaba.fastjson.util.b.b(cls4) + ")V");
        int i17 = 0;
        while (i17 < dVarArr3.length) {
            com.alibaba.fastjson.util.d dVar5 = dVarArr3[i17];
            if (dVar5.f18201e.isPrimitive()) {
                cVar = cVar;
                cls = cls;
            } else {
                if (dVar5.f18201e == cls) {
                    cVar = cVar;
                    cls = cls;
                    i13 = 1;
                } else {
                    iVar.c(25, 0);
                    if (dVar5.f18198b != null) {
                        iVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(dVar5.f18203g)));
                        iVar.d(dVar5.f18198b.getName());
                        iVar.j(184, com.alibaba.fastjson.util.b.g(com.alibaba.fastjson.util.b.class), "getMethodType", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;");
                    } else {
                        iVar.c(25, 0);
                        iVar.d(Integer.valueOf(i17));
                        iVar.j(183, f171h, "getFieldType", "(I)Ljava/lang/reflect/Type;");
                    }
                    iVar.b(181, str, dVar5.f18197a + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                }
                i17 += i13;
                cVar = cVar;
                cls = cls;
            }
            i13 = 1;
            i17 += i13;
            cVar = cVar;
            cls = cls;
        }
        com.alibaba.fastjson.asm.c cVar2 = cVar;
        iVar.h(177);
        iVar.i(4, 4);
        iVar.k();
        if (dVar == null) {
            z10 = false;
            break;
        }
        SerializerFeature[] serializerFeatureArrSerialzeFeatures = dVar.serialzeFeatures();
        int length2 = serializerFeatureArrSerialzeFeatures.length;
        int i18 = 0;
        while (true) {
            if (i18 >= length2) {
                z10 = false;
                break;
            }
            if (serializerFeatureArrSerialzeFeatures[i18] == SerializerFeature.DisableCircularReferenceDetect) {
                z10 = true;
                break;
            }
            i18++;
        }
        int i19 = 0;
        while (true) {
            cls2 = cls4;
            z11 = z10;
            if (i19 >= 3) {
                break;
            }
            if (i19 == 0) {
                str5 = "write";
                z15 = z11;
                z14 = true;
            } else if (i19 == 1) {
                str5 = "writeNormal";
                z15 = z11;
                z14 = false;
            } else {
                str5 = "writeDirectNonContext";
                z14 = true;
                z15 = true;
            }
            com.alibaba.fastjson.util.d[] dVarArr6 = dVarArr3;
            int i20 = i19;
            com.alibaba.fastjson.asm.c cVar3 = cVar2;
            C0004a c0004a = new C0004a(dVarArr3, f1Var, str, z14, z15);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("(L");
            String str7 = f166c;
            sb3.append(str7);
            sb3.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            com.alibaba.fastjson.asm.i iVar2 = new com.alibaba.fastjson.asm.i(cVar2, 1, str5, sb3.toString(), null, new String[]{"java/io/IOException"});
            com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
            iVar2.c(25, 2);
            iVar2.a(199, fVar);
            iVar2.c(25, 1);
            iVar2.j(182, str7, "writeNull", "()V");
            iVar2.h(177);
            iVar2.l(fVar);
            iVar2.c(25, 1);
            iVar2.b(180, str7, "out", f170g);
            iVar2.c(58, c0004a.g("out"));
            if (!z16 && !c0004a.f183d && (dVar == null || dVar.alphabetic())) {
                com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
                iVar2.c(25, c0004a.g("out"));
                iVar2.j(182, f169f, "isSortField", "()Z");
                iVar2.a(154, fVar2);
                iVar2.c(25, 0);
                iVar2.c(25, 1);
                iVar2.c(25, 2);
                iVar2.c(25, 3);
                iVar2.c(25, 4);
                iVar2.c(21, 5);
                iVar2.j(182, str, "writeUnsorted", "(L" + str7 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                iVar2.h(177);
                iVar2.l(fVar2);
            }
            if (!c0004a.f183d || z15) {
                i12 = 177;
                c11 = 4;
            } else {
                com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
                com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
                iVar2.c(25, 0);
                iVar2.c(25, 1);
                iVar2.j(182, f171h, "writeDirect", "(L" + str7 + ";)Z");
                iVar2.a(154, fVar4);
                iVar2.c(25, 0);
                iVar2.c(25, 1);
                iVar2.c(25, 2);
                iVar2.c(25, 3);
                iVar2.c(25, 4);
                iVar2.c(21, 5);
                iVar2.j(182, str, "writeNormal", "(L" + str7 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                iVar2.h(177);
                iVar2.l(fVar4);
                iVar2.c(25, c0004a.g("out"));
                iVar2.d(Integer.valueOf(SerializerFeature.DisableCircularReferenceDetect.mask));
                iVar2.j(182, f169f, "isEnabled", "(I)Z");
                iVar2.a(153, fVar3);
                iVar2.c(25, 0);
                iVar2.c(25, 1);
                iVar2.c(25, 2);
                iVar2.c(25, 3);
                c11 = 4;
                iVar2.c(25, 4);
                iVar2.c(21, 5);
                iVar2.j(182, str, "writeDirectNonContext", "(L" + str7 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                i12 = 177;
                iVar2.h(177);
                iVar2.l(fVar3);
            }
            iVar2.c(25, 2);
            iVar2.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls3));
            iVar2.c(58, c0004a.g("entity"));
            B(cls3, iVar2, dVarArr6, c0004a);
            iVar2.h(i12);
            iVar2.i(7, c0004a.f185f + 2);
            iVar2.k();
            i19 = i20 + 1;
            dVarArr3 = dVarArr6;
            dVar = dVar;
            cls4 = cls2;
            z10 = z11;
            cVar2 = cVar3;
        }
        com.alibaba.fastjson.util.d[] dVarArr7 = dVarArr3;
        com.alibaba.fastjson.asm.c cVar4 = cVar2;
        if (z16) {
            dVarArr = dVarArr7;
            aVar = this;
            i11 = 180;
        } else {
            dVarArr = dVarArr7;
            aVar = this;
            i11 = 180;
            C0004a c0004a2 = new C0004a(dVarArr, f1Var, str, false, z11);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("(L");
            String str8 = f166c;
            sb4.append(str8);
            sb4.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            com.alibaba.fastjson.asm.i iVar3 = new com.alibaba.fastjson.asm.i(cVar4, 1, "writeUnsorted", sb4.toString(), null, new String[]{"java/io/IOException"});
            iVar3.c(25, 1);
            iVar3.b(180, str8, "out", f170g);
            iVar3.c(58, c0004a2.g("out"));
            iVar3.c(25, 2);
            iVar3.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls3));
            iVar3.c(58, c0004a2.g("entity"));
            aVar.B(cls3, iVar3, dVarArr5, c0004a2);
            iVar3.h(177);
            iVar3.i(7, c0004a2.f185f + 2);
            iVar3.k();
        }
        int i21 = 0;
        for (int i22 = 3; i21 < i22; i22 = i22) {
            if (i21 == 0) {
                str4 = "writeAsArray";
                z13 = z11;
                z12 = true;
            } else if (i21 == 1) {
                str4 = "writeAsArrayNormal";
                z13 = z11;
                z12 = false;
            } else {
                str4 = "writeAsArrayNonContext";
                z12 = true;
                z13 = true;
            }
            C0004a c0004a3 = new C0004a(dVarArr, f1Var, str, z12, z13);
            StringBuilder sb5 = new StringBuilder();
            sb5.append("(L");
            String str9 = f166c;
            sb5.append(str9);
            sb5.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            com.alibaba.fastjson.asm.i iVar4 = new com.alibaba.fastjson.asm.i(cVar4, 1, str4, sb5.toString(), null, new String[]{"java/io/IOException"});
            iVar4.c(25, 1);
            iVar4.b(i11, str9, "out", f170g);
            iVar4.c(58, c0004a3.g("out"));
            iVar4.c(25, 2);
            iVar4.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls3));
            iVar4.c(58, c0004a3.g("entity"));
            aVar.A(cls3, iVar4, dVarArr, c0004a3);
            iVar4.h(177);
            iVar4.i(7, c0004a3.f185f + 2);
            iVar4.k();
            i21++;
        }
        byte[] bArrJ = cVar4.j();
        return (p0) aVar.f175a.a(str3, bArrJ, 0, bArrJ.length).getConstructor(cls2).newInstance(f1Var);
    }
}
