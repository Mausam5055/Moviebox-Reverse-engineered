package com.google.protobuf;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class v0 implements i1 {
    private static final int CHECK_INITIALIZED_BIT = 1024;
    private static final int ENFORCE_UTF8_MASK = 536870912;
    private static final int FIELD_TYPE_MASK = 267386880;
    private static final int HAS_HAS_BIT = 4096;
    private static final int INTS_PER_FIELD = 3;
    private static final int LEGACY_ENUM_IS_CLOSED_BIT = 2048;
    private static final int LEGACY_ENUM_IS_CLOSED_MASK = Integer.MIN_VALUE;
    private static final int NO_PRESENCE_SENTINEL = 1048575;
    private static final int OFFSET_BITS = 20;
    private static final int OFFSET_MASK = 1048575;
    static final int ONEOF_TYPE_OFFSET = 51;
    private static final int REQUIRED_BIT = 256;
    private static final int REQUIRED_MASK = 268435456;
    private static final int UTF8_CHECK_BIT = 512;
    private final int[] buffer;
    private final int checkInitializedCount;
    private final s0 defaultInstance;
    private final p extensionSchema;
    private final boolean hasExtensions;
    private final int[] intArray;
    private final j0 listFieldSchema;
    private final boolean lite;
    private final n0 mapFieldSchema;
    private final int maxFieldNumber;
    private final int minFieldNumber;
    private final x0 newInstanceSchema;
    private final Object[] objects;
    private final int repeatedFieldOffsetStart;
    private final ProtoSyntax syntax;
    private final o1 unknownFieldSchema;
    private final boolean useCachedSizeField;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final Unsafe UNSAFE = s1.getUnsafe();

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private v0(int[] iArr, Object[] objArr, int i11, int i12, s0 s0Var, ProtoSyntax protoSyntax, boolean z10, int[] iArr2, int i13, int i14, x0 x0Var, j0 j0Var, o1 o1Var, p pVar, n0 n0Var) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i11;
        this.maxFieldNumber = i12;
        this.lite = s0Var instanceof GeneratedMessageLite;
        this.syntax = protoSyntax;
        this.hasExtensions = pVar != null && pVar.hasExtensions(s0Var);
        this.useCachedSizeField = z10;
        this.intArray = iArr2;
        this.checkInitializedCount = i13;
        this.repeatedFieldOffsetStart = i14;
        this.newInstanceSchema = x0Var;
        this.listFieldSchema = j0Var;
        this.unknownFieldSchema = o1Var;
        this.extensionSchema = pVar;
        this.defaultInstance = s0Var;
        this.mapFieldSchema = n0Var;
    }

    private boolean arePresentForEquals(Object obj, Object obj2, int i11) {
        return isFieldPresent(obj, i11) == isFieldPresent(obj2, i11);
    }

    private static <T> boolean booleanAt(T t11, long j11) {
        return s1.getBoolean(t11, j11);
    }

    private static void checkMutable(Object obj) {
        if (isMutable(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> int decodeMapEntry(byte[] bArr, int i11, int i12, m0.b bVar, Map<K, V> map, e.b bVar2) throws IOException {
        int iDecodeVarint32;
        int iDecodeVarint33 = e.decodeVarint32(bArr, i11, bVar2);
        int i13 = bVar2.int1;
        if (i13 < 0 || i13 > i12 - iDecodeVarint33) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i14 = iDecodeVarint33 + i13;
        Object obj = bVar.defaultKey;
        Object obj2 = bVar.defaultValue;
        while (iDecodeVarint33 < i14) {
            int i15 = iDecodeVarint33 + 1;
            int i16 = bArr[iDecodeVarint33];
            if (i16 < 0) {
                iDecodeVarint32 = e.decodeVarint32(i16, bArr, i15, bVar2);
                i16 = bVar2.int1;
            } else {
                iDecodeVarint32 = i15;
            }
            int i17 = i16 >>> 3;
            int i18 = i16 & 7;
            if (i17 != 1) {
                if (i17 == 2 && i18 == bVar.valueType.getWireType()) {
                    iDecodeVarint33 = decodeMapEntryValue(bArr, iDecodeVarint32, i12, bVar.valueType, bVar.defaultValue.getClass(), bVar2);
                    obj2 = bVar2.object1;
                } else {
                    iDecodeVarint33 = e.skipField(i16, bArr, iDecodeVarint32, i12, bVar2);
                }
            } else if (i18 == bVar.keyType.getWireType()) {
                iDecodeVarint33 = decodeMapEntryValue(bArr, iDecodeVarint32, i12, bVar.keyType, null, bVar2);
                obj = bVar2.object1;
            } else {
                iDecodeVarint33 = e.skipField(i16, bArr, iDecodeVarint32, i12, bVar2);
            }
        }
        if (iDecodeVarint33 != i14) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        map.put(obj, obj2);
        return i14;
    }

    private int decodeMapEntryValue(byte[] bArr, int i11, int i12, WireFormat.FieldType fieldType, Class<?> cls, e.b bVar) throws IOException {
        switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                int iDecodeVarint64 = e.decodeVarint64(bArr, i11, bVar);
                bVar.object1 = Boolean.valueOf(bVar.long1 != 0);
                return iDecodeVarint64;
            case 2:
                return e.decodeBytes(bArr, i11, bVar);
            case 3:
                bVar.object1 = Double.valueOf(e.decodeDouble(bArr, i11));
                return i11 + 8;
            case 4:
            case 5:
                bVar.object1 = Integer.valueOf(e.decodeFixed32(bArr, i11));
                return i11 + 4;
            case 6:
            case 7:
                bVar.object1 = Long.valueOf(e.decodeFixed64(bArr, i11));
                return i11 + 8;
            case 8:
                bVar.object1 = Float.valueOf(e.decodeFloat(bArr, i11));
                return i11 + 4;
            case 9:
            case 10:
            case 11:
                int iDecodeVarint32 = e.decodeVarint32(bArr, i11, bVar);
                bVar.object1 = Integer.valueOf(bVar.int1);
                return iDecodeVarint32;
            case 12:
            case 13:
                int iDecodeVarint65 = e.decodeVarint64(bArr, i11, bVar);
                bVar.object1 = Long.valueOf(bVar.long1);
                return iDecodeVarint65;
            case 14:
                return e.decodeMessageField(d1.getInstance().schemaFor((Class) cls), bArr, i11, i12, bVar);
            case 15:
                int iDecodeVarint33 = e.decodeVarint32(bArr, i11, bVar);
                bVar.object1 = Integer.valueOf(i.decodeZigZag32(bVar.int1));
                return iDecodeVarint33;
            case 16:
                int iDecodeVarint66 = e.decodeVarint64(bArr, i11, bVar);
                bVar.object1 = Long.valueOf(i.decodeZigZag64(bVar.long1));
                return iDecodeVarint66;
            case 17:
                return e.decodeStringRequireUtf8(bArr, i11, bVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static <T> double doubleAt(T t11, long j11) {
        return s1.getDouble(t11, j11);
    }

    private boolean equals(Object obj, Object obj2, int i11) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i11);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return arePresentForEquals(obj, obj2, i11) && Double.doubleToLongBits(s1.getDouble(obj, jOffset)) == Double.doubleToLongBits(s1.getDouble(obj2, jOffset));
            case 1:
                return arePresentForEquals(obj, obj2, i11) && Float.floatToIntBits(s1.getFloat(obj, jOffset)) == Float.floatToIntBits(s1.getFloat(obj2, jOffset));
            case 2:
                return arePresentForEquals(obj, obj2, i11) && s1.getLong(obj, jOffset) == s1.getLong(obj2, jOffset);
            case 3:
                return arePresentForEquals(obj, obj2, i11) && s1.getLong(obj, jOffset) == s1.getLong(obj2, jOffset);
            case 4:
                return arePresentForEquals(obj, obj2, i11) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 5:
                return arePresentForEquals(obj, obj2, i11) && s1.getLong(obj, jOffset) == s1.getLong(obj2, jOffset);
            case 6:
                return arePresentForEquals(obj, obj2, i11) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 7:
                return arePresentForEquals(obj, obj2, i11) && s1.getBoolean(obj, jOffset) == s1.getBoolean(obj2, jOffset);
            case 8:
                return arePresentForEquals(obj, obj2, i11) && k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 9:
                return arePresentForEquals(obj, obj2, i11) && k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 10:
                return arePresentForEquals(obj, obj2, i11) && k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 11:
                return arePresentForEquals(obj, obj2, i11) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 12:
                return arePresentForEquals(obj, obj2, i11) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 13:
                return arePresentForEquals(obj, obj2, i11) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 14:
                return arePresentForEquals(obj, obj2, i11) && s1.getLong(obj, jOffset) == s1.getLong(obj2, jOffset);
            case 15:
                return arePresentForEquals(obj, obj2, i11) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 16:
                return arePresentForEquals(obj, obj2, i11) && s1.getLong(obj, jOffset) == s1.getLong(obj2, jOffset);
            case 17:
                return arePresentForEquals(obj, obj2, i11) && k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 50:
                return k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 51:
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case AD_VISIBILITY_VALUE:
            case 57:
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
            case 66:
            case 67:
            case 68:
                return isOneofCaseEqual(obj, obj2, i11) && k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            default:
                return true;
        }
    }

    private <UT, UB> UB filterMapUnknownEnumValues(Object obj, int i11, UB ub2, o1 o1Var, Object obj2) {
        y.e enumFieldVerifier;
        int iNumberAt = numberAt(i11);
        Object object = s1.getObject(obj, offset(typeAndOffsetAt(i11)));
        return (object == null || (enumFieldVerifier = getEnumFieldVerifier(i11)) == null) ? ub2 : (UB) filterUnknownEnumMap(i11, iNumberAt, this.mapFieldSchema.forMutableMapData(object), enumFieldVerifier, ub2, o1Var, obj2);
    }

    private <K, V, UT, UB> UB filterUnknownEnumMap(int i11, int i12, Map<K, V> map, y.e eVar, UB ub2, o1 o1Var, Object obj) {
        m0.b bVarForMapMetadata = this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i11));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!eVar.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub2 == null) {
                    ub2 = (UB) o1Var.getBuilderFromMessage(obj);
                }
                ByteString.f fVarNewCodedBuilder = ByteString.newCodedBuilder(m0.computeSerializedSize(bVarForMapMetadata, next.getKey(), next.getValue()));
                try {
                    m0.writeTo(fVarNewCodedBuilder.getCodedOutput(), bVarForMapMetadata, next.getKey(), next.getValue());
                    o1Var.addLengthDelimited(ub2, i12, fVarNewCodedBuilder.build());
                    it.remove();
                } catch (IOException e11) {
                    throw new RuntimeException(e11);
                }
            }
        }
        return ub2;
    }

    private static <T> float floatAt(T t11, long j11) {
        return s1.getFloat(t11, j11);
    }

    private y.e getEnumFieldVerifier(int i11) {
        return (y.e) this.objects[((i11 / 3) * 2) + 1];
    }

    private Object getMapFieldDefaultEntry(int i11) {
        return this.objects[(i11 / 3) * 2];
    }

    private i1 getMessageFieldSchema(int i11) {
        int i12 = (i11 / 3) * 2;
        i1 i1Var = (i1) this.objects[i12];
        if (i1Var != null) {
            return i1Var;
        }
        i1 i1VarSchemaFor = d1.getInstance().schemaFor((Class) this.objects[i12 + 1]);
        this.objects[i12] = i1VarSchemaFor;
        return i1VarSchemaFor;
    }

    static p1 getMutableUnknownFields(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        p1 p1Var = generatedMessageLite.unknownFields;
        if (p1Var != p1.getDefaultInstance()) {
            return p1Var;
        }
        p1 p1VarNewInstance = p1.newInstance();
        generatedMessageLite.unknownFields = p1VarNewInstance;
        return p1VarNewInstance;
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(o1 o1Var, Object obj) {
        return o1Var.getSerializedSize(o1Var.getFromMessage(obj));
    }

    private static <T> int intAt(T t11, long j11) {
        return s1.getInt(t11, j11);
    }

    private static boolean isEnforceUtf8(int i11) {
        return (i11 & 536870912) != 0;
    }

    private boolean isFieldPresent(Object obj, int i11) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i11);
        long j11 = 1048575 & iPresenceMaskAndOffsetAt;
        if (j11 != 1048575) {
            return (s1.getInt(obj, j11) & (1 << (iPresenceMaskAndOffsetAt >>> 20))) != 0;
        }
        int iTypeAndOffsetAt = typeAndOffsetAt(i11);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return Double.doubleToRawLongBits(s1.getDouble(obj, jOffset)) != 0;
            case 1:
                return Float.floatToRawIntBits(s1.getFloat(obj, jOffset)) != 0;
            case 2:
                return s1.getLong(obj, jOffset) != 0;
            case 3:
                return s1.getLong(obj, jOffset) != 0;
            case 4:
                return s1.getInt(obj, jOffset) != 0;
            case 5:
                return s1.getLong(obj, jOffset) != 0;
            case 6:
                return s1.getInt(obj, jOffset) != 0;
            case 7:
                return s1.getBoolean(obj, jOffset);
            case 8:
                Object object = s1.getObject(obj, jOffset);
                if (object instanceof String) {
                    return !((String) object).isEmpty();
                }
                if (object instanceof ByteString) {
                    return !ByteString.EMPTY.equals(object);
                }
                throw new IllegalArgumentException();
            case 9:
                return s1.getObject(obj, jOffset) != null;
            case 10:
                return !ByteString.EMPTY.equals(s1.getObject(obj, jOffset));
            case 11:
                return s1.getInt(obj, jOffset) != 0;
            case 12:
                return s1.getInt(obj, jOffset) != 0;
            case 13:
                return s1.getInt(obj, jOffset) != 0;
            case 14:
                return s1.getLong(obj, jOffset) != 0;
            case 15:
                return s1.getInt(obj, jOffset) != 0;
            case 16:
                return s1.getLong(obj, jOffset) != 0;
            case 17:
                return s1.getObject(obj, jOffset) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private boolean isFieldPresent(Object obj, int i11, int i12, int i13, int i14) {
        if (i12 == 1048575) {
            return isFieldPresent(obj, i11);
        }
        return (i13 & i14) != 0;
    }

    private static boolean isInitialized(Object obj, int i11, i1 i1Var) {
        return i1Var.isInitialized(s1.getObject(obj, offset(i11)));
    }

    private static boolean isLegacyEnumIsClosed(int i11) {
        return (i11 & Integer.MIN_VALUE) != 0;
    }

    private <N> boolean isListInitialized(Object obj, int i11, int i12) {
        List list = (List) s1.getObject(obj, offset(i11));
        if (list.isEmpty()) {
            return true;
        }
        i1 messageFieldSchema = getMessageFieldSchema(i12);
        for (int i13 = 0; i13 < list.size(); i13++) {
            if (!messageFieldSchema.isInitialized(list.get(i13))) {
                return false;
            }
        }
        return true;
    }

    private boolean isMapInitialized(Object obj, int i11, int i12) {
        Map<?, ?> mapForMapData = this.mapFieldSchema.forMapData(s1.getObject(obj, offset(i11)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i12)).valueType.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        i1 i1VarSchemaFor = null;
        for (Object obj2 : mapForMapData.values()) {
            if (i1VarSchemaFor == null) {
                i1VarSchemaFor = d1.getInstance().schemaFor((Class) obj2.getClass());
            }
            if (!i1VarSchemaFor.isInitialized(obj2)) {
                return false;
            }
        }
        return true;
    }

    private static boolean isMutable(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).isMutable();
        }
        return true;
    }

    private boolean isOneofCaseEqual(Object obj, Object obj2, int i11) {
        long jPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i11) & 1048575;
        return s1.getInt(obj, jPresenceMaskAndOffsetAt) == s1.getInt(obj2, jPresenceMaskAndOffsetAt);
    }

    private boolean isOneofPresent(Object obj, int i11, int i12) {
        return s1.getInt(obj, (long) (presenceMaskAndOffsetAt(i12) & 1048575)) == i11;
    }

    private static boolean isRequired(int i11) {
        return (i11 & 268435456) != 0;
    }

    private static <T> long longAt(T t11, long j11) {
        return s1.getLong(t11, j11);
    }

    /* JADX WARN: Code duplicated, block: B:170:0x064b A[Catch: all -> 0x0671, TRY_LEAVE, TryCatch #0 {all -> 0x0671, blocks: (B:168:0x0645, B:170:0x064b, B:182:0x0675, B:183:0x067a), top: B:204:0x0645 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x0658 A[LOOP:2: B:173:0x0654->B:175:0x0658, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:177:0x066d  */
    /* JADX WARN: Code duplicated, block: B:181:0x0673 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:182:0x0675 A[Catch: all -> 0x0671, TRY_ENTER, TryCatch #0 {all -> 0x0671, blocks: (B:168:0x0645, B:170:0x064b, B:182:0x0675, B:183:0x067a), top: B:204:0x0645 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x0687 A[LOOP:3: B:186:0x0683->B:188:0x0687, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:190:0x069c  */
    /* JADX WARN: Code duplicated, block: B:198:0x06b1 A[LOOP:4: B:196:0x06ad->B:198:0x06b1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:200:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:227:0x0651 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:0x0680 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends t.c> void mergeFromHelper(o1 o1Var, p pVar, Object obj, h1 h1Var, o oVar) throws Throwable {
        Object obj2;
        o1 o1Var2;
        int i11;
        Object objFilterMapUnknownEnumValues;
        Object obj3;
        o oVar2;
        int i12;
        Object objFilterMapUnknownEnumValues2;
        int i13;
        Object objFilterMapUnknownEnumValues3;
        Object obj4;
        o1 o1Var3 = o1Var;
        Object obj5 = obj;
        o oVar3 = oVar;
        Object builderFromMessage = null;
        t tVar = null;
        while (true) {
            try {
                int fieldNumber = h1Var.getFieldNumber();
                int iPositionForFieldNumber = positionForFieldNumber(fieldNumber);
                if (iPositionForFieldNumber >= 0) {
                    obj2 = obj5;
                    try {
                        int iTypeAndOffsetAt = typeAndOffsetAt(iPositionForFieldNumber);
                        try {
                            switch (type(iTypeAndOffsetAt)) {
                                case 0:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putDouble(obj2, offset(iTypeAndOffsetAt), h1Var.readDouble());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 1:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putFloat(obj2, offset(iTypeAndOffsetAt), h1Var.readFloat());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 2:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putLong(obj2, offset(iTypeAndOffsetAt), h1Var.readInt64());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 3:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putLong(obj2, offset(iTypeAndOffsetAt), h1Var.readUInt64());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 4:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putInt(obj2, offset(iTypeAndOffsetAt), h1Var.readInt32());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 5:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putLong(obj2, offset(iTypeAndOffsetAt), h1Var.readFixed64());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 6:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putInt(obj2, offset(iTypeAndOffsetAt), h1Var.readFixed32());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 7:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putBoolean(obj2, offset(iTypeAndOffsetAt), h1Var.readBool());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 8:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    readString(obj2, iTypeAndOffsetAt, h1Var);
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 9:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s0 s0Var = (s0) mutableMessageFieldForMerge(obj2, iPositionForFieldNumber);
                                    h1Var.mergeMessageField(s0Var, getMessageFieldSchema(iPositionForFieldNumber), oVar2);
                                    storeMessageField(obj2, iPositionForFieldNumber, s0Var);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 10:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), h1Var.readBytes());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 11:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putInt(obj2, offset(iTypeAndOffsetAt), h1Var.readUInt32());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 12:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    int i14 = h1Var.readEnum();
                                    y.e enumFieldVerifier = getEnumFieldVerifier(iPositionForFieldNumber);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i14)) {
                                        s1.putInt(obj2, offset(iTypeAndOffsetAt), i14);
                                        setFieldPresent(obj2, iPositionForFieldNumber);
                                        builderFromMessage = obj4;
                                    } else {
                                        builderFromMessage = k1.storeUnknownEnum(obj2, fieldNumber, i14, obj4, o1Var2);
                                    }
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 13:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putInt(obj2, offset(iTypeAndOffsetAt), h1Var.readSFixed32());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 14:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putLong(obj2, offset(iTypeAndOffsetAt), h1Var.readSFixed64());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 15:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putInt(obj2, offset(iTypeAndOffsetAt), h1Var.readSInt32());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 16:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putLong(obj2, offset(iTypeAndOffsetAt), h1Var.readSInt64());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 17:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s0 s0Var2 = (s0) mutableMessageFieldForMerge(obj2, iPositionForFieldNumber);
                                    h1Var.mergeGroupField(s0Var2, getMessageFieldSchema(iPositionForFieldNumber), oVar2);
                                    storeMessageField(obj2, iPositionForFieldNumber, s0Var2);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 18:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readDoubleList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 19:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFloatList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 20:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 21:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readUInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 22:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 23:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFixed64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 24:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFixed32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 25:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readBoolList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 26:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    readStringList(obj2, iTypeAndOffsetAt, h1Var);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 27:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    readMessageList(obj, iTypeAndOffsetAt, h1Var, getMessageFieldSchema(iPositionForFieldNumber), oVar);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 28:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readBytesList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case NOTIFICATION_REDIRECT_VALUE:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readUInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 30:
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    List<Integer> listMutableListAt = this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt));
                                    h1Var.readEnumList(listMutableListAt);
                                    builderFromMessage = k1.filterUnknownEnumList(obj, fieldNumber, listMutableListAt, getEnumFieldVerifier(iPositionForFieldNumber), builderFromMessage, o1Var);
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case TEMPLATE_HTML_SIZE_VALUE:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSFixed32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 32:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSFixed64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 33:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 34:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 35:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readDoubleList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 36:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFloatList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 37:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 38:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readUInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 39:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 40:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFixed64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 41:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFixed32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 42:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readBoolList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 43:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readUInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 44:
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    List<Integer> listMutableListAt2 = this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt));
                                    h1Var.readEnumList(listMutableListAt2);
                                    builderFromMessage = k1.filterUnknownEnumList(obj, fieldNumber, listMutableListAt2, getEnumFieldVerifier(iPositionForFieldNumber), builderFromMessage, o1Var);
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 45:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSFixed32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 46:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSFixed64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 47:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    try {
                                        readGroupList(obj, offset(iTypeAndOffsetAt), h1Var, getMessageFieldSchema(iPositionForFieldNumber), oVar);
                                        builderFromMessage = obj4;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                                        builderFromMessage = obj4;
                                        try {
                                            if (!o1Var2.shouldDiscardUnknownFields(h1Var)) {
                                                if (builderFromMessage == null) {
                                                    builderFromMessage = o1Var2.getBuilderFromMessage(obj2);
                                                }
                                                if (!o1Var2.mergeOneFieldFrom(builderFromMessage, h1Var, 0)) {
                                                    objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                    for (i12 = this.checkInitializedCount; i12 < this.repeatedFieldOffsetStart; i12++) {
                                                        objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(obj, this.intArray[i12], objFilterMapUnknownEnumValues2, o1Var, obj);
                                                    }
                                                    if (objFilterMapUnknownEnumValues2 != null) {
                                                        o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!h1Var.skipField()) {
                                                objFilterMapUnknownEnumValues3 = builderFromMessage;
                                                for (i13 = this.checkInitializedCount; i13 < this.repeatedFieldOffsetStart; i13++) {
                                                    objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(obj, this.intArray[i13], objFilterMapUnknownEnumValues3, o1Var, obj);
                                                }
                                                if (objFilterMapUnknownEnumValues3 != null) {
                                                    o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues3);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        builderFromMessage = obj4;
                                        objFilterMapUnknownEnumValues = builderFromMessage;
                                        for (i11 = this.checkInitializedCount; i11 < this.repeatedFieldOffsetStart; i11++) {
                                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i11], objFilterMapUnknownEnumValues, o1Var, obj);
                                        }
                                        if (objFilterMapUnknownEnumValues != null) {
                                            o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
                                        }
                                        throw th;
                                    }
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 50:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    try {
                                        mergeMap(obj, iPositionForFieldNumber, getMapFieldDefaultEntry(iPositionForFieldNumber), oVar, h1Var);
                                        o1Var2 = o1Var3;
                                        builderFromMessage = obj4;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused2) {
                                        o1Var2 = o1Var3;
                                        builderFromMessage = obj4;
                                        if (!o1Var2.shouldDiscardUnknownFields(h1Var)) {
                                            if (builderFromMessage == null) {
                                                builderFromMessage = o1Var2.getBuilderFromMessage(obj2);
                                            }
                                            if (!o1Var2.mergeOneFieldFrom(builderFromMessage, h1Var, 0)) {
                                                objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                while (i12 < this.repeatedFieldOffsetStart) {
                                                    objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(obj, this.intArray[i12], objFilterMapUnknownEnumValues2, o1Var, obj);
                                                }
                                                if (objFilterMapUnknownEnumValues2 != null) {
                                                    o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues2);
                                                    return;
                                                }
                                                return;
                                            }
                                        } else if (!h1Var.skipField()) {
                                            objFilterMapUnknownEnumValues3 = builderFromMessage;
                                            while (i13 < this.repeatedFieldOffsetStart) {
                                                objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(obj, this.intArray[i13], objFilterMapUnknownEnumValues3, o1Var, obj);
                                            }
                                            if (objFilterMapUnknownEnumValues3 != null) {
                                                o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues3);
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        o1Var2 = o1Var3;
                                        builderFromMessage = obj4;
                                        objFilterMapUnknownEnumValues = builderFromMessage;
                                        while (i11 < this.repeatedFieldOffsetStart) {
                                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i11], objFilterMapUnknownEnumValues, o1Var, obj);
                                        }
                                        if (objFilterMapUnknownEnumValues != null) {
                                            o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
                                        }
                                        throw th;
                                    }
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 51:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Double.valueOf(h1Var.readDouble()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Float.valueOf(h1Var.readFloat()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Long.valueOf(h1Var.readInt64()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Long.valueOf(h1Var.readUInt64()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(h1Var.readInt32()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_VISIBILITY_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Long.valueOf(h1Var.readFixed64()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 57:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(h1Var.readFixed32()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Boolean.valueOf(h1Var.readBool()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 59:
                                    readString(obj2, iTypeAndOffsetAt, h1Var);
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 60:
                                    s0 s0Var3 = (s0) mutableOneofMessageFieldForMerge(obj2, fieldNumber, iPositionForFieldNumber);
                                    h1Var.mergeMessageField(s0Var3, getMessageFieldSchema(iPositionForFieldNumber), oVar3);
                                    storeOneofMessageField(obj2, fieldNumber, iPositionForFieldNumber, s0Var3);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 61:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), h1Var.readBytes());
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 62:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(h1Var.readUInt32()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 63:
                                    int i15 = h1Var.readEnum();
                                    y.e enumFieldVerifier2 = getEnumFieldVerifier(iPositionForFieldNumber);
                                    if (enumFieldVerifier2 != null && !enumFieldVerifier2.isInRange(i15)) {
                                        builderFromMessage = k1.storeUnknownEnum(obj2, fieldNumber, i15, builderFromMessage, o1Var3);
                                        oVar2 = oVar3;
                                        o1Var2 = o1Var3;
                                        oVar3 = oVar2;
                                        o1Var3 = o1Var2;
                                        obj5 = obj2;
                                    }
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(i15));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 64:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(h1Var.readSFixed32()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Long.valueOf(h1Var.readSFixed64()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 66:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(h1Var.readSInt32()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 67:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Long.valueOf(h1Var.readSInt64()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 68:
                                    s0 s0Var4 = (s0) mutableOneofMessageFieldForMerge(obj2, fieldNumber, iPositionForFieldNumber);
                                    h1Var.mergeGroupField(s0Var4, getMessageFieldSchema(iPositionForFieldNumber), oVar3);
                                    storeOneofMessageField(obj2, fieldNumber, iPositionForFieldNumber, s0Var4);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                default:
                                    if (builderFromMessage == null) {
                                        try {
                                            builderFromMessage = o1Var3.getBuilderFromMessage(obj2);
                                            break;
                                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused3) {
                                            oVar2 = oVar3;
                                            o1Var2 = o1Var3;
                                            if (!o1Var2.shouldDiscardUnknownFields(h1Var)) {
                                                if (builderFromMessage == null) {
                                                    builderFromMessage = o1Var2.getBuilderFromMessage(obj2);
                                                }
                                                if (!o1Var2.mergeOneFieldFrom(builderFromMessage, h1Var, 0)) {
                                                    objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                    while (i12 < this.repeatedFieldOffsetStart) {
                                                        objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(obj, this.intArray[i12], objFilterMapUnknownEnumValues2, o1Var, obj);
                                                    }
                                                    if (objFilterMapUnknownEnumValues2 != null) {
                                                        o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!h1Var.skipField()) {
                                                objFilterMapUnknownEnumValues3 = builderFromMessage;
                                                while (i13 < this.repeatedFieldOffsetStart) {
                                                    objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(obj, this.intArray[i13], objFilterMapUnknownEnumValues3, o1Var, obj);
                                                }
                                                if (objFilterMapUnknownEnumValues3 != null) {
                                                    o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues3);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            o1Var2 = o1Var3;
                                            objFilterMapUnknownEnumValues = builderFromMessage;
                                            while (i11 < this.repeatedFieldOffsetStart) {
                                                objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i11], objFilterMapUnknownEnumValues, o1Var, obj);
                                            }
                                            if (objFilterMapUnknownEnumValues != null) {
                                                o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
                                            }
                                            throw th;
                                        }
                                    }
                                    if (!o1Var3.mergeOneFieldFrom(builderFromMessage, h1Var, 0)) {
                                        Object objFilterMapUnknownEnumValues4 = builderFromMessage;
                                        for (int i16 = this.checkInitializedCount; i16 < this.repeatedFieldOffsetStart; i16++) {
                                            objFilterMapUnknownEnumValues4 = filterMapUnknownEnumValues(obj, this.intArray[i16], objFilterMapUnknownEnumValues4, o1Var, obj);
                                        }
                                        if (objFilterMapUnknownEnumValues4 != null) {
                                            o1Var3.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues4);
                                            return;
                                        }
                                        return;
                                    }
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused4) {
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        Object objFilterMapUnknownEnumValues5 = builderFromMessage;
                        for (int i17 = this.checkInitializedCount; i17 < this.repeatedFieldOffsetStart; i17++) {
                            objFilterMapUnknownEnumValues5 = filterMapUnknownEnumValues(obj, this.intArray[i17], objFilterMapUnknownEnumValues5, o1Var, obj);
                        }
                        if (objFilterMapUnknownEnumValues5 != null) {
                            o1Var3.setBuilderToMessage(obj5, objFilterMapUnknownEnumValues5);
                            return;
                        }
                        return;
                    }
                    try {
                        Object objFindExtensionByNumber = !this.hasExtensions ? null : pVar.findExtensionByNumber(oVar3, this.defaultInstance, fieldNumber);
                        if (objFindExtensionByNumber != null) {
                            t mutableExtensions = tVar == null ? pVar.getMutableExtensions(obj) : tVar;
                            obj3 = obj5;
                            try {
                                builderFromMessage = pVar.parseExtension(obj, h1Var, objFindExtensionByNumber, oVar, mutableExtensions, builderFromMessage, o1Var);
                                tVar = mutableExtensions;
                            } catch (Throwable th7) {
                                th = th7;
                                obj2 = obj3;
                                o1Var2 = o1Var3;
                                objFilterMapUnknownEnumValues = builderFromMessage;
                                while (i11 < this.repeatedFieldOffsetStart) {
                                    objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i11], objFilterMapUnknownEnumValues, o1Var, obj);
                                }
                                if (objFilterMapUnknownEnumValues != null) {
                                    o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
                                }
                                throw th;
                            }
                        } else {
                            obj3 = obj5;
                            if (!o1Var3.shouldDiscardUnknownFields(h1Var)) {
                                if (builderFromMessage == null) {
                                    builderFromMessage = o1Var3.getBuilderFromMessage(obj3);
                                }
                                if (!o1Var3.mergeOneFieldFrom(builderFromMessage, h1Var, 0)) {
                                }
                            } else if (!h1Var.skipField()) {
                            }
                        }
                        obj5 = obj3;
                    } catch (Throwable th8) {
                        th = th8;
                        obj2 = obj5;
                        o1Var2 = o1Var3;
                        objFilterMapUnknownEnumValues = builderFromMessage;
                        while (i11 < this.repeatedFieldOffsetStart) {
                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i11], objFilterMapUnknownEnumValues, o1Var, obj);
                        }
                        if (objFilterMapUnknownEnumValues != null) {
                            o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th9) {
                th = th9;
            }
            objFilterMapUnknownEnumValues = builderFromMessage;
            while (i11 < this.repeatedFieldOffsetStart) {
                objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i11], objFilterMapUnknownEnumValues, o1Var, obj);
            }
            if (objFilterMapUnknownEnumValues != null) {
                o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
            }
            throw th;
        }
        int i18 = this.checkInitializedCount;
        Object objFilterMapUnknownEnumValues6 = builderFromMessage;
        while (i18 < this.repeatedFieldOffsetStart) {
            objFilterMapUnknownEnumValues6 = filterMapUnknownEnumValues(obj, this.intArray[i18], objFilterMapUnknownEnumValues6, o1Var, obj);
            i18++;
            obj3 = obj3;
        }
        Object obj6 = obj3;
        if (objFilterMapUnknownEnumValues6 != null) {
            o1Var3.setBuilderToMessage(obj6, objFilterMapUnknownEnumValues6);
        }
    }

    private final <K, V> void mergeMap(Object obj, int i11, Object obj2, o oVar, h1 h1Var) throws IOException {
        long jOffset = offset(typeAndOffsetAt(i11));
        Object object = s1.getObject(obj, jOffset);
        if (object == null) {
            object = this.mapFieldSchema.newMapField(obj2);
            s1.putObject(obj, jOffset, object);
        } else if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(obj2);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            s1.putObject(obj, jOffset, objNewMapField);
            object = objNewMapField;
        }
        h1Var.readMap(this.mapFieldSchema.forMutableMapData(object), this.mapFieldSchema.forMapMetadata(obj2), oVar);
    }

    private void mergeMessage(Object obj, Object obj2, int i11) {
        if (isFieldPresent(obj2, i11)) {
            long jOffset = offset(typeAndOffsetAt(i11));
            Unsafe unsafe = UNSAFE;
            Object object = unsafe.getObject(obj2, jOffset);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + numberAt(i11) + " is present but null: " + obj2);
            }
            i1 messageFieldSchema = getMessageFieldSchema(i11);
            if (!isFieldPresent(obj, i11)) {
                if (isMutable(object)) {
                    Object objNewInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(objNewInstance, object);
                    unsafe.putObject(obj, jOffset, objNewInstance);
                } else {
                    unsafe.putObject(obj, jOffset, object);
                }
                setFieldPresent(obj, i11);
                return;
            }
            Object object2 = unsafe.getObject(obj, jOffset);
            if (!isMutable(object2)) {
                Object objNewInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(obj, jOffset, objNewInstance2);
                object2 = objNewInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
        }
    }

    private void mergeOneofMessage(Object obj, Object obj2, int i11) {
        int iNumberAt = numberAt(i11);
        if (isOneofPresent(obj2, iNumberAt, i11)) {
            long jOffset = offset(typeAndOffsetAt(i11));
            Unsafe unsafe = UNSAFE;
            Object object = unsafe.getObject(obj2, jOffset);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + numberAt(i11) + " is present but null: " + obj2);
            }
            i1 messageFieldSchema = getMessageFieldSchema(i11);
            if (!isOneofPresent(obj, iNumberAt, i11)) {
                if (isMutable(object)) {
                    Object objNewInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(objNewInstance, object);
                    unsafe.putObject(obj, jOffset, objNewInstance);
                } else {
                    unsafe.putObject(obj, jOffset, object);
                }
                setOneofPresent(obj, iNumberAt, i11);
                return;
            }
            Object object2 = unsafe.getObject(obj, jOffset);
            if (!isMutable(object2)) {
                Object objNewInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(obj, jOffset, objNewInstance2);
                object2 = objNewInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
        }
    }

    private void mergeSingleField(Object obj, Object obj2, int i11) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i11);
        long jOffset = offset(iTypeAndOffsetAt);
        int iNumberAt = numberAt(i11);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                if (isFieldPresent(obj2, i11)) {
                    s1.putDouble(obj, jOffset, s1.getDouble(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 1:
                if (isFieldPresent(obj2, i11)) {
                    s1.putFloat(obj, jOffset, s1.getFloat(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 2:
                if (isFieldPresent(obj2, i11)) {
                    s1.putLong(obj, jOffset, s1.getLong(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 3:
                if (isFieldPresent(obj2, i11)) {
                    s1.putLong(obj, jOffset, s1.getLong(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 4:
                if (isFieldPresent(obj2, i11)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 5:
                if (isFieldPresent(obj2, i11)) {
                    s1.putLong(obj, jOffset, s1.getLong(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 6:
                if (isFieldPresent(obj2, i11)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 7:
                if (isFieldPresent(obj2, i11)) {
                    s1.putBoolean(obj, jOffset, s1.getBoolean(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 8:
                if (isFieldPresent(obj2, i11)) {
                    s1.putObject(obj, jOffset, s1.getObject(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 9:
                mergeMessage(obj, obj2, i11);
                break;
            case 10:
                if (isFieldPresent(obj2, i11)) {
                    s1.putObject(obj, jOffset, s1.getObject(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 11:
                if (isFieldPresent(obj2, i11)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 12:
                if (isFieldPresent(obj2, i11)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 13:
                if (isFieldPresent(obj2, i11)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 14:
                if (isFieldPresent(obj2, i11)) {
                    s1.putLong(obj, jOffset, s1.getLong(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 15:
                if (isFieldPresent(obj2, i11)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 16:
                if (isFieldPresent(obj2, i11)) {
                    s1.putLong(obj, jOffset, s1.getLong(obj2, jOffset));
                    setFieldPresent(obj, i11);
                }
                break;
            case 17:
                mergeMessage(obj, obj2, i11);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                this.listFieldSchema.mergeListsAt(obj, obj2, jOffset);
                break;
            case 50:
                k1.mergeMap(this.mapFieldSchema, obj, obj2, jOffset);
                break;
            case 51:
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case AD_VISIBILITY_VALUE:
            case 57:
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case 59:
                if (isOneofPresent(obj2, iNumberAt, i11)) {
                    s1.putObject(obj, jOffset, s1.getObject(obj2, jOffset));
                    setOneofPresent(obj, iNumberAt, i11);
                }
                break;
            case 60:
                mergeOneofMessage(obj, obj2, i11);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
            case 66:
            case 67:
                if (isOneofPresent(obj2, iNumberAt, i11)) {
                    s1.putObject(obj, jOffset, s1.getObject(obj2, jOffset));
                    setOneofPresent(obj, iNumberAt, i11);
                }
                break;
            case 68:
                mergeOneofMessage(obj, obj2, i11);
                break;
        }
    }

    private Object mutableMessageFieldForMerge(Object obj, int i11) {
        i1 messageFieldSchema = getMessageFieldSchema(i11);
        long jOffset = offset(typeAndOffsetAt(i11));
        if (!isFieldPresent(obj, i11)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(obj, jOffset);
        if (isMutable(object)) {
            return object;
        }
        Object objNewInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    private Object mutableOneofMessageFieldForMerge(Object obj, int i11, int i12) {
        i1 messageFieldSchema = getMessageFieldSchema(i12);
        if (!isOneofPresent(obj, i11, i12)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(obj, offset(typeAndOffsetAt(i12)));
        if (isMutable(object)) {
            return object;
        }
        Object objNewInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    static <T> v0 newSchema(Class<T> cls, q0 q0Var, x0 x0Var, j0 j0Var, o1 o1Var, p pVar, n0 n0Var) {
        return q0Var instanceof g1 ? newSchemaForRawMessageInfo((g1) q0Var, x0Var, j0Var, o1Var, pVar, n0Var) : newSchemaForMessageInfo((m1) q0Var, x0Var, j0Var, o1Var, pVar, n0Var);
    }

    static <T> v0 newSchemaForMessageInfo(m1 m1Var, x0 x0Var, j0 j0Var, o1 o1Var, p pVar, n0 n0Var) {
        int fieldNumber;
        int fieldNumber2;
        s[] fields = m1Var.getFields();
        if (fields.length == 0) {
            fieldNumber = 0;
            fieldNumber2 = 0;
        } else {
            fieldNumber = fields[0].getFieldNumber();
            fieldNumber2 = fields[fields.length - 1].getFieldNumber();
        }
        int length = fields.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i11 = 0;
        int i12 = 0;
        for (s sVar : fields) {
            if (sVar.getType() == FieldType.MAP) {
                i11++;
            } else if (sVar.getType().id() >= 18 && sVar.getType().id() <= 49) {
                i12++;
            }
        }
        int[] iArr2 = i11 > 0 ? new int[i11] : null;
        int[] iArr3 = i12 > 0 ? new int[i12] : null;
        int[] checkInitialized = m1Var.getCheckInitialized();
        if (checkInitialized == null) {
            checkInitialized = EMPTY_INT_ARRAY;
        }
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i13 < fields.length) {
            s sVar2 = fields[i13];
            int fieldNumber3 = sVar2.getFieldNumber();
            storeFieldData(sVar2, iArr, i14, objArr);
            if (i15 < checkInitialized.length && checkInitialized[i15] == fieldNumber3) {
                checkInitialized[i15] = i14;
                i15++;
            }
            if (sVar2.getType() == FieldType.MAP) {
                iArr2[i16] = i14;
                i16++;
            } else {
                if (sVar2.getType().id() >= 18 && sVar2.getType().id() <= 49) {
                    iArr3[i17] = (int) s1.objectFieldOffset(sVar2.getField());
                    i17++;
                }
                i13++;
                i14 += 3;
            }
            i13++;
            i14 += 3;
        }
        if (iArr2 == null) {
            iArr2 = EMPTY_INT_ARRAY;
        }
        if (iArr3 == null) {
            iArr3 = EMPTY_INT_ARRAY;
        }
        int[] iArr4 = new int[checkInitialized.length + iArr2.length + iArr3.length];
        System.arraycopy(checkInitialized, 0, iArr4, 0, checkInitialized.length);
        System.arraycopy(iArr2, 0, iArr4, checkInitialized.length, iArr2.length);
        System.arraycopy(iArr3, 0, iArr4, checkInitialized.length + iArr2.length, iArr3.length);
        return new v0(iArr, objArr, fieldNumber, fieldNumber2, m1Var.getDefaultInstance(), m1Var.getSyntax(), true, iArr4, checkInitialized.length, checkInitialized.length + iArr2.length, x0Var, j0Var, o1Var, pVar, n0Var);
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0249  */
    /* JADX WARN: Code duplicated, block: B:123:0x024e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0264  */
    /* JADX WARN: Code duplicated, block: B:127:0x0267  */
    static <T> v0 newSchemaForRawMessageInfo(g1 g1Var, x0 x0Var, j0 j0Var, o1 o1Var, p pVar, n0 n0Var) {
        int i11;
        int iCharAt;
        int iCharAt2;
        int i12;
        int i13;
        int[] iArr;
        int i14;
        int i15;
        int i16;
        int i17;
        char cCharAt;
        int i18;
        char cCharAt2;
        int i19;
        char cCharAt3;
        int i20;
        char cCharAt4;
        int i21;
        char cCharAt5;
        int i22;
        char cCharAt6;
        int i23;
        char cCharAt7;
        int i24;
        char cCharAt8;
        int i25;
        int i26;
        int i27;
        int i28;
        int iObjectFieldOffset;
        int i29;
        int i30;
        int iObjectFieldOffset2;
        Field fieldReflectField;
        int i31;
        char cCharAt9;
        int i32;
        int i33;
        int i34;
        Object obj;
        Field fieldReflectField2;
        int i35;
        Object obj2;
        Field fieldReflectField3;
        int i36;
        char cCharAt10;
        int i37;
        char cCharAt11;
        int i38;
        char cCharAt12;
        int i39;
        char cCharAt13;
        String stringInfo = g1Var.getStringInfo();
        int length = stringInfo.length();
        char c11 = 55296;
        if (stringInfo.charAt(0) >= 55296) {
            int i40 = 1;
            while (true) {
                i11 = i40 + 1;
                if (stringInfo.charAt(i40) < 55296) {
                    break;
                }
                i40 = i11;
            }
        } else {
            i11 = 1;
        }
        int i41 = i11 + 1;
        int iCharAt3 = stringInfo.charAt(i11);
        if (iCharAt3 >= 55296) {
            int i42 = iCharAt3 & 8191;
            int i43 = 13;
            while (true) {
                i39 = i41 + 1;
                cCharAt13 = stringInfo.charAt(i41);
                if (cCharAt13 < 55296) {
                    break;
                }
                i42 |= (cCharAt13 & 8191) << i43;
                i43 += 13;
                i41 = i39;
            }
            iCharAt3 = i42 | (cCharAt13 << i43);
            i41 = i39;
        }
        if (iCharAt3 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            i15 = 0;
            i16 = 0;
            i12 = 0;
            i14 = 0;
            iArr = EMPTY_INT_ARRAY;
            i13 = 0;
        } else {
            int i44 = i41 + 1;
            int iCharAt4 = stringInfo.charAt(i41);
            if (iCharAt4 >= 55296) {
                int i45 = iCharAt4 & 8191;
                int i46 = 13;
                while (true) {
                    i24 = i44 + 1;
                    cCharAt8 = stringInfo.charAt(i44);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt8 & 8191) << i46;
                    i46 += 13;
                    i44 = i24;
                }
                iCharAt4 = i45 | (cCharAt8 << i46);
                i44 = i24;
            }
            int i47 = i44 + 1;
            int iCharAt5 = stringInfo.charAt(i44);
            if (iCharAt5 >= 55296) {
                int i48 = iCharAt5 & 8191;
                int i49 = 13;
                while (true) {
                    i23 = i47 + 1;
                    cCharAt7 = stringInfo.charAt(i47);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt7 & 8191) << i49;
                    i49 += 13;
                    i47 = i23;
                }
                iCharAt5 = i48 | (cCharAt7 << i49);
                i47 = i23;
            }
            int i50 = i47 + 1;
            int iCharAt6 = stringInfo.charAt(i47);
            if (iCharAt6 >= 55296) {
                int i51 = iCharAt6 & 8191;
                int i52 = 13;
                while (true) {
                    i22 = i50 + 1;
                    cCharAt6 = stringInfo.charAt(i50);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt6 & 8191) << i52;
                    i52 += 13;
                    i50 = i22;
                }
                iCharAt6 = i51 | (cCharAt6 << i52);
                i50 = i22;
            }
            int i53 = i50 + 1;
            int iCharAt7 = stringInfo.charAt(i50);
            if (iCharAt7 >= 55296) {
                int i54 = iCharAt7 & 8191;
                int i55 = 13;
                while (true) {
                    i21 = i53 + 1;
                    cCharAt5 = stringInfo.charAt(i53);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt5 & 8191) << i55;
                    i55 += 13;
                    i53 = i21;
                }
                iCharAt7 = i54 | (cCharAt5 << i55);
                i53 = i21;
            }
            int i56 = i53 + 1;
            iCharAt = stringInfo.charAt(i53);
            if (iCharAt >= 55296) {
                int i57 = iCharAt & 8191;
                int i58 = 13;
                while (true) {
                    i20 = i56 + 1;
                    cCharAt4 = stringInfo.charAt(i56);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt4 & 8191) << i58;
                    i58 += 13;
                    i56 = i20;
                }
                iCharAt = i57 | (cCharAt4 << i58);
                i56 = i20;
            }
            int i59 = i56 + 1;
            iCharAt2 = stringInfo.charAt(i56);
            if (iCharAt2 >= 55296) {
                int i60 = iCharAt2 & 8191;
                int i61 = 13;
                while (true) {
                    i19 = i59 + 1;
                    cCharAt3 = stringInfo.charAt(i59);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i60 |= (cCharAt3 & 8191) << i61;
                    i61 += 13;
                    i59 = i19;
                }
                iCharAt2 = i60 | (cCharAt3 << i61);
                i59 = i19;
            }
            int i62 = i59 + 1;
            int iCharAt8 = stringInfo.charAt(i59);
            if (iCharAt8 >= 55296) {
                int i63 = iCharAt8 & 8191;
                int i64 = 13;
                while (true) {
                    i18 = i62 + 1;
                    cCharAt2 = stringInfo.charAt(i62);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i63 |= (cCharAt2 & 8191) << i64;
                    i64 += 13;
                    i62 = i18;
                }
                iCharAt8 = i63 | (cCharAt2 << i64);
                i62 = i18;
            }
            int i65 = i62 + 1;
            int iCharAt9 = stringInfo.charAt(i62);
            if (iCharAt9 >= 55296) {
                int i66 = iCharAt9 & 8191;
                int i67 = 13;
                while (true) {
                    i17 = i65 + 1;
                    cCharAt = stringInfo.charAt(i65);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i66 |= (cCharAt & 8191) << i67;
                    i67 += 13;
                    i65 = i17;
                }
                iCharAt9 = i66 | (cCharAt << i67);
                i65 = i17;
            }
            i12 = (iCharAt4 * 2) + iCharAt5;
            i13 = iCharAt4;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i14 = iCharAt9;
            i41 = i65;
            i15 = iCharAt6;
            i16 = iCharAt7;
        }
        Unsafe unsafe = UNSAFE;
        Object[] objects = g1Var.getObjects();
        Class<?> cls = g1Var.getDefaultInstance().getClass();
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[iCharAt * 2];
        int i68 = i14 + iCharAt2;
        int i69 = i14;
        int i70 = i68;
        int i71 = 0;
        int i72 = 0;
        while (i41 < length) {
            int i73 = i41 + 1;
            int iCharAt10 = stringInfo.charAt(i41);
            if (iCharAt10 >= c11) {
                int i74 = iCharAt10 & 8191;
                int i75 = i73;
                int i76 = 13;
                while (true) {
                    i38 = i75 + 1;
                    cCharAt12 = stringInfo.charAt(i75);
                    if (cCharAt12 < c11) {
                        break;
                    }
                    i74 |= (cCharAt12 & 8191) << i76;
                    i76 += 13;
                    i75 = i38;
                }
                iCharAt10 = i74 | (cCharAt12 << i76);
                i25 = i38;
            } else {
                i25 = i73;
            }
            int i77 = i25 + 1;
            int iCharAt11 = stringInfo.charAt(i25);
            if (iCharAt11 >= c11) {
                int i78 = iCharAt11 & 8191;
                int i79 = i77;
                int i80 = 13;
                while (true) {
                    i37 = i79 + 1;
                    cCharAt11 = stringInfo.charAt(i79);
                    if (cCharAt11 < c11) {
                        break;
                    }
                    i78 |= (cCharAt11 & 8191) << i80;
                    i80 += 13;
                    i79 = i37;
                }
                iCharAt11 = i78 | (cCharAt11 << i80);
                i26 = i37;
            } else {
                i26 = i77;
            }
            int i81 = iCharAt11 & 255;
            int i82 = length;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i71] = i72;
                i71++;
            }
            int i83 = i71;
            if (i81 >= 51) {
                int i84 = i26 + 1;
                int iCharAt12 = stringInfo.charAt(i26);
                char c12 = 55296;
                if (iCharAt12 >= 55296) {
                    int i85 = iCharAt12 & 8191;
                    int i86 = 13;
                    while (true) {
                        i36 = i84 + 1;
                        cCharAt10 = stringInfo.charAt(i84);
                        if (cCharAt10 < c12) {
                            break;
                        }
                        i85 |= (cCharAt10 & 8191) << i86;
                        i86 += 13;
                        i84 = i36;
                        c12 = 55296;
                    }
                    iCharAt12 = i85 | (cCharAt10 << i86);
                    i84 = i36;
                }
                int i87 = i81 - 51;
                int i88 = i84;
                if (i87 == 9 || i87 == 17) {
                    i33 = i12 + 1;
                    objArr[((i72 / 3) * 2) + 1] = objects[i12];
                } else {
                    if (i87 == 12 && (g1Var.getSyntax().equals(ProtoSyntax.PROTO2) || (iCharAt11 & 2048) != 0)) {
                        i33 = i12 + 1;
                        objArr[((i72 / 3) * 2) + 1] = objects[i12];
                    }
                    i34 = iCharAt12 * 2;
                    obj = objects[i34];
                    if (obj instanceof Field) {
                        fieldReflectField2 = (Field) obj;
                    } else {
                        fieldReflectField2 = reflectField(cls, (String) obj);
                        objects[i34] = fieldReflectField2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                    i35 = i34 + 1;
                    obj2 = objects[i35];
                    if (obj2 instanceof Field) {
                        fieldReflectField3 = (Field) obj2;
                    } else {
                        fieldReflectField3 = reflectField(cls, (String) obj2);
                        objects[i35] = fieldReflectField3;
                    }
                    i28 = i16;
                    i27 = i12;
                    i29 = i88;
                    stringInfo = stringInfo;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField3);
                    i30 = 0;
                }
                i12 = i33;
                i34 = iCharAt12 * 2;
                obj = objects[i34];
                if (obj instanceof Field) {
                    fieldReflectField2 = (Field) obj;
                } else {
                    fieldReflectField2 = reflectField(cls, (String) obj);
                    objects[i34] = fieldReflectField2;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                i35 = i34 + 1;
                obj2 = objects[i35];
                if (obj2 instanceof Field) {
                    fieldReflectField3 = (Field) obj2;
                } else {
                    fieldReflectField3 = reflectField(cls, (String) obj2);
                    objects[i35] = fieldReflectField3;
                }
                i28 = i16;
                i27 = i12;
                i29 = i88;
                stringInfo = stringInfo;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField3);
                i30 = 0;
            } else {
                i27 = i12 + 1;
                Field fieldReflectField4 = reflectField(cls, (String) objects[i12]);
                if (i81 == 9 || i81 == 17) {
                    i28 = i16;
                    objArr[((i72 / 3) * 2) + 1] = fieldReflectField4.getType();
                } else {
                    if (i81 == 27 || i81 == 49) {
                        i28 = i16;
                        i32 = i12 + 2;
                        objArr[((i72 / 3) * 2) + 1] = objects[i27];
                    } else if (i81 == 12 || i81 == 30 || i81 == 44) {
                        i28 = i16;
                        if (g1Var.getSyntax() == ProtoSyntax.PROTO2 || (iCharAt11 & 2048) != 0) {
                            i32 = i12 + 2;
                            objArr[((i72 / 3) * 2) + 1] = objects[i27];
                        }
                    } else {
                        if (i81 == 50) {
                            int i89 = i69 + 1;
                            iArr[i69] = i72;
                            int i90 = (i72 / 3) * 2;
                            int i91 = i12 + 2;
                            objArr[i90] = objects[i27];
                            if ((iCharAt11 & 2048) != 0) {
                                i27 = i12 + 3;
                                objArr[i90 + 1] = objects[i91];
                                i69 = i89;
                            } else {
                                i69 = i89;
                                i27 = i91;
                            }
                        }
                        i28 = i16;
                    }
                    i27 = i32;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldReflectField4);
                if ((iCharAt11 & 4096) == 0 || i81 > 17) {
                    iObjectFieldOffset = 1048575;
                    i29 = i26;
                    i30 = 0;
                } else {
                    i29 = i26 + 1;
                    int iCharAt13 = stringInfo.charAt(i26);
                    if (iCharAt13 >= 55296) {
                        int i92 = iCharAt13 & 8191;
                        int i93 = 13;
                        while (true) {
                            i31 = i29 + 1;
                            cCharAt9 = stringInfo.charAt(i29);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i92 |= (cCharAt9 & 8191) << i93;
                            i93 += 13;
                            i29 = i31;
                        }
                        iCharAt13 = i92 | (cCharAt9 << i93);
                        i29 = i31;
                    }
                    int i94 = (i13 * 2) + (iCharAt13 / 32);
                    Object obj3 = objects[i94];
                    if (obj3 instanceof Field) {
                        fieldReflectField = (Field) obj3;
                    } else {
                        fieldReflectField = reflectField(cls, (String) obj3);
                        objects[i94] = fieldReflectField;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField);
                    i30 = iCharAt13 % 32;
                }
                if (i81 >= 18 && i81 <= 49) {
                    iArr[i70] = iObjectFieldOffset3;
                    i70++;
                }
                iObjectFieldOffset2 = iObjectFieldOffset3;
            }
            int i95 = i72 + 1;
            iArr2[i72] = iCharAt10;
            int i96 = i72 + 2;
            int i97 = i13;
            iArr2[i95] = iObjectFieldOffset2 | (i81 << 20) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0);
            i72 += 3;
            iArr2[i96] = iObjectFieldOffset | (i30 << 20);
            i41 = i29;
            stringInfo = stringInfo;
            i12 = i27;
            length = i82;
            i16 = i28;
            i71 = i83;
            i13 = i97;
            i15 = i15;
            c11 = 55296;
        }
        return new v0(iArr2, objArr, i15, i16, g1Var.getDefaultInstance(), g1Var.getSyntax(), false, iArr, i14, i68, x0Var, j0Var, o1Var, pVar, n0Var);
    }

    private int numberAt(int i11) {
        return this.buffer[i11];
    }

    private static long offset(int i11) {
        return i11 & 1048575;
    }

    private static <T> boolean oneofBooleanAt(T t11, long j11) {
        return ((Boolean) s1.getObject(t11, j11)).booleanValue();
    }

    private static <T> double oneofDoubleAt(T t11, long j11) {
        return ((Double) s1.getObject(t11, j11)).doubleValue();
    }

    private static <T> float oneofFloatAt(T t11, long j11) {
        return ((Float) s1.getObject(t11, j11)).floatValue();
    }

    private static <T> int oneofIntAt(T t11, long j11) {
        return ((Integer) s1.getObject(t11, j11)).intValue();
    }

    private static <T> long oneofLongAt(T t11, long j11) {
        return ((Long) s1.getObject(t11, j11)).longValue();
    }

    private <K, V> int parseMapField(Object obj, byte[] bArr, int i11, int i12, int i13, long j11, e.b bVar) throws IOException {
        Unsafe unsafe = UNSAFE;
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i13);
        Object object = unsafe.getObject(obj, j11);
        if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(mapFieldDefaultEntry);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            unsafe.putObject(obj, j11, objNewMapField);
            object = objNewMapField;
        }
        return decodeMapEntry(bArr, i11, i12, this.mapFieldSchema.forMapMetadata(mapFieldDefaultEntry), this.mapFieldSchema.forMutableMapData(object), bVar);
    }

    private int parseOneofField(Object obj, byte[] bArr, int i11, int i12, int i13, int i14, int i15, int i16, int i17, long j11, int i18, e.b bVar) throws IOException {
        Unsafe unsafe = UNSAFE;
        long j12 = this.buffer[i18 + 2] & 1048575;
        switch (i17) {
            case 51:
                if (i15 != 1) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Double.valueOf(e.decodeDouble(bArr, i11)));
                int i19 = i11 + 8;
                unsafe.putInt(obj, j12, i14);
                return i19;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                if (i15 != 5) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Float.valueOf(e.decodeFloat(bArr, i11)));
                int i20 = i11 + 4;
                unsafe.putInt(obj, j12, i14);
                return i20;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (i15 != 0) {
                    return i11;
                }
                int iDecodeVarint64 = e.decodeVarint64(bArr, i11, bVar);
                unsafe.putObject(obj, j11, Long.valueOf(bVar.long1));
                unsafe.putInt(obj, j12, i14);
                return iDecodeVarint64;
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case 62:
                if (i15 != 0) {
                    return i11;
                }
                int iDecodeVarint32 = e.decodeVarint32(bArr, i11, bVar);
                unsafe.putObject(obj, j11, Integer.valueOf(bVar.int1));
                unsafe.putInt(obj, j12, i14);
                return iDecodeVarint32;
            case AD_VISIBILITY_VALUE:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                if (i15 != 1) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Long.valueOf(e.decodeFixed64(bArr, i11)));
                int i21 = i11 + 8;
                unsafe.putInt(obj, j12, i14);
                return i21;
            case 57:
            case 64:
                if (i15 != 5) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Integer.valueOf(e.decodeFixed32(bArr, i11)));
                int i22 = i11 + 4;
                unsafe.putInt(obj, j12, i14);
                return i22;
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                if (i15 != 0) {
                    return i11;
                }
                int iDecodeVarint65 = e.decodeVarint64(bArr, i11, bVar);
                unsafe.putObject(obj, j11, Boolean.valueOf(bVar.long1 != 0));
                unsafe.putInt(obj, j12, i14);
                return iDecodeVarint65;
            case 59:
                if (i15 != 2) {
                    return i11;
                }
                int iDecodeVarint33 = e.decodeVarint32(bArr, i11, bVar);
                int i23 = bVar.int1;
                if (i23 == 0) {
                    unsafe.putObject(obj, j11, "");
                } else {
                    if ((i16 & 536870912) != 0 && !Utf8.isValidUtf8(bArr, iDecodeVarint33, iDecodeVarint33 + i23)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    unsafe.putObject(obj, j11, new String(bArr, iDecodeVarint33, i23, y.UTF_8));
                    iDecodeVarint33 += i23;
                }
                unsafe.putInt(obj, j12, i14);
                return iDecodeVarint33;
            case 60:
                if (i15 != 2) {
                    return i11;
                }
                Object objMutableOneofMessageFieldForMerge = mutableOneofMessageFieldForMerge(obj, i14, i18);
                int iMergeMessageField = e.mergeMessageField(objMutableOneofMessageFieldForMerge, getMessageFieldSchema(i18), bArr, i11, i12, bVar);
                storeOneofMessageField(obj, i14, i18, objMutableOneofMessageFieldForMerge);
                return iMergeMessageField;
            case 61:
                if (i15 != 2) {
                    return i11;
                }
                int iDecodeBytes = e.decodeBytes(bArr, i11, bVar);
                unsafe.putObject(obj, j11, bVar.object1);
                unsafe.putInt(obj, j12, i14);
                return iDecodeBytes;
            case 63:
                if (i15 != 0) {
                    return i11;
                }
                int iDecodeVarint34 = e.decodeVarint32(bArr, i11, bVar);
                int i24 = bVar.int1;
                y.e enumFieldVerifier = getEnumFieldVerifier(i18);
                if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i24)) {
                    unsafe.putObject(obj, j11, Integer.valueOf(i24));
                    unsafe.putInt(obj, j12, i14);
                } else {
                    getMutableUnknownFields(obj).storeField(i13, Long.valueOf(i24));
                }
                return iDecodeVarint34;
            case 66:
                if (i15 != 0) {
                    return i11;
                }
                int iDecodeVarint35 = e.decodeVarint32(bArr, i11, bVar);
                unsafe.putObject(obj, j11, Integer.valueOf(i.decodeZigZag32(bVar.int1)));
                unsafe.putInt(obj, j12, i14);
                return iDecodeVarint35;
            case 67:
                if (i15 != 0) {
                    return i11;
                }
                int iDecodeVarint66 = e.decodeVarint64(bArr, i11, bVar);
                unsafe.putObject(obj, j11, Long.valueOf(i.decodeZigZag64(bVar.long1)));
                unsafe.putInt(obj, j12, i14);
                return iDecodeVarint66;
            case 68:
                if (i15 != 3) {
                    return i11;
                }
                Object objMutableOneofMessageFieldForMerge2 = mutableOneofMessageFieldForMerge(obj, i14, i18);
                int iMergeGroupField = e.mergeGroupField(objMutableOneofMessageFieldForMerge2, getMessageFieldSchema(i18), bArr, i11, i12, (i13 & (-8)) | 4, bVar);
                storeOneofMessageField(obj, i14, i18, objMutableOneofMessageFieldForMerge2);
                return iMergeGroupField;
            default:
                return i11;
        }
    }

    private int parseRepeatedField(Object obj, byte[] bArr, int i11, int i12, int i13, int i14, int i15, int i16, long j11, int i17, long j12, e.b bVar) throws IOException {
        int iDecodeVarint32List;
        Unsafe unsafe = UNSAFE;
        y.j jVarMutableCopyWithCapacity = (y.j) unsafe.getObject(obj, j12);
        if (!jVarMutableCopyWithCapacity.isModifiable()) {
            int size = jVarMutableCopyWithCapacity.size();
            jVarMutableCopyWithCapacity = jVarMutableCopyWithCapacity.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            unsafe.putObject(obj, j12, jVarMutableCopyWithCapacity);
        }
        switch (i17) {
            case 18:
            case 35:
                if (i15 == 2) {
                    return e.decodePackedDoubleList(bArr, i11, jVarMutableCopyWithCapacity, bVar);
                }
                return i15 == 1 ? e.decodeDoubleList(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case 19:
            case 36:
                if (i15 == 2) {
                    return e.decodePackedFloatList(bArr, i11, jVarMutableCopyWithCapacity, bVar);
                }
                return i15 == 5 ? e.decodeFloatList(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i15 == 2) {
                    return e.decodePackedVarint64List(bArr, i11, jVarMutableCopyWithCapacity, bVar);
                }
                return i15 == 0 ? e.decodeVarint64List(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case 22:
            case NOTIFICATION_REDIRECT_VALUE:
            case 39:
            case 43:
                if (i15 == 2) {
                    return e.decodePackedVarint32List(bArr, i11, jVarMutableCopyWithCapacity, bVar);
                }
                return i15 == 0 ? e.decodeVarint32List(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i15 == 2) {
                    return e.decodePackedFixed64List(bArr, i11, jVarMutableCopyWithCapacity, bVar);
                }
                return i15 == 1 ? e.decodeFixed64List(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case 24:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 41:
            case 45:
                if (i15 == 2) {
                    return e.decodePackedFixed32List(bArr, i11, jVarMutableCopyWithCapacity, bVar);
                }
                return i15 == 5 ? e.decodeFixed32List(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case 25:
            case 42:
                if (i15 == 2) {
                    return e.decodePackedBoolList(bArr, i11, jVarMutableCopyWithCapacity, bVar);
                }
                return i15 == 0 ? e.decodeBoolList(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case 26:
                if (i15 == 2) {
                    return (j11 & 536870912) == 0 ? e.decodeStringList(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : e.decodeStringListRequireUtf8(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar);
                }
                return i11;
            case 27:
                return i15 == 2 ? e.decodeMessageList(getMessageFieldSchema(i16), i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case 28:
                return i15 == 2 ? e.decodeBytesList(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case 30:
            case 44:
                if (i15 == 2) {
                    iDecodeVarint32List = e.decodePackedVarint32List(bArr, i11, jVarMutableCopyWithCapacity, bVar);
                } else {
                    if (i15 != 0) {
                        return i11;
                    }
                    iDecodeVarint32List = e.decodeVarint32List(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar);
                }
                k1.filterUnknownEnumList(obj, i14, jVarMutableCopyWithCapacity, getEnumFieldVerifier(i16), (Object) null, this.unknownFieldSchema);
                return iDecodeVarint32List;
            case 33:
            case 47:
                if (i15 == 2) {
                    return e.decodePackedSInt32List(bArr, i11, jVarMutableCopyWithCapacity, bVar);
                }
                return i15 == 0 ? e.decodeSInt32List(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case 34:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                if (i15 == 2) {
                    return e.decodePackedSInt64List(bArr, i11, jVarMutableCopyWithCapacity, bVar);
                }
                return i15 == 0 ? e.decodeSInt64List(i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return i15 == 3 ? e.decodeGroupList(getMessageFieldSchema(i16), i13, bArr, i11, i12, jVarMutableCopyWithCapacity, bVar) : i11;
            default:
                return i11;
        }
    }

    private int positionForFieldNumber(int i11) {
        if (i11 < this.minFieldNumber || i11 > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i11, 0);
    }

    private int positionForFieldNumber(int i11, int i12) {
        if (i11 < this.minFieldNumber || i11 > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i11, i12);
    }

    private int presenceMaskAndOffsetAt(int i11) {
        return this.buffer[i11 + 2];
    }

    private <E> void readGroupList(Object obj, long j11, h1 h1Var, i1 i1Var, o oVar) throws IOException {
        h1Var.readGroupList(this.listFieldSchema.mutableListAt(obj, j11), i1Var, oVar);
    }

    private <E> void readMessageList(Object obj, int i11, h1 h1Var, i1 i1Var, o oVar) throws IOException {
        h1Var.readMessageList(this.listFieldSchema.mutableListAt(obj, offset(i11)), i1Var, oVar);
    }

    private void readString(Object obj, int i11, h1 h1Var) throws IOException {
        if (isEnforceUtf8(i11)) {
            s1.putObject(obj, offset(i11), h1Var.readStringRequireUtf8());
        } else if (this.lite) {
            s1.putObject(obj, offset(i11), h1Var.readString());
        } else {
            s1.putObject(obj, offset(i11), h1Var.readBytes());
        }
    }

    private void readStringList(Object obj, int i11, h1 h1Var) throws IOException {
        if (isEnforceUtf8(i11)) {
            h1Var.readStringListRequireUtf8(this.listFieldSchema.mutableListAt(obj, offset(i11)));
        } else {
            h1Var.readStringList(this.listFieldSchema.mutableListAt(obj, offset(i11)));
        }
    }

    private static Field reflectField(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private void setFieldPresent(Object obj, int i11) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i11);
        long j11 = 1048575 & iPresenceMaskAndOffsetAt;
        if (j11 == 1048575) {
            return;
        }
        s1.putInt(obj, j11, (1 << (iPresenceMaskAndOffsetAt >>> 20)) | s1.getInt(obj, j11));
    }

    private void setOneofPresent(Object obj, int i11, int i12) {
        s1.putInt(obj, presenceMaskAndOffsetAt(i12) & 1048575, i11);
    }

    private int slowPositionForFieldNumber(int i11, int i12) {
        int length = (this.buffer.length / 3) - 1;
        while (i12 <= length) {
            int i13 = (length + i12) >>> 1;
            int i14 = i13 * 3;
            int iNumberAt = numberAt(i14);
            if (i11 == iNumberAt) {
                return i14;
            }
            if (i11 < iNumberAt) {
                length = i13 - 1;
            } else {
                i12 = i13 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007a  */
    /* JADX WARN: Code duplicated, block: B:22:0x007d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0084  */
    /* JADX WARN: Code duplicated, block: B:28:0x009e  */
    /* JADX WARN: Code duplicated, block: B:30:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:31:0x00af  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:34:0x00be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    private static void storeFieldData(s sVar, int[] iArr, int i11, Object[] objArr) {
        int iObjectFieldOffset;
        int iId;
        long jObjectFieldOffset;
        int iObjectFieldOffset2;
        int iNumberOfTrailingZeros;
        int i12;
        Class<?> messageFieldClass;
        int i13;
        a1 oneof = sVar.getOneof();
        if (oneof == null) {
            FieldType type = sVar.getType();
            iObjectFieldOffset = (int) s1.objectFieldOffset(sVar.getField());
            iId = type.id();
            if (!type.isList() && !type.isMap()) {
                Field presenceField = sVar.getPresenceField();
                iObjectFieldOffset2 = presenceField == null ? 1048575 : (int) s1.objectFieldOffset(presenceField);
                iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(sVar.getPresenceMask());
            } else if (sVar.getCachedSizeField() == null) {
                iObjectFieldOffset2 = 0;
                iNumberOfTrailingZeros = 0;
            } else {
                jObjectFieldOffset = s1.objectFieldOffset(sVar.getCachedSizeField());
            }
            iArr[i11] = sVar.getFieldNumber();
            int i14 = i11 + 1;
            if (sVar.isEnforceUtf8()) {
                i12 = 536870912;
            } else {
                i12 = 0;
            }
            iArr[i14] = (sVar.isRequired() ? 268435456 : 0) | i12 | (iId << 20) | iObjectFieldOffset;
            iArr[i11 + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
            messageFieldClass = sVar.getMessageFieldClass();
            if (sVar.getMapDefaultEntry() != null) {
                if (messageFieldClass != null) {
                    objArr[((i11 / 3) * 2) + 1] = messageFieldClass;
                    return;
                } else {
                    if (sVar.getEnumVerifier() != null) {
                        objArr[((i11 / 3) * 2) + 1] = sVar.getEnumVerifier();
                        return;
                    }
                    return;
                }
            }
            i13 = (i11 / 3) * 2;
            objArr[i13] = sVar.getMapDefaultEntry();
            if (messageFieldClass != null) {
                objArr[i13 + 1] = messageFieldClass;
            } else if (sVar.getEnumVerifier() != null) {
                objArr[i13 + 1] = sVar.getEnumVerifier();
            }
        }
        iId = sVar.getType().id() + 51;
        iObjectFieldOffset = (int) s1.objectFieldOffset(oneof.getValueField());
        jObjectFieldOffset = s1.objectFieldOffset(oneof.getCaseField());
        iObjectFieldOffset2 = (int) jObjectFieldOffset;
        iNumberOfTrailingZeros = 0;
        iArr[i11] = sVar.getFieldNumber();
        int i15 = i11 + 1;
        if (sVar.isEnforceUtf8()) {
            i12 = 536870912;
        } else {
            i12 = 0;
        }
        iArr[i15] = (sVar.isRequired() ? 268435456 : 0) | i12 | (iId << 20) | iObjectFieldOffset;
        iArr[i11 + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
        messageFieldClass = sVar.getMessageFieldClass();
        if (sVar.getMapDefaultEntry() != null) {
            if (messageFieldClass != null) {
                objArr[((i11 / 3) * 2) + 1] = messageFieldClass;
                return;
            } else {
                if (sVar.getEnumVerifier() != null) {
                    objArr[((i11 / 3) * 2) + 1] = sVar.getEnumVerifier();
                    return;
                }
                return;
            }
        }
        i13 = (i11 / 3) * 2;
        objArr[i13] = sVar.getMapDefaultEntry();
        if (messageFieldClass != null) {
            objArr[i13 + 1] = messageFieldClass;
        } else if (sVar.getEnumVerifier() != null) {
            objArr[i13 + 1] = sVar.getEnumVerifier();
        }
    }

    private void storeMessageField(Object obj, int i11, Object obj2) {
        UNSAFE.putObject(obj, offset(typeAndOffsetAt(i11)), obj2);
        setFieldPresent(obj, i11);
    }

    private void storeOneofMessageField(Object obj, int i11, int i12, Object obj2) {
        UNSAFE.putObject(obj, offset(typeAndOffsetAt(i12)), obj2);
        setOneofPresent(obj, i11, i12);
    }

    private static int type(int i11) {
        return (i11 & FIELD_TYPE_MASK) >>> 20;
    }

    private int typeAndOffsetAt(int i11) {
        return this.buffer[i11 + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0022  */
    private void writeFieldsInAscendingOrder(Object obj, Writer writer) throws IOException {
        Map.Entry<t.c, Object> next;
        Iterator<Map.Entry<t.c, Object>> it;
        int i11;
        Map.Entry<t.c, Object> next2;
        int i12;
        int i13;
        Map.Entry<t.c, Object> entry;
        boolean z10;
        if (this.hasExtensions) {
            t extensions = this.extensionSchema.getExtensions(obj);
            if (extensions.isEmpty()) {
                next = null;
                it = null;
            } else {
                Iterator<Map.Entry<t.c, Object>> it2 = extensions.iterator();
                next = it2.next();
                it = it2;
            }
        } else {
            next = null;
            it = null;
        }
        int length = this.buffer.length;
        Unsafe unsafe = UNSAFE;
        int i14 = 1048575;
        int i15 = 1048575;
        int i16 = 0;
        int i17 = 0;
        while (i17 < length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i17);
            int iNumberAt = numberAt(i17);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                int i18 = this.buffer[i17 + 2];
                int i19 = i18 & i14;
                if (i19 != i15) {
                    i16 = i19 == i14 ? 0 : unsafe.getInt(obj, i19);
                    i15 = i19;
                } else {
                    next = next;
                }
                int i20 = 1 << (i18 >>> 20);
                i11 = i15;
                i12 = i20;
                next2 = next;
            } else {
                i11 = i15;
                next2 = next;
                i12 = 0;
            }
            int i21 = i16;
            while (next2 != null && this.extensionSchema.extensionNumber(next2) <= iNumberAt) {
                this.extensionSchema.serializeExtension(writer, next2);
                next2 = it.hasNext() ? it.next() : null;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            switch (iType) {
                case 0:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeDouble(iNumberAt, doubleAt(obj, jOffset));
                    }
                    break;
                case 1:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeFloat(iNumberAt, floatAt(obj, jOffset));
                    }
                    break;
                case 2:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeInt64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    break;
                case 3:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeUInt64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    break;
                case 4:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeInt32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 5:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeFixed64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    break;
                case 6:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeFixed32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 7:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeBool(iNumberAt, booleanAt(obj, jOffset));
                    }
                    break;
                case 8:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writeString(iNumberAt, unsafe.getObject(obj, jOffset), writer);
                    }
                    break;
                case 9:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i17));
                    }
                    break;
                case 10:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(obj, jOffset));
                    }
                    break;
                case 11:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeUInt32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 12:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeEnum(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 13:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeSFixed32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 14:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeSFixed64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    break;
                case 15:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeSInt32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 16:
                    i13 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeSInt64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    break;
                case 17:
                    entry = next2;
                    i13 = length;
                    if (isFieldPresent(obj, i17, i11, i21, i12)) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i17));
                    }
                    break;
                case 18:
                    z10 = false;
                    k1.writeDoubleList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 19:
                    z10 = false;
                    k1.writeFloatList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 20:
                    z10 = false;
                    k1.writeInt64List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 21:
                    z10 = false;
                    k1.writeUInt64List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 22:
                    z10 = false;
                    k1.writeInt32List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 23:
                    z10 = false;
                    k1.writeFixed64List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 24:
                    z10 = false;
                    k1.writeFixed32List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 25:
                    z10 = false;
                    k1.writeBoolList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 26:
                    k1.writeStringList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer);
                    i13 = length;
                    entry = next2;
                    break;
                case 27:
                    k1.writeMessageList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, getMessageFieldSchema(i17));
                    i13 = length;
                    entry = next2;
                    break;
                case 28:
                    k1.writeBytesList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer);
                    i13 = length;
                    entry = next2;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    z10 = false;
                    k1.writeUInt32List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 30:
                    z10 = false;
                    k1.writeEnumList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    k1.writeSFixed32List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 32:
                    z10 = false;
                    k1.writeSFixed64List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 33:
                    z10 = false;
                    k1.writeSInt32List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 34:
                    z10 = false;
                    k1.writeSInt64List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i13 = length;
                    entry = next2;
                    break;
                case 35:
                    k1.writeDoubleList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 36:
                    k1.writeFloatList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 37:
                    k1.writeInt64List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 38:
                    k1.writeUInt64List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 39:
                    k1.writeInt32List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 40:
                    k1.writeFixed64List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 41:
                    k1.writeFixed32List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 42:
                    k1.writeBoolList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 43:
                    k1.writeUInt32List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 44:
                    k1.writeEnumList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 45:
                    k1.writeSFixed32List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 46:
                    k1.writeSFixed64List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case 47:
                    k1.writeSInt32List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    k1.writeSInt64List(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i13 = length;
                    entry = next2;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    k1.writeGroupList(numberAt(i17), (List) unsafe.getObject(obj, jOffset), writer, getMessageFieldSchema(i17));
                    i13 = length;
                    entry = next2;
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, unsafe.getObject(obj, jOffset), i17);
                    i13 = length;
                    entry = next2;
                    break;
                case 51:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case 57:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case 59:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writeString(iNumberAt, unsafe.getObject(obj, jOffset), writer);
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case 60:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i17));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case 61:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case 62:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case 63:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case 64:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case 66:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case 67:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                case 68:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i17));
                    }
                    i13 = length;
                    entry = next2;
                    break;
                default:
                    i13 = length;
                    entry = next2;
                    break;
            }
            i17 += 3;
            i15 = i11;
            next = entry;
            i16 = i21;
            length = i13;
            i14 = 1048575;
        }
        while (next != null) {
            this.extensionSchema.serializeExtension(writer, next);
            next = it.hasNext() ? it.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, obj, writer);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void writeFieldsInDescendingOrder(Object obj, Writer writer) throws IOException {
        Iterator<Map.Entry<t.c, Object>> itDescendingIterator;
        Map.Entry<t.c, Object> next;
        writeUnknownInMessageTo(this.unknownFieldSchema, obj, writer);
        if (this.hasExtensions) {
            t extensions = this.extensionSchema.getExtensions(obj);
            if (extensions.isEmpty()) {
                itDescendingIterator = null;
                next = null;
            } else {
                itDescendingIterator = extensions.descendingIterator();
                next = itDescendingIterator.next();
            }
        } else {
            itDescendingIterator = null;
            next = null;
        }
        for (int length = this.buffer.length - 3; length >= 0; length -= 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(length);
            int iNumberAt = numberAt(length);
            while (next != null && this.extensionSchema.extensionNumber(next) > iNumberAt) {
                this.extensionSchema.serializeExtension(writer, next);
                next = itDescendingIterator.hasNext() ? itDescendingIterator.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(obj, length)) {
                        writer.writeDouble(iNumberAt, doubleAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(obj, length)) {
                        writer.writeFloat(iNumberAt, floatAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(obj, length)) {
                        writer.writeInt64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(obj, length)) {
                        writer.writeUInt64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(obj, length)) {
                        writer.writeInt32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(obj, length)) {
                        writer.writeFixed64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(obj, length)) {
                        writer.writeFixed32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(obj, length)) {
                        writer.writeBool(iNumberAt, booleanAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(obj, length)) {
                        writeString(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(obj, length)) {
                        writer.writeMessage(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 10:
                    if (isFieldPresent(obj, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) s1.getObject(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(obj, length)) {
                        writer.writeUInt32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(obj, length)) {
                        writer.writeEnum(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSFixed32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSFixed64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSInt32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSInt64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(obj, length)) {
                        writer.writeGroup(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 18:
                    k1.writeDoubleList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 19:
                    k1.writeFloatList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 20:
                    k1.writeInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 21:
                    k1.writeUInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 22:
                    k1.writeInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 23:
                    k1.writeFixed64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 24:
                    k1.writeFixed32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 25:
                    k1.writeBoolList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 26:
                    k1.writeStringList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 27:
                    k1.writeMessageList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 28:
                    k1.writeBytesList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    k1.writeUInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 30:
                    k1.writeEnumList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    k1.writeSFixed32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 32:
                    k1.writeSFixed64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 33:
                    k1.writeSInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 34:
                    k1.writeSInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 35:
                    k1.writeDoubleList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 36:
                    k1.writeFloatList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 37:
                    k1.writeInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 38:
                    k1.writeUInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 39:
                    k1.writeInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 40:
                    k1.writeFixed64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 41:
                    k1.writeFixed32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 42:
                    k1.writeBoolList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 43:
                    k1.writeUInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 44:
                    k1.writeEnumList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 45:
                    k1.writeSFixed32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 46:
                    k1.writeSFixed64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 47:
                    k1.writeSInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    k1.writeSInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    k1.writeGroupList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), length);
                    break;
                case 51:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writeString(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeMessage(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 61:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) s1.getObject(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeGroup(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
            }
        }
        while (next != null) {
            this.extensionSchema.serializeExtension(writer, next);
            next = itDescendingIterator.hasNext() ? itDescendingIterator.next() : null;
        }
    }

    private <K, V> void writeMapHelper(Writer writer, int i11, Object obj, int i12) throws IOException {
        if (obj != null) {
            writer.writeMap(i11, this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i12)), this.mapFieldSchema.forMapData(obj));
        }
    }

    private void writeString(int i11, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.writeString(i11, (String) obj);
        } else {
            writer.writeBytes(i11, (ByteString) obj);
        }
    }

    private <UT, UB> void writeUnknownInMessageTo(o1 o1Var, Object obj, Writer writer) throws IOException {
        o1Var.writeTo(o1Var.getFromMessage(obj), writer);
    }

    @Override // com.google.protobuf.i1
    public boolean equals(Object obj, Object obj2) {
        int length = this.buffer.length;
        for (int i11 = 0; i11 < length; i11 += 3) {
            if (!equals(obj, obj2, i11)) {
                return false;
            }
        }
        if (!this.unknownFieldSchema.getFromMessage(obj).equals(this.unknownFieldSchema.getFromMessage(obj2))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(obj).equals(this.extensionSchema.getExtensions(obj2));
        }
        return true;
    }

    int getSchemaSize() {
        return this.buffer.length * 3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x0079 A[PHI: r12
  0x0079: PHI (r12v4 int) = 
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v8 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v9 int)
  (r12v1 int)
 binds: [B:21:0x0060, B:225:0x0560, B:222:0x054a, B:216:0x0522, B:213:0x0503, B:210:0x04e6, B:207:0x04cb, B:204:0x04b0, B:201:0x0498, B:198:0x0482, B:195:0x0468, B:192:0x044d, B:189:0x042c, B:165:0x032e, B:159:0x0310, B:153:0x02f2, B:147:0x02d4, B:141:0x02b6, B:135:0x0298, B:129:0x027a, B:123:0x025c, B:117:0x023e, B:111:0x0221, B:105:0x0204, B:99:0x01e7, B:93:0x01ca, B:86:0x01aa, B:81:0x0176, B:78:0x016a, B:75:0x015a, B:72:0x014a, B:69:0x013a, B:66:0x012e, B:63:0x0122, B:60:0x0116, B:54:0x00f8, B:51:0x00e5, B:48:0x00d4, B:45:0x00c5, B:42:0x00b6, B:40:0x00b0, B:38:0x00a9, B:35:0x009e, B:32:0x008f, B:29:0x0080, B:26:0x0078, B:24:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.protobuf.i1
    public int getSerializedSize(Object obj) {
        int i11;
        int i12;
        int i13;
        int iComputeDoubleSize;
        int iComputeBoolSize;
        int iComputeSFixed32Size;
        boolean z10;
        int iComputeSizeFixed32List;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i14 = 1048575;
        int i15 = 1048575;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i17 < this.buffer.length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i17);
            int iType = type(iTypeAndOffsetAt);
            int iNumberAt = numberAt(i17);
            int i19 = this.buffer[i17 + 2];
            int i20 = i19 & i14;
            if (iType <= 17) {
                if (i20 != i15) {
                    i16 = i20 == i14 ? 0 : unsafe.getInt(obj, i20);
                    i15 = i20;
                }
                i11 = i15;
                i12 = i16;
                i13 = 1 << (i19 >>> 20);
            } else {
                i11 = i15;
                i12 = i16;
                i13 = 0;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            if (iType < FieldType.DOUBLE_LIST_PACKED.id() || iType > FieldType.SINT64_LIST_PACKED.id()) {
                i20 = 0;
            }
            switch (iType) {
                case 0:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i18 += iComputeDoubleSize;
                    }
                    break;
                case 1:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i18 += iComputeDoubleSize;
                    }
                    break;
                case 2:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, unsafe.getLong(obj, jOffset));
                        i18 += iComputeDoubleSize;
                    }
                    break;
                case 3:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, unsafe.getLong(obj, jOffset));
                        i18 += iComputeDoubleSize;
                    }
                    break;
                case 4:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, unsafe.getInt(obj, jOffset));
                        i18 += iComputeDoubleSize;
                    }
                    break;
                case 5:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i18 += iComputeDoubleSize;
                    }
                    break;
                case 6:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i18 += iComputeDoubleSize;
                    }
                    break;
                case 7:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 8:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        Object object = unsafe.getObject(obj, jOffset);
                        iComputeBoolSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object) : CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 9:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeBoolSize = k1.computeSizeMessage(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i17));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 10:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 11:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt32Size(iNumberAt, unsafe.getInt(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 12:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeEnumSize(iNumberAt, unsafe.getInt(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 13:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeSFixed32Size = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 14:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 15:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt32Size(iNumberAt, unsafe.getInt(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 16:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt64Size(iNumberAt, unsafe.getLong(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 17:
                    if (isFieldPresent(obj, i17, i11, i12, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeGroupSize(iNumberAt, (s0) unsafe.getObject(obj, jOffset), getMessageFieldSchema(i17));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 18:
                    iComputeBoolSize = k1.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeBoolSize;
                    break;
                case 19:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 20:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeInt64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 21:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeUInt64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 22:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeInt32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 23:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 24:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 25:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeBoolList(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 26:
                    iComputeBoolSize = k1.computeSizeStringList(iNumberAt, (List) unsafe.getObject(obj, jOffset));
                    i18 += iComputeBoolSize;
                    break;
                case 27:
                    iComputeBoolSize = k1.computeSizeMessageList(iNumberAt, (List) unsafe.getObject(obj, jOffset), getMessageFieldSchema(i17));
                    i18 += iComputeBoolSize;
                    break;
                case 28:
                    iComputeBoolSize = k1.computeSizeByteStringList(iNumberAt, (List) unsafe.getObject(obj, jOffset));
                    i18 += iComputeBoolSize;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    iComputeBoolSize = k1.computeSizeUInt32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeBoolSize;
                    break;
                case 30:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeEnumList(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 32:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 33:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeSInt32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 34:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeSInt64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i18 += iComputeSizeFixed32List;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeInt64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 38:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeUInt64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 39:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeInt32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeBoolListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 43:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeUInt32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 44:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeEnumListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case 47:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeSInt32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeSInt64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i20, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    iComputeBoolSize = k1.computeSizeGroupList(iNumberAt, (List) unsafe.getObject(obj, jOffset), getMessageFieldSchema(i17));
                    i18 += iComputeBoolSize;
                    break;
                case 50:
                    iComputeBoolSize = this.mapFieldSchema.getSerializedSize(iNumberAt, unsafe.getObject(obj, jOffset), getMapFieldDefaultEntry(i17));
                    i18 += iComputeBoolSize;
                    break;
                case 51:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i18 += iComputeBoolSize;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i18 += iComputeBoolSize;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeSFixed32Size = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        Object object2 = unsafe.getObject(obj, jOffset);
                        iComputeBoolSize = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2) : CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = k1.computeSizeMessage(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i17));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeSFixed32Size = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i18 += iComputeSFixed32Size;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(obj, jOffset));
                        i18 += iComputeBoolSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(obj, iNumberAt, i17)) {
                        iComputeBoolSize = CodedOutputStream.computeGroupSize(iNumberAt, (s0) unsafe.getObject(obj, jOffset), getMessageFieldSchema(i17));
                        i18 += iComputeBoolSize;
                    }
                    break;
                default:
                    break;
            }
            i17 += 3;
            i15 = i11;
            i16 = i12;
            i14 = 1048575;
        }
        int unknownFieldsSerializedSize = i18 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, obj);
        return this.hasExtensions ? unknownFieldsSerializedSize + this.extensionSchema.getExtensions(obj).getSerializedSize() : unknownFieldsSerializedSize;
    }

    @Override // com.google.protobuf.i1
    public int hashCode(Object obj) {
        int i11;
        int iHashLong;
        int length = this.buffer.length;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i13);
            int iNumberAt = numberAt(i13);
            long jOffset = offset(iTypeAndOffsetAt);
            int iHashCode = 37;
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    i11 = i12 * 53;
                    iHashLong = y.hashLong(Double.doubleToLongBits(s1.getDouble(obj, jOffset)));
                    i12 = i11 + iHashLong;
                    break;
                case 1:
                    i11 = i12 * 53;
                    iHashLong = Float.floatToIntBits(s1.getFloat(obj, jOffset));
                    i12 = i11 + iHashLong;
                    break;
                case 2:
                    i11 = i12 * 53;
                    iHashLong = y.hashLong(s1.getLong(obj, jOffset));
                    i12 = i11 + iHashLong;
                    break;
                case 3:
                    i11 = i12 * 53;
                    iHashLong = y.hashLong(s1.getLong(obj, jOffset));
                    i12 = i11 + iHashLong;
                    break;
                case 4:
                    i11 = i12 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i12 = i11 + iHashLong;
                    break;
                case 5:
                    i11 = i12 * 53;
                    iHashLong = y.hashLong(s1.getLong(obj, jOffset));
                    i12 = i11 + iHashLong;
                    break;
                case 6:
                    i11 = i12 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i12 = i11 + iHashLong;
                    break;
                case 7:
                    i11 = i12 * 53;
                    iHashLong = y.hashBoolean(s1.getBoolean(obj, jOffset));
                    i12 = i11 + iHashLong;
                    break;
                case 8:
                    i11 = i12 * 53;
                    iHashLong = ((String) s1.getObject(obj, jOffset)).hashCode();
                    i12 = i11 + iHashLong;
                    break;
                case 9:
                    Object object = s1.getObject(obj, jOffset);
                    if (object != null) {
                        iHashCode = object.hashCode();
                    }
                    i12 = (i12 * 53) + iHashCode;
                    break;
                case 10:
                    i11 = i12 * 53;
                    iHashLong = s1.getObject(obj, jOffset).hashCode();
                    i12 = i11 + iHashLong;
                    break;
                case 11:
                    i11 = i12 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i12 = i11 + iHashLong;
                    break;
                case 12:
                    i11 = i12 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i12 = i11 + iHashLong;
                    break;
                case 13:
                    i11 = i12 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i12 = i11 + iHashLong;
                    break;
                case 14:
                    i11 = i12 * 53;
                    iHashLong = y.hashLong(s1.getLong(obj, jOffset));
                    i12 = i11 + iHashLong;
                    break;
                case 15:
                    i11 = i12 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i12 = i11 + iHashLong;
                    break;
                case 16:
                    i11 = i12 * 53;
                    iHashLong = y.hashLong(s1.getLong(obj, jOffset));
                    i12 = i11 + iHashLong;
                    break;
                case 17:
                    Object object2 = s1.getObject(obj, jOffset);
                    if (object2 != null) {
                        iHashCode = object2.hashCode();
                    }
                    i12 = (i12 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    i11 = i12 * 53;
                    iHashLong = s1.getObject(obj, jOffset).hashCode();
                    i12 = i11 + iHashLong;
                    break;
                case 50:
                    i11 = i12 * 53;
                    iHashLong = s1.getObject(obj, jOffset).hashCode();
                    i12 = i11 + iHashLong;
                    break;
                case 51:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = y.hashLong(Double.doubleToLongBits(oneofDoubleAt(obj, jOffset)));
                        i12 = i11 + iHashLong;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = Float.floatToIntBits(oneofFloatAt(obj, jOffset));
                        i12 = i11 + iHashLong;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = y.hashLong(oneofLongAt(obj, jOffset));
                        i12 = i11 + iHashLong;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = y.hashLong(oneofLongAt(obj, jOffset));
                        i12 = i11 + iHashLong;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i12 = i11 + iHashLong;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = y.hashLong(oneofLongAt(obj, jOffset));
                        i12 = i11 + iHashLong;
                    }
                    break;
                case 57:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i12 = i11 + iHashLong;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = y.hashBoolean(oneofBooleanAt(obj, jOffset));
                        i12 = i11 + iHashLong;
                    }
                    break;
                case 59:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = ((String) s1.getObject(obj, jOffset)).hashCode();
                        i12 = i11 + iHashLong;
                    }
                    break;
                case 60:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = s1.getObject(obj, jOffset).hashCode();
                        i12 = i11 + iHashLong;
                    }
                    break;
                case 61:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = s1.getObject(obj, jOffset).hashCode();
                        i12 = i11 + iHashLong;
                    }
                    break;
                case 62:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i12 = i11 + iHashLong;
                    }
                    break;
                case 63:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i12 = i11 + iHashLong;
                    }
                    break;
                case 64:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i12 = i11 + iHashLong;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = y.hashLong(oneofLongAt(obj, jOffset));
                        i12 = i11 + iHashLong;
                    }
                    break;
                case 66:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i12 = i11 + iHashLong;
                    }
                    break;
                case 67:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = y.hashLong(oneofLongAt(obj, jOffset));
                        i12 = i11 + iHashLong;
                    }
                    break;
                case 68:
                    if (isOneofPresent(obj, iNumberAt, i13)) {
                        i11 = i12 * 53;
                        iHashLong = s1.getObject(obj, jOffset).hashCode();
                        i12 = i11 + iHashLong;
                    }
                    break;
            }
        }
        int iHashCode2 = (i12 * 53) + this.unknownFieldSchema.getFromMessage(obj).hashCode();
        return this.hasExtensions ? (iHashCode2 * 53) + this.extensionSchema.getExtensions(obj).hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:58:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa A[SYNTHETIC] */
    @Override // com.google.protobuf.i1
    public final boolean isInitialized(Object obj) {
        int i11;
        int i12;
        int i13 = 1048575;
        int i14 = 0;
        int i15 = 0;
        while (i15 < this.checkInitializedCount) {
            int i16 = this.intArray[i15];
            int iNumberAt = numberAt(i16);
            int iTypeAndOffsetAt = typeAndOffsetAt(i16);
            int i17 = this.buffer[i16 + 2];
            int i18 = i17 & 1048575;
            int i19 = 1 << (i17 >>> 20);
            if (i18 != i13) {
                if (i18 != 1048575) {
                    i14 = UNSAFE.getInt(obj, i18);
                }
                i12 = i14;
                i11 = i18;
            } else {
                i11 = i13;
                i12 = i14;
            }
            if (isRequired(iTypeAndOffsetAt) && !isFieldPresent(obj, i16, i11, i12, i19)) {
                return false;
            }
            int iType = type(iTypeAndOffsetAt);
            if (iType == 9 || iType == 17) {
                if (isFieldPresent(obj, i16, i11, i12, i19) && !isInitialized(obj, iTypeAndOffsetAt, getMessageFieldSchema(i16))) {
                    return false;
                }
            } else if (iType == 27) {
                if (!isListInitialized(obj, iTypeAndOffsetAt, i16)) {
                    return false;
                }
            } else if (iType == 60 || iType == 68) {
                if (isOneofPresent(obj, iNumberAt, i16) && !isInitialized(obj, iTypeAndOffsetAt, getMessageFieldSchema(i16))) {
                    return false;
                }
            } else if (iType != 49) {
                if (iType == 50 && !isMapInitialized(obj, iTypeAndOffsetAt, i16)) {
                    return false;
                }
            } else if (!isListInitialized(obj, iTypeAndOffsetAt, i16)) {
                return false;
            }
            i15++;
            i13 = i11;
            i14 = i12;
        }
        return !this.hasExtensions || this.extensionSchema.getExtensions(obj).isInitialized();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0069  */
    /* JADX WARN: Code duplicated, block: B:27:0x006f  */
    /* JADX WARN: Code duplicated, block: B:40:0x007c A[SYNTHETIC] */
    @Override // com.google.protobuf.i1
    public void makeImmutable(Object obj) {
        if (isMutable(obj)) {
            if (obj instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
                generatedMessageLite.clearMemoizedSerializedSize();
                generatedMessageLite.clearMemoizedHashCode();
                generatedMessageLite.markImmutable();
            }
            int length = this.buffer.length;
            for (int i11 = 0; i11 < length; i11 += 3) {
                int iTypeAndOffsetAt = typeAndOffsetAt(i11);
                long jOffset = offset(iTypeAndOffsetAt);
                int iType = type(iTypeAndOffsetAt);
                if (iType != 9) {
                    if (iType != 60 && iType != 68) {
                        switch (iType) {
                            case 17:
                                if (isFieldPresent(obj, i11)) {
                                    getMessageFieldSchema(i11).makeImmutable(UNSAFE.getObject(obj, jOffset));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case NOTIFICATION_REDIRECT_VALUE:
                            case 30:
                            case TEMPLATE_HTML_SIZE_VALUE:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                this.listFieldSchema.makeImmutableListAt(obj, jOffset);
                                break;
                            case 50:
                                Unsafe unsafe = UNSAFE;
                                Object object = unsafe.getObject(obj, jOffset);
                                if (object != null) {
                                    unsafe.putObject(obj, jOffset, this.mapFieldSchema.toImmutable(object));
                                }
                                break;
                        }
                    } else if (isOneofPresent(obj, numberAt(i11), i11)) {
                        getMessageFieldSchema(i11).makeImmutable(UNSAFE.getObject(obj, jOffset));
                    }
                } else if (isFieldPresent(obj, i11)) {
                    getMessageFieldSchema(i11).makeImmutable(UNSAFE.getObject(obj, jOffset));
                }
            }
            this.unknownFieldSchema.makeImmutable(obj);
            if (this.hasExtensions) {
                this.extensionSchema.makeImmutable(obj);
            }
        }
    }

    @Override // com.google.protobuf.i1
    public void mergeFrom(Object obj, h1 h1Var, o oVar) throws Throwable {
        oVar.getClass();
        checkMutable(obj);
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, obj, h1Var, oVar);
    }

    @Override // com.google.protobuf.i1
    public void mergeFrom(Object obj, Object obj2) {
        checkMutable(obj);
        obj2.getClass();
        for (int i11 = 0; i11 < this.buffer.length; i11 += 3) {
            mergeSingleField(obj, obj2, i11);
        }
        k1.mergeUnknownFields(this.unknownFieldSchema, obj, obj2);
        if (this.hasExtensions) {
            k1.mergeExtensions(this.extensionSchema, obj, obj2);
        }
    }

    @Override // com.google.protobuf.i1
    public void mergeFrom(Object obj, byte[] bArr, int i11, int i12, e.b bVar) throws IOException {
        parseMessage(obj, bArr, i11, i12, 0, bVar);
    }

    @Override // com.google.protobuf.i1
    public Object newInstance() {
        return this.newInstanceSchema.newInstance(this.defaultInstance);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 12101. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    int parseMessage(java.lang.Object r31, byte[] r32, int r33, int r34, int r35, com.google.protobuf.e.b r36) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.v0.parseMessage(java.lang.Object, byte[], int, int, int, com.google.protobuf.e$b):int");
    }

    @Override // com.google.protobuf.i1
    public void writeTo(Object obj, Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            writeFieldsInDescendingOrder(obj, writer);
        } else {
            writeFieldsInAscendingOrder(obj, writer);
        }
    }
}
