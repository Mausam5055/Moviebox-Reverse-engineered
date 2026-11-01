package com.google.protobuf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class t {
    private static final int DEFAULT_FIELD_MAP_ARRAY_SIZE = 16;
    private static final t DEFAULT_INSTANCE = new t(true);
    private final l1 fields;
    private boolean hasLazyField;
    private boolean isImmutable;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$JavaType;

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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat.JavaType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$JavaType = iArr2;
            try {
                iArr2[WireFormat.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    static final class b {
        private l1 fields;
        private boolean hasLazyField;
        private boolean hasNestedBuilders;
        private boolean isMutable;

        private b() {
            this(l1.newFieldMap(16));
        }

        private b(l1 l1Var) {
            this.fields = l1Var;
            this.isMutable = true;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private t buildImpl(boolean z10) {
            if (this.fields.isEmpty()) {
                return t.emptySet();
            }
            this.isMutable = false;
            l1 l1VarCloneAllFieldsMap = this.fields;
            if (this.hasNestedBuilders) {
                l1VarCloneAllFieldsMap = t.cloneAllFieldsMap(l1VarCloneAllFieldsMap, false);
                replaceBuilders(l1VarCloneAllFieldsMap, z10);
            }
            t tVar = new t(l1VarCloneAllFieldsMap, null);
            tVar.hasLazyField = this.hasLazyField;
            return tVar;
        }

        private void ensureIsMutable() {
            if (this.isMutable) {
                return;
            }
            this.fields = t.cloneAllFieldsMap(this.fields, true);
            this.isMutable = true;
        }

        public static <T extends c> b fromFieldSet(t tVar) {
            b bVar = new b(t.cloneAllFieldsMap(tVar.fields, true));
            bVar.hasLazyField = tVar.hasLazyField;
            return bVar;
        }

        private void mergeFromField(Map.Entry<c, Object> entry) {
            c key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof f0) {
                value = ((f0) value).getValue();
            }
            if (key.isRepeated()) {
                List arrayList = (List) getFieldAllowBuilders(key);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.fields.put((Comparable<Object>) key, (Object) arrayList);
                }
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    arrayList.add(t.cloneIfMutable(it.next()));
                }
                return;
            }
            if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
                this.fields.put((Comparable<Object>) key, t.cloneIfMutable(value));
                return;
            }
            Object fieldAllowBuilders = getFieldAllowBuilders(key);
            if (fieldAllowBuilders == null) {
                this.fields.put((Comparable<Object>) key, t.cloneIfMutable(value));
            } else if (fieldAllowBuilders instanceof s0.a) {
                key.internalMergeFrom((s0.a) fieldAllowBuilders, (s0) value);
            } else {
                this.fields.put((Comparable<Object>) key, (Object) key.internalMergeFrom(((s0) fieldAllowBuilders).toBuilder(), (s0) value).build());
            }
        }

        private static Object replaceBuilder(Object obj, boolean z10) {
            if (!(obj instanceof s0.a)) {
                return obj;
            }
            s0.a aVar = (s0.a) obj;
            return z10 ? aVar.buildPartial() : aVar.build();
        }

        private static <T extends c> Object replaceBuilders(T t11, Object obj, boolean z10) {
            if (obj == null || t11.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
                return obj;
            }
            if (!t11.isRepeated()) {
                return replaceBuilder(obj, z10);
            }
            if (!(obj instanceof List)) {
                throw new IllegalStateException("Repeated field should contains a List but actually contains type: " + obj.getClass());
            }
            List arrayList = (List) obj;
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                Object obj2 = arrayList.get(i11);
                Object objReplaceBuilder = replaceBuilder(obj2, z10);
                if (objReplaceBuilder != obj2) {
                    if (arrayList == obj) {
                        arrayList = new ArrayList(arrayList);
                    }
                    arrayList.set(i11, objReplaceBuilder);
                }
            }
            return arrayList;
        }

        private static <T extends c> void replaceBuilders(l1 l1Var, boolean z10) {
            for (int i11 = 0; i11 < l1Var.getNumArrayEntries(); i11++) {
                replaceBuilders(l1Var.getArrayEntryAt(i11), z10);
            }
            Iterator<Map.Entry<Comparable<Object>, Object>> it = l1Var.getOverflowEntries().iterator();
            while (it.hasNext()) {
                replaceBuilders(it.next(), z10);
            }
        }

        private static <T extends c> void replaceBuilders(Map.Entry<T, Object> entry, boolean z10) {
            entry.setValue(replaceBuilders(entry.getKey(), entry.getValue(), z10));
        }

        private void verifyType(c cVar, Object obj) {
            if (t.isValidType(cVar.getLiteType(), obj)) {
                return;
            }
            if (cVar.getLiteType().getJavaType() != WireFormat.JavaType.MESSAGE || !(obj instanceof s0.a)) {
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(cVar.getNumber()), cVar.getLiteType().getJavaType(), obj.getClass().getName()));
            }
        }

        public void addRepeatedField(c cVar, Object obj) {
            List arrayList;
            ensureIsMutable();
            if (!cVar.isRepeated()) {
                throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
            }
            this.hasNestedBuilders = this.hasNestedBuilders || (obj instanceof s0.a);
            verifyType(cVar, obj);
            Object fieldAllowBuilders = getFieldAllowBuilders(cVar);
            if (fieldAllowBuilders == null) {
                arrayList = new ArrayList();
                this.fields.put((Comparable<Object>) cVar, (Object) arrayList);
            } else {
                arrayList = (List) fieldAllowBuilders;
            }
            arrayList.add(obj);
        }

        public t build() {
            return buildImpl(false);
        }

        public t buildPartial() {
            return buildImpl(true);
        }

        public void clearField(c cVar) {
            ensureIsMutable();
            this.fields.remove(cVar);
            if (this.fields.isEmpty()) {
                this.hasLazyField = false;
            }
        }

        public Map<c, Object> getAllFields() {
            if (!this.hasLazyField) {
                return this.fields.isImmutable() ? this.fields : Collections.unmodifiableMap(this.fields);
            }
            l1 l1VarCloneAllFieldsMap = t.cloneAllFieldsMap(this.fields, false);
            if (this.fields.isImmutable()) {
                l1VarCloneAllFieldsMap.makeImmutable();
            } else {
                replaceBuilders(l1VarCloneAllFieldsMap, true);
            }
            return l1VarCloneAllFieldsMap;
        }

        public Object getField(c cVar) {
            return replaceBuilders(cVar, getFieldAllowBuilders(cVar), true);
        }

        Object getFieldAllowBuilders(c cVar) {
            Object obj = this.fields.get(cVar);
            return obj instanceof f0 ? ((f0) obj).getValue() : obj;
        }

        public Object getRepeatedField(c cVar, int i11) {
            if (this.hasNestedBuilders) {
                ensureIsMutable();
            }
            return replaceBuilder(getRepeatedFieldAllowBuilders(cVar, i11), true);
        }

        Object getRepeatedFieldAllowBuilders(c cVar, int i11) {
            if (!cVar.isRepeated()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            Object fieldAllowBuilders = getFieldAllowBuilders(cVar);
            if (fieldAllowBuilders != null) {
                return ((List) fieldAllowBuilders).get(i11);
            }
            throw new IndexOutOfBoundsException();
        }

        public int getRepeatedFieldCount(c cVar) {
            if (!cVar.isRepeated()) {
                throw new IllegalArgumentException("getRepeatedFieldCount() can only be called on repeated fields.");
            }
            Object fieldAllowBuilders = getFieldAllowBuilders(cVar);
            if (fieldAllowBuilders == null) {
                return 0;
            }
            return ((List) fieldAllowBuilders).size();
        }

        public boolean hasField(c cVar) {
            if (cVar.isRepeated()) {
                throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
            }
            return this.fields.get(cVar) != null;
        }

        public boolean isInitialized() {
            for (int i11 = 0; i11 < this.fields.getNumArrayEntries(); i11++) {
                if (!t.isInitialized(this.fields.getArrayEntryAt(i11))) {
                    return false;
                }
            }
            Iterator<Map.Entry<Comparable<Object>, Object>> it = this.fields.getOverflowEntries().iterator();
            while (it.hasNext()) {
                if (!t.isInitialized(it.next())) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void mergeFrom(t tVar) {
            ensureIsMutable();
            for (int i11 = 0; i11 < tVar.fields.getNumArrayEntries(); i11++) {
                mergeFromField(tVar.fields.getArrayEntryAt(i11));
            }
            Iterator<Map.Entry<Comparable<Object>, Object>> it = tVar.fields.getOverflowEntries().iterator();
            while (it.hasNext()) {
                mergeFromField(it.next());
            }
        }

        public void setField(c cVar, Object obj) {
            ensureIsMutable();
            if (!cVar.isRepeated()) {
                verifyType(cVar, obj);
            } else {
                if (!(obj instanceof List)) {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                ArrayList arrayList = new ArrayList((List) obj);
                for (Object obj2 : arrayList) {
                    verifyType(cVar, obj2);
                    this.hasNestedBuilders = this.hasNestedBuilders || (obj2 instanceof s0.a);
                }
                obj = arrayList;
            }
            if (obj instanceof f0) {
                this.hasLazyField = true;
            }
            this.hasNestedBuilders = this.hasNestedBuilders || (obj instanceof s0.a);
            this.fields.put((Comparable<Object>) cVar, obj);
        }

        public void setRepeatedField(c cVar, int i11, Object obj) {
            ensureIsMutable();
            if (!cVar.isRepeated()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            this.hasNestedBuilders = this.hasNestedBuilders || (obj instanceof s0.a);
            Object fieldAllowBuilders = getFieldAllowBuilders(cVar);
            if (fieldAllowBuilders == null) {
                throw new IndexOutOfBoundsException();
            }
            verifyType(cVar, obj);
            ((List) fieldAllowBuilders).set(i11, obj);
        }
    }

    public interface c extends Comparable {
        y.d getEnumType();

        WireFormat.JavaType getLiteJavaType();

        WireFormat.FieldType getLiteType();

        int getNumber();

        s0.a internalMergeFrom(s0.a aVar, s0 s0Var);

        boolean isPacked();

        boolean isRepeated();
    }

    private t() {
        this.fields = l1.newFieldMap(16);
    }

    private t(l1 l1Var) {
        this.fields = l1Var;
        makeImmutable();
    }

    /* synthetic */ t(l1 l1Var, a aVar) {
        this(l1Var);
    }

    private t(boolean z10) {
        this(l1.newFieldMap(0));
        makeImmutable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends c> l1 cloneAllFieldsMap(l1 l1Var, boolean z10) {
        l1 l1VarNewFieldMap = l1.newFieldMap(16);
        for (int i11 = 0; i11 < l1Var.getNumArrayEntries(); i11++) {
            cloneFieldEntry(l1VarNewFieldMap, l1Var.getArrayEntryAt(i11), z10);
        }
        Iterator<Map.Entry<Comparable<Object>, Object>> it = l1Var.getOverflowEntries().iterator();
        while (it.hasNext()) {
            cloneFieldEntry(l1VarNewFieldMap, it.next(), z10);
        }
        return l1VarNewFieldMap;
    }

    private static <T extends c> void cloneFieldEntry(Map<T, Object> map, Map.Entry<T, Object> entry, boolean z10) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof f0) {
            map.put(key, ((f0) value).getValue());
        } else if (z10 && (value instanceof List)) {
            map.put(key, new ArrayList((List) value));
        } else {
            map.put(key, value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object cloneIfMutable(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    static int computeElementSize(WireFormat.FieldType fieldType, int i11, Object obj) {
        int iComputeTagSize = CodedOutputStream.computeTagSize(i11);
        if (fieldType == WireFormat.FieldType.GROUP) {
            iComputeTagSize *= 2;
        }
        return iComputeTagSize + computeElementSizeNoTag(fieldType, obj);
    }

    static int computeElementSizeNoTag(WireFormat.FieldType fieldType, Object obj) {
        switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                return CodedOutputStream.computeDoubleSizeNoTag(((Double) obj).doubleValue());
            case 2:
                return CodedOutputStream.computeFloatSizeNoTag(((Float) obj).floatValue());
            case 3:
                return CodedOutputStream.computeInt64SizeNoTag(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.computeUInt64SizeNoTag(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.computeInt32SizeNoTag(((Integer) obj).intValue());
            case 6:
                return CodedOutputStream.computeFixed64SizeNoTag(((Long) obj).longValue());
            case 7:
                return CodedOutputStream.computeFixed32SizeNoTag(((Integer) obj).intValue());
            case 8:
                return CodedOutputStream.computeBoolSizeNoTag(((Boolean) obj).booleanValue());
            case 9:
                return CodedOutputStream.computeGroupSizeNoTag((s0) obj);
            case 10:
                return obj instanceof f0 ? CodedOutputStream.computeLazyFieldSizeNoTag((f0) obj) : CodedOutputStream.computeMessageSizeNoTag((s0) obj);
            case 11:
                return obj instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) obj) : CodedOutputStream.computeStringSizeNoTag((String) obj);
            case 12:
                return obj instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) obj) : CodedOutputStream.computeByteArraySizeNoTag((byte[]) obj);
            case 13:
                return CodedOutputStream.computeUInt32SizeNoTag(((Integer) obj).intValue());
            case 14:
                return CodedOutputStream.computeSFixed32SizeNoTag(((Integer) obj).intValue());
            case 15:
                return CodedOutputStream.computeSFixed64SizeNoTag(((Long) obj).longValue());
            case 16:
                return CodedOutputStream.computeSInt32SizeNoTag(((Integer) obj).intValue());
            case 17:
                return CodedOutputStream.computeSInt64SizeNoTag(((Long) obj).longValue());
            case 18:
                return obj instanceof y.c ? CodedOutputStream.computeEnumSizeNoTag(((y.c) obj).getNumber()) : CodedOutputStream.computeEnumSizeNoTag(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int computeFieldSize(c cVar, Object obj) {
        WireFormat.FieldType liteType = cVar.getLiteType();
        int number = cVar.getNumber();
        if (!cVar.isRepeated()) {
            return computeElementSize(liteType, number, obj);
        }
        List list = (List) obj;
        int iComputeElementSize = 0;
        if (!cVar.isPacked()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iComputeElementSize += computeElementSize(liteType, number, it.next());
            }
            return iComputeElementSize;
        }
        if (list.isEmpty()) {
            return 0;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            iComputeElementSize += computeElementSizeNoTag(liteType, it2.next());
        }
        return CodedOutputStream.computeTagSize(number) + iComputeElementSize + CodedOutputStream.computeUInt32SizeNoTag(iComputeElementSize);
    }

    public static <T extends c> t emptySet() {
        return DEFAULT_INSTANCE;
    }

    private int getMessageSetSerializedSize(Map.Entry<c, Object> entry) {
        c key = entry.getKey();
        Object value = entry.getValue();
        if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE || key.isRepeated() || key.isPacked()) {
            return computeFieldSize(key, value);
        }
        return value instanceof f0 ? CodedOutputStream.computeLazyFieldMessageSetExtensionSize(entry.getKey().getNumber(), (f0) value) : CodedOutputStream.computeMessageSetExtensionSize(entry.getKey().getNumber(), (s0) value);
    }

    static int getWireFormatForFieldType(WireFormat.FieldType fieldType, boolean z10) {
        if (z10) {
            return 2;
        }
        return fieldType.getWireType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends c> boolean isInitialized(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        if (!key.isRepeated()) {
            return isMessageFieldValueInitialized(entry.getValue());
        }
        Iterator it = ((List) entry.getValue()).iterator();
        while (it.hasNext()) {
            if (!isMessageFieldValueInitialized(it.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean isMessageFieldValueInitialized(Object obj) {
        if (obj instanceof t0) {
            return ((t0) obj).isInitialized();
        }
        if (obj instanceof f0) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidType(WireFormat.FieldType fieldType, Object obj) {
        y.checkNotNull(obj);
        switch (a.$SwitchMap$com$google$protobuf$WireFormat$JavaType[fieldType.getJavaType().ordinal()]) {
            case 1:
                return obj instanceof Integer;
            case 2:
                return obj instanceof Long;
            case 3:
                return obj instanceof Float;
            case 4:
                return obj instanceof Double;
            case 5:
                return obj instanceof Boolean;
            case 6:
                return obj instanceof String;
            case 7:
                return (obj instanceof ByteString) || (obj instanceof byte[]);
            case 8:
                return (obj instanceof Integer) || (obj instanceof y.c);
            case 9:
                return (obj instanceof s0) || (obj instanceof f0);
            default:
                return false;
        }
    }

    private void mergeFromField(Map.Entry<c, Object> entry) {
        c key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof f0) {
            value = ((f0) value).getValue();
        }
        if (key.isRepeated()) {
            Object field = getField(key);
            if (field == null) {
                field = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) field).add(cloneIfMutable(it.next()));
            }
            this.fields.put((Comparable<Object>) key, field);
            return;
        }
        if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
            this.fields.put((Comparable<Object>) key, cloneIfMutable(value));
            return;
        }
        Object field2 = getField(key);
        if (field2 == null) {
            this.fields.put((Comparable<Object>) key, cloneIfMutable(value));
        } else {
            this.fields.put((Comparable<Object>) key, (Object) key.internalMergeFrom(((s0) field2).toBuilder(), (s0) value).build());
        }
    }

    public static <T extends c> b newBuilder() {
        return new b((a) null);
    }

    public static <T extends c> t newFieldSet() {
        return new t();
    }

    public static Object readPrimitiveField(i iVar, WireFormat.FieldType fieldType, boolean z10) throws IOException {
        return z10 ? WireFormat.readPrimitiveField(iVar, fieldType, WireFormat.Utf8Validation.STRICT) : WireFormat.readPrimitiveField(iVar, fieldType, WireFormat.Utf8Validation.LOOSE);
    }

    private void verifyType(c cVar, Object obj) {
        if (!isValidType(cVar.getLiteType(), obj)) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(cVar.getNumber()), cVar.getLiteType().getJavaType(), obj.getClass().getName()));
        }
    }

    static void writeElement(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, int i11, Object obj) throws IOException {
        if (fieldType == WireFormat.FieldType.GROUP) {
            codedOutputStream.writeGroup(i11, (s0) obj);
        } else {
            codedOutputStream.writeTag(i11, getWireFormatForFieldType(fieldType, false));
            writeElementNoTag(codedOutputStream, fieldType, obj);
        }
    }

    static void writeElementNoTag(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, Object obj) throws IOException {
        switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                codedOutputStream.writeDoubleNoTag(((Double) obj).doubleValue());
                break;
            case 2:
                codedOutputStream.writeFloatNoTag(((Float) obj).floatValue());
                break;
            case 3:
                codedOutputStream.writeInt64NoTag(((Long) obj).longValue());
                break;
            case 4:
                codedOutputStream.writeUInt64NoTag(((Long) obj).longValue());
                break;
            case 5:
                codedOutputStream.writeInt32NoTag(((Integer) obj).intValue());
                break;
            case 6:
                codedOutputStream.writeFixed64NoTag(((Long) obj).longValue());
                break;
            case 7:
                codedOutputStream.writeFixed32NoTag(((Integer) obj).intValue());
                break;
            case 8:
                codedOutputStream.writeBoolNoTag(((Boolean) obj).booleanValue());
                break;
            case 9:
                codedOutputStream.writeGroupNoTag((s0) obj);
                break;
            case 10:
                codedOutputStream.writeMessageNoTag((s0) obj);
                break;
            case 11:
                if (!(obj instanceof ByteString)) {
                    codedOutputStream.writeStringNoTag((String) obj);
                } else {
                    codedOutputStream.writeBytesNoTag((ByteString) obj);
                }
                break;
            case 12:
                if (!(obj instanceof ByteString)) {
                    codedOutputStream.writeByteArrayNoTag((byte[]) obj);
                } else {
                    codedOutputStream.writeBytesNoTag((ByteString) obj);
                }
                break;
            case 13:
                codedOutputStream.writeUInt32NoTag(((Integer) obj).intValue());
                break;
            case 14:
                codedOutputStream.writeSFixed32NoTag(((Integer) obj).intValue());
                break;
            case 15:
                codedOutputStream.writeSFixed64NoTag(((Long) obj).longValue());
                break;
            case 16:
                codedOutputStream.writeSInt32NoTag(((Integer) obj).intValue());
                break;
            case 17:
                codedOutputStream.writeSInt64NoTag(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof y.c)) {
                    codedOutputStream.writeEnumNoTag(((Integer) obj).intValue());
                } else {
                    codedOutputStream.writeEnumNoTag(((y.c) obj).getNumber());
                }
                break;
        }
    }

    public static void writeField(c cVar, Object obj, CodedOutputStream codedOutputStream) throws IOException {
        WireFormat.FieldType liteType = cVar.getLiteType();
        int number = cVar.getNumber();
        if (!cVar.isRepeated()) {
            if (obj instanceof f0) {
                writeElement(codedOutputStream, liteType, number, ((f0) obj).getValue());
                return;
            } else {
                writeElement(codedOutputStream, liteType, number, obj);
                return;
            }
        }
        List list = (List) obj;
        if (!cVar.isPacked()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                writeElement(codedOutputStream, liteType, number, it.next());
            }
        } else {
            if (list.isEmpty()) {
                return;
            }
            codedOutputStream.writeTag(number, 2);
            Iterator it2 = list.iterator();
            int iComputeElementSizeNoTag = 0;
            while (it2.hasNext()) {
                iComputeElementSizeNoTag += computeElementSizeNoTag(liteType, it2.next());
            }
            codedOutputStream.writeUInt32NoTag(iComputeElementSizeNoTag);
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                writeElementNoTag(codedOutputStream, liteType, it3.next());
            }
        }
    }

    private void writeMessageSetTo(Map.Entry<c, Object> entry, CodedOutputStream codedOutputStream) throws IOException {
        c key = entry.getKey();
        if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE || key.isRepeated() || key.isPacked()) {
            writeField(key, entry.getValue(), codedOutputStream);
            return;
        }
        Object value = entry.getValue();
        if (!(value instanceof f0)) {
            codedOutputStream.writeMessageSetExtension(entry.getKey().getNumber(), (s0) value);
        } else {
            codedOutputStream.writeRawMessageSetExtension(entry.getKey().getNumber(), ((f0) value).toByteString());
        }
    }

    public void addRepeatedField(c cVar, Object obj) {
        List arrayList;
        if (!cVar.isRepeated()) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        verifyType(cVar, obj);
        Object field = getField(cVar);
        if (field == null) {
            arrayList = new ArrayList();
            this.fields.put((Comparable<Object>) cVar, (Object) arrayList);
        } else {
            arrayList = (List) field;
        }
        arrayList.add(obj);
    }

    public void clear() {
        this.fields.clear();
        this.hasLazyField = false;
    }

    public void clearField(c cVar) {
        this.fields.remove(cVar);
        if (this.fields.isEmpty()) {
            this.hasLazyField = false;
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public t m293clone() {
        t tVarNewFieldSet = newFieldSet();
        for (int i11 = 0; i11 < this.fields.getNumArrayEntries(); i11++) {
            Map.Entry<Comparable<Object>, Object> arrayEntryAt = this.fields.getArrayEntryAt(i11);
            tVarNewFieldSet.setField((c) arrayEntryAt.getKey(), arrayEntryAt.getValue());
        }
        for (Map.Entry<Comparable<Object>, Object> entry : this.fields.getOverflowEntries()) {
            tVarNewFieldSet.setField((c) entry.getKey(), entry.getValue());
        }
        tVarNewFieldSet.hasLazyField = this.hasLazyField;
        return tVarNewFieldSet;
    }

    Iterator<Map.Entry<c, Object>> descendingIterator() {
        return this.hasLazyField ? new f0.c(this.fields.descendingEntrySet().iterator()) : this.fields.descendingEntrySet().iterator();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            return this.fields.equals(((t) obj).fields);
        }
        return false;
    }

    public Map<c, Object> getAllFields() {
        if (!this.hasLazyField) {
            return this.fields.isImmutable() ? this.fields : Collections.unmodifiableMap(this.fields);
        }
        l1 l1VarCloneAllFieldsMap = cloneAllFieldsMap(this.fields, false);
        if (this.fields.isImmutable()) {
            l1VarCloneAllFieldsMap.makeImmutable();
        }
        return l1VarCloneAllFieldsMap;
    }

    public Object getField(c cVar) {
        Object obj = this.fields.get(cVar);
        return obj instanceof f0 ? ((f0) obj).getValue() : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getMessageSetSerializedSize() {
        int messageSetSerializedSize = 0;
        for (int i11 = 0; i11 < this.fields.getNumArrayEntries(); i11++) {
            messageSetSerializedSize += getMessageSetSerializedSize(this.fields.getArrayEntryAt(i11));
        }
        Iterator<Map.Entry<Comparable<Object>, Object>> it = this.fields.getOverflowEntries().iterator();
        while (it.hasNext()) {
            messageSetSerializedSize += getMessageSetSerializedSize(it.next());
        }
        return messageSetSerializedSize;
    }

    public Object getRepeatedField(c cVar, int i11) {
        if (!cVar.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object field = getField(cVar);
        if (field != null) {
            return ((List) field).get(i11);
        }
        throw new IndexOutOfBoundsException();
    }

    public int getRepeatedFieldCount(c cVar) {
        if (!cVar.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object field = getField(cVar);
        if (field == null) {
            return 0;
        }
        return ((List) field).size();
    }

    public int getSerializedSize() {
        int iComputeFieldSize = 0;
        for (int i11 = 0; i11 < this.fields.getNumArrayEntries(); i11++) {
            Map.Entry<Comparable<Object>, Object> arrayEntryAt = this.fields.getArrayEntryAt(i11);
            iComputeFieldSize += computeFieldSize((c) arrayEntryAt.getKey(), arrayEntryAt.getValue());
        }
        for (Map.Entry<Comparable<Object>, Object> entry : this.fields.getOverflowEntries()) {
            iComputeFieldSize += computeFieldSize((c) entry.getKey(), entry.getValue());
        }
        return iComputeFieldSize;
    }

    public boolean hasField(c cVar) {
        if (cVar.isRepeated()) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return this.fields.get(cVar) != null;
    }

    public int hashCode() {
        return this.fields.hashCode();
    }

    boolean isEmpty() {
        return this.fields.isEmpty();
    }

    public boolean isImmutable() {
        return this.isImmutable;
    }

    public boolean isInitialized() {
        for (int i11 = 0; i11 < this.fields.getNumArrayEntries(); i11++) {
            if (!isInitialized(this.fields.getArrayEntryAt(i11))) {
                return false;
            }
        }
        Iterator<Map.Entry<Comparable<Object>, Object>> it = this.fields.getOverflowEntries().iterator();
        while (it.hasNext()) {
            if (!isInitialized(it.next())) {
                return false;
            }
        }
        return true;
    }

    public Iterator<Map.Entry<c, Object>> iterator() {
        return this.hasLazyField ? new f0.c(this.fields.entrySet().iterator()) : this.fields.entrySet().iterator();
    }

    public void makeImmutable() {
        if (this.isImmutable) {
            return;
        }
        for (int i11 = 0; i11 < this.fields.getNumArrayEntries(); i11++) {
            Map.Entry<Comparable<Object>, Object> arrayEntryAt = this.fields.getArrayEntryAt(i11);
            if (arrayEntryAt.getValue() instanceof GeneratedMessageLite) {
                ((GeneratedMessageLite) arrayEntryAt.getValue()).makeImmutable();
            }
        }
        this.fields.makeImmutable();
        this.isImmutable = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void mergeFrom(t tVar) {
        for (int i11 = 0; i11 < tVar.fields.getNumArrayEntries(); i11++) {
            mergeFromField(tVar.fields.getArrayEntryAt(i11));
        }
        Iterator<Map.Entry<Comparable<Object>, Object>> it = tVar.fields.getOverflowEntries().iterator();
        while (it.hasNext()) {
            mergeFromField(it.next());
        }
    }

    public void setField(c cVar, Object obj) {
        if (!cVar.isRepeated()) {
            verifyType(cVar, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                verifyType(cVar, it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof f0) {
            this.hasLazyField = true;
        }
        this.fields.put((Comparable<Object>) cVar, obj);
    }

    public void setRepeatedField(c cVar, int i11, Object obj) {
        if (!cVar.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object field = getField(cVar);
        if (field == null) {
            throw new IndexOutOfBoundsException();
        }
        verifyType(cVar, obj);
        ((List) field).set(i11, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeMessageSetTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i11 = 0; i11 < this.fields.getNumArrayEntries(); i11++) {
            writeMessageSetTo(this.fields.getArrayEntryAt(i11), codedOutputStream);
        }
        Iterator<Map.Entry<Comparable<Object>, Object>> it = this.fields.getOverflowEntries().iterator();
        while (it.hasNext()) {
            writeMessageSetTo(it.next(), codedOutputStream);
        }
    }

    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i11 = 0; i11 < this.fields.getNumArrayEntries(); i11++) {
            Map.Entry<Comparable<Object>, Object> arrayEntryAt = this.fields.getArrayEntryAt(i11);
            writeField((c) arrayEntryAt.getKey(), arrayEntryAt.getValue(), codedOutputStream);
        }
        for (Map.Entry<Comparable<Object>, Object> entry : this.fields.getOverflowEntries()) {
            writeField((c) entry.getKey(), entry.getValue(), codedOutputStream);
        }
    }
}
