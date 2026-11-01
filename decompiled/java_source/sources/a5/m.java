package a5;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class m implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f292a = new m();

    @Override // z4.b2
    public int b() {
        return 14;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        if (aVar.f78831f.q0() == 8) {
            aVar.f78831f.c0(16);
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        aVar.d0(jSONArray);
        int i11 = 0;
        if (type == AtomicIntegerArray.class) {
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(jSONArray.size());
            while (i11 < jSONArray.size()) {
                atomicIntegerArray.set(i11, jSONArray.getInteger(i11).intValue());
                i11++;
            }
            return atomicIntegerArray;
        }
        AtomicLongArray atomicLongArray = new AtomicLongArray(jSONArray.size());
        while (i11 < jSONArray.size()) {
            atomicLongArray.set(i11, jSONArray.getLong(i11).longValue());
            i11++;
        }
        return atomicLongArray;
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj instanceof AtomicInteger) {
            j1Var.h0(((AtomicInteger) obj).get());
            return;
        }
        if (obj instanceof AtomicLong) {
            j1Var.l0(((AtomicLong) obj).get());
            return;
        }
        if (obj instanceof AtomicBoolean) {
            j1Var.append(((AtomicBoolean) obj).get() ? "true" : "false");
            return;
        }
        if (obj == null) {
            j1Var.p0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int i12 = 0;
        if (obj instanceof AtomicIntegerArray) {
            AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
            int length = atomicIntegerArray.length();
            j1Var.write(91);
            while (i12 < length) {
                int i13 = atomicIntegerArray.get(i12);
                if (i12 != 0) {
                    j1Var.write(44);
                }
                j1Var.h0(i13);
                i12++;
            }
            j1Var.write(93);
            return;
        }
        AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
        int length2 = atomicLongArray.length();
        j1Var.write(91);
        while (i12 < length2) {
            long j11 = atomicLongArray.get(i12);
            if (i12 != 0) {
                j1Var.write(44);
            }
            j1Var.l0(j11);
            i12++;
        }
        j1Var.write(93);
    }
}
