package org.mvel2.util;

/* JADX INFO: loaded from: classes7.dex */
public class i extends ClassLoader implements k {
    public i(ClassLoader classLoader) {
        super(classLoader);
    }

    @Override // org.mvel2.util.k
    public Class a(String str, byte[] bArr, int i11, int i12) {
        return super.defineClass(str, bArr, i11, i12);
    }
}
