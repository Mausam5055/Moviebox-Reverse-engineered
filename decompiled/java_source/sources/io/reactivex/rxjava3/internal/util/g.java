package io.reactivex.rxjava3.internal.util;

/* JADX INFO: loaded from: classes7.dex */
public abstract class g {
    public static int a(int i11) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i11 - 1));
    }
}
