package com.google.protobuf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class q extends p {

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    q() {
    }

    @Override // com.google.protobuf.p
    int extensionNumber(Map.Entry<?, ?> entry) {
        return ((GeneratedMessageLite.f) entry.getKey()).getNumber();
    }

    @Override // com.google.protobuf.p
    Object findExtensionByNumber(o oVar, s0 s0Var, int i11) {
        return oVar.findLiteExtensionByNumber(s0Var, i11);
    }

    @Override // com.google.protobuf.p
    t getExtensions(Object obj) {
        return ((GeneratedMessageLite.d) obj).extensions;
    }

    @Override // com.google.protobuf.p
    t getMutableExtensions(Object obj) {
        return ((GeneratedMessageLite.d) obj).ensureExtensionsAreMutable();
    }

    @Override // com.google.protobuf.p
    boolean hasExtensions(s0 s0Var) {
        return s0Var instanceof GeneratedMessageLite.d;
    }

    @Override // com.google.protobuf.p
    void makeImmutable(Object obj) {
        getExtensions(obj).makeImmutable();
    }

    @Override // com.google.protobuf.p
    <UT, UB> UB parseExtension(Object obj, h1 h1Var, Object obj2, o oVar, t tVar, UB ub2, o1 o1Var) throws IOException {
        Object objValueOf;
        Object field;
        ArrayList arrayList;
        GeneratedMessageLite.g gVar = (GeneratedMessageLite.g) obj2;
        int number = gVar.getNumber();
        if (gVar.descriptor.isRepeated() && gVar.descriptor.isPacked()) {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    h1Var.readDoubleList(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    h1Var.readFloatList(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    h1Var.readInt64List(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    h1Var.readUInt64List(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    h1Var.readInt32List(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    h1Var.readFixed64List(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    h1Var.readFixed32List(arrayList);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    h1Var.readBoolList(arrayList);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    h1Var.readUInt32List(arrayList);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    h1Var.readSFixed32List(arrayList);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    h1Var.readSFixed64List(arrayList);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    h1Var.readSInt32List(arrayList);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    h1Var.readSInt64List(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    h1Var.readEnumList(arrayList);
                    ub2 = (UB) k1.filterUnknownEnumList(obj, number, arrayList, gVar.descriptor.getEnumType(), ub2, o1Var);
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + gVar.descriptor.getLiteType());
            }
            tVar.setField(gVar.descriptor, arrayList);
        } else {
            if (gVar.getLiteType() != WireFormat.FieldType.ENUM) {
                switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()]) {
                    case 1:
                        objValueOf = Double.valueOf(h1Var.readDouble());
                        break;
                    case 2:
                        objValueOf = Float.valueOf(h1Var.readFloat());
                        break;
                    case 3:
                        objValueOf = Long.valueOf(h1Var.readInt64());
                        break;
                    case 4:
                        objValueOf = Long.valueOf(h1Var.readUInt64());
                        break;
                    case 5:
                        objValueOf = Integer.valueOf(h1Var.readInt32());
                        break;
                    case 6:
                        objValueOf = Long.valueOf(h1Var.readFixed64());
                        break;
                    case 7:
                        objValueOf = Integer.valueOf(h1Var.readFixed32());
                        break;
                    case 8:
                        objValueOf = Boolean.valueOf(h1Var.readBool());
                        break;
                    case 9:
                        objValueOf = Integer.valueOf(h1Var.readUInt32());
                        break;
                    case 10:
                        objValueOf = Integer.valueOf(h1Var.readSFixed32());
                        break;
                    case 11:
                        objValueOf = Long.valueOf(h1Var.readSFixed64());
                        break;
                    case 12:
                        objValueOf = Integer.valueOf(h1Var.readSInt32());
                        break;
                    case 13:
                        objValueOf = Long.valueOf(h1Var.readSInt64());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        objValueOf = h1Var.readBytes();
                        break;
                    case 16:
                        objValueOf = h1Var.readString();
                        break;
                    case 17:
                        if (!gVar.isRepeated()) {
                            Object field2 = tVar.getField(gVar.descriptor);
                            if (field2 instanceof GeneratedMessageLite) {
                                i1 i1VarSchemaFor = d1.getInstance().schemaFor(field2);
                                if (!((GeneratedMessageLite) field2).isMutable()) {
                                    Object objNewInstance = i1VarSchemaFor.newInstance();
                                    i1VarSchemaFor.mergeFrom(objNewInstance, field2);
                                    tVar.setField(gVar.descriptor, objNewInstance);
                                    field2 = objNewInstance;
                                }
                                h1Var.mergeGroupField(field2, i1VarSchemaFor, oVar);
                                return ub2;
                            }
                        }
                        objValueOf = h1Var.readGroup(gVar.getMessageDefaultInstance().getClass(), oVar);
                        break;
                    case 18:
                        if (!gVar.isRepeated()) {
                            Object field3 = tVar.getField(gVar.descriptor);
                            if (field3 instanceof GeneratedMessageLite) {
                                i1 i1VarSchemaFor2 = d1.getInstance().schemaFor(field3);
                                if (!((GeneratedMessageLite) field3).isMutable()) {
                                    Object objNewInstance2 = i1VarSchemaFor2.newInstance();
                                    i1VarSchemaFor2.mergeFrom(objNewInstance2, field3);
                                    tVar.setField(gVar.descriptor, objNewInstance2);
                                    field3 = objNewInstance2;
                                }
                                h1Var.mergeMessageField(field3, i1VarSchemaFor2, oVar);
                                return ub2;
                            }
                        }
                        objValueOf = h1Var.readMessage(gVar.getMessageDefaultInstance().getClass(), oVar);
                        break;
                    default:
                        objValueOf = null;
                        break;
                }
            } else {
                int int32 = h1Var.readInt32();
                if (gVar.descriptor.getEnumType().findValueByNumber(int32) == null) {
                    return (UB) k1.storeUnknownEnum(obj, number, int32, ub2, o1Var);
                }
                objValueOf = Integer.valueOf(int32);
            }
            if (gVar.isRepeated()) {
                tVar.addRepeatedField(gVar.descriptor, objValueOf);
            } else {
                int i11 = a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()];
                if ((i11 == 17 || i11 == 18) && (field = tVar.getField(gVar.descriptor)) != null) {
                    objValueOf = y.mergeMessage(field, objValueOf);
                }
                tVar.setField(gVar.descriptor, objValueOf);
            }
        }
        return ub2;
    }

    @Override // com.google.protobuf.p
    void parseLengthPrefixedMessageSetItem(h1 h1Var, Object obj, o oVar, t tVar) throws IOException {
        GeneratedMessageLite.g gVar = (GeneratedMessageLite.g) obj;
        tVar.setField(gVar.descriptor, h1Var.readMessage(gVar.getMessageDefaultInstance().getClass(), oVar));
    }

    @Override // com.google.protobuf.p
    void parseMessageSetItem(ByteString byteString, Object obj, o oVar, t tVar) throws IOException {
        GeneratedMessageLite.g gVar = (GeneratedMessageLite.g) obj;
        s0.a aVarNewBuilderForType = gVar.getMessageDefaultInstance().newBuilderForType();
        i iVarNewCodedInput = byteString.newCodedInput();
        aVarNewBuilderForType.mergeFrom(iVarNewCodedInput, oVar);
        tVar.setField(gVar.descriptor, aVarNewBuilderForType.buildPartial());
        iVarNewCodedInput.checkLastTagWas(0);
    }

    @Override // com.google.protobuf.p
    void serializeExtension(Writer writer, Map.Entry<?, ?> entry) throws IOException {
        GeneratedMessageLite.f fVar = (GeneratedMessageLite.f) entry.getKey();
        if (!fVar.isRepeated()) {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fVar.getLiteType().ordinal()]) {
                case 1:
                    writer.writeDouble(fVar.getNumber(), ((Double) entry.getValue()).doubleValue());
                    break;
                case 2:
                    writer.writeFloat(fVar.getNumber(), ((Float) entry.getValue()).floatValue());
                    break;
                case 3:
                    writer.writeInt64(fVar.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 4:
                    writer.writeUInt64(fVar.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 5:
                    writer.writeInt32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 6:
                    writer.writeFixed64(fVar.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 7:
                    writer.writeFixed32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 8:
                    writer.writeBool(fVar.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                    break;
                case 9:
                    writer.writeUInt32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 10:
                    writer.writeSFixed32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 11:
                    writer.writeSFixed64(fVar.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 12:
                    writer.writeSInt32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 13:
                    writer.writeSInt64(fVar.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 14:
                    writer.writeInt32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 15:
                    writer.writeBytes(fVar.getNumber(), (ByteString) entry.getValue());
                    break;
                case 16:
                    writer.writeString(fVar.getNumber(), (String) entry.getValue());
                    break;
                case 17:
                    writer.writeGroup(fVar.getNumber(), entry.getValue(), d1.getInstance().schemaFor((Class) entry.getValue().getClass()));
                    break;
                case 18:
                    writer.writeMessage(fVar.getNumber(), entry.getValue(), d1.getInstance().schemaFor((Class) entry.getValue().getClass()));
                    break;
            }
        }
        switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fVar.getLiteType().ordinal()]) {
            case 1:
                k1.writeDoubleList(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 2:
                k1.writeFloatList(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 3:
                k1.writeInt64List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 4:
                k1.writeUInt64List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 5:
                k1.writeInt32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 6:
                k1.writeFixed64List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 7:
                k1.writeFixed32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 8:
                k1.writeBoolList(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 9:
                k1.writeUInt32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 10:
                k1.writeSFixed32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 11:
                k1.writeSFixed64List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 12:
                k1.writeSInt32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 13:
                k1.writeSInt64List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 14:
                k1.writeInt32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 15:
                k1.writeBytesList(fVar.getNumber(), (List) entry.getValue(), writer);
                break;
            case 16:
                k1.writeStringList(fVar.getNumber(), (List) entry.getValue(), writer);
                break;
            case 17:
                List list = (List) entry.getValue();
                if (list != null && !list.isEmpty()) {
                    k1.writeGroupList(fVar.getNumber(), (List) entry.getValue(), writer, d1.getInstance().schemaFor((Class) list.get(0).getClass()));
                    break;
                }
                break;
            case 18:
                List list2 = (List) entry.getValue();
                if (list2 != null && !list2.isEmpty()) {
                    k1.writeMessageList(fVar.getNumber(), (List) entry.getValue(), writer, d1.getInstance().schemaFor((Class) list2.get(0).getClass()));
                    break;
                }
                break;
        }
    }

    @Override // com.google.protobuf.p
    void setExtensions(Object obj, t tVar) {
        ((GeneratedMessageLite.d) obj).extensions = tVar;
    }
}
