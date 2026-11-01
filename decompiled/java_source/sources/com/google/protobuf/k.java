package com.google.protobuf;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class k implements Writer {
    private final CodedOutputStream output;

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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 5;
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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private k(CodedOutputStream codedOutputStream) {
        CodedOutputStream codedOutputStream2 = (CodedOutputStream) y.checkNotNull(codedOutputStream, "output");
        this.output = codedOutputStream2;
        codedOutputStream2.wrapper = this;
    }

    public static k forCodedOutput(CodedOutputStream codedOutputStream) {
        k kVar = codedOutputStream.wrapper;
        return kVar != null ? kVar : new k(codedOutputStream);
    }

    private <V> void writeDeterministicBooleanMapEntry(int i11, boolean z10, V v11, m0.b bVar) throws IOException {
        this.output.writeTag(i11, 2);
        this.output.writeUInt32NoTag(m0.computeSerializedSize(bVar, Boolean.valueOf(z10), v11));
        m0.writeTo(this.output, bVar, Boolean.valueOf(z10), v11);
    }

    private <V> void writeDeterministicIntegerMap(int i11, m0.b bVar, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = map.keySet().iterator();
        int i12 = 0;
        while (it.hasNext()) {
            iArr[i12] = it.next().intValue();
            i12++;
        }
        Arrays.sort(iArr);
        for (int i13 = 0; i13 < size; i13++) {
            int i14 = iArr[i13];
            V v11 = map.get(Integer.valueOf(i14));
            this.output.writeTag(i11, 2);
            this.output.writeUInt32NoTag(m0.computeSerializedSize(bVar, Integer.valueOf(i14), v11));
            m0.writeTo(this.output, bVar, Integer.valueOf(i14), v11);
        }
    }

    private <V> void writeDeterministicLongMap(int i11, m0.b bVar, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator<Long> it = map.keySet().iterator();
        int i12 = 0;
        while (it.hasNext()) {
            jArr[i12] = it.next().longValue();
            i12++;
        }
        Arrays.sort(jArr);
        for (int i13 = 0; i13 < size; i13++) {
            long j11 = jArr[i13];
            V v11 = map.get(Long.valueOf(j11));
            this.output.writeTag(i11, 2);
            this.output.writeUInt32NoTag(m0.computeSerializedSize(bVar, Long.valueOf(j11), v11));
            m0.writeTo(this.output, bVar, Long.valueOf(j11), v11);
        }
    }

    private <K, V> void writeDeterministicMap(int i11, m0.b bVar, Map<K, V> map) throws IOException {
        switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[bVar.keyType.ordinal()]) {
            case 1:
                V v11 = map.get(Boolean.FALSE);
                if (v11 != null) {
                    writeDeterministicBooleanMapEntry(i11, false, v11, bVar);
                }
                V v12 = map.get(Boolean.TRUE);
                if (v12 != null) {
                    writeDeterministicBooleanMapEntry(i11, true, v12, bVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                writeDeterministicIntegerMap(i11, bVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                writeDeterministicLongMap(i11, bVar, map);
                return;
            case 12:
                writeDeterministicStringMap(i11, bVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + bVar.keyType);
        }
    }

    private <V> void writeDeterministicStringMap(int i11, m0.b bVar, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator<String> it = map.keySet().iterator();
        int i12 = 0;
        while (it.hasNext()) {
            strArr[i12] = it.next();
            i12++;
        }
        Arrays.sort(strArr);
        for (int i13 = 0; i13 < size; i13++) {
            String str = strArr[i13];
            V v11 = map.get(str);
            this.output.writeTag(i11, 2);
            this.output.writeUInt32NoTag(m0.computeSerializedSize(bVar, str, v11));
            m0.writeTo(this.output, bVar, str, v11);
        }
    }

    private void writeLazyString(int i11, Object obj) throws IOException {
        if (obj instanceof String) {
            this.output.writeString(i11, (String) obj);
        } else {
            this.output.writeBytes(i11, (ByteString) obj);
        }
    }

    @Override // com.google.protobuf.Writer
    public Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.ASCENDING;
    }

    public int getTotalBytesWritten() {
        return this.output.getTotalBytesWritten();
    }

    @Override // com.google.protobuf.Writer
    public void writeBool(int i11, boolean z10) throws IOException {
        this.output.writeBool(i11, z10);
    }

    @Override // com.google.protobuf.Writer
    public void writeBoolList(int i11, List<Boolean> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeBool(i11, list.get(i12).booleanValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeBoolSizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeBoolSizeNoTag += CodedOutputStream.computeBoolSizeNoTag(list.get(i13).booleanValue());
        }
        this.output.writeUInt32NoTag(iComputeBoolSizeNoTag);
        while (i12 < list.size()) {
            this.output.writeBoolNoTag(list.get(i12).booleanValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeBytes(int i11, ByteString byteString) throws IOException {
        this.output.writeBytes(i11, byteString);
    }

    @Override // com.google.protobuf.Writer
    public void writeBytesList(int i11, List<ByteString> list) throws IOException {
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.output.writeBytes(i11, list.get(i12));
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeDouble(int i11, double d11) throws IOException {
        this.output.writeDouble(i11, d11);
    }

    @Override // com.google.protobuf.Writer
    public void writeDoubleList(int i11, List<Double> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeDouble(i11, list.get(i12).doubleValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeDoubleSizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeDoubleSizeNoTag += CodedOutputStream.computeDoubleSizeNoTag(list.get(i13).doubleValue());
        }
        this.output.writeUInt32NoTag(iComputeDoubleSizeNoTag);
        while (i12 < list.size()) {
            this.output.writeDoubleNoTag(list.get(i12).doubleValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    @Deprecated
    public void writeEndGroup(int i11) throws IOException {
        this.output.writeTag(i11, 4);
    }

    @Override // com.google.protobuf.Writer
    public void writeEnum(int i11, int i12) throws IOException {
        this.output.writeEnum(i11, i12);
    }

    @Override // com.google.protobuf.Writer
    public void writeEnumList(int i11, List<Integer> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeEnum(i11, list.get(i12).intValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeEnumSizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeEnumSizeNoTag += CodedOutputStream.computeEnumSizeNoTag(list.get(i13).intValue());
        }
        this.output.writeUInt32NoTag(iComputeEnumSizeNoTag);
        while (i12 < list.size()) {
            this.output.writeEnumNoTag(list.get(i12).intValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeFixed32(int i11, int i12) throws IOException {
        this.output.writeFixed32(i11, i12);
    }

    @Override // com.google.protobuf.Writer
    public void writeFixed32List(int i11, List<Integer> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeFixed32(i11, list.get(i12).intValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeFixed32SizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeFixed32SizeNoTag += CodedOutputStream.computeFixed32SizeNoTag(list.get(i13).intValue());
        }
        this.output.writeUInt32NoTag(iComputeFixed32SizeNoTag);
        while (i12 < list.size()) {
            this.output.writeFixed32NoTag(list.get(i12).intValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeFixed64(int i11, long j11) throws IOException {
        this.output.writeFixed64(i11, j11);
    }

    @Override // com.google.protobuf.Writer
    public void writeFixed64List(int i11, List<Long> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeFixed64(i11, list.get(i12).longValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeFixed64SizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeFixed64SizeNoTag += CodedOutputStream.computeFixed64SizeNoTag(list.get(i13).longValue());
        }
        this.output.writeUInt32NoTag(iComputeFixed64SizeNoTag);
        while (i12 < list.size()) {
            this.output.writeFixed64NoTag(list.get(i12).longValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeFloat(int i11, float f11) throws IOException {
        this.output.writeFloat(i11, f11);
    }

    @Override // com.google.protobuf.Writer
    public void writeFloatList(int i11, List<Float> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeFloat(i11, list.get(i12).floatValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeFloatSizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeFloatSizeNoTag += CodedOutputStream.computeFloatSizeNoTag(list.get(i13).floatValue());
        }
        this.output.writeUInt32NoTag(iComputeFloatSizeNoTag);
        while (i12 < list.size()) {
            this.output.writeFloatNoTag(list.get(i12).floatValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    @Deprecated
    public void writeGroup(int i11, Object obj) throws IOException {
        this.output.writeGroup(i11, (s0) obj);
    }

    @Override // com.google.protobuf.Writer
    public void writeGroup(int i11, Object obj, i1 i1Var) throws IOException {
        this.output.writeGroup(i11, (s0) obj, i1Var);
    }

    @Override // com.google.protobuf.Writer
    @Deprecated
    public void writeGroupList(int i11, List<?> list) throws IOException {
        for (int i12 = 0; i12 < list.size(); i12++) {
            writeGroup(i11, list.get(i12));
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeGroupList(int i11, List<?> list, i1 i1Var) throws IOException {
        for (int i12 = 0; i12 < list.size(); i12++) {
            writeGroup(i11, list.get(i12), i1Var);
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeInt32(int i11, int i12) throws IOException {
        this.output.writeInt32(i11, i12);
    }

    @Override // com.google.protobuf.Writer
    public void writeInt32List(int i11, List<Integer> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeInt32(i11, list.get(i12).intValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeInt32SizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(list.get(i13).intValue());
        }
        this.output.writeUInt32NoTag(iComputeInt32SizeNoTag);
        while (i12 < list.size()) {
            this.output.writeInt32NoTag(list.get(i12).intValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeInt64(int i11, long j11) throws IOException {
        this.output.writeInt64(i11, j11);
    }

    @Override // com.google.protobuf.Writer
    public void writeInt64List(int i11, List<Long> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeInt64(i11, list.get(i12).longValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeInt64SizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeInt64SizeNoTag += CodedOutputStream.computeInt64SizeNoTag(list.get(i13).longValue());
        }
        this.output.writeUInt32NoTag(iComputeInt64SizeNoTag);
        while (i12 < list.size()) {
            this.output.writeInt64NoTag(list.get(i12).longValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    public <K, V> void writeMap(int i11, m0.b bVar, Map<K, V> map) throws IOException {
        if (this.output.isSerializationDeterministic()) {
            writeDeterministicMap(i11, bVar, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.output.writeTag(i11, 2);
            this.output.writeUInt32NoTag(m0.computeSerializedSize(bVar, entry.getKey(), entry.getValue()));
            m0.writeTo(this.output, bVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeMessage(int i11, Object obj) throws IOException {
        this.output.writeMessage(i11, (s0) obj);
    }

    @Override // com.google.protobuf.Writer
    public void writeMessage(int i11, Object obj, i1 i1Var) throws IOException {
        this.output.writeMessage(i11, (s0) obj, i1Var);
    }

    @Override // com.google.protobuf.Writer
    public void writeMessageList(int i11, List<?> list) throws IOException {
        for (int i12 = 0; i12 < list.size(); i12++) {
            writeMessage(i11, list.get(i12));
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeMessageList(int i11, List<?> list, i1 i1Var) throws IOException {
        for (int i12 = 0; i12 < list.size(); i12++) {
            writeMessage(i11, list.get(i12), i1Var);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeMessageSetItem(int i11, Object obj) throws IOException {
        if (obj instanceof ByteString) {
            this.output.writeRawMessageSetExtension(i11, (ByteString) obj);
        } else {
            this.output.writeMessageSetExtension(i11, (s0) obj);
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeSFixed32(int i11, int i12) throws IOException {
        this.output.writeSFixed32(i11, i12);
    }

    @Override // com.google.protobuf.Writer
    public void writeSFixed32List(int i11, List<Integer> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeSFixed32(i11, list.get(i12).intValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeSFixed32SizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeSFixed32SizeNoTag += CodedOutputStream.computeSFixed32SizeNoTag(list.get(i13).intValue());
        }
        this.output.writeUInt32NoTag(iComputeSFixed32SizeNoTag);
        while (i12 < list.size()) {
            this.output.writeSFixed32NoTag(list.get(i12).intValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeSFixed64(int i11, long j11) throws IOException {
        this.output.writeSFixed64(i11, j11);
    }

    @Override // com.google.protobuf.Writer
    public void writeSFixed64List(int i11, List<Long> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeSFixed64(i11, list.get(i12).longValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeSFixed64SizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeSFixed64SizeNoTag += CodedOutputStream.computeSFixed64SizeNoTag(list.get(i13).longValue());
        }
        this.output.writeUInt32NoTag(iComputeSFixed64SizeNoTag);
        while (i12 < list.size()) {
            this.output.writeSFixed64NoTag(list.get(i12).longValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeSInt32(int i11, int i12) throws IOException {
        this.output.writeSInt32(i11, i12);
    }

    @Override // com.google.protobuf.Writer
    public void writeSInt32List(int i11, List<Integer> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeSInt32(i11, list.get(i12).intValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeSInt32SizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeSInt32SizeNoTag += CodedOutputStream.computeSInt32SizeNoTag(list.get(i13).intValue());
        }
        this.output.writeUInt32NoTag(iComputeSInt32SizeNoTag);
        while (i12 < list.size()) {
            this.output.writeSInt32NoTag(list.get(i12).intValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeSInt64(int i11, long j11) throws IOException {
        this.output.writeSInt64(i11, j11);
    }

    @Override // com.google.protobuf.Writer
    public void writeSInt64List(int i11, List<Long> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeSInt64(i11, list.get(i12).longValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeSInt64SizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeSInt64SizeNoTag += CodedOutputStream.computeSInt64SizeNoTag(list.get(i13).longValue());
        }
        this.output.writeUInt32NoTag(iComputeSInt64SizeNoTag);
        while (i12 < list.size()) {
            this.output.writeSInt64NoTag(list.get(i12).longValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    @Deprecated
    public void writeStartGroup(int i11) throws IOException {
        this.output.writeTag(i11, 3);
    }

    @Override // com.google.protobuf.Writer
    public void writeString(int i11, String str) throws IOException {
        this.output.writeString(i11, str);
    }

    @Override // com.google.protobuf.Writer
    public void writeStringList(int i11, List<String> list) throws IOException {
        int i12 = 0;
        if (!(list instanceof i0)) {
            while (i12 < list.size()) {
                this.output.writeString(i11, list.get(i12));
                i12++;
            }
        } else {
            i0 i0Var = (i0) list;
            while (i12 < list.size()) {
                writeLazyString(i11, i0Var.getRaw(i12));
                i12++;
            }
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeUInt32(int i11, int i12) throws IOException {
        this.output.writeUInt32(i11, i12);
    }

    @Override // com.google.protobuf.Writer
    public void writeUInt32List(int i11, List<Integer> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeUInt32(i11, list.get(i12).intValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeUInt32SizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(list.get(i13).intValue());
        }
        this.output.writeUInt32NoTag(iComputeUInt32SizeNoTag);
        while (i12 < list.size()) {
            this.output.writeUInt32NoTag(list.get(i12).intValue());
            i12++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeUInt64(int i11, long j11) throws IOException {
        this.output.writeUInt64(i11, j11);
    }

    @Override // com.google.protobuf.Writer
    public void writeUInt64List(int i11, List<Long> list, boolean z10) throws IOException {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.output.writeUInt64(i11, list.get(i12).longValue());
                i12++;
            }
            return;
        }
        this.output.writeTag(i11, 2);
        int iComputeUInt64SizeNoTag = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(list.get(i13).longValue());
        }
        this.output.writeUInt32NoTag(iComputeUInt64SizeNoTag);
        while (i12 < list.size()) {
            this.output.writeUInt64NoTag(list.get(i12).longValue());
            i12++;
        }
    }
}
