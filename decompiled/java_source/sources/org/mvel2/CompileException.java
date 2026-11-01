package org.mvel2;

import java.util.Collections;
import java.util.List;
import org.mvel2.util.m;
import org.mvel2.util.s;

/* JADX INFO: loaded from: classes7.dex */
public class CompileException extends RuntimeException {
    private int column;
    private int cursor;
    private List<c> errors;
    private Object evaluationContext;
    private char[] expr;
    private int lastLineStart;
    private int lineNumber;
    private int msgOffset;

    public CompileException(String str, List<c> list, char[] cArr, int i11, ParserContext parserContext) {
        super(str);
        this.msgOffset = 0;
        this.lineNumber = 1;
        this.column = 0;
        this.lastLineStart = 0;
        this.expr = cArr;
        this.cursor = i11;
        if (!list.isEmpty()) {
            c next = list.iterator().next();
            this.cursor = next.c();
            this.lineNumber = next.e();
            this.column = next.b();
        }
        this.errors = list;
    }

    public CompileException(String str, char[] cArr, int i11) {
        super(str);
        this.msgOffset = 0;
        this.lineNumber = 1;
        this.column = 0;
        this.lastLineStart = 0;
        this.expr = cArr;
        this.cursor = i11;
    }

    public CompileException(String str, char[] cArr, int i11, Throwable th2) {
        super(str, th2);
        this.msgOffset = 0;
        this.lineNumber = 1;
        this.column = 0;
        this.lastLineStart = 0;
        this.expr = cArr;
        this.cursor = i11;
    }

    private void calcRowAndColumn() {
        int i11;
        char[] cArr;
        int i12 = this.lineNumber;
        if (i12 > 1 || (i11 = this.column) > 1) {
            return;
        }
        if ((i12 != 0 && i11 != 0) || (cArr = this.expr) == null || cArr.length == 0) {
            return;
        }
        int i13 = 1;
        int i14 = 1;
        for (int i15 = 0; i15 < this.cursor; i15++) {
            char[] cArr2 = this.expr;
            if (i15 >= cArr2.length) {
                break;
            }
            char c11 = cArr2[i15];
            if (c11 == '\n') {
                i13++;
                i14 = 1;
            } else if (c11 != '\r') {
                i14++;
            }
        }
        this.lineNumber = i13;
        this.column = i14;
    }

    private String generateErrorMessage() {
        s sVarD = new s().d("[Error: " + super.getMessage() + "]\n");
        int length = sVarD.length();
        sVarD.d("[Near : {... ");
        sVarD.b(showCodeNearError(this.expr, this.cursor)).d(" ....}]\n").d(m.A0(' ', sVarD.length() - length));
        if (this.msgOffset < 0) {
            this.msgOffset = 0;
        }
        sVarD.d(m.A0(' ', this.msgOffset)).a('^');
        calcRowAndColumn();
        if (this.evaluationContext != null) {
            sVarD.d("\n").d("In ").c(this.evaluationContext);
        } else if (this.lineNumber != -1) {
            sVarD.d("\n").d("[Line: " + this.lineNumber + ", Column: " + this.column + "]");
        }
        return sVarD.toString();
    }

    private CharSequence showCodeNearError(char[] cArr, int i11) {
        String str;
        int i12;
        String strSubstring;
        if (cArr == null) {
            return "Unknown";
        }
        int i13 = i11 - 20;
        int length = i11 + 30;
        if (length > cArr.length) {
            length = cArr.length;
            i13 = i11 - 50;
        }
        if (i13 < 0) {
            i13 = 0;
        }
        String strTrim = String.copyValueOf(cArr, i13, length - i13).trim();
        if (i11 < length) {
            int i14 = i11;
            if (i11 > 0) {
                while (i14 > 0 && !m.q0(cArr[i14 - 1])) {
                    i14--;
                }
            }
            i12 = i11 - i14;
            str = new String(cArr, i14, cArr.length - i14);
            for (int i15 = 0; i15 < str.length(); i15++) {
                char cCharAt = str.charAt(i15);
                if (cCharAt == '\n' || cCharAt == ')') {
                    str = str.substring(0, i15);
                    break;
                }
            }
            if (str.length() >= 30) {
                str = str.substring(0, 30);
            }
        } else {
            str = null;
            i12 = 0;
        }
        while (true) {
            int iIndexOf = strTrim.indexOf(10);
            int iLastIndexOf = strTrim.lastIndexOf(10);
            if (iIndexOf == -1) {
                break;
            }
            int iIndexOf2 = str == null ? 0 : strTrim.indexOf(str);
            if (iIndexOf == -1 || iIndexOf != iLastIndexOf) {
                strSubstring = iIndexOf < iIndexOf2 ? strTrim.substring(iIndexOf + 1, iLastIndexOf) : strTrim.substring(0, iIndexOf);
                strTrim = strSubstring;
            } else {
                if (iIndexOf > iIndexOf2) {
                    strSubstring = strTrim.substring(0, iIndexOf);
                } else if (iIndexOf < iIndexOf2) {
                    strSubstring = strTrim.substring(iIndexOf + 1, strTrim.length());
                }
                strTrim = strSubstring;
            }
        }
        String strTrim2 = strTrim.trim();
        if (str != null) {
            this.msgOffset = strTrim2.indexOf(str) + i12;
        } else {
            this.msgOffset = strTrim.length() - (strTrim.length() - strTrim2.length());
        }
        if (this.msgOffset == 0 && i12 == 0) {
            this.msgOffset = i11;
        }
        return strTrim2;
    }

    public CharSequence getCodeNearError() {
        return showCodeNearError(this.expr, this.cursor);
    }

    public int getColumn() {
        return this.column;
    }

    public int getCursor() {
        return this.cursor;
    }

    public int getCursorOffet() {
        return this.msgOffset;
    }

    public List<c> getErrors() {
        List<c> list = this.errors;
        return list != null ? list : Collections.emptyList();
    }

    public char[] getExpr() {
        return this.expr;
    }

    public int getLastLineStart() {
        return this.lastLineStart;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return generateErrorMessage();
    }

    public void setColumn(int i11) {
        this.column = i11;
    }

    public void setCursor(int i11) {
        this.cursor = i11;
    }

    public void setErrors(List<c> list) {
        this.errors = list;
    }

    public void setEvaluationContext(Object obj) {
        this.evaluationContext = obj;
    }

    public void setExpr(char[] cArr) {
        this.expr = cArr;
    }

    public void setLastLineStart(int i11) {
        this.lastLineStart = i11;
    }

    public void setLineNumber(int i11) {
        this.lineNumber = i11;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return generateErrorMessage();
    }
}
