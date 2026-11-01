package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b implements b1 {
    private static final o EMPTY_REGISTRY = o.getEmptyRegistry();

    private s0 checkMessageInitialized(s0 s0Var) throws InvalidProtocolBufferException {
        if (s0Var == null || s0Var.isInitialized()) {
            return s0Var;
        }
        throw newUninitializedMessageException(s0Var).asInvalidProtocolBufferException().setUnfinishedMessage(s0Var);
    }

    private UninitializedMessageException newUninitializedMessageException(s0 s0Var) {
        return s0Var instanceof a ? ((a) s0Var).newUninitializedMessageException() : new UninitializedMessageException(s0Var);
    }

    @Override // com.google.protobuf.b1
    public s0 parseDelimitedFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return parseDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parseDelimitedFrom(InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(parsePartialDelimitedFrom(inputStream, oVar));
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return parseFrom(byteString, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(ByteString byteString, o oVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(parsePartialFrom(byteString, oVar));
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(i iVar) throws InvalidProtocolBufferException {
        return parseFrom(iVar, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(i iVar, o oVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized((s0) parsePartialFrom(iVar, oVar));
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return parseFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(parsePartialFrom(inputStream, oVar));
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return parseFrom(byteBuffer, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(ByteBuffer byteBuffer, o oVar) throws InvalidProtocolBufferException {
        i iVarNewInstance = i.newInstance(byteBuffer);
        s0 s0Var = (s0) parsePartialFrom(iVarNewInstance, oVar);
        try {
            iVarNewInstance.checkLastTagWas(0);
            return checkMessageInitialized(s0Var);
        } catch (InvalidProtocolBufferException e11) {
            throw e11.setUnfinishedMessage(s0Var);
        }
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return parseFrom(bArr, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
        return parseFrom(bArr, i11, i12, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(byte[] bArr, int i11, int i12, o oVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(parsePartialFrom(bArr, i11, i12, oVar));
    }

    @Override // com.google.protobuf.b1
    public s0 parseFrom(byte[] bArr, o oVar) throws InvalidProtocolBufferException {
        return parseFrom(bArr, 0, bArr.length, oVar);
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialDelimitedFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return parsePartialDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialDelimitedFrom(InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        try {
            int i11 = inputStream.read();
            if (i11 == -1) {
                return null;
            }
            return parsePartialFrom((InputStream) new a.AbstractC0453a.C0454a(inputStream, i.readRawVarint32(i11, inputStream)), oVar);
        } catch (IOException e11) {
            throw new InvalidProtocolBufferException(e11);
        }
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return parsePartialFrom(byteString, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialFrom(ByteString byteString, o oVar) throws InvalidProtocolBufferException {
        i iVarNewCodedInput = byteString.newCodedInput();
        s0 s0Var = (s0) parsePartialFrom(iVarNewCodedInput, oVar);
        try {
            iVarNewCodedInput.checkLastTagWas(0);
            return s0Var;
        } catch (InvalidProtocolBufferException e11) {
            throw e11.setUnfinishedMessage(s0Var);
        }
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialFrom(i iVar) throws InvalidProtocolBufferException {
        return (s0) parsePartialFrom(iVar, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return parsePartialFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialFrom(InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        i iVarNewInstance = i.newInstance(inputStream);
        s0 s0Var = (s0) parsePartialFrom(iVarNewInstance, oVar);
        try {
            iVarNewInstance.checkLastTagWas(0);
            return s0Var;
        } catch (InvalidProtocolBufferException e11) {
            throw e11.setUnfinishedMessage(s0Var);
        }
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return parsePartialFrom(bArr, 0, bArr.length, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialFrom(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
        return parsePartialFrom(bArr, i11, i12, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialFrom(byte[] bArr, int i11, int i12, o oVar) throws InvalidProtocolBufferException {
        i iVarNewInstance = i.newInstance(bArr, i11, i12);
        s0 s0Var = (s0) parsePartialFrom(iVarNewInstance, oVar);
        try {
            iVarNewInstance.checkLastTagWas(0);
            return s0Var;
        } catch (InvalidProtocolBufferException e11) {
            throw e11.setUnfinishedMessage(s0Var);
        }
    }

    @Override // com.google.protobuf.b1
    public s0 parsePartialFrom(byte[] bArr, o oVar) throws InvalidProtocolBufferException {
        return parsePartialFrom(bArr, 0, bArr.length, oVar);
    }

    @Override // com.google.protobuf.b1
    public abstract /* synthetic */ Object parsePartialFrom(i iVar, o oVar) throws InvalidProtocolBufferException;
}
