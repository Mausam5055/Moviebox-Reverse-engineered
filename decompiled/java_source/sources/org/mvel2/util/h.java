package org.mvel2.util;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.ast.EndOfStatement;
import org.mvel2.ast.Function;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f72048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f72049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f72050c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f72051d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private char[] f72052e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ParserContext f72053f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g f72054g;

    public h(String str, int i11, int i12, char[] cArr, int i13, ParserContext parserContext, g gVar) {
        this.f72048a = str;
        this.f72049b = i11;
        this.f72050c = i12;
        this.f72052e = cArr;
        this.f72051d = i13;
        this.f72053f = parserContext;
        this.f72054g = gVar;
    }

    public int a() {
        return this.f72049b;
    }

    public String b() {
        return this.f72048a;
    }

    public Function c() {
        int i11;
        int i12;
        int iE;
        int i13 = this.f72049b;
        int i14 = this.f72050c + i13;
        int iJ = m.j(this.f72052e, i13, i14, this.f72053f);
        this.f72049b = iJ;
        char[] cArr = this.f72052e;
        int iS0 = m.s0(cArr, iJ);
        this.f72049b = iS0;
        if (cArr[iS0] == '(') {
            iE = m.e(this.f72052e, iS0, i14, '(', this.f72053f);
            int i15 = iS0 + 1;
            int i16 = iE + 1;
            this.f72049b = i16;
            int iE0 = m.E0(this.f72052e, i16);
            this.f72049b = iE0;
            if (iE0 >= i14) {
                throw new CompileException("incomplete statement", this.f72052e, this.f72049b);
            }
            char[] cArr2 = this.f72052e;
            if (cArr2[iE0] == '{') {
                i12 = m.e(cArr2, iE0, i14, '{', this.f72053f);
                this.f72049b = i12;
                i11 = i15;
                iS0 = iE0;
            } else {
                i12 = m.i(cArr2, iE0, i14, this.f72053f);
                this.f72049b = i12;
                i11 = i15;
                iS0 = iE0 - 1;
            }
        } else {
            char[] cArr3 = this.f72052e;
            i11 = 0;
            if (cArr3[iS0] == '{') {
                i12 = m.e(cArr3, iS0, i14, '{', this.f72053f);
                this.f72049b = i12;
            } else {
                i12 = m.i(cArr3, iS0, i14, this.f72053f);
                this.f72049b = i12;
                iS0--;
            }
            iE = 0;
        }
        int iN0 = m.N0(this.f72052e, iS0 + 1);
        int iM0 = m.M0(this.f72052e, i13, i12);
        int i17 = this.f72049b + 1;
        this.f72049b = i17;
        if (this.f72054g != null && m.p0(this.f72052e, i17)) {
            this.f72054g.a(new EndOfStatement(this.f72053f));
        }
        return new Function(this.f72048a, this.f72052e, i11, iE - i11, iN0, iM0 - iN0, this.f72051d, this.f72053f);
    }
}
