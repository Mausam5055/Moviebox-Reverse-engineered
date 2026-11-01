package androidx.core.util;

import android.util.LongSparseArray;
import kotlin.collections.LongIterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    public static final class a extends LongIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f8265a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LongSparseArray f8266b;

        a(LongSparseArray longSparseArray) {
            this.f8266b = longSparseArray;
        }

        @Override // kotlin.collections.LongIterator
        public long a() {
            LongSparseArray longSparseArray = this.f8266b;
            int i11 = this.f8265a;
            this.f8265a = i11 + 1;
            return longSparseArray.keyAt(i11);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f8265a < this.f8266b.size();
        }
    }

    public static final LongIterator a(LongSparseArray longSparseArray) {
        return new a(longSparseArray);
    }
}
