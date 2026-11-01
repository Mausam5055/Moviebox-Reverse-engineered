package org.mvel2;

/* JADX INFO: loaded from: classes7.dex */
public class PropertyAccessException extends CompileException {
    public PropertyAccessException(String str, char[] cArr, int i11, Throwable th2, ParserContext parserContext) {
        super(str, cArr, i11, th2);
        setParserContext(parserContext);
    }

    public PropertyAccessException(String str, char[] cArr, int i11, ParserContext parserContext) {
        super(str, cArr, i11);
        setParserContext(parserContext);
    }

    private void setParserContext(ParserContext parserContext) {
        if (parserContext != null) {
            setEvaluationContext(parserContext.getEvaluationContext());
        }
    }
}
