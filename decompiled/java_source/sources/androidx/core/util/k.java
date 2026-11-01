package androidx.core.util;

import android.util.SparseArray;
import kotlin.collections.IntIterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    public static final class a extends IntIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f8272a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SparseArray f8273b;

        a(SparseArray sparseArray) {
            this.f8273b = sparseArray;
        }

        @Override // kotlin.collections.IntIterator
        public int a() {
            SparseArray sparseArray = this.f8273b;
            int i11 = this.f8272a;
            this.f8272a = i11 + 1;
            return sparseArray.keyAt(i11);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f8272a < this.f8273b.size();
        }
    }

    public static final IntIterator a(SparseArray sparseArray) {
        return new a(sparseArray);
    }
}
