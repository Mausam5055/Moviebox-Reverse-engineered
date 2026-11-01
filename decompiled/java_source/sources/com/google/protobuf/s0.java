package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public interface s0 extends t0 {

    public interface a extends t0, Cloneable {
        s0 build();

        s0 buildPartial();

        a clear();

        /* JADX INFO: renamed from: clone */
        a mo292clone();

        @Override // com.google.protobuf.t0
        /* synthetic */ s0 getDefaultInstanceForType();

        @Override // com.google.protobuf.t0
        /* synthetic */ boolean isInitialized();

        boolean mergeDelimitedFrom(InputStream inputStream) throws IOException;

        boolean mergeDelimitedFrom(InputStream inputStream, o oVar) throws IOException;

        a mergeFrom(ByteString byteString) throws InvalidProtocolBufferException;

        a mergeFrom(ByteString byteString, o oVar) throws InvalidProtocolBufferException;

        a mergeFrom(i iVar) throws IOException;

        a mergeFrom(i iVar, o oVar) throws IOException;

        a mergeFrom(s0 s0Var);

        a mergeFrom(InputStream inputStream) throws IOException;

        a mergeFrom(InputStream inputStream, o oVar) throws IOException;

        a mergeFrom(byte[] bArr) throws InvalidProtocolBufferException;

        a mergeFrom(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException;

        a mergeFrom(byte[] bArr, int i11, int i12, o oVar) throws InvalidProtocolBufferException;

        a mergeFrom(byte[] bArr, o oVar) throws InvalidProtocolBufferException;
    }

    @Override // com.google.protobuf.t0
    /* synthetic */ s0 getDefaultInstanceForType();

    b1 getParserForType();

    int getSerializedSize();

    @Override // com.google.protobuf.t0
    /* synthetic */ boolean isInitialized();

    a newBuilderForType();

    a toBuilder();

    byte[] toByteArray();

    ByteString toByteString();

    void writeDelimitedTo(OutputStream outputStream) throws IOException;

    void writeTo(CodedOutputStream codedOutputStream) throws IOException;

    void writeTo(OutputStream outputStream) throws IOException;
}
