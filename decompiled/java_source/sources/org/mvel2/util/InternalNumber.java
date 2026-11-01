package org.mvel2.util;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;

/* JADX INFO: loaded from: classes7.dex */
public class InternalNumber extends BigDecimal {
    public InternalNumber(double d11) {
        super(d11);
    }

    public InternalNumber(double d11, MathContext mathContext) {
        super(d11, mathContext);
    }

    public InternalNumber(int i11) {
        super(i11);
    }

    public InternalNumber(int i11, MathContext mathContext) {
        super(i11, mathContext);
    }

    public InternalNumber(long j11) {
        super(j11);
    }

    public InternalNumber(long j11, MathContext mathContext) {
        super(j11, mathContext);
    }

    public InternalNumber(String str) {
        super(str);
    }

    public InternalNumber(String str, MathContext mathContext) {
        super(str, mathContext);
    }

    public InternalNumber(BigInteger bigInteger) {
        super(bigInteger);
    }

    public InternalNumber(BigInteger bigInteger, int i11) {
        super(bigInteger, i11);
    }

    public InternalNumber(BigInteger bigInteger, int i11, MathContext mathContext) {
        super(bigInteger, i11, mathContext);
    }

    public InternalNumber(BigInteger bigInteger, MathContext mathContext) {
        super(bigInteger, mathContext);
    }

    public InternalNumber(char[] cArr) {
        super(cArr);
    }

    public InternalNumber(char[] cArr, int i11, int i12) {
        super(cArr, i11, i12);
    }

    public InternalNumber(char[] cArr, int i11, int i12, MathContext mathContext) {
        super(cArr, i11, i12, mathContext);
    }

    public InternalNumber(char[] cArr, MathContext mathContext) {
        super(cArr, mathContext);
    }
}
