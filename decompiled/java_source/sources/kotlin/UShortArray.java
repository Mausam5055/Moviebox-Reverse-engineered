package kotlin;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes7.dex */
@SinceKotlin
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0017\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\n\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001'B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0001\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b\f\u0010\rJ \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012H\u0096\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001a\u001a\u00020\u00162\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001f\u001a\u00020\u001eHÖ\u0001¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u001a\u0010%\u001a\u00020\u00162\b\u0010$\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b%\u0010&R\u001a\u0010\b\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\f\n\u0004\b'\u0010(\u0012\u0004\b)\u0010*R\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,\u0088\u0001\b\u0092\u0001\u00020\u0007¨\u0006-"}, d2 = {"Lkotlin/UShortArray;", "", "Lkotlin/UShort;", "", "size", "c", "(I)[S", "", PlaceTypes.STORAGE, "e", "([S)[S", "index", "m", "([SI)S", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "s", "([SIS)V", "", CampaignEx.JSON_KEY_AD_R, "([S)Ljava/util/Iterator;", "element", "", "h", "([SS)Z", "elements", "j", "([SLjava/util/Collection;)Z", CampaignEx.JSON_KEY_AD_Q, "([S)Z", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "a", "[S", "getStorage$annotations", "()V", "o", "([S)I", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@ExperimentalUnsignedTypes
@JvmInline
@SourceDebugExtension
public final class UShortArray implements Collection<UShort>, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final short[] storage;

    private static final class a implements Iterator, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final short[] f67059a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f67060b;

        public a(short[] array) {
            Intrinsics.h(array, "array");
            this.f67059a = array;
        }

        public short a() {
            int i11 = this.f67060b;
            short[] sArr = this.f67059a;
            if (i11 >= sArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f67060b));
            }
            this.f67060b = i11 + 1;
            return UShort.b(sArr[i11]);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f67060b < this.f67059a.length;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            return UShort.a(a());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private /* synthetic */ UShortArray(short[] sArr) {
        this.storage = sArr;
    }

    public static final /* synthetic */ UShortArray a(short[] sArr) {
        return new UShortArray(sArr);
    }

    public static short[] c(int i11) {
        return e(new short[i11]);
    }

    public static short[] e(short[] storage) {
        Intrinsics.h(storage, "storage");
        return storage;
    }

    public static boolean h(short[] sArr, short s11) {
        return ArraysKt.P(sArr, s11);
    }

    public static boolean j(short[] sArr, Collection elements) {
        Intrinsics.h(elements, "elements");
        Collection collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof UShort) || !ArraysKt.P(sArr, ((UShort) obj).getData())) {
                return false;
            }
        }
        return true;
    }

    public static boolean l(short[] sArr, Object obj) {
        return (obj instanceof UShortArray) && Intrinsics.c(sArr, ((UShortArray) obj).getStorage());
    }

    public static final short m(short[] sArr, int i11) {
        return UShort.b(sArr[i11]);
    }

    public static int o(short[] sArr) {
        return sArr.length;
    }

    public static int p(short[] sArr) {
        return Arrays.hashCode(sArr);
    }

    public static boolean q(short[] sArr) {
        return sArr.length == 0;
    }

    public static Iterator r(short[] sArr) {
        return new a(sArr);
    }

    public static final void s(short[] sArr, int i11, short s11) {
        sArr[i11] = s11;
    }

    public static String t(short[] sArr) {
        return "UShortArray(storage=" + Arrays.toString(sArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(UShort uShort) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UShort> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UShort) {
            return f(((UShort) obj).getData());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return j(this.storage, elements);
    }

    @Override // java.util.Collection
    public boolean equals(Object other) {
        return l(this.storage, other);
    }

    public boolean f(short s11) {
        return h(this.storage, s11);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return p(this.storage);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return q(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return r(this.storage);
    }

    @Override // java.util.Collection
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int size() {
        return o(this.storage);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] array) {
        Intrinsics.h(array, "array");
        return CollectionToArray.b(this, array);
    }

    public String toString() {
        return t(this.storage);
    }

    /* JADX INFO: renamed from: u, reason: from getter */
    public final /* synthetic */ short[] getStorage() {
        return this.storage;
    }
}
