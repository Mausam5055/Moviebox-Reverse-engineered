package com.google.protobuf;

import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface i0 extends f1 {
    void add(ByteString byteString);

    void add(byte[] bArr);

    boolean addAllByteArray(Collection<byte[]> collection);

    boolean addAllByteString(Collection<? extends ByteString> collection);

    List<byte[]> asByteArrayList();

    @Override // com.google.protobuf.f1
    /* synthetic */ List asByteStringList();

    byte[] getByteArray(int i11);

    ByteString getByteString(int i11);

    Object getRaw(int i11);

    List<?> getUnderlyingElements();

    i0 getUnmodifiableView();

    void mergeFrom(i0 i0Var);

    void set(int i11, ByteString byteString);

    void set(int i11, byte[] bArr);
}
