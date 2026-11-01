package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.CharIterator;

/* JADX INFO: loaded from: classes7.dex */
final class c extends CharIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final char[] f67305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67306b;

    public c(char[] array) {
        Intrinsics.h(array, "array");
        this.f67305a = array;
    }

    @Override // kotlin.collections.CharIterator
    public char a() {
        try {
            char[] cArr = this.f67305a;
            int i11 = this.f67306b;
            this.f67306b = i11 + 1;
            return cArr[i11];
        } catch (ArrayIndexOutOfBoundsException e11) {
            this.f67306b--;
            throw new NoSuchElementException(e11.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67306b < this.f67305a.length;
    }
}
