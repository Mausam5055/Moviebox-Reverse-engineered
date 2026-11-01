package i10;

import org.mvel2.compiler.BlankLiteral;

/* JADX INFO: loaded from: classes7.dex */
public class t implements org.mvel2.a {
    @Override // org.mvel2.a
    public boolean a(Class cls) {
        return cls != BlankLiteral.class;
    }

    @Override // org.mvel2.a
    public Object b(Object obj) {
        return String.valueOf(obj);
    }
}
