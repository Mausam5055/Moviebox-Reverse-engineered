package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.os.Build;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f15998a = {13, 15, 14};

    public static final int[] b(NetworkRequest networkRequest) {
        Intrinsics.h(networkRequest, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            return u.f15994a.a(networkRequest);
        }
        int[] iArr = {17, 5, 2, 10, 29, 19, 3, 32, 7, 4, 12, 36, 23, 0, 33, 20, 11, 13, 18, 21, 15, 35, 34, 8, 1, 25, 14, 16, 6, 9};
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < 30; i11++) {
            int i12 = iArr[i11];
            if (r.f15993a.c(networkRequest, i12)) {
                arrayList.add(Integer.valueOf(i12));
            }
        }
        return CollectionsKt.Q0(arrayList);
    }

    public static final int[] c(NetworkRequest networkRequest) {
        Intrinsics.h(networkRequest, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            return u.f15994a.b(networkRequest);
        }
        int[] iArr = {2, 0, 3, 6, 10, 9, 8, 4, 1, 5};
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < 10; i11++) {
            int i12 = iArr[i11];
            if (r.f15993a.d(networkRequest, i12)) {
                arrayList.add(Integer.valueOf(i12));
            }
        }
        return CollectionsKt.Q0(arrayList);
    }
}
