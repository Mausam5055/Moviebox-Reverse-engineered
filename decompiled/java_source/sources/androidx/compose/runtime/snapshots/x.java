package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: loaded from: classes.dex */
final class x extends y implements Iterator, KMutableIterator {

    public static final class a implements Map.Entry, KMutableMap.Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f4033a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Object f4034b;

        a() {
            Map.Entry entryF = x.this.f();
            Intrinsics.e(entryF);
            this.f4033a = entryF.getKey();
            Map.Entry entryF2 = x.this.f();
            Intrinsics.e(entryF2);
            this.f4034b = entryF2.getValue();
        }

        public void a(Object obj) {
            this.f4034b = obj;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f4033a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f4034b;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            x xVar = x.this;
            if (xVar.h().e() != ((y) xVar).f4038c) {
                throw new ConcurrentModificationException();
            }
            Object value = getValue();
            xVar.h().put(getKey(), obj);
            a(obj);
            return value;
        }
    }

    public x(t tVar, Iterator it) {
        super(tVar, it);
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Map.Entry next() {
        e();
        if (f() != null) {
            return new a();
        }
        throw new IllegalStateException();
    }
}
