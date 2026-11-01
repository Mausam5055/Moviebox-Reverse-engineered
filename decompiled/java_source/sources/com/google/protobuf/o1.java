package com.google.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
abstract class o1 {
    static final int DEFAULT_RECURSION_LIMIT = 100;
    private static volatile int recursionLimit = 100;

    o1() {
    }

    private final void mergeFrom(Object obj, h1 h1Var, int i11) throws IOException {
        while (h1Var.getFieldNumber() != Integer.MAX_VALUE && mergeOneFieldFrom(obj, h1Var, i11)) {
        }
    }

    abstract void addFixed32(Object obj, int i11, int i12);

    abstract void addFixed64(Object obj, int i11, long j11);

    abstract void addGroup(Object obj, int i11, Object obj2);

    abstract void addLengthDelimited(Object obj, int i11, ByteString byteString);

    abstract void addVarint(Object obj, int i11, long j11);

    abstract Object getBuilderFromMessage(Object obj);

    abstract Object getFromMessage(Object obj);

    abstract int getSerializedSize(Object obj);

    abstract int getSerializedSizeAsMessageSet(Object obj);

    abstract void makeImmutable(Object obj);

    abstract Object merge(Object obj, Object obj2);

    final boolean mergeOneFieldFrom(Object obj, h1 h1Var, int i11) throws IOException {
        int tag = h1Var.getTag();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            addVarint(obj, tagFieldNumber, h1Var.readInt64());
            return true;
        }
        if (tagWireType == 1) {
            addFixed64(obj, tagFieldNumber, h1Var.readFixed64());
            return true;
        }
        if (tagWireType == 2) {
            addLengthDelimited(obj, tagFieldNumber, h1Var.readBytes());
            return true;
        }
        if (tagWireType != 3) {
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            addFixed32(obj, tagFieldNumber, h1Var.readFixed32());
            return true;
        }
        Object objNewBuilder = newBuilder();
        int iMakeTag = WireFormat.makeTag(tagFieldNumber, 4);
        int i12 = i11 + 1;
        if (i12 >= recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        mergeFrom(objNewBuilder, h1Var, i12);
        if (iMakeTag != h1Var.getTag()) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        addGroup(obj, tagFieldNumber, toImmutable(objNewBuilder));
        return true;
    }

    abstract Object newBuilder();

    abstract void setBuilderToMessage(Object obj, Object obj2);

    public void setRecursionLimit(int i11) {
        recursionLimit = i11;
    }

    abstract void setToMessage(Object obj, Object obj2);

    abstract boolean shouldDiscardUnknownFields(h1 h1Var);

    abstract Object toImmutable(Object obj);

    abstract void writeAsMessageSetTo(Object obj, Writer writer) throws IOException;

    abstract void writeTo(Object obj, Writer writer) throws IOException;
}
