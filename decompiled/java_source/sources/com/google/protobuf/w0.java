package com.google.protobuf;

import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class w0 implements i1 {
    private final s0 defaultInstance;
    private final p extensionSchema;
    private final boolean hasExtensions;
    private final o1 unknownFieldSchema;

    private w0(o1 o1Var, p pVar, s0 s0Var) {
        this.unknownFieldSchema = o1Var;
        this.hasExtensions = pVar.hasExtensions(s0Var);
        this.extensionSchema = pVar;
        this.defaultInstance = s0Var;
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(o1 o1Var, Object obj) {
        return o1Var.getSerializedSizeAsMessageSet(o1Var.getFromMessage(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends t.c> void mergeFromHelper(o1 o1Var, p pVar, Object obj, h1 h1Var, o oVar) throws IOException {
        Object builderFromMessage = o1Var.getBuilderFromMessage(obj);
        t mutableExtensions = pVar.getMutableExtensions(obj);
        while (h1Var.getFieldNumber() != Integer.MAX_VALUE) {
            try {
                if (!parseMessageSetItemOrUnknownField(h1Var, oVar, pVar, mutableExtensions, o1Var, builderFromMessage)) {
                    return;
                }
            } finally {
                o1Var.setBuilderToMessage(obj, builderFromMessage);
            }
        }
    }

    static <T> w0 newSchema(o1 o1Var, p pVar, s0 s0Var) {
        return new w0(o1Var, pVar, s0Var);
    }

    private <UT, UB, ET extends t.c> boolean parseMessageSetItemOrUnknownField(h1 h1Var, o oVar, p pVar, t tVar, o1 o1Var, UB ub2) throws IOException {
        int tag = h1Var.getTag();
        int uInt32 = 0;
        if (tag != WireFormat.MESSAGE_SET_ITEM_TAG) {
            if (WireFormat.getTagWireType(tag) != 2) {
                return h1Var.skipField();
            }
            Object objFindExtensionByNumber = pVar.findExtensionByNumber(oVar, this.defaultInstance, WireFormat.getTagFieldNumber(tag));
            if (objFindExtensionByNumber == null) {
                return o1Var.mergeOneFieldFrom(ub2, h1Var, 0);
            }
            pVar.parseLengthPrefixedMessageSetItem(h1Var, objFindExtensionByNumber, oVar, tVar);
            return true;
        }
        Object objFindExtensionByNumber2 = null;
        ByteString bytes = null;
        while (h1Var.getFieldNumber() != Integer.MAX_VALUE) {
            int tag2 = h1Var.getTag();
            if (tag2 == WireFormat.MESSAGE_SET_TYPE_ID_TAG) {
                uInt32 = h1Var.readUInt32();
                objFindExtensionByNumber2 = pVar.findExtensionByNumber(oVar, this.defaultInstance, uInt32);
            } else if (tag2 == WireFormat.MESSAGE_SET_MESSAGE_TAG) {
                if (objFindExtensionByNumber2 != null) {
                    pVar.parseLengthPrefixedMessageSetItem(h1Var, objFindExtensionByNumber2, oVar, tVar);
                } else {
                    bytes = h1Var.readBytes();
                }
            } else if (!h1Var.skipField()) {
                break;
            }
        }
        if (h1Var.getTag() != WireFormat.MESSAGE_SET_ITEM_END_TAG) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        if (bytes != null) {
            if (objFindExtensionByNumber2 != null) {
                pVar.parseMessageSetItem(bytes, objFindExtensionByNumber2, oVar, tVar);
            } else {
                o1Var.addLengthDelimited(ub2, uInt32, bytes);
            }
        }
        return true;
    }

    private <UT, UB> void writeUnknownFieldsHelper(o1 o1Var, Object obj, Writer writer) throws IOException {
        o1Var.writeAsMessageSetTo(o1Var.getFromMessage(obj), writer);
    }

    @Override // com.google.protobuf.i1
    public boolean equals(Object obj, Object obj2) {
        if (!this.unknownFieldSchema.getFromMessage(obj).equals(this.unknownFieldSchema.getFromMessage(obj2))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(obj).equals(this.extensionSchema.getExtensions(obj2));
        }
        return true;
    }

    @Override // com.google.protobuf.i1
    public int getSerializedSize(Object obj) {
        int unknownFieldsSerializedSize = getUnknownFieldsSerializedSize(this.unknownFieldSchema, obj);
        return this.hasExtensions ? unknownFieldsSerializedSize + this.extensionSchema.getExtensions(obj).getMessageSetSerializedSize() : unknownFieldsSerializedSize;
    }

    @Override // com.google.protobuf.i1
    public int hashCode(Object obj) {
        int iHashCode = this.unknownFieldSchema.getFromMessage(obj).hashCode();
        return this.hasExtensions ? (iHashCode * 53) + this.extensionSchema.getExtensions(obj).hashCode() : iHashCode;
    }

    @Override // com.google.protobuf.i1
    public final boolean isInitialized(Object obj) {
        return this.extensionSchema.getExtensions(obj).isInitialized();
    }

    @Override // com.google.protobuf.i1
    public void makeImmutable(Object obj) {
        this.unknownFieldSchema.makeImmutable(obj);
        this.extensionSchema.makeImmutable(obj);
    }

    @Override // com.google.protobuf.i1
    public void mergeFrom(Object obj, h1 h1Var, o oVar) throws IOException {
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, obj, h1Var, oVar);
    }

    @Override // com.google.protobuf.i1
    public void mergeFrom(Object obj, Object obj2) {
        k1.mergeUnknownFields(this.unknownFieldSchema, obj, obj2);
        if (this.hasExtensions) {
            k1.mergeExtensions(this.extensionSchema, obj, obj2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cb A[EDGE_INSN: B:58:0x00cb->B:34:0x00cb BREAK  A[LOOP:1: B:18:0x006d->B:61:0x006d], SYNTHETIC] */
    @Override // com.google.protobuf.i1
    public void mergeFrom(Object obj, byte[] bArr, int i11, int i12, e.b bVar) throws IOException {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        p1 p1VarNewInstance = generatedMessageLite.unknownFields;
        if (p1VarNewInstance == p1.getDefaultInstance()) {
            p1VarNewInstance = p1.newInstance();
            generatedMessageLite.unknownFields = p1VarNewInstance;
        }
        t tVarEnsureExtensionsAreMutable = ((GeneratedMessageLite.d) obj).ensureExtensionsAreMutable();
        GeneratedMessageLite.g gVar = null;
        while (i11 < i12) {
            int iDecodeVarint32 = e.decodeVarint32(bArr, i11, bVar);
            int i13 = bVar.int1;
            if (i13 == WireFormat.MESSAGE_SET_ITEM_TAG) {
                int i14 = 0;
                ByteString byteString = null;
                while (iDecodeVarint32 < i12) {
                    iDecodeVarint32 = e.decodeVarint32(bArr, iDecodeVarint32, bVar);
                    int i15 = bVar.int1;
                    int tagFieldNumber = WireFormat.getTagFieldNumber(i15);
                    int tagWireType = WireFormat.getTagWireType(i15);
                    if (tagFieldNumber != 2) {
                        if (tagFieldNumber == 3) {
                            if (gVar != null) {
                                iDecodeVarint32 = e.decodeMessageField(d1.getInstance().schemaFor((Class) gVar.getMessageDefaultInstance().getClass()), bArr, iDecodeVarint32, i12, bVar);
                                tVarEnsureExtensionsAreMutable.setField(gVar.descriptor, bVar.object1);
                            } else if (tagWireType == 2) {
                                iDecodeVarint32 = e.decodeBytes(bArr, iDecodeVarint32, bVar);
                                byteString = (ByteString) bVar.object1;
                            }
                        }
                        if (i15 == WireFormat.MESSAGE_SET_ITEM_END_TAG) {
                            break;
                        } else {
                            iDecodeVarint32 = e.skipField(i15, bArr, iDecodeVarint32, i12, bVar);
                        }
                    } else if (tagWireType == 0) {
                        iDecodeVarint32 = e.decodeVarint32(bArr, iDecodeVarint32, bVar);
                        i14 = bVar.int1;
                        gVar = (GeneratedMessageLite.g) this.extensionSchema.findExtensionByNumber(bVar.extensionRegistry, this.defaultInstance, i14);
                    } else {
                        if (i15 == WireFormat.MESSAGE_SET_ITEM_END_TAG) {
                            break;
                            break;
                        }
                        iDecodeVarint32 = e.skipField(i15, bArr, iDecodeVarint32, i12, bVar);
                    }
                }
                if (byteString != null) {
                    p1VarNewInstance.storeField(WireFormat.makeTag(i14, 2), byteString);
                }
                i11 = iDecodeVarint32;
            } else if (WireFormat.getTagWireType(i13) == 2) {
                GeneratedMessageLite.g gVar2 = (GeneratedMessageLite.g) this.extensionSchema.findExtensionByNumber(bVar.extensionRegistry, this.defaultInstance, WireFormat.getTagFieldNumber(i13));
                if (gVar2 != null) {
                    i11 = e.decodeMessageField(d1.getInstance().schemaFor((Class) gVar2.getMessageDefaultInstance().getClass()), bArr, iDecodeVarint32, i12, bVar);
                    tVarEnsureExtensionsAreMutable.setField(gVar2.descriptor, bVar.object1);
                } else {
                    i11 = e.decodeUnknownField(i13, bArr, iDecodeVarint32, i12, p1VarNewInstance, bVar);
                }
                gVar = gVar2;
            } else {
                i11 = e.skipField(i13, bArr, iDecodeVarint32, i12, bVar);
            }
        }
        if (i11 != i12) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override // com.google.protobuf.i1
    public Object newInstance() {
        s0 s0Var = this.defaultInstance;
        return s0Var instanceof GeneratedMessageLite ? ((GeneratedMessageLite) s0Var).newMutableInstance() : s0Var.newBuilderForType().buildPartial();
    }

    @Override // com.google.protobuf.i1
    public void writeTo(Object obj, Writer writer) throws IOException {
        for (Map.Entry<t.c, Object> entry : this.extensionSchema.getExtensions(obj)) {
            t.c key = entry.getKey();
            if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE || key.isRepeated() || key.isPacked()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof f0.b) {
                writer.writeMessageSetItem(key.getNumber(), ((f0.b) entry).getField().toByteString());
            } else {
                writer.writeMessageSetItem(key.getNumber(), entry.getValue());
            }
        }
        writeUnknownFieldsHelper(this.unknownFieldSchema, obj, writer);
    }
}
