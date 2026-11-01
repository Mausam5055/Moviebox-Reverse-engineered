package org.mvel2.util;

import java.util.ArrayList;
import java.util.HashMap;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Object[] f72036h = new Object[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f72037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f72038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f72039c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f72040d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f72041e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Class f72042f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ParserContext f72043g;

    public c() {
    }

    public c(int i11) {
        this.f72041e = i11;
    }

    private boolean b() {
        ParserContext parserContext = this.f72043g;
        return parserContext != null && parserContext.isStrongTyping();
    }

    /* JADX WARN: Code duplicated, block: B:115:0x014f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    /* JADX WARN: Code duplicated, block: B:46:0x007e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:57:0x00cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:83:0x0149  */
    private Object c(boolean z10) {
        HashMap map;
        ArrayList arrayList;
        int i11;
        Object objD;
        int i12;
        int i13 = this.f72040d;
        int iE0 = this.f72039c;
        if (i13 - iE0 == 0) {
            return this.f72041e == 0 ? new ArrayList() : f72036h;
        }
        int i14 = this.f72041e;
        Object objX = null;
        if (i14 == -1) {
            map = null;
            arrayList = null;
        } else if (i14 == 0 || i14 == 1) {
            arrayList = new ArrayList();
            map = null;
        } else if (i14 != 2) {
            map = null;
            arrayList = null;
        } else {
            map = new HashMap();
            arrayList = null;
        }
        int i15 = -1;
        while (true) {
            int i16 = this.f72038b;
            int i17 = this.f72040d;
            if (i16 >= i17) {
                if (iE0 < i17 && m.q0(this.f72037a[iE0])) {
                    iE0 = m.E0(this.f72037a, iE0);
                }
                int i18 = this.f72040d;
                if (iE0 < i18) {
                    int i19 = this.f72038b;
                    if (i19 < i18 - 1) {
                        this.f72038b = i19 + 1;
                    }
                    if (this.f72041e == 2) {
                        map.put(objX, m.x(this.f72037a, iE0, this.f72038b - iE0));
                    } else {
                        int i20 = this.f72038b;
                        if (i20 < i18) {
                            this.f72038b = i20 + 1;
                        }
                        arrayList.add(m.x(this.f72037a, iE0, this.f72038b - iE0));
                    }
                    if (z10) {
                        f(iE0, this.f72038b - iE0);
                    }
                }
                int i21 = this.f72041e;
                if (i21 != 1) {
                    return i21 != 2 ? arrayList : map;
                }
                return arrayList.toArray();
            }
            char[] cArr = this.f72037a;
            char c11 = cArr[i16];
            if (c11 == '\"') {
                this.f72038b = m.d(cArr, i16, i17, c11);
            } else {
                if (c11 == ',') {
                    if (this.f72041e != 2) {
                        arrayList.add(new String(cArr, iE0, i16 - iE0).trim());
                    } else {
                        map.put(objX, m.x(cArr, iE0, i16 - iE0));
                    }
                    if (z10) {
                        f(iE0, this.f72038b - iE0);
                    }
                    i11 = this.f72038b;
                } else if (c11 == '.') {
                    int i22 = i16 + 1;
                    this.f72038b = i22;
                    int iE1 = m.E0(cArr, i22);
                    this.f72038b = iE1;
                    if (iE1 != this.f72040d) {
                        char[] cArr2 = this.f72037a;
                        if (cArr2[iE1] == '{') {
                            this.f72038b = m.c(cArr2, iE1, '{');
                        }
                    }
                } else if (c11 == ':') {
                    if (this.f72041e != 2) {
                        map = new HashMap();
                        this.f72041e = 2;
                    }
                    objX = m.x(this.f72037a, iE0, this.f72038b - iE0);
                    if (z10) {
                        f(iE0, this.f72038b - iE0);
                    }
                    i11 = this.f72038b;
                } else if (c11 == '[') {
                    if (i16 > this.f72039c || !m.c0(cArr[i16 - 1])) {
                        if (i15 == -1) {
                            i15 = 0;
                        }
                        c cVar = new c(i15);
                        char[] cArr3 = this.f72037a;
                        int i23 = this.f72038b;
                        int iD = m.d(cArr3, i23, this.f72040d, cArr3[i23]);
                        this.f72038b = iD;
                        objD = cVar.d(cArr3, i23 + 1, (iD - i23) - 1, z10, this.f72042f, this.f72043g);
                        if (this.f72041e == 2) {
                            map.put(objX, objD);
                        } else {
                            arrayList.add(objD);
                            objX = objD;
                        }
                        char[] cArr4 = this.f72037a;
                        int i24 = this.f72038b + 1;
                        this.f72038b = i24;
                        iE0 = m.E0(cArr4, i24);
                        this.f72038b = iE0;
                        i12 = this.f72040d;
                        if (iE0 >= i12 && this.f72037a[iE0] == ',') {
                            iE0++;
                        } else if (iE0 >= i12 && m.u0(this.f72037a[iE0]) == -1) {
                            throw new CompileException("unterminated collection element", this.f72037a, this.f72038b);
                        }
                    }
                } else if (c11 == '{') {
                    if (i15 == -1) {
                        i15 = 1;
                    }
                    if (i16 > this.f72039c) {
                        if (i15 == -1) {
                            i15 = 0;
                        }
                        c cVar2 = new c(i15);
                        char[] cArr5 = this.f72037a;
                        int i25 = this.f72038b;
                        int iD2 = m.d(cArr5, i25, this.f72040d, cArr5[i25]);
                        this.f72038b = iD2;
                        objD = cVar2.d(cArr5, i25 + 1, (iD2 - i25) - 1, z10, this.f72042f, this.f72043g);
                        if (this.f72041e == 2) {
                            map.put(objX, objD);
                        } else {
                            arrayList.add(objD);
                            objX = objD;
                        }
                        char[] cArr6 = this.f72037a;
                        int i26 = this.f72038b + 1;
                        this.f72038b = i26;
                        iE0 = m.E0(cArr6, i26);
                        this.f72038b = iE0;
                        i12 = this.f72040d;
                        if (iE0 >= i12) {
                            if (iE0 >= i12) {
                                continue;
                            }
                        } else if (iE0 >= i12) {
                            continue;
                        }
                    } else {
                        if (i15 == -1) {
                            i15 = 0;
                        }
                        c cVar3 = new c(i15);
                        char[] cArr7 = this.f72037a;
                        int i27 = this.f72038b;
                        int iD3 = m.d(cArr7, i27, this.f72040d, cArr7[i27]);
                        this.f72038b = iD3;
                        objD = cVar3.d(cArr7, i27 + 1, (iD3 - i27) - 1, z10, this.f72042f, this.f72043g);
                        if (this.f72041e == 2) {
                            map.put(objX, objD);
                        } else {
                            arrayList.add(objD);
                            objX = objD;
                        }
                        char[] cArr8 = this.f72037a;
                        int i28 = this.f72038b + 1;
                        this.f72038b = i28;
                        iE0 = m.E0(cArr8, i28);
                        this.f72038b = iE0;
                        i12 = this.f72040d;
                        if (iE0 >= i12) {
                            if (iE0 >= i12) {
                                continue;
                            }
                        } else if (iE0 >= i12) {
                            continue;
                        }
                    }
                } else if (c11 == '\'') {
                    this.f72038b = m.d(cArr, i16, i17, c11);
                } else if (c11 == '(') {
                    this.f72038b = m.d(cArr, i16, i17, '(');
                }
                iE0 = i11 + 1;
            }
            this.f72038b++;
        }
    }

    private void f(int i11, int i12) {
        if (this.f72042f == null) {
            m.I0(this.f72037a, i11, i12, this.f72043g);
            return;
        }
        Class knownEgressType = ((ExecutableStatement) m.I0(this.f72037a, i11, i12, this.f72043g)).getKnownEgressType();
        if (knownEgressType == null || p.f(this.f72042f, knownEgressType)) {
            return;
        }
        if (b() || !org.mvel2.b.a(knownEgressType, this.f72042f)) {
            throw new CompileException("expected type: " + this.f72042f.getName() + "; but found: " + knownEgressType.getName(), this.f72037a, this.f72038b);
        }
    }

    public int a() {
        return this.f72038b;
    }

    public Object d(char[] cArr, int i11, int i12, boolean z10, Class cls, ParserContext parserContext) {
        if (cls != null) {
            this.f72042f = m.I(cls);
        }
        this.f72037a = cArr;
        this.f72040d = i12 + i11;
        while (i11 < this.f72040d && m.q0(cArr[i11])) {
            i11++;
        }
        this.f72038b = i11;
        this.f72039c = i11;
        this.f72043g = parserContext;
        return c(z10);
    }

    public Object e(char[] cArr, int i11, int i12, boolean z10, ParserContext parserContext) {
        this.f72037a = cArr;
        this.f72043g = parserContext;
        this.f72040d = i12 + i11;
        while (i11 < this.f72040d && m.q0(cArr[i11])) {
            i11++;
        }
        this.f72038b = i11;
        this.f72039c = i11;
        return c(z10);
    }
}
