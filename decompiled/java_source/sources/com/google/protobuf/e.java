package com.google.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class e {
    static final int DEFAULT_RECURSION_LIMIT = 100;
    private static volatile int recursionLimit = 100;

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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 11;
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

    static final class b {
        public final o extensionRegistry;
        public int int1;
        public long long1;
        public Object object1;
        public int recursionDepth;

        b() {
            this.extensionRegistry = o.getEmptyRegistry();
        }

        b(o oVar) {
            oVar.getClass();
            this.extensionRegistry = oVar;
        }
    }

    private e() {
    }

    private static void checkRecursionLimit(int i11) throws InvalidProtocolBufferException {
        if (i11 >= recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
    }

    static int decodeBoolList(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) {
        f fVar = (f) jVar;
        int iDecodeVarint64 = decodeVarint64(bArr, i12, bVar);
        fVar.addBoolean(bVar.long1 != 0);
        while (iDecodeVarint64 < i13) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            fVar.addBoolean(bVar.long1 != 0);
        }
        return iDecodeVarint64;
    }

    static int decodeBytes(byte[] bArr, int i11, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1;
        if (i12 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i12 > bArr.length - iDecodeVarint32) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i12 == 0) {
            bVar.object1 = ByteString.EMPTY;
            return iDecodeVarint32;
        }
        bVar.object1 = ByteString.copyFrom(bArr, iDecodeVarint32, i12);
        return iDecodeVarint32 + i12;
    }

    static int decodeBytesList(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i12, bVar);
        int i14 = bVar.int1;
        if (i14 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i14 > bArr.length - iDecodeVarint32) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i14 == 0) {
            jVar.add(ByteString.EMPTY);
        } else {
            jVar.add(ByteString.copyFrom(bArr, iDecodeVarint32, i14));
            iDecodeVarint32 += i14;
        }
        while (iDecodeVarint32 < i13) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            int i15 = bVar.int1;
            if (i15 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i15 > bArr.length - iDecodeVarint32) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i15 == 0) {
                jVar.add(ByteString.EMPTY);
            } else {
                jVar.add(ByteString.copyFrom(bArr, iDecodeVarint32, i15));
                iDecodeVarint32 += i15;
            }
        }
        return iDecodeVarint32;
    }

    static double decodeDouble(byte[] bArr, int i11) {
        return Double.longBitsToDouble(decodeFixed64(bArr, i11));
    }

    static int decodeDoubleList(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) {
        l lVar = (l) jVar;
        lVar.addDouble(decodeDouble(bArr, i12));
        int i14 = i12 + 8;
        while (i14 < i13) {
            int iDecodeVarint32 = decodeVarint32(bArr, i14, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            lVar.addDouble(decodeDouble(bArr, iDecodeVarint32));
            i14 = iDecodeVarint32 + 8;
        }
        return i14;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static int decodeExtension(int i11, byte[] bArr, int i12, int i13, GeneratedMessageLite.d dVar, GeneratedMessageLite.g gVar, o1 o1Var, b bVar) throws IOException {
        t tVar = dVar.extensions;
        int i14 = i11 >>> 3;
        if (gVar.descriptor.isRepeated() && gVar.descriptor.isPacked()) {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()]) {
                case 1:
                    l lVar = new l();
                    int iDecodePackedDoubleList = decodePackedDoubleList(bArr, i12, lVar, bVar);
                    tVar.setField(gVar.descriptor, lVar);
                    return iDecodePackedDoubleList;
                case 2:
                    u uVar = new u();
                    int iDecodePackedFloatList = decodePackedFloatList(bArr, i12, uVar, bVar);
                    tVar.setField(gVar.descriptor, uVar);
                    return iDecodePackedFloatList;
                case 3:
                case 4:
                    k0 k0Var = new k0();
                    int iDecodePackedVarint64List = decodePackedVarint64List(bArr, i12, k0Var, bVar);
                    tVar.setField(gVar.descriptor, k0Var);
                    return iDecodePackedVarint64List;
                case 5:
                case 6:
                    w wVar = new w();
                    int iDecodePackedVarint32List = decodePackedVarint32List(bArr, i12, wVar, bVar);
                    tVar.setField(gVar.descriptor, wVar);
                    return iDecodePackedVarint32List;
                case 7:
                case 8:
                    k0 k0Var2 = new k0();
                    int iDecodePackedFixed64List = decodePackedFixed64List(bArr, i12, k0Var2, bVar);
                    tVar.setField(gVar.descriptor, k0Var2);
                    return iDecodePackedFixed64List;
                case 9:
                case 10:
                    w wVar2 = new w();
                    int iDecodePackedFixed32List = decodePackedFixed32List(bArr, i12, wVar2, bVar);
                    tVar.setField(gVar.descriptor, wVar2);
                    return iDecodePackedFixed32List;
                case 11:
                    f fVar = new f();
                    int iDecodePackedBoolList = decodePackedBoolList(bArr, i12, fVar, bVar);
                    tVar.setField(gVar.descriptor, fVar);
                    return iDecodePackedBoolList;
                case 12:
                    w wVar3 = new w();
                    int iDecodePackedSInt32List = decodePackedSInt32List(bArr, i12, wVar3, bVar);
                    tVar.setField(gVar.descriptor, wVar3);
                    return iDecodePackedSInt32List;
                case 13:
                    k0 k0Var3 = new k0();
                    int iDecodePackedSInt64List = decodePackedSInt64List(bArr, i12, k0Var3, bVar);
                    tVar.setField(gVar.descriptor, k0Var3);
                    return iDecodePackedSInt64List;
                case 14:
                    w wVar4 = new w();
                    int iDecodePackedVarint32List2 = decodePackedVarint32List(bArr, i12, wVar4, bVar);
                    k1.filterUnknownEnumList(dVar, i14, wVar4, gVar.descriptor.getEnumType(), (Object) null, o1Var);
                    tVar.setField(gVar.descriptor, wVar4);
                    return iDecodePackedVarint32List2;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + gVar.descriptor.getLiteType());
            }
        }
        Object objValueOf = null;
        if (gVar.getLiteType() == WireFormat.FieldType.ENUM) {
            i12 = decodeVarint32(bArr, i12, bVar);
            if (gVar.descriptor.getEnumType().findValueByNumber(bVar.int1) == null) {
                k1.storeUnknownEnum(dVar, i14, bVar.int1, null, o1Var);
                return i12;
            }
            objValueOf = Integer.valueOf(bVar.int1);
        } else {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()]) {
                case 1:
                    objValueOf = Double.valueOf(decodeDouble(bArr, i12));
                    i12 += 8;
                    break;
                case 2:
                    objValueOf = Float.valueOf(decodeFloat(bArr, i12));
                    i12 += 4;
                    break;
                case 3:
                case 4:
                    i12 = decodeVarint64(bArr, i12, bVar);
                    objValueOf = Long.valueOf(bVar.long1);
                    break;
                case 5:
                case 6:
                    i12 = decodeVarint32(bArr, i12, bVar);
                    objValueOf = Integer.valueOf(bVar.int1);
                    break;
                case 7:
                case 8:
                    objValueOf = Long.valueOf(decodeFixed64(bArr, i12));
                    i12 += 8;
                    break;
                case 9:
                case 10:
                    objValueOf = Integer.valueOf(decodeFixed32(bArr, i12));
                    i12 += 4;
                    break;
                case 11:
                    i12 = decodeVarint64(bArr, i12, bVar);
                    objValueOf = Boolean.valueOf(bVar.long1 != 0);
                    break;
                case 12:
                    i12 = decodeVarint32(bArr, i12, bVar);
                    objValueOf = Integer.valueOf(i.decodeZigZag32(bVar.int1));
                    break;
                case 13:
                    i12 = decodeVarint64(bArr, i12, bVar);
                    objValueOf = Long.valueOf(i.decodeZigZag64(bVar.long1));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i12 = decodeBytes(bArr, i12, bVar);
                    objValueOf = bVar.object1;
                    break;
                case 16:
                    i12 = decodeString(bArr, i12, bVar);
                    objValueOf = bVar.object1;
                    break;
                case 17:
                    int i15 = (i14 << 3) | 4;
                    i1 i1VarSchemaFor = d1.getInstance().schemaFor((Class) gVar.getMessageDefaultInstance().getClass());
                    if (gVar.isRepeated()) {
                        int iDecodeGroupField = decodeGroupField(i1VarSchemaFor, bArr, i12, i13, i15, bVar);
                        tVar.addRepeatedField(gVar.descriptor, bVar.object1);
                        return iDecodeGroupField;
                    }
                    Object field = tVar.getField(gVar.descriptor);
                    if (field == null) {
                        field = i1VarSchemaFor.newInstance();
                        tVar.setField(gVar.descriptor, field);
                    }
                    return mergeGroupField(field, i1VarSchemaFor, bArr, i12, i13, i15, bVar);
                case 18:
                    i1 i1VarSchemaFor2 = d1.getInstance().schemaFor((Class) gVar.getMessageDefaultInstance().getClass());
                    if (gVar.isRepeated()) {
                        int iDecodeMessageField = decodeMessageField(i1VarSchemaFor2, bArr, i12, i13, bVar);
                        tVar.addRepeatedField(gVar.descriptor, bVar.object1);
                        return iDecodeMessageField;
                    }
                    Object field2 = tVar.getField(gVar.descriptor);
                    if (field2 == null) {
                        field2 = i1VarSchemaFor2.newInstance();
                        tVar.setField(gVar.descriptor, field2);
                    }
                    return mergeMessageField(field2, i1VarSchemaFor2, bArr, i12, i13, bVar);
            }
        }
        if (gVar.isRepeated()) {
            tVar.addRepeatedField(gVar.descriptor, objValueOf);
        } else {
            tVar.setField(gVar.descriptor, objValueOf);
        }
        return i12;
    }

    static int decodeExtensionOrUnknownField(int i11, byte[] bArr, int i12, int i13, Object obj, s0 s0Var, o1 o1Var, b bVar) throws IOException {
        GeneratedMessageLite.g gVarFindLiteExtensionByNumber = bVar.extensionRegistry.findLiteExtensionByNumber(s0Var, i11 >>> 3);
        if (gVarFindLiteExtensionByNumber == null) {
            return decodeUnknownField(i11, bArr, i12, i13, v0.getMutableUnknownFields(obj), bVar);
        }
        GeneratedMessageLite.d dVar = (GeneratedMessageLite.d) obj;
        dVar.ensureExtensionsAreMutable();
        return decodeExtension(i11, bArr, i12, i13, dVar, gVarFindLiteExtensionByNumber, o1Var, bVar);
    }

    static int decodeFixed32(byte[] bArr, int i11) {
        return ((bArr[i11 + 3] & 255) << 24) | (bArr[i11] & 255) | ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11 + 2] & 255) << 16);
    }

    static int decodeFixed32List(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) {
        w wVar = (w) jVar;
        wVar.addInt(decodeFixed32(bArr, i12));
        int i14 = i12 + 4;
        while (i14 < i13) {
            int iDecodeVarint32 = decodeVarint32(bArr, i14, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            wVar.addInt(decodeFixed32(bArr, iDecodeVarint32));
            i14 = iDecodeVarint32 + 4;
        }
        return i14;
    }

    static long decodeFixed64(byte[] bArr, int i11) {
        return ((((long) bArr[i11 + 7]) & 255) << 56) | (((long) bArr[i11]) & 255) | ((((long) bArr[i11 + 1]) & 255) << 8) | ((((long) bArr[i11 + 2]) & 255) << 16) | ((((long) bArr[i11 + 3]) & 255) << 24) | ((((long) bArr[i11 + 4]) & 255) << 32) | ((((long) bArr[i11 + 5]) & 255) << 40) | ((((long) bArr[i11 + 6]) & 255) << 48);
    }

    static int decodeFixed64List(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) {
        k0 k0Var = (k0) jVar;
        k0Var.addLong(decodeFixed64(bArr, i12));
        int i14 = i12 + 8;
        while (i14 < i13) {
            int iDecodeVarint32 = decodeVarint32(bArr, i14, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            k0Var.addLong(decodeFixed64(bArr, iDecodeVarint32));
            i14 = iDecodeVarint32 + 8;
        }
        return i14;
    }

    static float decodeFloat(byte[] bArr, int i11) {
        return Float.intBitsToFloat(decodeFixed32(bArr, i11));
    }

    static int decodeFloatList(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) {
        u uVar = (u) jVar;
        uVar.addFloat(decodeFloat(bArr, i12));
        int i14 = i12 + 4;
        while (i14 < i13) {
            int iDecodeVarint32 = decodeVarint32(bArr, i14, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            uVar.addFloat(decodeFloat(bArr, iDecodeVarint32));
            i14 = iDecodeVarint32 + 4;
        }
        return i14;
    }

    static int decodeGroupField(i1 i1Var, byte[] bArr, int i11, int i12, int i13, b bVar) throws IOException {
        Object objNewInstance = i1Var.newInstance();
        int iMergeGroupField = mergeGroupField(objNewInstance, i1Var, bArr, i11, i12, i13, bVar);
        i1Var.makeImmutable(objNewInstance);
        bVar.object1 = objNewInstance;
        return iMergeGroupField;
    }

    static int decodeGroupList(i1 i1Var, int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) throws IOException {
        int i14 = (i11 & (-8)) | 4;
        int iDecodeGroupField = decodeGroupField(i1Var, bArr, i12, i13, i14, bVar);
        jVar.add(bVar.object1);
        while (iDecodeGroupField < i13) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeGroupField, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            iDecodeGroupField = decodeGroupField(i1Var, bArr, iDecodeVarint32, i13, i14, bVar);
            jVar.add(bVar.object1);
        }
        return iDecodeGroupField;
    }

    static int decodeMessageField(i1 i1Var, byte[] bArr, int i11, int i12, b bVar) throws IOException {
        Object objNewInstance = i1Var.newInstance();
        int iMergeMessageField = mergeMessageField(objNewInstance, i1Var, bArr, i11, i12, bVar);
        i1Var.makeImmutable(objNewInstance);
        bVar.object1 = objNewInstance;
        return iMergeMessageField;
    }

    static int decodeMessageList(i1 i1Var, int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) throws IOException {
        int iDecodeMessageField = decodeMessageField(i1Var, bArr, i12, i13, bVar);
        jVar.add(bVar.object1);
        while (iDecodeMessageField < i13) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeMessageField, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            iDecodeMessageField = decodeMessageField(i1Var, bArr, iDecodeVarint32, i13, bVar);
            jVar.add(bVar.object1);
        }
        return iDecodeMessageField;
    }

    static int decodePackedBoolList(byte[] bArr, int i11, y.j jVar, b bVar) throws IOException {
        f fVar = (f) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i12) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            fVar.addBoolean(bVar.long1 != 0);
        }
        if (iDecodeVarint32 == i12) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedDoubleList(byte[] bArr, int i11, y.j jVar, b bVar) throws IOException {
        l lVar = (l) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i12) {
            lVar.addDouble(decodeDouble(bArr, iDecodeVarint32));
            iDecodeVarint32 += 8;
        }
        if (iDecodeVarint32 == i12) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedFixed32List(byte[] bArr, int i11, y.j jVar, b bVar) throws IOException {
        w wVar = (w) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i12) {
            wVar.addInt(decodeFixed32(bArr, iDecodeVarint32));
            iDecodeVarint32 += 4;
        }
        if (iDecodeVarint32 == i12) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedFixed64List(byte[] bArr, int i11, y.j jVar, b bVar) throws IOException {
        k0 k0Var = (k0) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i12) {
            k0Var.addLong(decodeFixed64(bArr, iDecodeVarint32));
            iDecodeVarint32 += 8;
        }
        if (iDecodeVarint32 == i12) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedFloatList(byte[] bArr, int i11, y.j jVar, b bVar) throws IOException {
        u uVar = (u) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i12) {
            uVar.addFloat(decodeFloat(bArr, iDecodeVarint32));
            iDecodeVarint32 += 4;
        }
        if (iDecodeVarint32 == i12) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedSInt32List(byte[] bArr, int i11, y.j jVar, b bVar) throws IOException {
        w wVar = (w) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i12) {
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            wVar.addInt(i.decodeZigZag32(bVar.int1));
        }
        if (iDecodeVarint32 == i12) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedSInt64List(byte[] bArr, int i11, y.j jVar, b bVar) throws IOException {
        k0 k0Var = (k0) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i12) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            k0Var.addLong(i.decodeZigZag64(bVar.long1));
        }
        if (iDecodeVarint32 == i12) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedVarint32List(byte[] bArr, int i11, y.j jVar, b bVar) throws IOException {
        w wVar = (w) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i12) {
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            wVar.addInt(bVar.int1);
        }
        if (iDecodeVarint32 == i12) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedVarint64List(byte[] bArr, int i11, y.j jVar, b bVar) throws IOException {
        k0 k0Var = (k0) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i12) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            k0Var.addLong(bVar.long1);
        }
        if (iDecodeVarint32 == i12) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodeSInt32List(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) {
        w wVar = (w) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i12, bVar);
        wVar.addInt(i.decodeZigZag32(bVar.int1));
        while (iDecodeVarint32 < i13) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            wVar.addInt(i.decodeZigZag32(bVar.int1));
        }
        return iDecodeVarint32;
    }

    static int decodeSInt64List(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) {
        k0 k0Var = (k0) jVar;
        int iDecodeVarint64 = decodeVarint64(bArr, i12, bVar);
        k0Var.addLong(i.decodeZigZag64(bVar.long1));
        while (iDecodeVarint64 < i13) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            k0Var.addLong(i.decodeZigZag64(bVar.long1));
        }
        return iDecodeVarint64;
    }

    static int decodeString(byte[] bArr, int i11, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1;
        if (i12 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i12 == 0) {
            bVar.object1 = "";
            return iDecodeVarint32;
        }
        bVar.object1 = new String(bArr, iDecodeVarint32, i12, y.UTF_8);
        return iDecodeVarint32 + i12;
    }

    static int decodeStringList(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i12, bVar);
        int i14 = bVar.int1;
        if (i14 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i14 == 0) {
            jVar.add("");
        } else {
            jVar.add(new String(bArr, iDecodeVarint32, i14, y.UTF_8));
            iDecodeVarint32 += i14;
        }
        while (iDecodeVarint32 < i13) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            int i15 = bVar.int1;
            if (i15 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i15 == 0) {
                jVar.add("");
            } else {
                jVar.add(new String(bArr, iDecodeVarint32, i15, y.UTF_8));
                iDecodeVarint32 += i15;
            }
        }
        return iDecodeVarint32;
    }

    static int decodeStringListRequireUtf8(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i12, bVar);
        int i14 = bVar.int1;
        if (i14 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i14 == 0) {
            jVar.add("");
        } else {
            int i15 = iDecodeVarint32 + i14;
            if (!Utf8.isValidUtf8(bArr, iDecodeVarint32, i15)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            jVar.add(new String(bArr, iDecodeVarint32, i14, y.UTF_8));
            iDecodeVarint32 = i15;
        }
        while (iDecodeVarint32 < i13) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            int i16 = bVar.int1;
            if (i16 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i16 == 0) {
                jVar.add("");
            } else {
                int i17 = iDecodeVarint32 + i16;
                if (!Utf8.isValidUtf8(bArr, iDecodeVarint32, i17)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
                jVar.add(new String(bArr, iDecodeVarint32, i16, y.UTF_8));
                iDecodeVarint32 = i17;
            }
        }
        return iDecodeVarint32;
    }

    static int decodeStringRequireUtf8(byte[] bArr, int i11, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i12 = bVar.int1;
        if (i12 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i12 == 0) {
            bVar.object1 = "";
            return iDecodeVarint32;
        }
        bVar.object1 = Utf8.decodeUtf8(bArr, iDecodeVarint32, i12);
        return iDecodeVarint32 + i12;
    }

    static int decodeUnknownField(int i11, byte[] bArr, int i12, int i13, p1 p1Var, b bVar) throws InvalidProtocolBufferException {
        if (WireFormat.getTagFieldNumber(i11) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int tagWireType = WireFormat.getTagWireType(i11);
        if (tagWireType == 0) {
            int iDecodeVarint64 = decodeVarint64(bArr, i12, bVar);
            p1Var.storeField(i11, Long.valueOf(bVar.long1));
            return iDecodeVarint64;
        }
        if (tagWireType == 1) {
            p1Var.storeField(i11, Long.valueOf(decodeFixed64(bArr, i12)));
            return i12 + 8;
        }
        if (tagWireType == 2) {
            int iDecodeVarint32 = decodeVarint32(bArr, i12, bVar);
            int i14 = bVar.int1;
            if (i14 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i14 > bArr.length - iDecodeVarint32) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i14 == 0) {
                p1Var.storeField(i11, ByteString.EMPTY);
            } else {
                p1Var.storeField(i11, ByteString.copyFrom(bArr, iDecodeVarint32, i14));
            }
            return iDecodeVarint32 + i14;
        }
        if (tagWireType != 3) {
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            p1Var.storeField(i11, Integer.valueOf(decodeFixed32(bArr, i12)));
            return i12 + 4;
        }
        p1 p1VarNewInstance = p1.newInstance();
        int i15 = (i11 & (-8)) | 4;
        int i16 = bVar.recursionDepth + 1;
        bVar.recursionDepth = i16;
        checkRecursionLimit(i16);
        int i17 = 0;
        while (i12 < i13) {
            int iDecodeVarint33 = decodeVarint32(bArr, i12, bVar);
            int i18 = bVar.int1;
            if (i18 == i15) {
                i17 = i18;
                i12 = iDecodeVarint33;
                break;
            }
            i17 = i18;
            i12 = decodeUnknownField(i18, bArr, iDecodeVarint33, i13, p1VarNewInstance, bVar);
        }
        bVar.recursionDepth--;
        if (i12 > i13 || i17 != i15) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        p1Var.storeField(i11, p1VarNewInstance);
        return i12;
    }

    static int decodeVarint32(int i11, byte[] bArr, int i12, b bVar) {
        int i13 = i11 & 127;
        int i14 = i12 + 1;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            bVar.int1 = i13 | (b11 << 7);
            return i14;
        }
        int i15 = i13 | ((b11 & 127) << 7);
        int i16 = i12 + 2;
        byte b12 = bArr[i14];
        if (b12 >= 0) {
            bVar.int1 = i15 | (b12 << 14);
            return i16;
        }
        int i17 = i15 | ((b12 & 127) << 14);
        int i18 = i12 + 3;
        byte b13 = bArr[i16];
        if (b13 >= 0) {
            bVar.int1 = i17 | (b13 << 21);
            return i18;
        }
        int i19 = i17 | ((b13 & 127) << 21);
        int i20 = i12 + 4;
        byte b14 = bArr[i18];
        if (b14 >= 0) {
            bVar.int1 = i19 | (b14 << 28);
            return i20;
        }
        int i21 = i19 | ((b14 & 127) << 28);
        while (true) {
            int i22 = i20 + 1;
            if (bArr[i20] >= 0) {
                bVar.int1 = i21;
                return i22;
            }
            i20 = i22;
        }
    }

    static int decodeVarint32(byte[] bArr, int i11, b bVar) {
        int i12 = i11 + 1;
        byte b11 = bArr[i11];
        if (b11 < 0) {
            return decodeVarint32(b11, bArr, i12, bVar);
        }
        bVar.int1 = b11;
        return i12;
    }

    static int decodeVarint32List(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) {
        w wVar = (w) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i12, bVar);
        wVar.addInt(bVar.int1);
        while (iDecodeVarint32 < i13) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            wVar.addInt(bVar.int1);
        }
        return iDecodeVarint32;
    }

    static int decodeVarint64(long j11, byte[] bArr, int i11, b bVar) {
        int i12 = i11 + 1;
        byte b11 = bArr[i11];
        long j12 = (j11 & 127) | (((long) (b11 & 127)) << 7);
        int i13 = 7;
        while (b11 < 0) {
            int i14 = i12 + 1;
            byte b12 = bArr[i12];
            i13 += 7;
            j12 |= ((long) (b12 & 127)) << i13;
            i12 = i14;
            b11 = b12;
        }
        bVar.long1 = j12;
        return i12;
    }

    static int decodeVarint64(byte[] bArr, int i11, b bVar) {
        int i12 = i11 + 1;
        long j11 = bArr[i11];
        if (j11 < 0) {
            return decodeVarint64(j11, bArr, i12, bVar);
        }
        bVar.long1 = j11;
        return i12;
    }

    static int decodeVarint64List(int i11, byte[] bArr, int i12, int i13, y.j jVar, b bVar) {
        k0 k0Var = (k0) jVar;
        int iDecodeVarint64 = decodeVarint64(bArr, i12, bVar);
        k0Var.addLong(bVar.long1);
        while (iDecodeVarint64 < i13) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i11 != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            k0Var.addLong(bVar.long1);
        }
        return iDecodeVarint64;
    }

    static int mergeGroupField(Object obj, i1 i1Var, byte[] bArr, int i11, int i12, int i13, b bVar) throws IOException {
        v0 v0Var = (v0) i1Var;
        int i14 = bVar.recursionDepth + 1;
        bVar.recursionDepth = i14;
        checkRecursionLimit(i14);
        int message = v0Var.parseMessage(obj, bArr, i11, i12, i13, bVar);
        bVar.recursionDepth--;
        bVar.object1 = obj;
        return message;
    }

    static int mergeMessageField(Object obj, i1 i1Var, byte[] bArr, int i11, int i12, b bVar) throws IOException {
        int iDecodeVarint32 = i11 + 1;
        int i13 = bArr[i11];
        if (i13 < 0) {
            iDecodeVarint32 = decodeVarint32(i13, bArr, iDecodeVarint32, bVar);
            i13 = bVar.int1;
        }
        int i14 = iDecodeVarint32;
        if (i13 < 0 || i13 > i12 - i14) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i15 = bVar.recursionDepth + 1;
        bVar.recursionDepth = i15;
        checkRecursionLimit(i15);
        int i16 = i13 + i14;
        i1Var.mergeFrom(obj, bArr, i14, i16, bVar);
        bVar.recursionDepth--;
        bVar.object1 = obj;
        return i16;
    }

    public static void setRecursionLimit(int i11) {
        recursionLimit = i11;
    }

    static int skipField(int i11, byte[] bArr, int i12, int i13, b bVar) throws InvalidProtocolBufferException {
        if (WireFormat.getTagFieldNumber(i11) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int tagWireType = WireFormat.getTagWireType(i11);
        if (tagWireType == 0) {
            return decodeVarint64(bArr, i12, bVar);
        }
        if (tagWireType == 1) {
            return i12 + 8;
        }
        if (tagWireType == 2) {
            return decodeVarint32(bArr, i12, bVar) + bVar.int1;
        }
        if (tagWireType != 3) {
            if (tagWireType == 5) {
                return i12 + 4;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }
        int i14 = (i11 & (-8)) | 4;
        int i15 = 0;
        while (i12 < i13) {
            i12 = decodeVarint32(bArr, i12, bVar);
            i15 = bVar.int1;
            if (i15 == i14) {
                break;
            }
            i12 = skipField(i15, bArr, i12, i13, bVar);
        }
        if (i12 > i13 || i15 != i14) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i12;
    }
}
