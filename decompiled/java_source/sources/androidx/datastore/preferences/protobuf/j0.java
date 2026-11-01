package androidx.datastore.preferences.protobuf;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class j0 implements i0 {
    j0() {
    }

    private static int a(int i11, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        h0 h0Var = (h0) obj2;
        int iA = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry entry : mapFieldLite.entrySet()) {
            iA += h0Var.a(i11, entry.getKey(), entry.getValue());
        }
        return iA;
    }

    private static MapFieldLite b(Object obj, Object obj2) {
        MapFieldLite mapFieldLiteMutableCopy = (MapFieldLite) obj;
        MapFieldLite mapFieldLite = (MapFieldLite) obj2;
        if (!mapFieldLite.isEmpty()) {
            if (!mapFieldLiteMutableCopy.isMutable()) {
                mapFieldLiteMutableCopy = mapFieldLiteMutableCopy.mutableCopy();
            }
            mapFieldLiteMutableCopy.mergeFrom(mapFieldLite);
        }
        return mapFieldLiteMutableCopy;
    }

    @Override // androidx.datastore.preferences.protobuf.i0
    public Map forMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // androidx.datastore.preferences.protobuf.i0
    public h0.a forMapMetadata(Object obj) {
        return ((h0) obj).c();
    }

    @Override // androidx.datastore.preferences.protobuf.i0
    public Map forMutableMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // androidx.datastore.preferences.protobuf.i0
    public int getSerializedSize(int i11, Object obj, Object obj2) {
        return a(i11, obj, obj2);
    }

    @Override // androidx.datastore.preferences.protobuf.i0
    public boolean isImmutable(Object obj) {
        return !((MapFieldLite) obj).isMutable();
    }

    @Override // androidx.datastore.preferences.protobuf.i0
    public Object mergeFrom(Object obj, Object obj2) {
        return b(obj, obj2);
    }

    @Override // androidx.datastore.preferences.protobuf.i0
    public Object newMapField(Object obj) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    @Override // androidx.datastore.preferences.protobuf.i0
    public Object toImmutable(Object obj) {
        ((MapFieldLite) obj).makeImmutable();
        return obj;
    }
}
