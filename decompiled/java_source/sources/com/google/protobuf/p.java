package com.google.protobuf;

import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
abstract class p {
    p() {
    }

    abstract int extensionNumber(Map.Entry<?, ?> entry);

    abstract Object findExtensionByNumber(o oVar, s0 s0Var, int i11);

    abstract t getExtensions(Object obj);

    abstract t getMutableExtensions(Object obj);

    abstract boolean hasExtensions(s0 s0Var);

    abstract void makeImmutable(Object obj);

    abstract <UT, UB> UB parseExtension(Object obj, h1 h1Var, Object obj2, o oVar, t tVar, UB ub2, o1 o1Var) throws IOException;

    abstract void parseLengthPrefixedMessageSetItem(h1 h1Var, Object obj, o oVar, t tVar) throws IOException;

    abstract void parseMessageSetItem(ByteString byteString, Object obj, o oVar, t tVar) throws IOException;

    abstract void serializeExtension(Writer writer, Map.Entry<?, ?> entry) throws IOException;

    abstract void setExtensions(Object obj, t tVar);
}
