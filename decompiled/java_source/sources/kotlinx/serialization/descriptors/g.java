package kotlinx.serialization.descriptors;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes7.dex */
public abstract class g {

    public static final class a implements Iterator, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f68062a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f f68063b;

        a(f fVar) {
            this.f68063b = fVar;
            this.f68062a = fVar.e();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f next() {
            f fVar = this.f68063b;
            int iE = fVar.e();
            int i11 = this.f68062a;
            this.f68062a = i11 - 1;
            return fVar.h(iE - i11);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f68062a > 0;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class b implements Iterator, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f68064a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f f68065b;

        b(f fVar) {
            this.f68065b = fVar;
            this.f68064a = fVar.e();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String next() {
            f fVar = this.f68065b;
            int iE = fVar.e();
            int i11 = this.f68064a;
            this.f68064a = i11 - 1;
            return fVar.f(iE - i11);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f68064a > 0;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class c implements Iterable, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f68066a;

        public c(f fVar) {
            this.f68066a = fVar;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return new a(this.f68066a);
        }
    }

    public static final class d implements Iterable, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f68067a;

        public d(f fVar) {
            this.f68067a = fVar;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return new b(this.f68067a);
        }
    }

    public static final Iterable a(f fVar) {
        Intrinsics.h(fVar, "<this>");
        return new c(fVar);
    }

    public static final Iterable b(f fVar) {
        Intrinsics.h(fVar, "<this>");
        return new d(fVar);
    }
}
