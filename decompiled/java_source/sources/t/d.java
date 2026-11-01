package t;

import java.util.List;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public interface d extends List, b, KMappedMarker {

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes2.dex */
    static final class a extends AbstractList implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f75959a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f75960b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f75961c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f75962d;

        public a(d dVar, int i11, int i12) {
            this.f75959a = dVar;
            this.f75960b = i11;
            this.f75961c = i12;
            w.d.c(i11, i12, dVar.size());
            this.f75962d = i12 - i11;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public d subList(int i11, int i12) {
            w.d.c(i11, i12, this.f75962d);
            d dVar = this.f75959a;
            int i13 = this.f75960b;
            return new a(dVar, i11 + i13, i13 + i12);
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public Object get(int i11) {
            w.d.a(i11, this.f75962d);
            return this.f75959a.get(this.f75960b + i11);
        }

        @Override // kotlin.collections.AbstractCollection
        public int getSize() {
            return this.f75962d;
        }
    }
}
