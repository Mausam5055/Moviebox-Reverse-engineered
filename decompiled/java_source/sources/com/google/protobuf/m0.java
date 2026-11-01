package com.google.protobuf;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class m0 {
    private static final int KEY_FIELD_NUMBER = 1;
    private static final int VALUE_FIELD_NUMBER = 2;
    private final Object key;
    private final b metadata;
    private final Object value;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static class b {
        public final Object defaultKey;
        public final Object defaultValue;
        public final WireFormat.FieldType keyType;
        public final WireFormat.FieldType valueType;

        public b(WireFormat.FieldType fieldType, Object obj, WireFormat.FieldType fieldType2, Object obj2) {
            this.keyType = fieldType;
            this.defaultKey = obj;
            this.valueType = fieldType2;
            this.defaultValue = obj2;
        }
    }

    private m0(WireFormat.FieldType fieldType, Object obj, WireFormat.FieldType fieldType2, Object obj2) {
        this.metadata = new b(fieldType, obj, fieldType2, obj2);
        this.key = obj;
        this.value = obj2;
    }

    private m0(b bVar, Object obj, Object obj2) {
        this.metadata = bVar;
        this.key = obj;
        this.value = obj2;
    }

    static <K, V> int computeSerializedSize(b bVar, K k11, V v11) {
        return t.computeElementSize(bVar.keyType, 1, k11) + t.computeElementSize(bVar.valueType, 2, v11);
    }

    public static <K, V> m0 newDefaultInstance(WireFormat.FieldType fieldType, K k11, WireFormat.FieldType fieldType2, V v11) {
        return new m0(fieldType, k11, fieldType2, v11);
    }

    static <K, V> Map.Entry<K, V> parseEntry(i iVar, b bVar, o oVar) throws IOException {
        Object field = bVar.defaultKey;
        Object field2 = bVar.defaultValue;
        while (true) {
            int tag = iVar.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == WireFormat.makeTag(1, bVar.keyType.getWireType())) {
                field = parseField(iVar, oVar, bVar.keyType, field);
            } else if (tag == WireFormat.makeTag(2, bVar.valueType.getWireType())) {
                field2 = parseField(iVar, oVar, bVar.valueType, field2);
            } else if (!iVar.skipField(tag)) {
                break;
            }
        }
        return new AbstractMap.SimpleImmutableEntry(field, field2);
    }

    static <T> T parseField(i iVar, o oVar, WireFormat.FieldType fieldType, T t11) throws IOException {
        int i11 = a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()];
        if (i11 == 1) {
            s0.a builder = ((s0) t11).toBuilder();
            iVar.readMessage(builder, oVar);
            return (T) builder.buildPartial();
        }
        if (i11 == 2) {
            return (T) Integer.valueOf(iVar.readEnum());
        }
        if (i11 != 3) {
            return (T) t.readPrimitiveField(iVar, fieldType, true);
        }
        throw new RuntimeException("Groups are not allowed in maps.");
    }

    static <K, V> void writeTo(CodedOutputStream codedOutputStream, b bVar, K k11, V v11) throws IOException {
        t.writeElement(codedOutputStream, bVar.keyType, 1, k11);
        t.writeElement(codedOutputStream, bVar.valueType, 2, v11);
    }

    public int computeMessageSize(int i11, Object obj, Object obj2) {
        return CodedOutputStream.computeTagSize(i11) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSerializedSize(this.metadata, obj, obj2));
    }

    public Object getKey() {
        return this.key;
    }

    b getMetadata() {
        return this.metadata;
    }

    public Object getValue() {
        return this.value;
    }

    public Map.Entry<Object, Object> parseEntry(ByteString byteString, o oVar) throws IOException {
        return parseEntry(byteString.newCodedInput(), this.metadata, oVar);
    }

    public void parseInto(MapFieldLite<Object, Object> mapFieldLite, i iVar, o oVar) throws IOException {
        int iPushLimit = iVar.pushLimit(iVar.readRawVarint32());
        b bVar = this.metadata;
        Object field = bVar.defaultKey;
        Object field2 = bVar.defaultValue;
        while (true) {
            int tag = iVar.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == WireFormat.makeTag(1, this.metadata.keyType.getWireType())) {
                field = parseField(iVar, oVar, this.metadata.keyType, field);
            } else if (tag == WireFormat.makeTag(2, this.metadata.valueType.getWireType())) {
                field2 = parseField(iVar, oVar, this.metadata.valueType, field2);
            } else if (!iVar.skipField(tag)) {
                break;
            }
        }
        iVar.checkLastTagWas(0);
        iVar.popLimit(iPushLimit);
        mapFieldLite.put(field, field2);
    }

    public void serializeTo(CodedOutputStream codedOutputStream, int i11, Object obj, Object obj2) throws IOException {
        codedOutputStream.writeTag(i11, 2);
        codedOutputStream.writeUInt32NoTag(computeSerializedSize(this.metadata, obj, obj2));
        writeTo(codedOutputStream, this.metadata, obj, obj2);
    }
}
