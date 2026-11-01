package z4;

import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f79209c = com.alibaba.fastjson.util.b.g(y4.a.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f79210d = com.alibaba.fastjson.util.b.g(y4.c.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.alibaba.fastjson.util.a f79211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final AtomicLong f79212b = new AtomicLong();

    /* JADX INFO: renamed from: z4.a$a, reason: collision with other inner class name */
    static class C0975a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f79213a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map f79214b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Class f79215c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.alibaba.fastjson.util.h f79216d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f79217e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.alibaba.fastjson.util.d[] f79218f;

        public C0975a(String str, y4.h hVar, com.alibaba.fastjson.util.h hVar2, int i11) {
            this.f79213a = -1;
            this.f79217e = str;
            this.f79215c = hVar2.f18242a;
            this.f79213a = i11;
            this.f79216d = hVar2;
            this.f79218f = hVar2.f18249h;
        }

        public String g(com.alibaba.fastjson.util.d dVar) {
            if (j(dVar.f18197a)) {
                return dVar.f18197a + "_asm_deser__";
            }
            return "_asm_deser__" + TypeUtils.K(dVar.f18197a);
        }

        public String h(com.alibaba.fastjson.util.d dVar) {
            if (j(dVar.f18197a)) {
                return dVar.f18197a + "_asm_prefix__";
            }
            return "asm_field_" + TypeUtils.K(dVar.f18197a);
        }

        public Class i() {
            Class cls = this.f79216d.f18243b;
            return cls == null ? this.f79215c : cls;
        }

        boolean j(String str) {
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt = str.charAt(i11);
                if (cCharAt == 0) {
                    if (!com.alibaba.fastjson.util.f.g(cCharAt)) {
                        return false;
                    }
                } else if (!com.alibaba.fastjson.util.f.k(cCharAt)) {
                    return false;
                }
            }
            return true;
        }

        public int k(String str) {
            if (((Integer) this.f79214b.get(str)) == null) {
                Map map = this.f79214b;
                int i11 = this.f79213a;
                this.f79213a = i11 + 1;
                map.put(str, Integer.valueOf(i11));
            }
            return ((Integer) this.f79214b.get(str)).intValue();
        }

        public int l(String str, int i11) {
            if (((Integer) this.f79214b.get(str)) == null) {
                this.f79214b.put(str, Integer.valueOf(this.f79213a));
                this.f79213a += i11;
            }
            return ((Integer) this.f79214b.get(str)).intValue();
        }

        public int m(com.alibaba.fastjson.util.d dVar) {
            return k(dVar.f18197a + "_asm");
        }

        public int n(com.alibaba.fastjson.util.d dVar, int i11) {
            return l(dVar.f18197a + "_asm", i11);
        }
    }

    public a(ClassLoader classLoader) {
        this.f79211a = classLoader instanceof com.alibaba.fastjson.util.a ? (com.alibaba.fastjson.util.a) classLoader : new com.alibaba.fastjson.util.a(classLoader);
    }

    private void a(C0975a c0975a, com.alibaba.fastjson.asm.h hVar) {
        b(c0975a, hVar, true);
    }

    private void b(C0975a c0975a, com.alibaba.fastjson.asm.h hVar, boolean z10) {
        int length = c0975a.f79218f.length;
        for (int i11 = 0; i11 < length; i11++) {
            com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
            if (z10) {
                n(hVar, c0975a, i11, fVar);
            }
            o(c0975a, hVar, c0975a.f79218f[i11]);
            if (z10) {
                hVar.l(fVar);
            }
        }
    }

    private void c(com.alibaba.fastjson.asm.c cVar, C0975a c0975a) {
        if (Modifier.isPublic(c0975a.f79216d.f18244c.getModifiers())) {
            com.alibaba.fastjson.asm.i iVar = new com.alibaba.fastjson.asm.i(cVar, 1, "createInstance", "(L" + f79209c + ";Ljava/lang/reflect/Type;)Ljava/lang/Object;", null, null);
            iVar.f(187, com.alibaba.fastjson.util.b.g(c0975a.i()));
            iVar.h(89);
            iVar.j(183, com.alibaba.fastjson.util.b.g(c0975a.i()), "<init>", "()V");
            iVar.h(176);
            iVar.i(3, 3);
            iVar.k();
        }
    }

    private void d(C0975a c0975a, com.alibaba.fastjson.asm.h hVar) {
        Constructor constructor = c0975a.f79216d.f18244c;
        if (Modifier.isPublic(constructor.getModifiers())) {
            hVar.f(187, com.alibaba.fastjson.util.b.g(c0975a.i()));
            hVar.h(89);
            hVar.j(183, com.alibaba.fastjson.util.b.g(constructor.getDeclaringClass()), "<init>", "()V");
        } else {
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 0);
            hVar.b(180, com.alibaba.fastjson.util.b.g(o.class), "clazz", "Ljava/lang/Class;");
            hVar.j(183, com.alibaba.fastjson.util.b.g(o.class), "createInstance", "(L" + f79209c + ";Ljava/lang/reflect/Type;)Ljava/lang/Object;");
            hVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(c0975a.i()));
        }
        hVar.c(58, c0975a.k("instance"));
    }

    private void e(C0975a c0975a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, Class cls, int i11) {
        l(c0975a, hVar, dVar);
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        if ((dVar.f18206j & Feature.SupportArrayToBean.mask) != 0) {
            hVar.h(89);
            hVar.f(193, com.alibaba.fastjson.util.b.g(o.class));
            hVar.a(153, fVar);
            hVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(o.class));
            hVar.c(25, 1);
            if (dVar.f18202f instanceof Class) {
                hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(dVar.f18201e)));
            } else {
                hVar.c(25, 0);
                hVar.d(Integer.valueOf(i11));
                hVar.j(182, com.alibaba.fastjson.util.b.g(o.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            }
            hVar.d(dVar.f18197a);
            hVar.d(Integer.valueOf(dVar.f18206j));
            hVar.j(182, com.alibaba.fastjson.util.b.g(o.class), "deserialze", "(L" + f79209c + ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
            hVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls));
            hVar.c(58, c0975a.m(dVar));
            hVar.a(167, fVar2);
            hVar.l(fVar);
        }
        hVar.c(25, 1);
        if (dVar.f18202f instanceof Class) {
            hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(dVar.f18201e)));
        } else {
            hVar.c(25, 0);
            hVar.d(Integer.valueOf(i11));
            hVar.j(182, com.alibaba.fastjson.util.b.g(o.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
        }
        hVar.d(dVar.f18197a);
        hVar.j(185, com.alibaba.fastjson.util.b.g(b2.class), "deserialze", "(L" + f79209c + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        hVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls));
        hVar.c(58, c0975a.m(dVar));
        hVar.l(fVar2);
    }

    private void f(C0975a c0975a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.asm.f fVar) {
        hVar.g(21, c0975a.k("matchedCount"));
        hVar.a(158, fVar);
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, f79210d, "token", "()I");
        hVar.d(13);
        hVar.a(160, fVar);
        r(c0975a, hVar);
    }

    /* JADX WARN: Code duplicated, block: B:136:0x0ac5  */
    private void g(com.alibaba.fastjson.asm.c cVar, C0975a c0975a) {
        int i11;
        com.alibaba.fastjson.asm.f fVar;
        String str;
        String str2;
        com.alibaba.fastjson.asm.i iVar;
        com.alibaba.fastjson.asm.f fVar2;
        com.alibaba.fastjson.asm.f fVar3;
        int i12;
        String str3;
        char c11;
        String str4;
        com.alibaba.fastjson.asm.f fVar4;
        if (c0975a.f79218f.length == 0) {
            return;
        }
        for (com.alibaba.fastjson.util.d dVar : c0975a.f79218f) {
            Class cls = dVar.f18201e;
            Type type = dVar.f18202f;
            if (cls == Character.TYPE) {
                return;
            }
            if (Collection.class.isAssignableFrom(cls) && (!(type instanceof ParameterizedType) || !(((ParameterizedType) type).getActualTypeArguments()[0] instanceof Class))) {
                return;
            }
        }
        com.alibaba.fastjson.util.h hVar = c0975a.f79216d;
        c0975a.f79218f = hVar.f18250i;
        StringBuilder sb2 = new StringBuilder();
        String str5 = "(L";
        sb2.append("(L");
        String str6 = f79209c;
        sb2.append(str6);
        sb2.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
        com.alibaba.fastjson.asm.i iVar2 = new com.alibaba.fastjson.asm.i(cVar, 1, "deserialze", sb2.toString(), null, null);
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
        w(c0975a, iVar2);
        com.alibaba.fastjson.asm.f fVar9 = new com.alibaba.fastjson.asm.f();
        iVar2.c(25, c0975a.k("lexer"));
        String str7 = f79210d;
        iVar2.j(182, str7, "token", "()I");
        iVar2.d(14);
        iVar2.a(160, fVar9);
        int i13 = hVar.f18251j;
        Feature feature = Feature.SupportArrayToBean;
        if ((i13 & feature.mask) == 0) {
            iVar2.c(25, c0975a.k("lexer"));
            iVar2.c(21, 4);
            iVar2.d(Integer.valueOf(feature.mask));
            iVar2.j(182, str7, "isEnabled", "(II)Z");
            iVar2.a(153, fVar9);
        }
        iVar2.c(25, 0);
        iVar2.c(25, 1);
        iVar2.c(25, 2);
        iVar2.c(25, 3);
        iVar2.h(1);
        iVar2.j(183, c0975a.f79217e, "deserialzeArrayMapping", "(L" + str6 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
        iVar2.h(176);
        iVar2.l(fVar9);
        iVar2.c(25, c0975a.k("lexer"));
        iVar2.d(Integer.valueOf(Feature.SortFeidFastMatch.mask));
        iVar2.j(182, str7, "isEnabled", "(I)Z");
        com.alibaba.fastjson.asm.f fVar10 = new com.alibaba.fastjson.asm.f();
        iVar2.a(154, fVar10);
        iVar2.a(200, fVar6);
        iVar2.l(fVar10);
        iVar2.c(25, c0975a.k("lexer"));
        iVar2.d(c0975a.f79215c.getName());
        iVar2.j(182, str7, "scanType", "(Ljava/lang/String;)I");
        iVar2.d(-1);
        com.alibaba.fastjson.asm.f fVar11 = new com.alibaba.fastjson.asm.f();
        iVar2.a(160, fVar11);
        iVar2.a(200, fVar6);
        iVar2.l(fVar11);
        iVar2.c(25, 1);
        iVar2.j(182, str6, "getContext", "()" + com.alibaba.fastjson.util.b.b(y4.g.class));
        iVar2.c(58, c0975a.k("mark_context"));
        iVar2.h(3);
        iVar2.c(54, c0975a.k("matchedCount"));
        d(c0975a, iVar2);
        iVar2.c(25, 1);
        iVar2.j(182, str6, "getContext", "()" + com.alibaba.fastjson.util.b.b(y4.g.class));
        iVar2.c(58, c0975a.k("context"));
        iVar2.c(25, 1);
        iVar2.c(25, c0975a.k("context"));
        iVar2.c(25, c0975a.k("instance"));
        iVar2.c(25, 3);
        iVar2.j(182, str6, "setContext", "(" + com.alibaba.fastjson.util.b.b(y4.g.class) + "Ljava/lang/Object;Ljava/lang/Object;)" + com.alibaba.fastjson.util.b.b(y4.g.class));
        iVar2.c(58, c0975a.k("childContext"));
        iVar2.c(25, c0975a.k("lexer"));
        String str8 = "matchStat";
        String str9 = "I";
        iVar2.b(180, str7, "matchStat", "I");
        iVar2.d(4);
        com.alibaba.fastjson.asm.f fVar12 = new com.alibaba.fastjson.asm.f();
        iVar2.a(160, fVar12);
        iVar2.a(200, fVar7);
        iVar2.l(fVar12);
        int i14 = 3;
        iVar2.h(3);
        iVar2.g(54, c0975a.k("matchStat"));
        int length = c0975a.f79218f.length;
        int i15 = 0;
        while (i15 < length) {
            iVar2.h(i14);
            iVar2.c(54, c0975a.k("_asm_flag_" + (i15 / 32)));
            i15 += 32;
            i14 = 3;
        }
        iVar2.c(25, c0975a.k("lexer"));
        iVar2.d(Integer.valueOf(Feature.InitStringFieldAsEmpty.mask));
        iVar2.j(182, f79210d, "isEnabled", "(I)Z");
        iVar2.g(54, c0975a.k("initStringFieldAsEmpty"));
        int i16 = 0;
        while (i16 < length) {
            com.alibaba.fastjson.util.d dVar2 = c0975a.f79218f[i16];
            Class cls2 = dVar2.f18201e;
            if (cls2 == Boolean.TYPE || cls2 == Byte.TYPE || cls2 == Short.TYPE || cls2 == Integer.TYPE) {
                str5 = str5;
                fVar5 = fVar5;
                fVar6 = fVar6;
                fVar7 = fVar7;
                iVar2.h(3);
                iVar2.c(54, c0975a.m(dVar2));
            } else {
                if (cls2 == Long.TYPE) {
                    iVar2.h(9);
                    iVar2.c(55, c0975a.n(dVar2, 2));
                } else if (cls2 == Float.TYPE) {
                    iVar2.h(11);
                    iVar2.c(56, c0975a.m(dVar2));
                } else if (cls2 == Double.TYPE) {
                    iVar2.h(14);
                    iVar2.c(57, c0975a.n(dVar2, 2));
                } else {
                    if (cls2 == String.class) {
                        com.alibaba.fastjson.asm.f fVar13 = new com.alibaba.fastjson.asm.f();
                        com.alibaba.fastjson.asm.f fVar14 = new com.alibaba.fastjson.asm.f();
                        iVar2.c(21, c0975a.k("initStringFieldAsEmpty"));
                        iVar2.a(153, fVar14);
                        u(iVar2, c0975a, i16);
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.j(182, f79210d, "stringDefaultValue", "()Ljava/lang/String;");
                        iVar2.a(167, fVar13);
                        iVar2.l(fVar14);
                        iVar2.h(1);
                        iVar2.l(fVar13);
                    } else {
                        iVar2.h(1);
                    }
                    iVar2.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls2));
                    iVar2.c(58, c0975a.m(dVar2));
                }
                str5 = str5;
                fVar5 = fVar5;
                fVar6 = fVar6;
                fVar7 = fVar7;
            }
            i16++;
            fVar6 = fVar6;
            fVar7 = fVar7;
            fVar5 = fVar5;
            str5 = str5;
        }
        String str10 = str5;
        com.alibaba.fastjson.asm.f fVar15 = fVar5;
        com.alibaba.fastjson.asm.f fVar16 = fVar6;
        com.alibaba.fastjson.asm.f fVar17 = fVar7;
        int i17 = 0;
        while (i17 < length) {
            com.alibaba.fastjson.util.d dVar3 = c0975a.f79218f[i17];
            Class cls3 = dVar3.f18201e;
            Type type2 = dVar3.f18202f;
            com.alibaba.fastjson.asm.f fVar18 = new com.alibaba.fastjson.asm.f();
            if (cls3 == Boolean.TYPE) {
                iVar2.c(25, c0975a.k("lexer"));
                iVar2.c(25, 0);
                iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                iVar2.j(182, f79210d, "scanFieldBoolean", "([C)Z");
                iVar2.c(54, c0975a.m(dVar3));
            } else {
                if (cls3 == Byte.TYPE) {
                    iVar2.c(25, c0975a.k("lexer"));
                    iVar2.c(25, 0);
                    iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                    iVar2.j(182, f79210d, "scanFieldInt", "([C)I");
                    iVar2.c(54, c0975a.m(dVar3));
                } else {
                    i11 = length;
                    fVar = fVar18;
                    if (cls3 == Byte.class) {
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.c(25, 0);
                        iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                        String str11 = f79210d;
                        iVar2.j(182, str11, "scanFieldInt", "([C)I");
                        iVar2.j(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                        iVar2.c(58, c0975a.m(dVar3));
                        com.alibaba.fastjson.asm.f fVar19 = new com.alibaba.fastjson.asm.f();
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.b(180, str11, str8, str9);
                        iVar2.d(5);
                        iVar2.a(160, fVar19);
                        iVar2.h(1);
                        iVar2.c(58, c0975a.m(dVar3));
                        iVar2.l(fVar19);
                    } else if (cls3 == Short.TYPE) {
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.c(25, 0);
                        iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                        iVar2.j(182, f79210d, "scanFieldInt", "([C)I");
                        iVar2.c(54, c0975a.m(dVar3));
                    } else if (cls3 == Short.class) {
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.c(25, 0);
                        iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                        String str12 = f79210d;
                        iVar2.j(182, str12, "scanFieldInt", "([C)I");
                        iVar2.j(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                        iVar2.c(58, c0975a.m(dVar3));
                        com.alibaba.fastjson.asm.f fVar20 = new com.alibaba.fastjson.asm.f();
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.b(180, str12, str8, str9);
                        iVar2.d(5);
                        iVar2.a(160, fVar20);
                        iVar2.h(1);
                        iVar2.c(58, c0975a.m(dVar3));
                        iVar2.l(fVar20);
                    } else if (cls3 == Integer.TYPE) {
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.c(25, 0);
                        iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                        iVar2.j(182, f79210d, "scanFieldInt", "([C)I");
                        iVar2.c(54, c0975a.m(dVar3));
                    } else if (cls3 == Integer.class) {
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.c(25, 0);
                        iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                        String str13 = f79210d;
                        iVar2.j(182, str13, "scanFieldInt", "([C)I");
                        iVar2.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                        iVar2.c(58, c0975a.m(dVar3));
                        com.alibaba.fastjson.asm.f fVar21 = new com.alibaba.fastjson.asm.f();
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.b(180, str13, str8, str9);
                        iVar2.d(5);
                        iVar2.a(160, fVar21);
                        iVar2.h(1);
                        iVar2.c(58, c0975a.m(dVar3));
                        iVar2.l(fVar21);
                    } else if (cls3 == Long.TYPE) {
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.c(25, 0);
                        iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                        iVar2.j(182, f79210d, "scanFieldLong", "([C)J");
                        iVar2.c(55, c0975a.n(dVar3, 2));
                    } else if (cls3 == Long.class) {
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.c(25, 0);
                        iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                        String str14 = f79210d;
                        iVar2.j(182, str14, "scanFieldLong", "([C)J");
                        iVar2.j(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                        iVar2.c(58, c0975a.m(dVar3));
                        com.alibaba.fastjson.asm.f fVar22 = new com.alibaba.fastjson.asm.f();
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.b(180, str14, str8, str9);
                        iVar2.d(5);
                        iVar2.a(160, fVar22);
                        iVar2.h(1);
                        iVar2.c(58, c0975a.m(dVar3));
                        iVar2.l(fVar22);
                    } else if (cls3 == Float.TYPE) {
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.c(25, 0);
                        iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                        iVar2.j(182, f79210d, "scanFieldFloat", "([C)F");
                        iVar2.c(56, c0975a.m(dVar3));
                    } else if (cls3 == Float.class) {
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.c(25, 0);
                        iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                        String str15 = f79210d;
                        iVar2.j(182, str15, "scanFieldFloat", "([C)F");
                        iVar2.j(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                        iVar2.c(58, c0975a.m(dVar3));
                        com.alibaba.fastjson.asm.f fVar23 = new com.alibaba.fastjson.asm.f();
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.b(180, str15, str8, str9);
                        iVar2.d(5);
                        iVar2.a(160, fVar23);
                        iVar2.h(1);
                        iVar2.c(58, c0975a.m(dVar3));
                        iVar2.l(fVar23);
                    } else {
                        if (cls3 == Double.TYPE) {
                            iVar2.c(25, c0975a.k("lexer"));
                            iVar2.c(25, 0);
                            iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                            iVar2.j(182, f79210d, "scanFieldDouble", "([C)D");
                            iVar2.c(57, c0975a.n(dVar3, 2));
                        } else if (cls3 == Double.class) {
                            iVar2.c(25, c0975a.k("lexer"));
                            iVar2.c(25, 0);
                            iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                            String str16 = f79210d;
                            iVar2.j(182, str16, "scanFieldDouble", "([C)D");
                            iVar2.j(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                            iVar2.c(58, c0975a.m(dVar3));
                            com.alibaba.fastjson.asm.f fVar24 = new com.alibaba.fastjson.asm.f();
                            iVar2.c(25, c0975a.k("lexer"));
                            iVar2.b(180, str16, str8, str9);
                            iVar2.d(5);
                            iVar2.a(160, fVar24);
                            iVar2.h(1);
                            iVar2.c(58, c0975a.m(dVar3));
                            iVar2.l(fVar24);
                        } else {
                            if (cls3 == String.class) {
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.c(25, 0);
                                iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                                iVar2.j(182, f79210d, "scanFieldString", "([C)Ljava/lang/String;");
                                c11 = ':';
                                iVar2.c(58, c0975a.m(dVar3));
                            } else if (cls3 == Date.class) {
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.c(25, 0);
                                iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                                iVar2.j(182, f79210d, "scanFieldDate", "([C)Ljava/util/Date;");
                                c11 = ':';
                                iVar2.c(58, c0975a.m(dVar3));
                            } else if (cls3 == UUID.class) {
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.c(25, 0);
                                iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                                iVar2.j(182, f79210d, "scanFieldUUID", "([C)Ljava/util/UUID;");
                                c11 = ':';
                                iVar2.c(58, c0975a.m(dVar3));
                            } else if (cls3 == BigDecimal.class) {
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.c(25, 0);
                                iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                                iVar2.j(182, f79210d, "scanFieldDecimal", "([C)Ljava/math/BigDecimal;");
                                c11 = ':';
                                iVar2.c(58, c0975a.m(dVar3));
                            } else if (cls3 == BigInteger.class) {
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.c(25, 0);
                                iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                                iVar2.j(182, f79210d, "scanFieldBigInteger", "([C)Ljava/math/BigInteger;");
                                c11 = ':';
                                iVar2.c(58, c0975a.m(dVar3));
                            } else if (cls3 == int[].class) {
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.c(25, 0);
                                iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                                iVar2.j(182, f79210d, "scanFieldIntArray", "([C)[I");
                                c11 = ':';
                                iVar2.c(58, c0975a.m(dVar3));
                            } else if (cls3 == float[].class) {
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.c(25, 0);
                                iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                                iVar2.j(182, f79210d, "scanFieldFloatArray", "([C)[F");
                                c11 = ':';
                                iVar2.c(58, c0975a.m(dVar3));
                            } else if (cls3 == float[][].class) {
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.c(25, 0);
                                iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                                iVar2.j(182, f79210d, "scanFieldFloatArray2", "([C)[[F");
                                c11 = ':';
                                iVar2.c(58, c0975a.m(dVar3));
                            } else if (cls3.isEnum()) {
                                iVar2.c(25, 0);
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.c(25, 0);
                                iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                                l(c0975a, iVar2, dVar3);
                                String strG = com.alibaba.fastjson.util.b.g(o.class);
                                StringBuilder sb3 = new StringBuilder();
                                str10 = str10;
                                sb3.append(str10);
                                sb3.append(f79210d);
                                sb3.append(";[C");
                                sb3.append(com.alibaba.fastjson.util.b.b(b2.class));
                                sb3.append(")Ljava/lang/Enum;");
                                iVar2.j(182, strG, "scanEnum", sb3.toString());
                                iVar2.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls3));
                                iVar2.c(58, c0975a.m(dVar3));
                                iVar2.c(25, c0975a.k("lexer"));
                                str4 = f79210d;
                                iVar2.b(180, str4, str8, str9);
                                com.alibaba.fastjson.asm.f fVar25 = new com.alibaba.fastjson.asm.f();
                                iVar2.a(158, fVar25);
                                u(iVar2, c0975a, i17);
                                iVar2.l(fVar25);
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.b(180, str4, str8, str9);
                                iVar2.h(89);
                                iVar2.c(54, c0975a.k(str8));
                                iVar2.d(-1);
                                fVar4 = fVar15;
                                iVar2.a(159, fVar4);
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.b(180, str4, str8, str9);
                                com.alibaba.fastjson.asm.f fVar26 = fVar;
                                iVar2.a(158, fVar26);
                                iVar2.c(21, c0975a.k("matchedCount"));
                                iVar2.h(4);
                                iVar2.h(96);
                                iVar2.c(54, c0975a.k("matchedCount"));
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.b(180, str4, str8, str9);
                                iVar2.d(4);
                                fVar2 = fVar8;
                                iVar2.a(159, fVar2);
                                iVar2.l(fVar26);
                                if (i17 == i11 - 1) {
                                    iVar2.c(25, c0975a.k("lexer"));
                                    iVar2.b(180, str4, str8, str9);
                                    iVar2.d(4);
                                    iVar2.a(160, fVar4);
                                }
                                str3 = str9;
                                str = str8;
                                str2 = str10;
                                i12 = i11;
                                iVar = iVar2;
                                fVar3 = fVar4;
                            } else {
                                str10 = str10;
                                if (Collection.class.isAssignableFrom(cls3)) {
                                    iVar2.c(25, c0975a.k("lexer"));
                                    iVar2.c(25, 0);
                                    iVar2.b(180, c0975a.f79217e, c0975a.h(dVar3), "[C");
                                    Class clsS = TypeUtils.S(type2);
                                    if (clsS == String.class) {
                                        iVar2.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls3)));
                                        iVar2.j(182, f79210d, "scanFieldStringArray", "([CLjava/lang/Class;)" + com.alibaba.fastjson.util.b.b(Collection.class));
                                        iVar2.c(58, c0975a.m(dVar3));
                                        iVar2.c(25, c0975a.k("lexer"));
                                        str4 = f79210d;
                                        iVar2.b(180, str4, str8, str9);
                                        com.alibaba.fastjson.asm.f fVar27 = new com.alibaba.fastjson.asm.f();
                                        iVar2.a(158, fVar27);
                                        u(iVar2, c0975a, i17);
                                        iVar2.l(fVar27);
                                        iVar2.c(25, c0975a.k("lexer"));
                                        iVar2.b(180, str4, str8, str9);
                                        iVar2.h(89);
                                        iVar2.c(54, c0975a.k(str8));
                                        iVar2.d(-1);
                                        fVar4 = fVar15;
                                        iVar2.a(159, fVar4);
                                        iVar2.c(25, c0975a.k("lexer"));
                                        iVar2.b(180, str4, str8, str9);
                                        com.alibaba.fastjson.asm.f fVar28 = fVar;
                                        iVar2.a(158, fVar28);
                                        iVar2.c(21, c0975a.k("matchedCount"));
                                        iVar2.h(4);
                                        iVar2.h(96);
                                        iVar2.c(54, c0975a.k("matchedCount"));
                                        iVar2.c(25, c0975a.k("lexer"));
                                        iVar2.b(180, str4, str8, str9);
                                        iVar2.d(4);
                                        fVar2 = fVar8;
                                        iVar2.a(159, fVar2);
                                        iVar2.l(fVar28);
                                        if (i17 == i11 - 1) {
                                            iVar2.c(25, c0975a.k("lexer"));
                                            iVar2.b(180, str4, str8, str9);
                                            iVar2.d(4);
                                            iVar2.a(160, fVar4);
                                        }
                                        str3 = str9;
                                        str = str8;
                                        str2 = str10;
                                        i12 = i11;
                                        iVar = iVar2;
                                        fVar3 = fVar4;
                                    } else {
                                        fVar2 = fVar8;
                                        str3 = str9;
                                        str = str8;
                                        i12 = i11;
                                        str2 = str10;
                                        iVar = iVar2;
                                        i(c0975a, iVar2, fVar15, dVar3, cls3, clsS, i17);
                                        fVar3 = fVar15;
                                        if (i17 == i12 - 1) {
                                            f(c0975a, iVar, fVar3);
                                        }
                                    }
                                } else {
                                    str = str8;
                                    str2 = str10;
                                    iVar = iVar2;
                                    fVar2 = fVar8;
                                    fVar3 = fVar15;
                                    i12 = i11;
                                    str3 = str9;
                                    j(c0975a, iVar, fVar3, dVar3, cls3, i17);
                                    if (i17 == i12 - 1) {
                                        f(c0975a, iVar, fVar3);
                                    }
                                }
                            }
                            str10 = str10;
                            iVar2.c(25, c0975a.k("lexer"));
                            str4 = f79210d;
                            iVar2.b(180, str4, str8, str9);
                            com.alibaba.fastjson.asm.f fVar29 = new com.alibaba.fastjson.asm.f();
                            iVar2.a(158, fVar29);
                            u(iVar2, c0975a, i17);
                            iVar2.l(fVar29);
                            iVar2.c(25, c0975a.k("lexer"));
                            iVar2.b(180, str4, str8, str9);
                            iVar2.h(89);
                            iVar2.c(54, c0975a.k(str8));
                            iVar2.d(-1);
                            fVar4 = fVar15;
                            iVar2.a(159, fVar4);
                            iVar2.c(25, c0975a.k("lexer"));
                            iVar2.b(180, str4, str8, str9);
                            com.alibaba.fastjson.asm.f fVar210 = fVar;
                            iVar2.a(158, fVar210);
                            iVar2.c(21, c0975a.k("matchedCount"));
                            iVar2.h(4);
                            iVar2.h(96);
                            iVar2.c(54, c0975a.k("matchedCount"));
                            iVar2.c(25, c0975a.k("lexer"));
                            iVar2.b(180, str4, str8, str9);
                            iVar2.d(4);
                            fVar2 = fVar8;
                            iVar2.a(159, fVar2);
                            iVar2.l(fVar210);
                            if (i17 == i11 - 1) {
                                iVar2.c(25, c0975a.k("lexer"));
                                iVar2.b(180, str4, str8, str9);
                                iVar2.d(4);
                                iVar2.a(160, fVar4);
                            }
                            str3 = str9;
                            str = str8;
                            str2 = str10;
                            i12 = i11;
                            iVar = iVar2;
                            fVar3 = fVar4;
                        }
                        iVar2.c(25, c0975a.k("lexer"));
                        str4 = f79210d;
                        iVar2.b(180, str4, str8, str9);
                        com.alibaba.fastjson.asm.f fVar211 = new com.alibaba.fastjson.asm.f();
                        iVar2.a(158, fVar211);
                        u(iVar2, c0975a, i17);
                        iVar2.l(fVar211);
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.b(180, str4, str8, str9);
                        iVar2.h(89);
                        iVar2.c(54, c0975a.k(str8));
                        iVar2.d(-1);
                        fVar4 = fVar15;
                        iVar2.a(159, fVar4);
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.b(180, str4, str8, str9);
                        com.alibaba.fastjson.asm.f fVar212 = fVar;
                        iVar2.a(158, fVar212);
                        iVar2.c(21, c0975a.k("matchedCount"));
                        iVar2.h(4);
                        iVar2.h(96);
                        iVar2.c(54, c0975a.k("matchedCount"));
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.b(180, str4, str8, str9);
                        iVar2.d(4);
                        fVar2 = fVar8;
                        iVar2.a(159, fVar2);
                        iVar2.l(fVar212);
                        if (i17 == i11 - 1) {
                            iVar2.c(25, c0975a.k("lexer"));
                            iVar2.b(180, str4, str8, str9);
                            iVar2.d(4);
                            iVar2.a(160, fVar4);
                        }
                        str3 = str9;
                        str = str8;
                        str2 = str10;
                        i12 = i11;
                        iVar = iVar2;
                        fVar3 = fVar4;
                    }
                    iVar2.c(25, c0975a.k("lexer"));
                    str4 = f79210d;
                    iVar2.b(180, str4, str8, str9);
                    com.alibaba.fastjson.asm.f fVar213 = new com.alibaba.fastjson.asm.f();
                    iVar2.a(158, fVar213);
                    u(iVar2, c0975a, i17);
                    iVar2.l(fVar213);
                    iVar2.c(25, c0975a.k("lexer"));
                    iVar2.b(180, str4, str8, str9);
                    iVar2.h(89);
                    iVar2.c(54, c0975a.k(str8));
                    iVar2.d(-1);
                    fVar4 = fVar15;
                    iVar2.a(159, fVar4);
                    iVar2.c(25, c0975a.k("lexer"));
                    iVar2.b(180, str4, str8, str9);
                    com.alibaba.fastjson.asm.f fVar214 = fVar;
                    iVar2.a(158, fVar214);
                    iVar2.c(21, c0975a.k("matchedCount"));
                    iVar2.h(4);
                    iVar2.h(96);
                    iVar2.c(54, c0975a.k("matchedCount"));
                    iVar2.c(25, c0975a.k("lexer"));
                    iVar2.b(180, str4, str8, str9);
                    iVar2.d(4);
                    fVar2 = fVar8;
                    iVar2.a(159, fVar2);
                    iVar2.l(fVar214);
                    if (i17 == i11 - 1) {
                        iVar2.c(25, c0975a.k("lexer"));
                        iVar2.b(180, str4, str8, str9);
                        iVar2.d(4);
                        iVar2.a(160, fVar4);
                    }
                    str3 = str9;
                    str = str8;
                    str2 = str10;
                    i12 = i11;
                    iVar = iVar2;
                    fVar3 = fVar4;
                }
                i17++;
                fVar15 = fVar3;
                iVar2 = iVar;
                str9 = str3;
                str8 = str;
                length = i12;
                str10 = str2;
                fVar8 = fVar2;
            }
            i11 = length;
            fVar = fVar18;
            iVar2.c(25, c0975a.k("lexer"));
            str4 = f79210d;
            iVar2.b(180, str4, str8, str9);
            com.alibaba.fastjson.asm.f fVar215 = new com.alibaba.fastjson.asm.f();
            iVar2.a(158, fVar215);
            u(iVar2, c0975a, i17);
            iVar2.l(fVar215);
            iVar2.c(25, c0975a.k("lexer"));
            iVar2.b(180, str4, str8, str9);
            iVar2.h(89);
            iVar2.c(54, c0975a.k(str8));
            iVar2.d(-1);
            fVar4 = fVar15;
            iVar2.a(159, fVar4);
            iVar2.c(25, c0975a.k("lexer"));
            iVar2.b(180, str4, str8, str9);
            com.alibaba.fastjson.asm.f fVar216 = fVar;
            iVar2.a(158, fVar216);
            iVar2.c(21, c0975a.k("matchedCount"));
            iVar2.h(4);
            iVar2.h(96);
            iVar2.c(54, c0975a.k("matchedCount"));
            iVar2.c(25, c0975a.k("lexer"));
            iVar2.b(180, str4, str8, str9);
            iVar2.d(4);
            fVar2 = fVar8;
            iVar2.a(159, fVar2);
            iVar2.l(fVar216);
            if (i17 == i11 - 1) {
                iVar2.c(25, c0975a.k("lexer"));
                iVar2.b(180, str4, str8, str9);
                iVar2.d(4);
                iVar2.a(160, fVar4);
            }
            str3 = str9;
            str = str8;
            str2 = str10;
            i12 = i11;
            iVar = iVar2;
            fVar3 = fVar4;
            i17++;
            fVar15 = fVar3;
            iVar2 = iVar;
            str9 = str3;
            str8 = str;
            length = i12;
            str10 = str2;
            fVar8 = fVar2;
        }
        int i18 = length;
        com.alibaba.fastjson.asm.i iVar3 = iVar2;
        com.alibaba.fastjson.asm.f fVar30 = fVar15;
        String str17 = str10;
        iVar3.l(fVar8);
        if (!c0975a.f79215c.isInterface() && !Modifier.isAbstract(c0975a.f79215c.getModifiers())) {
            a(c0975a, iVar3);
        }
        iVar3.l(fVar17);
        t(c0975a, iVar3);
        iVar3.c(25, c0975a.k("instance"));
        Method method = c0975a.f79216d.f18247f;
        if (method != null) {
            iVar3.j(182, com.alibaba.fastjson.util.b.g(c0975a.i()), method.getName(), "()" + com.alibaba.fastjson.util.b.b(method.getReturnType()));
        }
        iVar3.h(176);
        iVar3.l(fVar30);
        a(c0975a, iVar3);
        iVar3.c(25, 0);
        iVar3.c(25, 1);
        iVar3.c(25, 2);
        iVar3.c(25, 3);
        iVar3.c(25, c0975a.k("instance"));
        iVar3.c(21, 4);
        int i19 = i18 / 32;
        if (i18 != 0 && i18 % 32 != 0) {
            i19++;
        }
        if (i19 == 1) {
            iVar3.h(4);
        } else {
            iVar3.g(16, i19);
        }
        iVar3.g(188, 10);
        for (int i20 = 0; i20 < i19; i20++) {
            iVar3.h(89);
            if (i20 == 0) {
                iVar3.h(3);
            } else if (i20 == 1) {
                iVar3.h(4);
            } else {
                iVar3.g(16, i20);
            }
            iVar3.c(21, c0975a.k("_asm_flag_" + i20));
            iVar3.h(79);
        }
        String strG2 = com.alibaba.fastjson.util.b.g(o.class);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(str17);
        String str18 = f79209c;
        sb4.append(str18);
        sb4.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;");
        iVar3.j(182, strG2, "parseRest", sb4.toString());
        iVar3.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(c0975a.f79215c));
        iVar3.h(176);
        iVar3.l(fVar16);
        iVar3.c(25, 0);
        iVar3.c(25, 1);
        iVar3.c(25, 2);
        iVar3.c(25, 3);
        iVar3.c(21, 4);
        iVar3.j(183, com.alibaba.fastjson.util.b.g(o.class), "deserialze", str17 + str18 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
        iVar3.h(176);
        iVar3.i(10, c0975a.f79213a);
        iVar3.k();
    }

    private void h(com.alibaba.fastjson.asm.c cVar, C0975a c0975a) {
        int i11;
        Class<o> cls;
        char c11;
        char c12;
        boolean z10;
        char c13;
        int i12;
        int i13;
        char c14;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(L");
        String str = f79209c;
        sb2.append(str);
        sb2.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
        com.alibaba.fastjson.asm.i iVar = new com.alibaba.fastjson.asm.i(cVar, 1, "deserialzeArrayMapping", sb2.toString(), null, null);
        w(c0975a, iVar);
        iVar.c(25, c0975a.k("lexer"));
        iVar.c(25, 1);
        iVar.j(182, str, "getSymbolTable", "()" + com.alibaba.fastjson.util.b.b(y4.i.class));
        iVar.j(182, f79210d, "scanTypeName", "(" + com.alibaba.fastjson.util.b.b(y4.i.class) + ")Ljava/lang/String;");
        iVar.c(58, c0975a.k("typeName"));
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        iVar.c(25, c0975a.k("typeName"));
        iVar.a(198, fVar);
        iVar.c(25, 1);
        iVar.j(182, str, "getConfig", "()" + com.alibaba.fastjson.util.b.b(y4.h.class));
        iVar.c(25, 0);
        Class<o> cls2 = o.class;
        iVar.b(180, com.alibaba.fastjson.util.b.g(cls2), "beanInfo", com.alibaba.fastjson.util.b.b(com.alibaba.fastjson.util.h.class));
        iVar.c(25, c0975a.k("typeName"));
        iVar.j(184, com.alibaba.fastjson.util.b.g(cls2), "getSeeAlso", "(" + com.alibaba.fastjson.util.b.b(y4.h.class) + com.alibaba.fastjson.util.b.b(com.alibaba.fastjson.util.h.class) + "Ljava/lang/String;)" + com.alibaba.fastjson.util.b.b(cls2));
        iVar.c(58, c0975a.k("userTypeDeser"));
        iVar.c(25, c0975a.k("userTypeDeser"));
        iVar.f(193, com.alibaba.fastjson.util.b.g(cls2));
        iVar.a(153, fVar);
        iVar.c(25, c0975a.k("userTypeDeser"));
        iVar.c(25, 1);
        iVar.c(25, 2);
        iVar.c(25, 3);
        iVar.c(25, 4);
        iVar.j(182, com.alibaba.fastjson.util.b.g(cls2), "deserialzeArrayMapping", "(L" + str + ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
        iVar.h(176);
        iVar.l(fVar);
        d(c0975a, iVar);
        com.alibaba.fastjson.util.d[] dVarArr = c0975a.f79216d.f18250i;
        int length = dVarArr.length;
        int i14 = 0;
        while (i14 < length) {
            boolean z11 = i14 == length + (-1);
            int i15 = z11 ? 93 : 44;
            com.alibaba.fastjson.util.d dVar = dVarArr[i14];
            Class cls3 = dVar.f18201e;
            Type type = dVar.f18202f;
            int i16 = length;
            com.alibaba.fastjson.util.d[] dVarArr2 = dVarArr;
            if (cls3 == Byte.TYPE || cls3 == Short.TYPE || cls3 == Integer.TYPE) {
                i11 = i14;
                cls = cls2;
                i16 = i16;
                c11 = 184;
                c12 = ':';
                z10 = true;
                c13 = 180;
                iVar.c(25, c0975a.k("lexer"));
                iVar.c(16, i15);
                iVar.j(182, f79210d, "scanInt", "(C)I");
                iVar.c(54, c0975a.m(dVar));
            } else {
                boolean z12 = z11;
                int i17 = i14;
                if (cls3 == Byte.class) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    String str2 = f79210d;
                    iVar.j(182, str2, "scanInt", "(C)I");
                    iVar.j(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                    iVar.c(58, c0975a.m(dVar));
                    com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.b(180, str2, "matchStat", "I");
                    iVar.d(5);
                    iVar.a(160, fVar2);
                    iVar.h(1);
                    iVar.c(58, c0975a.m(dVar));
                    iVar.l(fVar2);
                } else if (cls3 == Short.class) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    String str3 = f79210d;
                    iVar.j(182, str3, "scanInt", "(C)I");
                    iVar.j(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                    iVar.c(58, c0975a.m(dVar));
                    com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.b(180, str3, "matchStat", "I");
                    iVar.d(5);
                    iVar.a(160, fVar3);
                    iVar.h(1);
                    iVar.c(58, c0975a.m(dVar));
                    iVar.l(fVar3);
                } else if (cls3 == Integer.class) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    String str4 = f79210d;
                    iVar.j(182, str4, "scanInt", "(C)I");
                    iVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    iVar.c(58, c0975a.m(dVar));
                    com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.b(180, str4, "matchStat", "I");
                    iVar.d(5);
                    iVar.a(160, fVar4);
                    iVar.h(1);
                    iVar.c(58, c0975a.m(dVar));
                    iVar.l(fVar4);
                } else if (cls3 == Long.TYPE) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    iVar.j(182, f79210d, "scanLong", "(C)J");
                    iVar.c(55, c0975a.n(dVar, 2));
                } else if (cls3 == Long.class) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    String str5 = f79210d;
                    iVar.j(182, str5, "scanLong", "(C)J");
                    iVar.j(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                    iVar.c(58, c0975a.m(dVar));
                    com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.b(180, str5, "matchStat", "I");
                    iVar.d(5);
                    iVar.a(160, fVar5);
                    iVar.h(1);
                    iVar.c(58, c0975a.m(dVar));
                    iVar.l(fVar5);
                } else if (cls3 == Boolean.TYPE) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    iVar.j(182, f79210d, "scanBoolean", "(C)Z");
                    iVar.c(54, c0975a.m(dVar));
                } else if (cls3 == Float.TYPE) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    iVar.j(182, f79210d, "scanFloat", "(C)F");
                    iVar.c(56, c0975a.m(dVar));
                } else if (cls3 == Float.class) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    String str6 = f79210d;
                    iVar.j(182, str6, "scanFloat", "(C)F");
                    iVar.j(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                    iVar.c(58, c0975a.m(dVar));
                    com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.b(180, str6, "matchStat", "I");
                    iVar.d(5);
                    iVar.a(160, fVar6);
                    iVar.h(1);
                    iVar.c(58, c0975a.m(dVar));
                    iVar.l(fVar6);
                } else if (cls3 == Double.TYPE) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    iVar.j(182, f79210d, "scanDouble", "(C)D");
                    iVar.c(57, c0975a.n(dVar, 2));
                } else if (cls3 == Double.class) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    String str7 = f79210d;
                    iVar.j(182, str7, "scanDouble", "(C)D");
                    iVar.j(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                    iVar.c(58, c0975a.m(dVar));
                    com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.b(180, str7, "matchStat", "I");
                    iVar.d(5);
                    iVar.a(160, fVar7);
                    iVar.h(1);
                    iVar.c(58, c0975a.m(dVar));
                    iVar.l(fVar7);
                } else if (cls3 == Character.TYPE) {
                    iVar.c(25, c0975a.k("lexer"));
                    iVar.c(16, i15);
                    iVar.j(182, f79210d, "scanString", "(C)Ljava/lang/String;");
                    iVar.h(3);
                    iVar.j(182, "java/lang/String", "charAt", "(I)C");
                    iVar.c(54, c0975a.m(dVar));
                } else {
                    if (cls3 == String.class) {
                        iVar.c(25, c0975a.k("lexer"));
                        iVar.c(16, i15);
                        iVar.j(182, f79210d, "scanString", "(C)Ljava/lang/String;");
                        c14 = ':';
                        iVar.c(58, c0975a.m(dVar));
                    } else if (cls3 == BigDecimal.class) {
                        iVar.c(25, c0975a.k("lexer"));
                        iVar.c(16, i15);
                        iVar.j(182, f79210d, "scanDecimal", "(C)Ljava/math/BigDecimal;");
                        c14 = ':';
                        iVar.c(58, c0975a.m(dVar));
                    } else if (cls3 == Date.class) {
                        iVar.c(25, c0975a.k("lexer"));
                        iVar.c(16, i15);
                        iVar.j(182, f79210d, "scanDate", "(C)Ljava/util/Date;");
                        c14 = ':';
                        iVar.c(58, c0975a.m(dVar));
                    } else if (cls3 == UUID.class) {
                        iVar.c(25, c0975a.k("lexer"));
                        iVar.c(16, i15);
                        iVar.j(182, f79210d, "scanUUID", "(C)Ljava/util/UUID;");
                        c14 = ':';
                        iVar.c(58, c0975a.m(dVar));
                    } else if (cls3.isEnum()) {
                        com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
                        com.alibaba.fastjson.asm.f fVar9 = new com.alibaba.fastjson.asm.f();
                        com.alibaba.fastjson.asm.f fVar10 = new com.alibaba.fastjson.asm.f();
                        com.alibaba.fastjson.asm.f fVar11 = new com.alibaba.fastjson.asm.f();
                        cls = cls2;
                        iVar.c(25, c0975a.k("lexer"));
                        String str8 = f79210d;
                        iVar.j(182, str8, "getCurrent", "()C");
                        iVar.h(89);
                        iVar.c(54, c0975a.k("ch"));
                        iVar.d(110);
                        iVar.a(159, fVar11);
                        iVar.c(21, c0975a.k("ch"));
                        iVar.d(34);
                        iVar.a(160, fVar8);
                        iVar.l(fVar11);
                        iVar.c(25, c0975a.k("lexer"));
                        iVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls3)));
                        iVar.c(25, 1);
                        iVar.j(182, f79209c, "getSymbolTable", "()" + com.alibaba.fastjson.util.b.b(y4.i.class));
                        iVar.c(16, i15);
                        iVar.j(182, str8, "scanEnum", "(Ljava/lang/Class;" + com.alibaba.fastjson.util.b.b(y4.i.class) + "C)Ljava/lang/Enum;");
                        iVar.a(167, fVar10);
                        iVar.l(fVar8);
                        iVar.c(21, c0975a.k("ch"));
                        iVar.d(48);
                        iVar.a(161, fVar9);
                        iVar.c(21, c0975a.k("ch"));
                        iVar.d(57);
                        iVar.a(163, fVar9);
                        l(c0975a, iVar, dVar);
                        iVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(h.class));
                        iVar.c(25, c0975a.k("lexer"));
                        iVar.c(16, i15);
                        iVar.j(182, str8, "scanInt", "(C)I");
                        iVar.j(182, com.alibaba.fastjson.util.b.g(h.class), "valueOf", "(I)Ljava/lang/Enum;");
                        iVar.a(167, fVar10);
                        iVar.l(fVar9);
                        iVar.c(25, 0);
                        iVar.c(25, c0975a.k("lexer"));
                        iVar.c(16, i15);
                        iVar.j(182, com.alibaba.fastjson.util.b.g(cls), "scanEnum", "(L" + str8 + ";C)Ljava/lang/Enum;");
                        iVar.l(fVar10);
                        iVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls3));
                        iVar.c(58, c0975a.m(dVar));
                        c12 = ':';
                        i16 = i16;
                        i11 = i17;
                        c11 = 184;
                        z10 = true;
                        c13 = 180;
                    } else {
                        cls = cls2;
                        if (Collection.class.isAssignableFrom(cls3)) {
                            Class clsS = TypeUtils.S(type);
                            if (clsS == String.class) {
                                if (cls3 == List.class || cls3 == Collections.class || cls3 == ArrayList.class) {
                                    iVar.f(187, com.alibaba.fastjson.util.b.g(ArrayList.class));
                                    iVar.h(89);
                                    iVar.j(183, com.alibaba.fastjson.util.b.g(ArrayList.class), "<init>", "()V");
                                } else {
                                    iVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls3)));
                                    iVar.j(184, com.alibaba.fastjson.util.b.g(TypeUtils.class), "createCollection", "(Ljava/lang/Class;)Ljava/util/Collection;");
                                }
                                iVar.c(58, c0975a.m(dVar));
                                iVar.c(25, c0975a.k("lexer"));
                                iVar.c(25, c0975a.m(dVar));
                                iVar.c(16, i15);
                                String str9 = f79210d;
                                iVar.j(182, str9, "scanStringArray", "(Ljava/util/Collection;C)V");
                                com.alibaba.fastjson.asm.f fVar12 = new com.alibaba.fastjson.asm.f();
                                iVar.c(25, c0975a.k("lexer"));
                                iVar.b(180, str9, "matchStat", "I");
                                iVar.d(5);
                                iVar.a(160, fVar12);
                                iVar.h(1);
                                iVar.c(58, c0975a.m(dVar));
                                iVar.l(fVar12);
                                i13 = i17;
                                c11 = 184;
                            } else {
                                com.alibaba.fastjson.asm.f fVar13 = new com.alibaba.fastjson.asm.f();
                                iVar.c(25, c0975a.k("lexer"));
                                String str10 = f79210d;
                                iVar.j(182, str10, "token", "()I");
                                iVar.c(54, c0975a.k("token"));
                                iVar.c(21, c0975a.k("token"));
                                int i18 = i17 == 0 ? 14 : 16;
                                iVar.d(Integer.valueOf(i18));
                                iVar.a(159, fVar13);
                                iVar.c(25, 1);
                                iVar.d(Integer.valueOf(i18));
                                String str11 = f79209c;
                                iVar.j(182, str11, "throwException", "(I)V");
                                iVar.l(fVar13);
                                com.alibaba.fastjson.asm.f fVar14 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar15 = new com.alibaba.fastjson.asm.f();
                                iVar.c(25, c0975a.k("lexer"));
                                iVar.j(182, str10, "getCurrent", "()C");
                                iVar.c(16, 91);
                                iVar.a(160, fVar14);
                                iVar.c(25, c0975a.k("lexer"));
                                iVar.j(182, str10, "next", "()C");
                                iVar.h(87);
                                iVar.c(25, c0975a.k("lexer"));
                                iVar.d(14);
                                iVar.j(182, str10, "setToken", "(I)V");
                                iVar.a(167, fVar15);
                                iVar.l(fVar14);
                                iVar.c(25, c0975a.k("lexer"));
                                iVar.d(14);
                                iVar.j(182, str10, "nextToken", "(I)V");
                                iVar.l(fVar15);
                                i13 = i17;
                                p(iVar, cls3, i13, false);
                                iVar.h(89);
                                iVar.c(58, c0975a.m(dVar));
                                k(c0975a, iVar, dVar, clsS);
                                iVar.c(25, 1);
                                iVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(clsS)));
                                iVar.c(25, 3);
                                c11 = 184;
                                iVar.j(184, com.alibaba.fastjson.util.b.g(cls), "parseArray", "(Ljava/util/Collection;" + com.alibaba.fastjson.util.b.b(b2.class) + "L" + str11 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)V");
                            }
                            i11 = i13;
                            c12 = ':';
                            z10 = true;
                            c13 = 180;
                        } else {
                            c11 = 184;
                            if (cls3.isArray()) {
                                iVar.c(25, c0975a.k("lexer"));
                                iVar.d(14);
                                iVar.j(182, f79210d, "nextToken", "(I)V");
                                z10 = true;
                                iVar.c(25, 1);
                                iVar.c(25, 0);
                                iVar.d(Integer.valueOf(i17));
                                iVar.j(182, com.alibaba.fastjson.util.b.g(cls), "getFieldType", "(I)Ljava/lang/reflect/Type;");
                                iVar.j(182, f79209c, "parseObject", "(Ljava/lang/reflect/Type;)Ljava/lang/Object;");
                                iVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls3));
                                iVar.c(58, c0975a.m(dVar));
                                c12 = ':';
                                i11 = i17;
                                i16 = i16;
                                c13 = 180;
                            } else {
                                z10 = true;
                                com.alibaba.fastjson.asm.f fVar16 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar17 = new com.alibaba.fastjson.asm.f();
                                if (cls3 == Date.class) {
                                    iVar.c(25, c0975a.k("lexer"));
                                    String str12 = f79210d;
                                    iVar.j(182, str12, "getCurrent", "()C");
                                    iVar.d(49);
                                    iVar.a(160, fVar16);
                                    iVar.f(187, com.alibaba.fastjson.util.b.g(Date.class));
                                    iVar.h(89);
                                    iVar.c(25, c0975a.k("lexer"));
                                    i12 = 16;
                                    iVar.c(16, i15);
                                    iVar.j(182, str12, "scanLong", "(C)J");
                                    iVar.j(183, com.alibaba.fastjson.util.b.g(Date.class), "<init>", "(J)V");
                                    c12 = ':';
                                    iVar.c(58, c0975a.m(dVar));
                                    iVar.a(167, fVar17);
                                } else {
                                    i12 = 16;
                                    c12 = ':';
                                }
                                iVar.l(fVar16);
                                q(c0975a, iVar, 14);
                                i11 = i17;
                                i16 = i16;
                                c13 = 180;
                                e(c0975a, iVar, dVar, cls3, i11);
                                iVar.c(25, c0975a.k("lexer"));
                                iVar.j(182, f79210d, "token", "()I");
                                iVar.d(15);
                                iVar.a(159, fVar17);
                                iVar.c(25, 0);
                                iVar.c(25, c0975a.k("lexer"));
                                if (z12) {
                                    iVar.d(15);
                                } else {
                                    iVar.d(Integer.valueOf(i12));
                                }
                                iVar.j(183, com.alibaba.fastjson.util.b.g(cls), "check", "(" + com.alibaba.fastjson.util.b.b(y4.b.class) + "I)V");
                                iVar.l(fVar17);
                            }
                        }
                    }
                    c12 = c14;
                    cls = cls2;
                    i16 = i16;
                    i11 = i17;
                    c11 = 184;
                    z10 = true;
                    c13 = 180;
                }
                cls = cls2;
                i11 = i17;
                c11 = 184;
                c12 = ':';
                z10 = true;
                c13 = 180;
            }
            i14 = i11 + 1;
            length = i16;
            dVarArr = dVarArr2;
            cls2 = cls;
        }
        b(c0975a, iVar, false);
        com.alibaba.fastjson.asm.f fVar18 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar19 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar20 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar21 = new com.alibaba.fastjson.asm.f();
        iVar.c(25, c0975a.k("lexer"));
        String str13 = f79210d;
        iVar.j(182, str13, "getCurrent", "()C");
        iVar.h(89);
        iVar.c(54, c0975a.k("ch"));
        iVar.c(16, 44);
        iVar.a(160, fVar19);
        iVar.c(25, c0975a.k("lexer"));
        iVar.j(182, str13, "next", "()C");
        iVar.h(87);
        iVar.c(25, c0975a.k("lexer"));
        iVar.d(16);
        iVar.j(182, str13, "setToken", "(I)V");
        iVar.a(167, fVar21);
        iVar.l(fVar19);
        iVar.c(21, c0975a.k("ch"));
        iVar.c(16, 93);
        iVar.a(160, fVar20);
        iVar.c(25, c0975a.k("lexer"));
        iVar.j(182, str13, "next", "()C");
        iVar.h(87);
        iVar.c(25, c0975a.k("lexer"));
        iVar.d(15);
        iVar.j(182, str13, "setToken", "(I)V");
        iVar.a(167, fVar21);
        iVar.l(fVar20);
        iVar.c(21, c0975a.k("ch"));
        iVar.c(16, 26);
        iVar.a(160, fVar18);
        iVar.c(25, c0975a.k("lexer"));
        iVar.j(182, str13, "next", "()C");
        iVar.h(87);
        iVar.c(25, c0975a.k("lexer"));
        iVar.d(20);
        iVar.j(182, str13, "setToken", "(I)V");
        iVar.a(167, fVar21);
        iVar.l(fVar18);
        iVar.c(25, c0975a.k("lexer"));
        iVar.d(16);
        iVar.j(182, str13, "nextToken", "(I)V");
        iVar.l(fVar21);
        iVar.c(25, c0975a.k("instance"));
        iVar.h(176);
        iVar.i(5, c0975a.f79213a);
        iVar.k();
    }

    private void i(C0975a c0975a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.asm.f fVar, com.alibaba.fastjson.util.d dVar, Class cls, Class cls2, int i11) {
        String str;
        String str2;
        String str3;
        int i12;
        int i13;
        int i14;
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        String str4 = f79210d;
        hVar.j(182, str4, "matchField", "([C)Z");
        hVar.a(153, fVar2);
        u(hVar, c0975a, i11);
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str4, "token", "()I");
        hVar.d(8);
        hVar.a(160, fVar3);
        hVar.c(25, c0975a.k("lexer"));
        hVar.d(16);
        hVar.j(182, str4, "nextToken", "(I)V");
        hVar.a(167, fVar2);
        hVar.l(fVar3);
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str4, "token", "()I");
        hVar.d(21);
        hVar.a(160, fVar5);
        hVar.c(25, c0975a.k("lexer"));
        hVar.d(14);
        hVar.j(182, str4, "nextToken", "(I)V");
        p(hVar, cls, i11, true);
        hVar.a(167, fVar4);
        hVar.l(fVar5);
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str4, "token", "()I");
        hVar.d(14);
        hVar.a(159, fVar6);
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str4, "token", "()I");
        hVar.d(12);
        hVar.a(160, fVar);
        p(hVar, cls, i11, false);
        hVar.c(58, c0975a.m(dVar));
        k(c0975a, hVar, dVar, cls2);
        hVar.c(25, 1);
        hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
        hVar.h(3);
        hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        String strG = com.alibaba.fastjson.util.b.g(b2.class);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(L");
        String str5 = f79209c;
        sb2.append(str5);
        sb2.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        hVar.j(185, strG, "deserialze", sb2.toString());
        hVar.c(58, c0975a.k("list_item_value"));
        hVar.c(25, c0975a.m(dVar));
        hVar.c(25, c0975a.k("list_item_value"));
        if (cls.isInterface()) {
            hVar.j(185, com.alibaba.fastjson.util.b.g(cls), "add", "(Ljava/lang/Object;)Z");
        } else {
            hVar.j(182, com.alibaba.fastjson.util.b.g(cls), "add", "(Ljava/lang/Object;)Z");
        }
        hVar.h(87);
        hVar.a(167, fVar2);
        hVar.l(fVar6);
        p(hVar, cls, i11, false);
        hVar.l(fVar4);
        hVar.c(58, c0975a.m(dVar));
        boolean zW = y4.h.w(dVar.f18201e);
        k(c0975a, hVar, dVar, cls2);
        if (zW) {
            hVar.j(185, com.alibaba.fastjson.util.b.g(b2.class), "getFastMatchToken", "()I");
            hVar.c(54, c0975a.k("fastMatchToken"));
            hVar.c(25, c0975a.k("lexer"));
            hVar.c(21, c0975a.k("fastMatchToken"));
            str = str4;
            str2 = "nextToken";
            str3 = "(I)V";
            hVar.j(182, str, str2, str3);
        } else {
            str = str4;
            str2 = "nextToken";
            str3 = "(I)V";
            hVar.h(87);
            hVar.d(12);
            hVar.c(54, c0975a.k("fastMatchToken"));
            q(c0975a, hVar, 12);
        }
        hVar.c(25, 1);
        String str6 = str3;
        hVar.j(182, str5, "getContext", "()" + com.alibaba.fastjson.util.b.b(y4.g.class));
        hVar.c(58, c0975a.k("listContext"));
        hVar.c(25, 1);
        hVar.c(25, c0975a.m(dVar));
        hVar.d(dVar.f18197a);
        hVar.j(182, str5, "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)" + com.alibaba.fastjson.util.b.b(y4.g.class));
        hVar.h(87);
        com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
        hVar.h(3);
        String str7 = str2;
        hVar.c(54, c0975a.k("i"));
        hVar.l(fVar7);
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str, "token", "()I");
        hVar.d(15);
        hVar.a(159, fVar8);
        hVar.c(25, 0);
        hVar.b(180, c0975a.f79217e, dVar.f18197a + "_asm_list_item_deser__", com.alibaba.fastjson.util.b.b(b2.class));
        hVar.c(25, 1);
        hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
        hVar.c(21, c0975a.k("i"));
        hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        hVar.j(185, com.alibaba.fastjson.util.b.g(b2.class), "deserialze", "(L" + str5 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        hVar.c(58, c0975a.k("list_item_value"));
        hVar.e(c0975a.k("i"), 1);
        hVar.c(25, c0975a.m(dVar));
        hVar.c(25, c0975a.k("list_item_value"));
        if (cls.isInterface()) {
            hVar.j(185, com.alibaba.fastjson.util.b.g(cls), "add", "(Ljava/lang/Object;)Z");
            i13 = 87;
            i12 = 182;
        } else {
            i12 = 182;
            hVar.j(182, com.alibaba.fastjson.util.b.g(cls), "add", "(Ljava/lang/Object;)Z");
            i13 = 87;
        }
        hVar.h(i13);
        hVar.c(25, 1);
        hVar.c(25, c0975a.m(dVar));
        hVar.j(i12, str5, "checkListResolve", "(Ljava/util/Collection;)V");
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(i12, str, "token", "()I");
        hVar.d(16);
        hVar.a(160, fVar7);
        if (zW) {
            hVar.c(25, c0975a.k("lexer"));
            hVar.c(21, c0975a.k("fastMatchToken"));
            hVar.j(i12, str, str7, str6);
            i14 = 167;
        } else {
            q(c0975a, hVar, 12);
            i14 = 167;
        }
        hVar.a(i14, fVar7);
        hVar.l(fVar8);
        hVar.c(25, 1);
        hVar.c(25, c0975a.k("listContext"));
        hVar.j(182, str5, "setContext", "(" + com.alibaba.fastjson.util.b.b(y4.g.class) + ")V");
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str, "token", "()I");
        hVar.d(15);
        hVar.a(160, fVar);
        r(c0975a, hVar);
        hVar.l(fVar2);
    }

    private void j(C0975a c0975a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.asm.f fVar, com.alibaba.fastjson.util.d dVar, Class cls, int i11) {
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        hVar.c(25, c0975a.k("lexer"));
        hVar.c(25, 0);
        hVar.b(180, c0975a.f79217e, c0975a.h(dVar), "[C");
        hVar.j(182, f79210d, "matchField", "([C)Z");
        hVar.a(154, fVar2);
        hVar.h(1);
        hVar.c(58, c0975a.m(dVar));
        hVar.a(167, fVar3);
        hVar.l(fVar2);
        u(hVar, c0975a, i11);
        hVar.c(21, c0975a.k("matchedCount"));
        hVar.h(4);
        hVar.h(96);
        hVar.c(54, c0975a.k("matchedCount"));
        e(c0975a, hVar, dVar, cls, i11);
        hVar.c(25, 1);
        String str = f79209c;
        hVar.j(182, str, "getResolveStatus", "()I");
        hVar.d(1);
        hVar.a(160, fVar3);
        hVar.c(25, 1);
        hVar.j(182, str, "getLastResolveTask", "()" + com.alibaba.fastjson.util.b.b(y4.a.C0966a.class));
        hVar.c(58, c0975a.k("resolveTask"));
        hVar.c(25, c0975a.k("resolveTask"));
        hVar.c(25, 1);
        hVar.j(182, str, "getContext", "()" + com.alibaba.fastjson.util.b.b(y4.g.class));
        hVar.b(181, com.alibaba.fastjson.util.b.g(y4.a.C0966a.class), "ownerContext", com.alibaba.fastjson.util.b.b(y4.g.class));
        hVar.c(25, c0975a.k("resolveTask"));
        hVar.c(25, 0);
        hVar.d(dVar.f18197a);
        hVar.j(182, com.alibaba.fastjson.util.b.g(o.class), "getFieldDeserializer", "(Ljava/lang/String;)" + com.alibaba.fastjson.util.b.b(l.class));
        hVar.b(181, com.alibaba.fastjson.util.b.g(y4.a.C0966a.class), "fieldDeserializer", com.alibaba.fastjson.util.b.b(l.class));
        hVar.c(25, 1);
        hVar.d(0);
        hVar.j(182, str, "setResolveStatus", "(I)V");
        hVar.l(fVar3);
    }

    private void k(C0975a c0975a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, Class cls) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        hVar.c(25, 0);
        hVar.b(180, c0975a.f79217e, dVar.f18197a + "_asm_list_item_deser__", com.alibaba.fastjson.util.b.b(b2.class));
        hVar.a(199, fVar);
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.j(182, f79209c, "getConfig", "()" + com.alibaba.fastjson.util.b.b(y4.h.class));
        hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls)));
        hVar.j(182, com.alibaba.fastjson.util.b.g(y4.h.class), "getDeserializer", "(Ljava/lang/reflect/Type;)" + com.alibaba.fastjson.util.b.b(b2.class));
        hVar.b(181, c0975a.f79217e, dVar.f18197a + "_asm_list_item_deser__", com.alibaba.fastjson.util.b.b(b2.class));
        hVar.l(fVar);
        hVar.c(25, 0);
        hVar.b(180, c0975a.f79217e, dVar.f18197a + "_asm_list_item_deser__", com.alibaba.fastjson.util.b.b(b2.class));
    }

    private void l(C0975a c0975a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        hVar.c(25, 0);
        hVar.b(180, c0975a.f79217e, c0975a.g(dVar), com.alibaba.fastjson.util.b.b(b2.class));
        hVar.a(199, fVar);
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.j(182, f79209c, "getConfig", "()" + com.alibaba.fastjson.util.b.b(y4.h.class));
        hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(dVar.f18201e)));
        hVar.j(182, com.alibaba.fastjson.util.b.g(y4.h.class), "getDeserializer", "(Ljava/lang/reflect/Type;)" + com.alibaba.fastjson.util.b.b(b2.class));
        hVar.b(181, c0975a.f79217e, c0975a.g(dVar), com.alibaba.fastjson.util.b.b(b2.class));
        hVar.l(fVar);
        hVar.c(25, 0);
        hVar.b(180, c0975a.f79217e, c0975a.g(dVar), com.alibaba.fastjson.util.b.b(b2.class));
    }

    private void m(com.alibaba.fastjson.asm.c cVar, C0975a c0975a) {
        int length = c0975a.f79218f.length;
        for (int i11 = 0; i11 < length; i11++) {
            new com.alibaba.fastjson.asm.d(cVar, 1, c0975a.h(c0975a.f79218f[i11]), "[C").c();
        }
        int length2 = c0975a.f79218f.length;
        for (int i12 = 0; i12 < length2; i12++) {
            com.alibaba.fastjson.util.d dVar = c0975a.f79218f[i12];
            Class cls = dVar.f18201e;
            if (!cls.isPrimitive()) {
                if (Collection.class.isAssignableFrom(cls)) {
                    new com.alibaba.fastjson.asm.d(cVar, 1, dVar.f18197a + "_asm_list_item_deser__", com.alibaba.fastjson.util.b.b(b2.class)).c();
                } else {
                    new com.alibaba.fastjson.asm.d(cVar, 1, c0975a.g(dVar), com.alibaba.fastjson.util.b.b(b2.class)).c();
                }
            }
        }
        com.alibaba.fastjson.asm.i iVar = new com.alibaba.fastjson.asm.i(cVar, 1, "<init>", "(" + com.alibaba.fastjson.util.b.b(y4.h.class) + com.alibaba.fastjson.util.b.b(com.alibaba.fastjson.util.h.class) + ")V", null, null);
        iVar.c(25, 0);
        iVar.c(25, 1);
        iVar.c(25, 2);
        iVar.j(183, com.alibaba.fastjson.util.b.g(o.class), "<init>", "(" + com.alibaba.fastjson.util.b.b(y4.h.class) + com.alibaba.fastjson.util.b.b(com.alibaba.fastjson.util.h.class) + ")V");
        int length3 = c0975a.f79218f.length;
        for (int i13 = 0; i13 < length3; i13++) {
            com.alibaba.fastjson.util.d dVar2 = c0975a.f79218f[i13];
            iVar.c(25, 0);
            iVar.d("\"" + dVar2.f18197a + "\":");
            iVar.j(182, "java/lang/String", "toCharArray", "()[C");
            iVar.b(181, c0975a.f79217e, c0975a.h(dVar2), "[C");
        }
        iVar.h(177);
        iVar.i(4, 4);
        iVar.k();
    }

    private void n(com.alibaba.fastjson.asm.h hVar, C0975a c0975a, int i11, com.alibaba.fastjson.asm.f fVar) {
        hVar.c(21, c0975a.k("_asm_flag_" + (i11 / 32)));
        hVar.d(Integer.valueOf(1 << i11));
        hVar.h(126);
        hVar.a(153, fVar);
    }

    private void o(C0975a c0975a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar) {
        Class cls = dVar.f18201e;
        Type type = dVar.f18202f;
        if (cls == Boolean.TYPE) {
            hVar.c(25, c0975a.k("instance"));
            hVar.c(21, c0975a.m(dVar));
            s(c0975a, hVar, dVar);
            return;
        }
        if (cls == Byte.TYPE || cls == Short.TYPE || cls == Integer.TYPE || cls == Character.TYPE) {
            hVar.c(25, c0975a.k("instance"));
            hVar.c(21, c0975a.m(dVar));
            s(c0975a, hVar, dVar);
            return;
        }
        if (cls == Long.TYPE) {
            hVar.c(25, c0975a.k("instance"));
            hVar.c(22, c0975a.n(dVar, 2));
            if (dVar.f18198b == null) {
                hVar.b(181, com.alibaba.fastjson.util.b.g(dVar.f18203g), dVar.f18199c.getName(), com.alibaba.fastjson.util.b.b(dVar.f18201e));
                return;
            }
            hVar.j(182, com.alibaba.fastjson.util.b.g(c0975a.i()), dVar.f18198b.getName(), com.alibaba.fastjson.util.b.c(dVar.f18198b));
            if (dVar.f18198b.getReturnType().equals(Void.TYPE)) {
                return;
            }
            hVar.h(87);
            return;
        }
        if (cls == Float.TYPE) {
            hVar.c(25, c0975a.k("instance"));
            hVar.c(23, c0975a.m(dVar));
            s(c0975a, hVar, dVar);
            return;
        }
        if (cls == Double.TYPE) {
            hVar.c(25, c0975a.k("instance"));
            hVar.c(24, c0975a.n(dVar, 2));
            s(c0975a, hVar, dVar);
            return;
        }
        if (cls == String.class) {
            hVar.c(25, c0975a.k("instance"));
            hVar.c(25, c0975a.m(dVar));
            s(c0975a, hVar, dVar);
            return;
        }
        if (cls.isEnum()) {
            hVar.c(25, c0975a.k("instance"));
            hVar.c(25, c0975a.m(dVar));
            s(c0975a, hVar, dVar);
        } else if (!Collection.class.isAssignableFrom(cls)) {
            hVar.c(25, c0975a.k("instance"));
            hVar.c(25, c0975a.m(dVar));
            s(c0975a, hVar, dVar);
        } else {
            hVar.c(25, c0975a.k("instance"));
            if (TypeUtils.S(type) == String.class) {
                hVar.c(25, c0975a.m(dVar));
                hVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls));
            } else {
                hVar.c(25, c0975a.m(dVar));
            }
            s(c0975a, hVar, dVar);
        }
    }

    private void p(com.alibaba.fastjson.asm.h hVar, Class cls, int i11, boolean z10) {
        if (cls.isAssignableFrom(ArrayList.class) && !z10) {
            hVar.f(187, "java/util/ArrayList");
            hVar.h(89);
            hVar.j(183, "java/util/ArrayList", "<init>", "()V");
        } else if (cls.isAssignableFrom(LinkedList.class) && !z10) {
            hVar.f(187, com.alibaba.fastjson.util.b.g(LinkedList.class));
            hVar.h(89);
            hVar.j(183, com.alibaba.fastjson.util.b.g(LinkedList.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(HashSet.class)) {
            hVar.f(187, com.alibaba.fastjson.util.b.g(HashSet.class));
            hVar.h(89);
            hVar.j(183, com.alibaba.fastjson.util.b.g(HashSet.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(TreeSet.class)) {
            hVar.f(187, com.alibaba.fastjson.util.b.g(TreeSet.class));
            hVar.h(89);
            hVar.j(183, com.alibaba.fastjson.util.b.g(TreeSet.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(LinkedHashSet.class)) {
            hVar.f(187, com.alibaba.fastjson.util.b.g(LinkedHashSet.class));
            hVar.h(89);
            hVar.j(183, com.alibaba.fastjson.util.b.g(LinkedHashSet.class), "<init>", "()V");
        } else if (z10) {
            hVar.f(187, com.alibaba.fastjson.util.b.g(HashSet.class));
            hVar.h(89);
            hVar.j(183, com.alibaba.fastjson.util.b.g(HashSet.class), "<init>", "()V");
        } else {
            hVar.c(25, 0);
            hVar.d(Integer.valueOf(i11));
            hVar.j(182, com.alibaba.fastjson.util.b.g(o.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            hVar.j(184, com.alibaba.fastjson.util.b.g(TypeUtils.class), "createCollection", "(Ljava/lang/reflect/Type;)Ljava/util/Collection;");
        }
        hVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls));
    }

    private void q(C0975a c0975a, com.alibaba.fastjson.asm.h hVar, int i11) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        hVar.c(25, c0975a.k("lexer"));
        String str = f79210d;
        hVar.j(182, str, "getCurrent", "()C");
        if (i11 == 12) {
            hVar.c(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        } else {
            if (i11 != 14) {
                throw new IllegalStateException();
            }
            hVar.c(16, 91);
        }
        hVar.a(160, fVar);
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str, "next", "()C");
        hVar.h(87);
        hVar.c(25, c0975a.k("lexer"));
        hVar.d(Integer.valueOf(i11));
        hVar.j(182, str, "setToken", "(I)V");
        hVar.a(167, fVar2);
        hVar.l(fVar);
        hVar.c(25, c0975a.k("lexer"));
        hVar.d(Integer.valueOf(i11));
        hVar.j(182, str, "nextToken", "(I)V");
        hVar.l(fVar2);
    }

    private void r(C0975a c0975a, com.alibaba.fastjson.asm.h hVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        hVar.c(25, c0975a.k("lexer"));
        String str = f79210d;
        hVar.j(182, str, "getCurrent", "()C");
        hVar.h(89);
        hVar.c(54, c0975a.k("ch"));
        hVar.c(16, 44);
        hVar.a(160, fVar2);
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str, "next", "()C");
        hVar.h(87);
        hVar.c(25, c0975a.k("lexer"));
        hVar.d(16);
        hVar.j(182, str, "setToken", "(I)V");
        hVar.a(167, fVar5);
        hVar.l(fVar2);
        hVar.c(21, c0975a.k("ch"));
        hVar.c(16, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        hVar.a(160, fVar3);
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str, "next", "()C");
        hVar.h(87);
        hVar.c(25, c0975a.k("lexer"));
        hVar.d(13);
        hVar.j(182, str, "setToken", "(I)V");
        hVar.a(167, fVar5);
        hVar.l(fVar3);
        hVar.c(21, c0975a.k("ch"));
        hVar.c(16, 93);
        hVar.a(160, fVar4);
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str, "next", "()C");
        hVar.h(87);
        hVar.c(25, c0975a.k("lexer"));
        hVar.d(15);
        hVar.j(182, str, "setToken", "(I)V");
        hVar.a(167, fVar5);
        hVar.l(fVar4);
        hVar.c(21, c0975a.k("ch"));
        hVar.c(16, 26);
        hVar.a(160, fVar);
        hVar.c(25, c0975a.k("lexer"));
        hVar.d(20);
        hVar.j(182, str, "setToken", "(I)V");
        hVar.a(167, fVar5);
        hVar.l(fVar);
        hVar.c(25, c0975a.k("lexer"));
        hVar.j(182, str, "nextToken", "()V");
        hVar.l(fVar5);
    }

    private void s(C0975a c0975a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar) {
        Method method = dVar.f18198b;
        if (method == null) {
            hVar.b(181, com.alibaba.fastjson.util.b.g(dVar.f18203g), dVar.f18199c.getName(), com.alibaba.fastjson.util.b.b(dVar.f18201e));
            return;
        }
        hVar.j(method.getDeclaringClass().isInterface() ? 185 : 182, com.alibaba.fastjson.util.b.g(dVar.f18203g), method.getName(), com.alibaba.fastjson.util.b.c(method));
        if (dVar.f18198b.getReturnType().equals(Void.TYPE)) {
            return;
        }
        hVar.h(87);
    }

    private void t(C0975a c0975a, com.alibaba.fastjson.asm.h hVar) {
        hVar.c(25, 1);
        hVar.c(25, c0975a.k("context"));
        hVar.j(182, f79209c, "setContext", "(" + com.alibaba.fastjson.util.b.b(y4.g.class) + ")V");
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        hVar.c(25, c0975a.k("childContext"));
        hVar.a(198, fVar);
        hVar.c(25, c0975a.k("childContext"));
        hVar.c(25, c0975a.k("instance"));
        hVar.b(181, com.alibaba.fastjson.util.b.g(y4.g.class), "object", "Ljava/lang/Object;");
        hVar.l(fVar);
    }

    private void u(com.alibaba.fastjson.asm.h hVar, C0975a c0975a, int i11) {
        String str = "_asm_flag_" + (i11 / 32);
        hVar.c(21, c0975a.k(str));
        hVar.d(Integer.valueOf(1 << i11));
        hVar.h(128);
        hVar.c(54, c0975a.k(str));
    }

    private void w(C0975a c0975a, com.alibaba.fastjson.asm.h hVar) {
        hVar.c(25, 1);
        hVar.b(180, f79209c, "lexer", com.alibaba.fastjson.util.b.b(y4.b.class));
        hVar.f(PsExtractor.AUDIO_STREAM, f79210d);
        hVar.c(58, c0975a.k("lexer"));
    }

    public b2 v(y4.h hVar, com.alibaba.fastjson.util.h hVar2) {
        String str;
        Class cls = hVar2.f18242a;
        if (cls.isPrimitive()) {
            throw new IllegalArgumentException("not support type :" + cls.getName());
        }
        String str2 = "FastjsonASMDeserializer_" + this.f79212b.incrementAndGet() + "_" + cls.getSimpleName();
        Package r11 = a.class.getPackage();
        if (r11 != null) {
            String name = r11.getName();
            String str3 = name.replace('.', '/') + "/" + str2;
            str = name + "." + str2;
            str2 = str3;
        } else {
            str = str2;
        }
        com.alibaba.fastjson.asm.c cVar = new com.alibaba.fastjson.asm.c();
        cVar.k(49, 33, str2, com.alibaba.fastjson.util.b.g(o.class), null);
        m(cVar, new C0975a(str2, hVar, hVar2, 3));
        c(cVar, new C0975a(str2, hVar, hVar2, 3));
        g(cVar, new C0975a(str2, hVar, hVar2, 5));
        h(cVar, new C0975a(str2, hVar, hVar2, 4));
        byte[] bArrJ = cVar.j();
        return (b2) this.f79211a.a(str, bArrJ, 0, bArrJ.length).getConstructor(y4.h.class, com.alibaba.fastjson.util.h.class).newInstance(hVar, hVar2);
    }
}
