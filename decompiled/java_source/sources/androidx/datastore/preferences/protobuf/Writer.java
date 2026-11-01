package androidx.datastore.preferences.protobuf;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
interface Writer {

    public enum FieldOrder {
        ASCENDING,
        DESCENDING
    }

    void a(int i11, List list, b1 b1Var);

    void b(int i11, ByteString byteString);

    void c(int i11, Object obj, b1 b1Var);

    void d(int i11, h0.a aVar, Map map);

    void e(int i11, Object obj, b1 b1Var);

    void f(int i11, List list, b1 b1Var);

    FieldOrder fieldOrder();

    void writeBool(int i11, boolean z10);

    void writeBoolList(int i11, List list, boolean z10);

    void writeBytesList(int i11, List list);

    void writeDouble(int i11, double d11);

    void writeDoubleList(int i11, List list, boolean z10);

    void writeEndGroup(int i11);

    void writeEnum(int i11, int i12);

    void writeEnumList(int i11, List list, boolean z10);

    void writeFixed32(int i11, int i12);

    void writeFixed32List(int i11, List list, boolean z10);

    void writeFixed64(int i11, long j11);

    void writeFixed64List(int i11, List list, boolean z10);

    void writeFloat(int i11, float f11);

    void writeFloatList(int i11, List list, boolean z10);

    void writeInt32(int i11, int i12);

    void writeInt32List(int i11, List list, boolean z10);

    void writeInt64(int i11, long j11);

    void writeInt64List(int i11, List list, boolean z10);

    void writeMessageSetItem(int i11, Object obj);

    void writeSFixed32(int i11, int i12);

    void writeSFixed32List(int i11, List list, boolean z10);

    void writeSFixed64(int i11, long j11);

    void writeSFixed64List(int i11, List list, boolean z10);

    void writeSInt32(int i11, int i12);

    void writeSInt32List(int i11, List list, boolean z10);

    void writeSInt64(int i11, long j11);

    void writeSInt64List(int i11, List list, boolean z10);

    void writeStartGroup(int i11);

    void writeString(int i11, String str);

    void writeStringList(int i11, List list);

    void writeUInt32(int i11, int i12);

    void writeUInt32List(int i11, List list, boolean z10);

    void writeUInt64(int i11, long j11);

    void writeUInt64List(int i11, List list, boolean z10);
}
