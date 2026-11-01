package com.google.protobuf;

import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
class o0 implements n0 {
    o0() {
    }

    private static <K, V> int getSerializedSizeLite(int i11, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        m0 m0Var = (m0) obj2;
        int iComputeMessageSize = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapFieldLite.entrySet()) {
            iComputeMessageSize += m0Var.computeMessageSize(i11, entry.getKey(), entry.getValue());
        }
        return iComputeMessageSize;
    }

    private static <K, V> MapFieldLite<K, V> mergeFromLite(Object obj, Object obj2) {
        MapFieldLite<K, V> mapFieldLiteMutableCopy = (MapFieldLite) obj;
        MapFieldLite<K, V> mapFieldLite = (MapFieldLite) obj2;
        if (!mapFieldLite.isEmpty()) {
            if (!mapFieldLiteMutableCopy.isMutable()) {
                mapFieldLiteMutableCopy = mapFieldLiteMutableCopy.mutableCopy();
            }
            mapFieldLiteMutableCopy.mergeFrom(mapFieldLite);
        }
        return mapFieldLiteMutableCopy;
    }

    @Override // com.google.protobuf.n0
    public Map<?, ?> forMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.google.protobuf.n0
    public m0.b forMapMetadata(Object obj) {
        return ((m0) obj).getMetadata();
    }

    @Override // com.google.protobuf.n0
    public Map<?, ?> forMutableMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.google.protobuf.n0
    public int getSerializedSize(int i11, Object obj, Object obj2) {
        return getSerializedSizeLite(i11, obj, obj2);
    }

    @Override // com.google.protobuf.n0
    public boolean isImmutable(Object obj) {
        return !((MapFieldLite) obj).isMutable();
    }

    @Override // com.google.protobuf.n0
    public Object mergeFrom(Object obj, Object obj2) {
        return mergeFromLite(obj, obj2);
    }

    @Override // com.google.protobuf.n0
    public Object newMapField(Object obj) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    @Override // com.google.protobuf.n0
    public Object toImmutable(Object obj) {
        ((MapFieldLite) obj).makeImmutable();
        return obj;
    }
}
