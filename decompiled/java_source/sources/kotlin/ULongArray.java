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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\n\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001'B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0001\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b\f\u0010\rJ \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012H\u0096\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001a\u001a\u00020\u00162\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001f\u001a\u00020\u001eHÖ\u0001¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u001a\u0010%\u001a\u00020\u00162\b\u0010$\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b%\u0010&R\u001a\u0010\b\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\f\n\u0004\b'\u0010(\u0012\u0004\b)\u0010*R\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,\u0088\u0001\b\u0092\u0001\u00020\u0007¨\u0006-"}, d2 = {"Lkotlin/ULongArray;", "", "Lkotlin/ULong;", "", "size", "c", "(I)[J", "", PlaceTypes.STORAGE, "e", "([J)[J", "index", "m", "([JI)J", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "s", "([JIJ)V", "", CampaignEx.JSON_KEY_AD_R, "([J)Ljava/util/Iterator;", "element", "", "h", "([JJ)Z", "elements", "j", "([JLjava/util/Collection;)Z", CampaignEx.JSON_KEY_AD_Q, "([J)Z", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "a", "[J", "getStorage$annotations", "()V", "o", "([J)I", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@ExperimentalUnsignedTypes
@JvmInline
@SourceDebugExtension
public final class ULongArray implements Collection<ULong>, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final long[] storage;

    private static final class a implements Iterator, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long[] f67053a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f67054b;

        public a(long[] array) {
            Intrinsics.h(array, "array");
            this.f67053a = array;
        }

        public long a() {
            int i11 = this.f67054b;
            long[] jArr = this.f67053a;
            if (i11 >= jArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f67054b));
            }
            this.f67054b = i11 + 1;
            return ULong.b(jArr[i11]);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f67054b < this.f67053a.length;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            return ULong.a(a());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private /* synthetic */ ULongArray(long[] jArr) {
        this.storage = jArr;
    }

    public static final /* synthetic */ ULongArray a(long[] jArr) {
        return new ULongArray(jArr);
    }

    public static long[] c(int i11) {
        return e(new long[i11]);
    }

    public static long[] e(long[] storage) {
        Intrinsics.h(storage, "storage");
        return storage;
    }

    public static boolean h(long[] jArr, long j11) {
        return ArraysKt.N(jArr, j11);
    }

    public static boolean j(long[] jArr, Collection elements) {
        Intrinsics.h(elements, "elements");
        Collection collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof ULong) || !ArraysKt.N(jArr, ((ULong) obj).getData())) {
                return false;
            }
        }
        return true;
    }

    public static boolean l(long[] jArr, Object obj) {
        return (obj instanceof ULongArray) && Intrinsics.c(jArr, ((ULongArray) obj).getStorage());
    }

    public static final long m(long[] jArr, int i11) {
        return ULong.b(jArr[i11]);
    }

    public static int o(long[] jArr) {
        return jArr.length;
    }

    public static int p(long[] jArr) {
        return Arrays.hashCode(jArr);
    }

    public static boolean q(long[] jArr) {
        return jArr.length == 0;
    }

    public static Iterator r(long[] jArr) {
        return new a(jArr);
    }

    public static final void s(long[] jArr, int i11, long j11) {
        jArr[i11] = j11;
    }

    public static String t(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(ULong uLong) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends ULong> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ULong) {
            return f(((ULong) obj).getData());
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

    public boolean f(long j11) {
        return h(this.storage, j11);
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
    public final /* synthetic */ long[] getStorage() {
        return this.storage;
    }
}
