package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class JsonNamesMapKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final u.a f68277a = new u.a();

    public static final Map a(kotlinx.serialization.descriptors.f fVar) {
        String[] strArrNames;
        Intrinsics.h(fVar, "<this>");
        int iE = fVar.e();
        Map mapA = null;
        for (int i11 = 0; i11 < iE; i11++) {
            List listG = fVar.g(i11);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listG) {
                if (obj instanceof kotlinx.serialization.json.q) {
                    arrayList.add(obj);
                }
            }
            kotlinx.serialization.json.q qVar = (kotlinx.serialization.json.q) CollectionsKt.G0(arrayList);
            if (qVar != null && (strArrNames = qVar.names()) != null) {
                for (String str : strArrNames) {
                    if (mapA == null) {
                        mapA = t.a(fVar.e());
                    }
                    Intrinsics.e(mapA);
                    b(mapA, fVar, str, i11);
                }
            }
        }
        return mapA == null ? MapsKt.h() : mapA;
    }

    private static final void b(Map map, kotlinx.serialization.descriptors.f fVar, String str, int i11) {
        if (!map.containsKey(str)) {
            map.put(str, Integer.valueOf(i11));
            return;
        }
        throw new JsonException("The suggested name '" + str + "' for property " + fVar.f(i11) + " is already one of the names for property " + fVar.f(((Number) MapsKt.i(map, str)).intValue()) + " in " + fVar);
    }

    public static final u.a c() {
        return f68277a;
    }

    public static final int d(kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.json.a json, String name) {
        Intrinsics.h(fVar, "<this>");
        Intrinsics.h(json, "json");
        Intrinsics.h(name, "name");
        int iC = fVar.c(name);
        if (iC != -3 || !json.e().j()) {
            return iC;
        }
        Integer num = (Integer) ((Map) kotlinx.serialization.json.w.a(json).b(fVar, f68277a, new JsonNamesMapKt$getJsonNameIndex$alternativeNamesMap$1(fVar))).get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    public static final int e(kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.json.a json, String name, String suffix) {
        Intrinsics.h(fVar, "<this>");
        Intrinsics.h(json, "json");
        Intrinsics.h(name, "name");
        Intrinsics.h(suffix, "suffix");
        int iD = d(fVar, json, name);
        if (iD != -3) {
            return iD;
        }
        throw new SerializationException(fVar.i() + " does not contain element with name '" + name + '\'' + suffix);
    }

    public static /* synthetic */ int f(kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.json.a aVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        return e(fVar, aVar, str, str2);
    }
}
