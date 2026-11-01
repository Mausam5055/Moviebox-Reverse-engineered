package org.mvel2;

import java.util.Map;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.util.m;
import org.mvel2.util.s;

/* JADX INFO: loaded from: classes7.dex */
public class MacroProcessor extends AbstractParser {
    private Map<String, Object> macros;

    public MacroProcessor() {
    }

    public MacroProcessor(Map<String, Object> map) {
        this.macros = map;
    }

    public void captureToWhitespace() {
        while (true) {
            int i11 = this.cursor;
            if (i11 >= this.length || m.q0(this.expr[i11])) {
                return;
            } else {
                this.cursor++;
            }
        }
    }

    public Map<String, Object> getMacros() {
        return this.macros;
    }

    public String parse(String str) {
        return new String(parse(str.toCharArray()));
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:72:0x0108  */
    /* JADX WARN: Code duplicated, block: B:73:0x010a  */
    public char[] parse(char[] cArr) {
        char c11;
        int i11;
        setExpression(cArr);
        s sVar = new s();
        boolean z10 = true;
        while (true) {
            int i12 = this.cursor;
            if (i12 >= this.length) {
                return sVar.h();
            }
            while (true) {
                int i13 = this.cursor;
                if (i13 >= this.length || !m.c0(this.expr[i13])) {
                    break;
                }
                this.cursor++;
            }
            int i14 = this.cursor;
            if (i14 > i12) {
                Map<String, Object> map = this.macros;
                String str = new String(this.expr, i12, i14 - i12);
                if (map.containsKey(str) && z10) {
                    android.support.v4.media.session.c.a(this.macros.get(str));
                    throw null;
                }
                sVar.d(str);
            }
            int i15 = this.cursor;
            int i16 = this.length;
            if (i15 < i16) {
                char[] cArr2 = this.expr;
                char c12 = cArr2[i15];
                if (c12 == '\"' || c12 == '\'') {
                    int iH = m.h(c12, cArr2, i15, i16);
                    this.cursor = iH;
                    sVar.d(new String(cArr2, i15, iH - i15));
                    int i17 = this.cursor;
                    if (i17 < this.length) {
                        if (m.c0(this.expr[i17])) {
                            this.cursor--;
                        }
                        c11 = this.expr[this.cursor];
                        if (c11 == '(') {
                            z10 = true;
                        } else if (c11 != '.') {
                            z10 = false;
                        } else if (c11 != ';' || c11 == '{') {
                            z10 = true;
                        }
                        sVar.a(c11);
                    }
                } else if (c12 == '/') {
                    if (i15 + 1 != i16) {
                        char c13 = cArr2[i15 + 1];
                        if (c13 == '*') {
                            int i18 = i16 - 1;
                            while (true) {
                                i11 = this.cursor;
                                if (i11 == i18) {
                                    break;
                                }
                                char[] cArr3 = this.expr;
                                if (cArr3[i11] == '*' && cArr3[i11 + 1] == '/') {
                                    break;
                                }
                                this.cursor = i11 + 1;
                            }
                            this.cursor = i11 + 2;
                        } else if (c13 == '/') {
                            while (true) {
                                int i19 = this.cursor;
                                if (i19 == this.length || this.expr[i19] == '\n') {
                                    break;
                                }
                                this.cursor = i19 + 1;
                            }
                        }
                    }
                    int i20 = this.cursor;
                    if (i20 < this.length) {
                        this.cursor = i20 + 1;
                    }
                    sVar.d(new String(this.expr, i15, this.cursor - i15));
                    int i21 = this.cursor;
                    if (i21 < this.length) {
                        this.cursor = i21 - 1;
                    }
                } else if (c12 != '\\') {
                    c11 = this.expr[this.cursor];
                    if (c11 == '(') {
                        z10 = true;
                    } else if (c11 != '.') {
                        z10 = false;
                    } else if (c11 != ';') {
                        z10 = true;
                    } else {
                        z10 = true;
                    }
                    sVar.a(c11);
                } else {
                    this.cursor = i15 + 1;
                }
            }
            this.cursor++;
        }
    }

    public void setMacros(Map<String, Object> map) {
        this.macros = map;
    }
}
