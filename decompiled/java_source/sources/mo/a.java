package mo;

import androidx.media3.common.f0;
import androidx.media3.common.i0;
import androidx.media3.common.r;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.r4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    public static final f0 a(i0 i0Var, d mediaTrackGroup) {
        Intrinsics.h(i0Var, "<this>");
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        r4 it = i0Var.a().iterator();
        Intrinsics.g(it, "iterator(...)");
        while (it.hasNext()) {
            i0.a aVar = (i0.a) it.next();
            if (Intrinsics.c(aVar.a().f9972b, mediaTrackGroup.c()) && aVar.a().f9973c == mediaTrackGroup.e()) {
                return aVar.a();
            }
        }
        return null;
    }

    public static final b b(r rVar) {
        Intrinsics.h(rVar, "<this>");
        return new b(rVar.f10147a, rVar.f10148b, rVar.f10150d, rVar.f10151e, rVar.f10154h, rVar.f10155i, rVar.f10156j, rVar.f10157k, rVar.f10168v, rVar.f10169w, rVar.f10170x, rVar.f10171y, rVar.f10172z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final c c(i0 i0Var) {
        Intrinsics.h(i0Var, "<this>");
        if (i0Var.b()) {
            return new c(null, 1, null);
        }
        int size = i0Var.a().size();
        d[] dVarArr = new d[size];
        for (int i11 = 0; i11 < size; i11++) {
            E e11 = i0Var.a().get(i11);
            Intrinsics.g(e11, "get(...)");
            dVarArr[i11] = d((i0.a) e11);
        }
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(dVarArr);
        Intrinsics.g(immutableListCopyOf, "copyOf(...)");
        return new c(immutableListCopyOf);
    }

    public static final d d(i0.a aVar) {
        Intrinsics.h(aVar, "<this>");
        int i11 = aVar.f10091a;
        b[] bVarArr = new b[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            r rVarB = aVar.b(i12);
            Intrinsics.g(rVarB, "getTrackFormat(...)");
            bVarArr[i12] = b(rVarB);
        }
        return new d(aVar.f10091a, aVar.a().f9972b, aVar.a().f9973c, aVar.e(), bVarArr);
    }
}
