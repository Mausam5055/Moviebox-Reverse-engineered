package org.mvel2.util;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Queue;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.ast.EndOfStatement;
import org.mvel2.ast.Proto;
import org.mvel2.compiler.ExecutableStatement;

/* JADX INFO: loaded from: classes7.dex */
public class o {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static ThreadLocal f72069m = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f72070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ParserContext f72071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f72072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f72073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f72074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f72075f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f72076g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Class f72077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f72078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f72079j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f72080k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private g f72081l;

    class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f72082a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Proto.c f72083b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f72084c;

        a(String str, Proto.c cVar, String str2) {
            this.f72082a = str;
            this.f72083b = cVar;
            this.f72084c = str2;
        }

        @Override // org.mvel2.util.o.b
        public boolean a(Proto proto) {
            if (!this.f72082a.equals(proto.getName())) {
                return false;
            }
            this.f72083b.f(Proto.ReceiverType.PROPERTY);
            this.f72083b.e((ExecutableStatement) m.G0(this.f72084c, o.this.f72071b));
            return true;
        }

        @Override // org.mvel2.util.o.b
        public String getName() {
            return this.f72082a;
        }
    }

    private interface b {
        boolean a(Proto proto);

        String getName();
    }

    public o(char[] cArr, int i11, int i12, String str, ParserContext parserContext, int i13, g gVar) {
        this.f72080k = false;
        this.f72070a = cArr;
        this.f72073d = i11;
        this.f72072c = i12;
        this.f72074e = str;
        this.f72071b = parserContext;
        this.f72080k = (i13 & 16) == 0;
        this.f72081l = gVar;
    }

    private void b() {
        if (this.f72076g != null) {
            try {
                if (this.f72071b.hasProtoImport(this.f72075f)) {
                    this.f72077h = Proto.class;
                } else {
                    this.f72077h = m.D(null, this.f72075f, this.f72071b);
                }
                this.f72078i = this.f72076g;
            } catch (ClassNotFoundException e11) {
                if (!this.f72080k) {
                    throw new CompileException("could not resolve class: " + this.f72075f, this.f72070a, this.f72073d, e11);
                }
                this.f72077h = b.class;
                this.f72079j = this.f72075f;
                this.f72078i = this.f72076g;
            }
        } else {
            this.f72077h = Object.class;
            this.f72078i = this.f72075f;
        }
        this.f72075f = null;
        this.f72076g = null;
    }

    public static void c(char[] cArr, int i11, ParserContext parserContext) {
        if (g()) {
            LinkedHashMap linkedHashMap = (LinkedHashMap) parserContext.getParserConfiguration().getImports();
            Object obj = linkedHashMap.values().toArray()[linkedHashMap.size() - 1];
            if (obj instanceof Proto) {
                Proto proto = (Proto) obj;
                int cursorEnd = proto.getCursorEnd();
                do {
                    i11--;
                    if (i11 <= cursorEnd) {
                        break;
                    }
                } while (m.q0(cArr[i11]));
                while (i11 > cursorEnd && m.c0(cArr[i11])) {
                    i11--;
                }
                while (i11 > cursorEnd && (m.q0(cArr[i11]) || cArr[i11] == ';')) {
                    i11--;
                }
                if (i11 == cursorEnd) {
                    return;
                }
                throw new CompileException("unresolved reference (possible illegal forward-reference?): " + f(), cArr, proto.getCursorStart());
            }
        }
    }

    private void d(String str, Proto.c cVar, String str2) {
        Queue queue = (Queue) f72069m.get();
        if (queue == null) {
            ThreadLocal threadLocal = f72069m;
            LinkedList linkedList = new LinkedList();
            threadLocal.set(linkedList);
            queue = linkedList;
        }
        queue.add(new a(str, cVar, str2));
    }

    public static String f() {
        if (f72069m.get() == null || ((Queue) f72069m.get()).isEmpty()) {
            return null;
        }
        return ((b) ((Queue) f72069m.get()).poll()).getName();
    }

    public static boolean g() {
        return (f72069m.get() == null || ((Queue) f72069m.get()).isEmpty()) ? false : true;
    }

    public static void h(Proto proto) {
        if (f72069m.get() != null) {
            Queue<b> queue = (Queue) f72069m.get();
            HashSet hashSet = new HashSet();
            for (b bVar : queue) {
                if (bVar.a(proto)) {
                    hashSet.add(bVar);
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                queue.remove((b) it.next());
            }
        }
    }

    public int e() {
        return this.f72073d;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0125  */
    public Proto i() {
        Proto proto = new Proto(this.f72074e, this.f72071b);
        while (true) {
            int i11 = this.f72073d;
            if (i11 >= this.f72072c) {
                int i12 = i11 + 1;
                this.f72073d = i12;
                if (this.f72081l != null && m.p0(this.f72070a, i12)) {
                    this.f72081l.a(new EndOfStatement(this.f72071b));
                }
                return proto;
            }
            int iE0 = m.E0(this.f72070a, i11);
            this.f72073d = iE0;
            if (this.f72076g == null) {
                while (true) {
                    int i13 = this.f72073d;
                    if (i13 >= this.f72072c || !m.c0(this.f72070a[i13])) {
                        break;
                    }
                    this.f72073d++;
                }
                int i14 = this.f72073d;
                if (i14 > iE0) {
                    String str = new String(this.f72070a, iE0, i14 - iE0);
                    this.f72075f = str;
                    if ("def".equals(str) || "function".equals(this.f72075f)) {
                        int i15 = this.f72073d + 1;
                        this.f72073d = i15;
                        int iE1 = m.E0(this.f72070a, i15);
                        this.f72073d = iE1;
                        while (true) {
                            int i16 = this.f72073d;
                            if (i16 >= this.f72072c || !m.c0(this.f72070a[i16])) {
                                break;
                            }
                            this.f72073d++;
                        }
                        int i17 = this.f72073d;
                        if (iE1 == i17) {
                            throw new CompileException("attempt to declare an anonymous function as a prototype member", this.f72070a, iE1);
                        }
                        h hVar = new h(new String(this.f72070a, iE1, i17 - iE1), this.f72073d, this.f72072c, this.f72070a, 0, this.f72071b, null);
                        proto.declareReceiver(hVar.b(), hVar.c());
                        this.f72073d = hVar.a() + 1;
                        this.f72075f = null;
                    }
                }
                this.f72073d = m.E0(this.f72070a, this.f72073d);
            }
            int i18 = this.f72073d;
            if (i18 > this.f72072c) {
                throw new CompileException("unexpected end of statement in proto declaration: " + this.f72074e, this.f72070a, iE0);
            }
            char[] cArr = this.f72070a;
            char c11 = cArr[i18];
            if (c11 == ';') {
                this.f72073d = i18 + 1;
                b();
                if (this.f72080k && this.f72077h == b.class) {
                    d(this.f72079j, proto.declareReceiver(this.f72078i, Proto.ReceiverType.DEFERRED, (ExecutableStatement) null), null);
                } else {
                    proto.declareReceiver(this.f72078i, this.f72077h, (ExecutableStatement) null);
                }
            } else if (c11 != '=') {
                while (true) {
                    int i19 = this.f72073d;
                    if (i19 >= this.f72072c || !m.c0(this.f72070a[i19])) {
                        break;
                    }
                    this.f72073d++;
                }
                int i20 = this.f72073d;
                if (i20 > i18) {
                    this.f72076g = new String(this.f72070a, i18, i20 - i18);
                }
            } else {
                int i21 = i18 + 1;
                this.f72073d = i21;
                int iE2 = m.E0(cArr, i21);
                this.f72073d = iE2;
                while (true) {
                    int i22 = this.f72073d;
                    int i23 = this.f72072c;
                    if (i22 >= i23) {
                        break;
                    }
                    char[] cArr2 = this.f72070a;
                    char c12 = cArr2[i22];
                    if (c12 != '\"') {
                        if (c12 == ';') {
                            break;
                        }
                        if (c12 == '[' || c12 == '{' || c12 == '\'' || c12 == '(') {
                            this.f72073d = m.e(cArr2, i22, i23, c12, this.f72071b);
                        }
                    } else {
                        this.f72073d = m.e(cArr2, i22, i23, c12, this.f72071b);
                    }
                    this.f72073d++;
                }
                b();
                char[] cArr3 = this.f72070a;
                int i24 = this.f72073d;
                this.f72073d = i24 + 1;
                String str2 = new String(cArr3, iE2, i24 - iE2);
                if (this.f72080k && this.f72077h == b.class) {
                    d(this.f72079j, proto.declareReceiver(this.f72078i, Proto.ReceiverType.DEFERRED, (ExecutableStatement) null), str2);
                } else {
                    proto.declareReceiver(this.f72078i, this.f72077h, (ExecutableStatement) m.G0(str2, this.f72071b));
                }
            }
        }
    }
}
