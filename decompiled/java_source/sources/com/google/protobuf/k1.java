package com.google.protobuf;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class k1 {
    private static final int DEFAULT_LOOK_UP_START_NUMBER = 40;
    private static final Class<?> GENERATED_MESSAGE_CLASS = getGeneratedMessageClass();
    private static final o1 UNKNOWN_FIELD_SET_FULL_SCHEMA = getUnknownFieldSetSchema();
    private static final o1 UNKNOWN_FIELD_SET_LITE_SCHEMA = new q1();

    private k1() {
    }

    static int computeSizeBoolList(int i11, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z10 ? CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(size) : size * CodedOutputStream.computeBoolSize(i11, true);
    }

    static int computeSizeBoolListNoTag(List<?> list) {
        return list.size();
    }

    static int computeSizeByteStringList(int i11, List<ByteString> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeTagSize = size * CodedOutputStream.computeTagSize(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeTagSize += CodedOutputStream.computeBytesSizeNoTag(list.get(i12));
        }
        return iComputeTagSize;
    }

    static int computeSizeEnumList(int i11, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeEnumListNoTag = computeSizeEnumListNoTag(list);
        return z10 ? CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeEnumListNoTag) : iComputeSizeEnumListNoTag + (size * CodedOutputStream.computeTagSize(i11));
    }

    static int computeSizeEnumListNoTag(List<Integer> list) {
        int iComputeEnumSizeNoTag;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof w) {
            w wVar = (w) list;
            iComputeEnumSizeNoTag = 0;
            while (i11 < size) {
                iComputeEnumSizeNoTag += CodedOutputStream.computeEnumSizeNoTag(wVar.getInt(i11));
                i11++;
            }
        } else {
            iComputeEnumSizeNoTag = 0;
            while (i11 < size) {
                iComputeEnumSizeNoTag += CodedOutputStream.computeEnumSizeNoTag(list.get(i11).intValue());
                i11++;
            }
        }
        return iComputeEnumSizeNoTag;
    }

    static int computeSizeFixed32List(int i11, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z10 ? CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(size * 4) : size * CodedOutputStream.computeFixed32Size(i11, 0);
    }

    static int computeSizeFixed32ListNoTag(List<?> list) {
        return list.size() * 4;
    }

    static int computeSizeFixed64List(int i11, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z10 ? CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(size * 8) : size * CodedOutputStream.computeFixed64Size(i11, 0L);
    }

    static int computeSizeFixed64ListNoTag(List<?> list) {
        return list.size() * 8;
    }

    static int computeSizeGroupList(int i11, List<s0> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeGroupSize = 0;
        for (int i12 = 0; i12 < size; i12++) {
            iComputeGroupSize += CodedOutputStream.computeGroupSize(i11, list.get(i12));
        }
        return iComputeGroupSize;
    }

    static int computeSizeGroupList(int i11, List<s0> list, i1 i1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeGroupSize = 0;
        for (int i12 = 0; i12 < size; i12++) {
            iComputeGroupSize += CodedOutputStream.computeGroupSize(i11, list.get(i12), i1Var);
        }
        return iComputeGroupSize;
    }

    static int computeSizeInt32List(int i11, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeInt32ListNoTag = computeSizeInt32ListNoTag(list);
        return z10 ? CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeInt32ListNoTag) : iComputeSizeInt32ListNoTag + (size * CodedOutputStream.computeTagSize(i11));
    }

    static int computeSizeInt32ListNoTag(List<Integer> list) {
        int iComputeInt32SizeNoTag;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof w) {
            w wVar = (w) list;
            iComputeInt32SizeNoTag = 0;
            while (i11 < size) {
                iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(wVar.getInt(i11));
                i11++;
            }
        } else {
            iComputeInt32SizeNoTag = 0;
            while (i11 < size) {
                iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(list.get(i11).intValue());
                i11++;
            }
        }
        return iComputeInt32SizeNoTag;
    }

    static int computeSizeInt64List(int i11, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        int iComputeSizeInt64ListNoTag = computeSizeInt64ListNoTag(list);
        return z10 ? CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeInt64ListNoTag) : iComputeSizeInt64ListNoTag + (list.size() * CodedOutputStream.computeTagSize(i11));
    }

    static int computeSizeInt64ListNoTag(List<Long> list) {
        int iComputeInt64SizeNoTag;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof k0) {
            k0 k0Var = (k0) list;
            iComputeInt64SizeNoTag = 0;
            while (i11 < size) {
                iComputeInt64SizeNoTag += CodedOutputStream.computeInt64SizeNoTag(k0Var.getLong(i11));
                i11++;
            }
        } else {
            iComputeInt64SizeNoTag = 0;
            while (i11 < size) {
                iComputeInt64SizeNoTag += CodedOutputStream.computeInt64SizeNoTag(list.get(i11).longValue());
                i11++;
            }
        }
        return iComputeInt64SizeNoTag;
    }

    static int computeSizeMessage(int i11, Object obj, i1 i1Var) {
        return obj instanceof g0 ? CodedOutputStream.computeLazyFieldSize(i11, (g0) obj) : CodedOutputStream.computeMessageSize(i11, (s0) obj, i1Var);
    }

    static int computeSizeMessageList(int i11, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeTagSize = CodedOutputStream.computeTagSize(i11) * size;
        for (int i12 = 0; i12 < size; i12++) {
            Object obj = list.get(i12);
            iComputeTagSize += obj instanceof g0 ? CodedOutputStream.computeLazyFieldSizeNoTag((g0) obj) : CodedOutputStream.computeMessageSizeNoTag((s0) obj);
        }
        return iComputeTagSize;
    }

    static int computeSizeMessageList(int i11, List<?> list, i1 i1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeTagSize = CodedOutputStream.computeTagSize(i11) * size;
        for (int i12 = 0; i12 < size; i12++) {
            Object obj = list.get(i12);
            iComputeTagSize += obj instanceof g0 ? CodedOutputStream.computeLazyFieldSizeNoTag((g0) obj) : CodedOutputStream.computeMessageSizeNoTag((s0) obj, i1Var);
        }
        return iComputeTagSize;
    }

    static int computeSizeSInt32List(int i11, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeSInt32ListNoTag = computeSizeSInt32ListNoTag(list);
        return z10 ? CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeSInt32ListNoTag) : iComputeSizeSInt32ListNoTag + (size * CodedOutputStream.computeTagSize(i11));
    }

    static int computeSizeSInt32ListNoTag(List<Integer> list) {
        int iComputeSInt32SizeNoTag;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof w) {
            w wVar = (w) list;
            iComputeSInt32SizeNoTag = 0;
            while (i11 < size) {
                iComputeSInt32SizeNoTag += CodedOutputStream.computeSInt32SizeNoTag(wVar.getInt(i11));
                i11++;
            }
        } else {
            iComputeSInt32SizeNoTag = 0;
            while (i11 < size) {
                iComputeSInt32SizeNoTag += CodedOutputStream.computeSInt32SizeNoTag(list.get(i11).intValue());
                i11++;
            }
        }
        return iComputeSInt32SizeNoTag;
    }

    static int computeSizeSInt64List(int i11, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeSInt64ListNoTag = computeSizeSInt64ListNoTag(list);
        return z10 ? CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeSInt64ListNoTag) : iComputeSizeSInt64ListNoTag + (size * CodedOutputStream.computeTagSize(i11));
    }

    static int computeSizeSInt64ListNoTag(List<Long> list) {
        int iComputeSInt64SizeNoTag;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof k0) {
            k0 k0Var = (k0) list;
            iComputeSInt64SizeNoTag = 0;
            while (i11 < size) {
                iComputeSInt64SizeNoTag += CodedOutputStream.computeSInt64SizeNoTag(k0Var.getLong(i11));
                i11++;
            }
        } else {
            iComputeSInt64SizeNoTag = 0;
            while (i11 < size) {
                iComputeSInt64SizeNoTag += CodedOutputStream.computeSInt64SizeNoTag(list.get(i11).longValue());
                i11++;
            }
        }
        return iComputeSInt64SizeNoTag;
    }

    static int computeSizeStringList(int i11, List<?> list) {
        int size = list.size();
        int i12 = 0;
        if (size == 0) {
            return 0;
        }
        int iComputeTagSize = CodedOutputStream.computeTagSize(i11) * size;
        if (list instanceof i0) {
            i0 i0Var = (i0) list;
            while (i12 < size) {
                Object raw = i0Var.getRaw(i12);
                iComputeTagSize += raw instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) raw) : CodedOutputStream.computeStringSizeNoTag((String) raw);
                i12++;
            }
        } else {
            while (i12 < size) {
                Object obj = list.get(i12);
                iComputeTagSize += obj instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) obj) : CodedOutputStream.computeStringSizeNoTag((String) obj);
                i12++;
            }
        }
        return iComputeTagSize;
    }

    static int computeSizeUInt32List(int i11, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeUInt32ListNoTag = computeSizeUInt32ListNoTag(list);
        return z10 ? CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeUInt32ListNoTag) : iComputeSizeUInt32ListNoTag + (size * CodedOutputStream.computeTagSize(i11));
    }

    static int computeSizeUInt32ListNoTag(List<Integer> list) {
        int iComputeUInt32SizeNoTag;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof w) {
            w wVar = (w) list;
            iComputeUInt32SizeNoTag = 0;
            while (i11 < size) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(wVar.getInt(i11));
                i11++;
            }
        } else {
            iComputeUInt32SizeNoTag = 0;
            while (i11 < size) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(list.get(i11).intValue());
                i11++;
            }
        }
        return iComputeUInt32SizeNoTag;
    }

    static int computeSizeUInt64List(int i11, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeUInt64ListNoTag = computeSizeUInt64ListNoTag(list);
        return z10 ? CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeUInt64ListNoTag) : iComputeSizeUInt64ListNoTag + (size * CodedOutputStream.computeTagSize(i11));
    }

    static int computeSizeUInt64ListNoTag(List<Long> list) {
        int iComputeUInt64SizeNoTag;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof k0) {
            k0 k0Var = (k0) list;
            iComputeUInt64SizeNoTag = 0;
            while (i11 < size) {
                iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(k0Var.getLong(i11));
                i11++;
            }
        } else {
            iComputeUInt64SizeNoTag = 0;
            while (i11 < size) {
                iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(list.get(i11).longValue());
                i11++;
            }
        }
        return iComputeUInt64SizeNoTag;
    }

    static <UT, UB> UB filterUnknownEnumList(Object obj, int i11, List<Integer> list, y.d dVar, UB ub2, o1 o1Var) {
        if (dVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i12 = 0;
            for (int i13 = 0; i13 < size; i13++) {
                Integer num = list.get(i13);
                int iIntValue = num.intValue();
                if (dVar.findValueByNumber(iIntValue) != null) {
                    if (i13 != i12) {
                        list.set(i12, num);
                    }
                    i12++;
                } else {
                    ub2 = (UB) storeUnknownEnum(obj, i11, iIntValue, ub2, o1Var);
                }
            }
            if (i12 != size) {
                list.subList(i12, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (dVar.findValueByNumber(iIntValue2) == null) {
                    ub2 = (UB) storeUnknownEnum(obj, i11, iIntValue2, ub2, o1Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    static <UT, UB> UB filterUnknownEnumList(Object obj, int i11, List<Integer> list, y.e eVar, UB ub2, o1 o1Var) {
        if (eVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i12 = 0;
            for (int i13 = 0; i13 < size; i13++) {
                Integer num = list.get(i13);
                int iIntValue = num.intValue();
                if (eVar.isInRange(iIntValue)) {
                    if (i13 != i12) {
                        list.set(i12, num);
                    }
                    i12++;
                } else {
                    ub2 = (UB) storeUnknownEnum(obj, i11, iIntValue, ub2, o1Var);
                }
            }
            if (i12 != size) {
                list.subList(i12, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!eVar.isInRange(iIntValue2)) {
                    ub2 = (UB) storeUnknownEnum(obj, i11, iIntValue2, ub2, o1Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    private static Class<?> getGeneratedMessageClass() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            return null;
        }
    }

    static Object getMapDefaultEntry(Class<?> cls, String str) {
        try {
            Field[] declaredFields = Class.forName(cls.getName() + "$" + toCamelCase(str, true) + "DefaultEntryHolder").getDeclaredFields();
            if (declaredFields.length == 1) {
                return s1.getStaticObject(declaredFields[0]);
            }
            throw new IllegalStateException("Unable to look up map field default entry holder class for " + str + " in " + cls.getName());
        } catch (Throwable th2) {
            throw new RuntimeException(th2);
        }
    }

    private static o1 getUnknownFieldSetSchema() {
        try {
            Class<?> unknownFieldSetSchemaClass = getUnknownFieldSetSchemaClass();
            if (unknownFieldSetSchemaClass == null) {
                return null;
            }
            return (o1) unknownFieldSetSchemaClass.getConstructor(null).newInstance(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> getUnknownFieldSetSchemaClass() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    static <T, FT extends t.c> void mergeExtensions(p pVar, T t11, T t12) {
        t extensions = pVar.getExtensions(t12);
        if (extensions.isEmpty()) {
            return;
        }
        pVar.getMutableExtensions(t11).mergeFrom(extensions);
    }

    static <T> void mergeMap(n0 n0Var, T t11, T t12, long j11) {
        s1.putObject(t11, j11, n0Var.mergeFrom(s1.getObject(t11, j11), s1.getObject(t12, j11)));
    }

    static <T, UT, UB> void mergeUnknownFields(o1 o1Var, T t11, T t12) {
        o1Var.setToMessage(t11, o1Var.merge(o1Var.getFromMessage(t11), o1Var.getFromMessage(t12)));
    }

    public static void requireGeneratedMessage(Class<?> cls) {
        Class<?> cls2;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = GENERATED_MESSAGE_CLASS) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
        }
    }

    static boolean safeEquals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean shouldUseTableSwitch(int i11, int i12, int i13) {
        if (i12 < 40) {
            return true;
        }
        long j11 = ((long) i12) - ((long) i11);
        long j12 = i13;
        return j11 + 10 <= ((2 * j12) + 3) + ((j12 + 3) * 3);
    }

    public static boolean shouldUseTableSwitch(s[] sVarArr) {
        if (sVarArr.length == 0) {
            return false;
        }
        return shouldUseTableSwitch(sVarArr[0].getFieldNumber(), sVarArr[sVarArr.length - 1].getFieldNumber(), sVarArr.length);
    }

    static <UT, UB> UB storeUnknownEnum(Object obj, int i11, int i12, UB ub2, o1 o1Var) {
        if (ub2 == null) {
            ub2 = (UB) o1Var.getBuilderFromMessage(obj);
        }
        o1Var.addVarint(ub2, i11, i12);
        return ub2;
    }

    static String toCamelCase(String str, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if ('a' > cCharAt || cCharAt > 'z') {
                if ('A' > cCharAt || cCharAt > 'Z') {
                    if ('0' <= cCharAt && cCharAt <= '9') {
                        sb2.append(cCharAt);
                    }
                    z10 = true;
                } else if (i11 != 0 || z10) {
                    sb2.append(cCharAt);
                } else {
                    sb2.append((char) (cCharAt + ' '));
                }
            } else if (z10) {
                sb2.append((char) (cCharAt - ' '));
            } else {
                sb2.append(cCharAt);
            }
            z10 = false;
        }
        return sb2.toString();
    }

    public static o1 unknownFieldSetFullSchema() {
        return UNKNOWN_FIELD_SET_FULL_SCHEMA;
    }

    public static o1 unknownFieldSetLiteSchema() {
        return UNKNOWN_FIELD_SET_LITE_SCHEMA;
    }

    public static void writeBool(int i11, boolean z10, Writer writer) throws IOException {
        if (z10) {
            writer.writeBool(i11, true);
        }
    }

    public static void writeBoolList(int i11, List<Boolean> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeBoolList(i11, list, z10);
    }

    public static void writeBytes(int i11, ByteString byteString, Writer writer) throws IOException {
        if (byteString == null || byteString.isEmpty()) {
            return;
        }
        writer.writeBytes(i11, byteString);
    }

    public static void writeBytesList(int i11, List<ByteString> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeBytesList(i11, list);
    }

    public static void writeDouble(int i11, double d11, Writer writer) throws IOException {
        if (Double.doubleToRawLongBits(d11) != 0) {
            writer.writeDouble(i11, d11);
        }
    }

    public static void writeDoubleList(int i11, List<Double> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeDoubleList(i11, list, z10);
    }

    public static void writeEnum(int i11, int i12, Writer writer) throws IOException {
        if (i12 != 0) {
            writer.writeEnum(i11, i12);
        }
    }

    public static void writeEnumList(int i11, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeEnumList(i11, list, z10);
    }

    public static void writeFixed32(int i11, int i12, Writer writer) throws IOException {
        if (i12 != 0) {
            writer.writeFixed32(i11, i12);
        }
    }

    public static void writeFixed32List(int i11, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFixed32List(i11, list, z10);
    }

    public static void writeFixed64(int i11, long j11, Writer writer) throws IOException {
        if (j11 != 0) {
            writer.writeFixed64(i11, j11);
        }
    }

    public static void writeFixed64List(int i11, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFixed64List(i11, list, z10);
    }

    public static void writeFloat(int i11, float f11, Writer writer) throws IOException {
        if (Float.floatToRawIntBits(f11) != 0) {
            writer.writeFloat(i11, f11);
        }
    }

    public static void writeFloatList(int i11, List<Float> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFloatList(i11, list, z10);
    }

    public static void writeGroupList(int i11, List<?> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeGroupList(i11, list);
    }

    public static void writeGroupList(int i11, List<?> list, Writer writer, i1 i1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeGroupList(i11, list, i1Var);
    }

    public static void writeInt32(int i11, int i12, Writer writer) throws IOException {
        if (i12 != 0) {
            writer.writeInt32(i11, i12);
        }
    }

    public static void writeInt32List(int i11, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeInt32List(i11, list, z10);
    }

    public static void writeInt64(int i11, long j11, Writer writer) throws IOException {
        if (j11 != 0) {
            writer.writeInt64(i11, j11);
        }
    }

    public static void writeInt64List(int i11, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeInt64List(i11, list, z10);
    }

    public static void writeLazyFieldList(int i11, List<?> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            ((g0) it.next()).writeTo(writer, i11);
        }
    }

    public static void writeMessage(int i11, Object obj, Writer writer) throws IOException {
        if (obj != null) {
            writer.writeMessage(i11, obj);
        }
    }

    public static void writeMessageList(int i11, List<?> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeMessageList(i11, list);
    }

    public static void writeMessageList(int i11, List<?> list, Writer writer, i1 i1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeMessageList(i11, list, i1Var);
    }

    public static void writeSFixed32(int i11, int i12, Writer writer) throws IOException {
        if (i12 != 0) {
            writer.writeSFixed32(i11, i12);
        }
    }

    public static void writeSFixed32List(int i11, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSFixed32List(i11, list, z10);
    }

    public static void writeSFixed64(int i11, long j11, Writer writer) throws IOException {
        if (j11 != 0) {
            writer.writeSFixed64(i11, j11);
        }
    }

    public static void writeSFixed64List(int i11, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSFixed64List(i11, list, z10);
    }

    public static void writeSInt32(int i11, int i12, Writer writer) throws IOException {
        if (i12 != 0) {
            writer.writeSInt32(i11, i12);
        }
    }

    public static void writeSInt32List(int i11, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSInt32List(i11, list, z10);
    }

    public static void writeSInt64(int i11, long j11, Writer writer) throws IOException {
        if (j11 != 0) {
            writer.writeSInt64(i11, j11);
        }
    }

    public static void writeSInt64List(int i11, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSInt64List(i11, list, z10);
    }

    public static void writeString(int i11, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writeStringInternal(i11, (String) obj, writer);
        } else {
            writeBytes(i11, (ByteString) obj, writer);
        }
    }

    private static void writeStringInternal(int i11, String str, Writer writer) throws IOException {
        if (str == null || str.isEmpty()) {
            return;
        }
        writer.writeString(i11, str);
    }

    public static void writeStringList(int i11, List<String> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeStringList(i11, list);
    }

    public static void writeUInt32(int i11, int i12, Writer writer) throws IOException {
        if (i12 != 0) {
            writer.writeUInt32(i11, i12);
        }
    }

    public static void writeUInt32List(int i11, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeUInt32List(i11, list, z10);
    }

    public static void writeUInt64(int i11, long j11, Writer writer) throws IOException {
        if (j11 != 0) {
            writer.writeUInt64(i11, j11);
        }
    }

    public static void writeUInt64List(int i11, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeUInt64List(i11, list, z10);
    }
}
