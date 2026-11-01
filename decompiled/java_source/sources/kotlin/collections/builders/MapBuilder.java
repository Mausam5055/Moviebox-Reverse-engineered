package kotlin.collections.builders;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b#\n\u0002\u0010&\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 \u0081\u0001*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u00060\u0004j\u0002`\u0005:\f\u0081\u0001\u0082\u0001\u0083\u0001\u0084\u0001\u0085\u0001\u0086\u0001BG\b\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010B\t\b\u0016¢\u0006\u0004\b\u000f\u0010\u0011B\u0011\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0013J\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010&J\b\u0010'\u001a\u00020(H\u0002J\b\u0010)\u001a\u00020!H\u0016J\u0015\u0010*\u001a\u00020!2\u0006\u0010+\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010,J\u0015\u0010-\u001a\u00020!2\u0006\u0010\u0017\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010,J\u0018\u0010.\u001a\u0004\u0018\u00018\u00012\u0006\u0010+\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010/J\u001f\u00100\u001a\u0004\u0018\u00018\u00012\u0006\u0010+\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u0001H\u0016¢\u0006\u0002\u00101J\u001e\u00102\u001a\u0002032\u0014\u00104\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010&H\u0016J\u0017\u00105\u001a\u0004\u0018\u00018\u00012\u0006\u0010+\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010/J\b\u00106\u001a\u000203H\u0016J\u0013\u0010B\u001a\u00020!2\b\u0010C\u001a\u0004\u0018\u00010(H\u0096\u0002J\b\u0010D\u001a\u00020\rH\u0016J\b\u0010E\u001a\u00020FH\u0016J\b\u0010K\u001a\u000203H\u0002J\r\u0010L\u001a\u000203H\u0000¢\u0006\u0002\bMJ\u0010\u0010N\u001a\u0002032\u0006\u0010O\u001a\u00020\rH\u0002J\u0010\u0010P\u001a\u00020!2\u0006\u0010Q\u001a\u00020\rH\u0002J\u0010\u0010R\u001a\u0002032\u0006\u0010S\u001a\u00020\rH\u0002J\u0013\u0010T\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007H\u0002¢\u0006\u0002\u0010UJ\u0015\u0010V\u001a\u00020\r2\u0006\u0010+\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010WJ\u0010\u0010X\u001a\u0002032\u0006\u0010Y\u001a\u00020!H\u0002J\u0010\u0010Z\u001a\u0002032\u0006\u0010[\u001a\u00020\rH\u0002J\u0010\u0010\\\u001a\u00020!2\u0006\u0010]\u001a\u00020\rH\u0002J\u0015\u0010^\u001a\u00020\r2\u0006\u0010+\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010WJ\u0015\u0010_\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00028\u0001H\u0002¢\u0006\u0002\u0010WJ\u0017\u0010`\u001a\u00020\r2\u0006\u0010+\u001a\u00028\u0000H\u0000¢\u0006\u0004\ba\u0010WJ\u0017\u0010b\u001a\u00020!2\u0006\u0010+\u001a\u00028\u0000H\u0000¢\u0006\u0004\bc\u0010,J\u0010\u0010d\u001a\u0002032\u0006\u0010e\u001a\u00020\rH\u0002J\u0010\u0010f\u001a\u0002032\u0006\u0010g\u001a\u00020\rH\u0002J!\u0010h\u001a\u00020!2\u0012\u0010i\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010jH\u0000¢\u0006\u0002\bkJ\u0018\u0010l\u001a\u00020!2\u000e\u0010C\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030&H\u0002J\u0019\u0010m\u001a\u00020!2\n\u0010n\u001a\u0006\u0012\u0002\b\u00030oH\u0000¢\u0006\u0002\bpJ\u001c\u0010q\u001a\u00020!2\u0012\u0010i\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010jH\u0002J\"\u0010r\u001a\u00020!2\u0018\u00104\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010j0oH\u0002J!\u0010s\u001a\u00020!2\u0012\u0010i\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010jH\u0000¢\u0006\u0002\btJ\u0017\u0010u\u001a\u00020!2\u0006\u0010v\u001a\u00028\u0001H\u0000¢\u0006\u0004\bw\u0010,J\u0019\u0010x\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010yH\u0000¢\u0006\u0002\bzJ\u0019\u0010{\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010|H\u0000¢\u0006\u0002\b}J\u001a\u0010~\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u007fH\u0000¢\u0006\u0003\b\u0080\u0001R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0014R\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\r@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001d\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\"\u001a\u00020!2\u0006\u0010\u0017\u001a\u00020!@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u001a\u00107\u001a\b\u0012\u0004\u0012\u00028\u0000088VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010:R\u001a\u0010;\u001a\b\u0012\u0004\u0012\u00028\u00010<8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>R&\u0010?\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010@088VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010:R\u0014\u0010G\u001a\u00020\r8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bH\u0010\u001aR\u0014\u0010I\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010\u001a¨\u0006\u0087\u0001"}, d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", "V", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "keysArray", "", "valuesArray", "presenceArray", "", "hashArray", "maxProbeDistance", "", "length", "<init>", "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "()V", "initialCapacity", "(I)V", "[Ljava/lang/Object;", "hashShift", "modCount", AppMeasurementSdk.ConditionalUserProperty.VALUE, "size", "getSize", "()I", "keysView", "Lkotlin/collections/builders/MapBuilderKeys;", "valuesView", "Lkotlin/collections/builders/MapBuilderValues;", "entriesView", "Lkotlin/collections/builders/MapBuilderEntries;", "", "isReadOnly", "isReadOnly$kotlin_stdlib", "()Z", "build", "", "writeReplace", "", "isEmpty", "containsKey", "key", "(Ljava/lang/Object;)Z", "containsValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "", "from", "remove", "clear", "keys", "", "getKeys", "()Ljava/util/Set;", "values", "", "getValues", "()Ljava/util/Collection;", "entries", "", "getEntries", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "capacity", "getCapacity$kotlin_stdlib", "hashSize", "getHashSize", "registerModification", "checkIsMutable", "checkIsMutable$kotlin_stdlib", "ensureExtraCapacity", "n", "shouldCompact", "extraCapacity", "ensureCapacity", "minCapacity", "allocateValuesArray", "()[Ljava/lang/Object;", "hash", "(Ljava/lang/Object;)I", "compact", "updateHashArray", "rehash", "newHashSize", "putRehash", "i", "findKey", "findValue", "addKey", "addKey$kotlin_stdlib", "removeKey", "removeKey$kotlin_stdlib", "removeEntryAt", "index", "removeHashAt", "removedHash", "containsEntry", "entry", "", "containsEntry$kotlin_stdlib", "contentEquals", "containsAllEntries", "m", "", "containsAllEntries$kotlin_stdlib", "putEntry", "putAllEntries", "removeEntry", "removeEntry$kotlin_stdlib", "removeValue", "element", "removeValue$kotlin_stdlib", "keysIterator", "Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator$kotlin_stdlib", "valuesIterator", "Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator$kotlin_stdlib", "entriesIterator", "Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator$kotlin_stdlib", "Companion", "Itr", "KeysItr", "ValuesItr", "EntriesItr", "EntryRef", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MapBuilder<K, V> implements Map<K, V>, Serializable, KMutableMap {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final MapBuilder Empty;
    private static final int INITIAL_CAPACITY = 8;
    private static final int INITIAL_MAX_PROBE_DISTANCE = 2;
    private static final int MAGIC = -1640531527;
    private static final int TOMBSTONE = -1;
    private MapBuilderEntries<K, V> entriesView;
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;
    private K[] keysArray;
    private MapBuilderKeys<K> keysView;
    private int length;
    private int maxProbeDistance;
    private int modCount;
    private int[] presenceArray;
    private int size;
    private V[] valuesArray;
    private MapBuilderValues<V> valuesView;

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\n\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0007R&\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0011¨\u0006\u0015"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Companion;", "", "<init>", "()V", "", "capacity", "c", "(I)I", "hashSize", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/collections/builders/MapBuilder;", "", "Empty", "Lkotlin/collections/builders/MapBuilder;", "e", "()Lkotlin/collections/builders/MapBuilder;", "MAGIC", "I", "INITIAL_CAPACITY", "INITIAL_MAX_PROBE_DISTANCE", "TOMBSTONE", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int c(int capacity) {
            return Integer.highestOneBit(RangesKt.f(capacity, 1) * 3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int d(int hashSize) {
            return Integer.numberOfLeadingZeros(hashSize) + 1;
        }

        public final MapBuilder e() {
            return MapBuilder.Empty;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00050\u0004B\u001b\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0004\b\b\u0010\tJ\u001c\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\nH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0014\u001a\u00020\u00132\n\u0010\u0012\u001a\u00060\u0010j\u0002`\u0011¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntriesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "Lkotlin/collections/builders/MapBuilder$EntryRef;", "l", "()Lkotlin/collections/builders/MapBuilder$EntryRef;", "", "n", "()I", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "", "m", "(Ljava/lang/StringBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class EntriesItr<K, V> extends Itr<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EntriesItr(MapBuilder map) {
            super(map);
            Intrinsics.h(map, "map");
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public EntryRef next() {
            a();
            if (getIndex() >= getMap().length) {
                throw new NoSuchElementException();
            }
            int index = getIndex();
            i(index + 1);
            j(index);
            EntryRef entryRef = new EntryRef(getMap(), getLastIndex());
            h();
            return entryRef;
        }

        public final void m(StringBuilder sb2) {
            Intrinsics.h(sb2, "sb");
            if (getIndex() >= getMap().length) {
                throw new NoSuchElementException();
            }
            int index = getIndex();
            i(index + 1);
            j(index);
            Object obj = getMap().keysArray[getLastIndex()];
            if (obj == getMap()) {
                sb2.append("(this Map)");
            } else {
                sb2.append(obj);
            }
            sb2.append('=');
            Object[] objArr = getMap().valuesArray;
            Intrinsics.e(objArr);
            Object obj2 = objArr[getLastIndex()];
            if (obj2 == getMap()) {
                sb2.append("(this Map)");
            } else {
                sb2.append(obj2);
            }
            h();
        }

        public final int n() {
            if (getIndex() >= getMap().length) {
                throw new NoSuchElementException();
            }
            int index = getIndex();
            i(index + 1);
            j(index);
            Object obj = getMap().keysArray[getLastIndex()];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = getMap().valuesArray;
            Intrinsics.e(objArr);
            Object obj2 = objArr[getLastIndex()];
            int iHashCode2 = iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            h();
            return iHashCode2;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\r\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003B#\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00028\u00032\u0006\u0010\r\u001a\u00028\u0003H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0096\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001e\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR\u0014\u0010!\u001a\u00028\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\u00028\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010 ¨\u0006$"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntryRef;", "K", "V", "", "Lkotlin/collections/builders/MapBuilder;", "map", "", "index", "<init>", "(Lkotlin/collections/builders/MapBuilder;I)V", "", "a", "()V", "newValue", "setValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Lkotlin/collections/builders/MapBuilder;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "c", "expectedModCount", "getKey", "()Ljava/lang/Object;", "key", "getValue", AppMeasurementSdk.ConditionalUserProperty.VALUE, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class EntryRef<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final MapBuilder map;

        /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
        private final int index;

        /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
        private final int expectedModCount;

        public EntryRef(MapBuilder map, int i11) {
            Intrinsics.h(map, "map");
            this.map = map;
            this.index = i11;
            this.expectedModCount = map.modCount;
        }

        private final void a() {
            if (this.map.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
            }
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object other) {
            if (other instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) other;
                if (Intrinsics.c(entry.getKey(), getKey()) && Intrinsics.c(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            a();
            return this.map.keysArray[this.index];
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            a();
            Object[] objArr = this.map.valuesArray;
            Intrinsics.e(objArr);
            return objArr[this.index];
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Object key = getKey();
            int iHashCode = key != null ? key.hashCode() : 0;
            Object value = getValue();
            return iHashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object newValue) {
            a();
            this.map.checkIsMutable$kotlin_stdlib();
            Object[] objArrAllocateValuesArray = this.map.allocateValuesArray();
            int i11 = this.index;
            Object obj = objArrAllocateValuesArray[i11];
            objArrAllocateValuesArray[i11] = newValue;
            return obj;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getKey());
            sb2.append('=');
            sb2.append(getValue());
            return sb2.toString();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\r\b\u0010\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\nJ\u000f\u0010\u000f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u000f\u0010\nR&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00138\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001d\u001a\u00020\u00138\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0015\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u0015¨\u0006 "}, d2 = {"Lkotlin/collections/builders/MapBuilder$Itr;", "K", "V", "", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "", "h", "()V", "", "hasNext", "()Z", "remove", "a", "Lkotlin/collections/builders/MapBuilder;", "f", "()Lkotlin/collections/builders/MapBuilder;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "c", "()I", "i", "(I)V", "index", "e", "j", "lastIndex", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "expectedModCount", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static class Itr<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final MapBuilder map;

        /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
        private int index;

        /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
        private int lastIndex;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
        private int expectedModCount;

        public Itr(MapBuilder map) {
            Intrinsics.h(map, "map");
            this.map = map;
            this.lastIndex = -1;
            this.expectedModCount = map.modCount;
            h();
        }

        public final void a() {
            if (this.map.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final int getIndex() {
            return this.index;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final int getLastIndex() {
            return this.lastIndex;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final MapBuilder getMap() {
            return this.map;
        }

        public final void h() {
            while (this.index < this.map.length) {
                int[] iArr = this.map.presenceArray;
                int i11 = this.index;
                if (iArr[i11] >= 0) {
                    return;
                } else {
                    this.index = i11 + 1;
                }
            }
        }

        public final boolean hasNext() {
            return this.index < this.map.length;
        }

        public final void i(int i11) {
            this.index = i11;
        }

        public final void j(int i11) {
            this.lastIndex = i11;
        }

        public final void remove() {
            a();
            if (this.lastIndex == -1) {
                throw new IllegalStateException("Call next() before removing element from the iterator.");
            }
            this.map.checkIsMutable$kotlin_stdlib();
            this.map.removeEntryAt(this.lastIndex);
            this.lastIndex = -1;
            this.expectedModCount = this.map.modCount;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\t\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/collections/builders/MapBuilder$KeysItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class KeysItr<K, V> extends Itr<K, V> implements Iterator<K>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KeysItr(MapBuilder map) {
            super(map);
            Intrinsics.h(map, "map");
        }

        @Override // java.util.Iterator
        public Object next() {
            a();
            if (getIndex() >= getMap().length) {
                throw new NoSuchElementException();
            }
            int index = getIndex();
            i(index + 1);
            j(index);
            Object obj = getMap().keysArray[getLastIndex()];
            h();
            return obj;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\t\u001a\u00028\u0003H\u0096\u0002¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/collections/builders/MapBuilder$ValuesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class ValuesItr<K, V> extends Itr<K, V> implements Iterator<V>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ValuesItr(MapBuilder map) {
            super(map);
            Intrinsics.h(map, "map");
        }

        @Override // java.util.Iterator
        public Object next() {
            a();
            if (getIndex() >= getMap().length) {
                throw new NoSuchElementException();
            }
            int index = getIndex();
            i(index + 1);
            j(index);
            Object[] objArr = getMap().valuesArray;
            Intrinsics.e(objArr);
            Object obj = objArr[getLastIndex()];
            h();
            return obj;
        }
    }

    static {
        MapBuilder mapBuilder = new MapBuilder(0);
        mapBuilder.isReadOnly = true;
        Empty = mapBuilder;
    }

    public MapBuilder() {
        this(8);
    }

    public MapBuilder(int i11) {
        this(ListBuilderKt.d(i11), null, new int[i11], new int[INSTANCE.c(i11)], 2, 0);
    }

    private MapBuilder(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i11, int i12) {
        this.keysArray = kArr;
        this.valuesArray = vArr;
        this.presenceArray = iArr;
        this.hashArray = iArr2;
        this.maxProbeDistance = i11;
        this.length = i12;
        this.hashShift = INSTANCE.d(getHashSize());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V[] allocateValuesArray() {
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) ListBuilderKt.d(getCapacity$kotlin_stdlib());
        this.valuesArray = vArr2;
        return vArr2;
    }

    private final void compact(boolean updateHashArray) {
        int i11;
        V[] vArr = this.valuesArray;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            i11 = this.length;
            if (i12 >= i11) {
                break;
            }
            int[] iArr = this.presenceArray;
            int i14 = iArr[i12];
            if (i14 >= 0) {
                K[] kArr = this.keysArray;
                kArr[i13] = kArr[i12];
                if (vArr != null) {
                    vArr[i13] = vArr[i12];
                }
                if (updateHashArray) {
                    iArr[i13] = i14;
                    this.hashArray[i14] = i13 + 1;
                }
                i13++;
            }
            i12++;
        }
        ListBuilderKt.g(this.keysArray, i13, i11);
        if (vArr != null) {
            ListBuilderKt.g(vArr, i13, this.length);
        }
        this.length = i13;
    }

    private final boolean contentEquals(Map<?, ?> other) {
        return size() == other.size() && containsAllEntries$kotlin_stdlib(other.entrySet());
    }

    private final void ensureCapacity(int minCapacity) {
        if (minCapacity < 0) {
            throw new OutOfMemoryError();
        }
        if (minCapacity > getCapacity$kotlin_stdlib()) {
            int iE = AbstractList.INSTANCE.e(getCapacity$kotlin_stdlib(), minCapacity);
            this.keysArray = (K[]) ListBuilderKt.e(this.keysArray, iE);
            V[] vArr = this.valuesArray;
            this.valuesArray = vArr != null ? (V[]) ListBuilderKt.e(vArr, iE) : null;
            int[] iArrCopyOf = Arrays.copyOf(this.presenceArray, iE);
            Intrinsics.g(iArrCopyOf, "copyOf(...)");
            this.presenceArray = iArrCopyOf;
            int iC = INSTANCE.c(iE);
            if (iC > getHashSize()) {
                rehash(iC);
            }
        }
    }

    private final void ensureExtraCapacity(int n11) {
        if (shouldCompact(n11)) {
            compact(true);
        } else {
            ensureCapacity(this.length + n11);
        }
    }

    private final int findKey(K key) {
        int iHash = hash(key);
        int i11 = this.maxProbeDistance;
        while (true) {
            int i12 = this.hashArray[iHash];
            if (i12 == 0) {
                return -1;
            }
            if (i12 > 0) {
                int i13 = i12 - 1;
                if (Intrinsics.c(this.keysArray[i13], key)) {
                    return i13;
                }
            }
            i11--;
            if (i11 < 0) {
                return -1;
            }
            iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
        }
    }

    private final int findValue(V value) {
        int i11 = this.length;
        while (true) {
            i11--;
            if (i11 < 0) {
                return -1;
            }
            if (this.presenceArray[i11] >= 0) {
                V[] vArr = this.valuesArray;
                Intrinsics.e(vArr);
                if (Intrinsics.c(vArr[i11], value)) {
                    return i11;
                }
            }
        }
    }

    private final int getHashSize() {
        return this.hashArray.length;
    }

    private final int hash(K key) {
        return ((key != null ? key.hashCode() : 0) * MAGIC) >>> this.hashShift;
    }

    private final boolean putAllEntries(Collection<? extends Map.Entry<? extends K, ? extends V>> from) {
        boolean z10 = false;
        if (from.isEmpty()) {
            return false;
        }
        ensureExtraCapacity(from.size());
        Iterator<? extends Map.Entry<? extends K, ? extends V>> it = from.iterator();
        while (it.hasNext()) {
            if (putEntry(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    private final boolean putEntry(Map.Entry<? extends K, ? extends V> entry) {
        int iAddKey$kotlin_stdlib = addKey$kotlin_stdlib(entry.getKey());
        V[] vArrAllocateValuesArray = allocateValuesArray();
        if (iAddKey$kotlin_stdlib >= 0) {
            vArrAllocateValuesArray[iAddKey$kotlin_stdlib] = entry.getValue();
            return true;
        }
        int i11 = (-iAddKey$kotlin_stdlib) - 1;
        if (Intrinsics.c(entry.getValue(), vArrAllocateValuesArray[i11])) {
            return false;
        }
        vArrAllocateValuesArray[i11] = entry.getValue();
        return true;
    }

    private final boolean putRehash(int i11) {
        int iHash = hash(this.keysArray[i11]);
        int i12 = this.maxProbeDistance;
        while (true) {
            int[] iArr = this.hashArray;
            if (iArr[iHash] == 0) {
                iArr[iHash] = i11 + 1;
                this.presenceArray[i11] = iHash;
                return true;
            }
            i12--;
            if (i12 < 0) {
                return false;
            }
            iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
        }
    }

    private final void registerModification() {
        this.modCount++;
    }

    private final void rehash(int newHashSize) {
        registerModification();
        int i11 = 0;
        if (this.length > size()) {
            compact(false);
        }
        this.hashArray = new int[newHashSize];
        this.hashShift = INSTANCE.d(newHashSize);
        while (i11 < this.length) {
            int i12 = i11 + 1;
            if (!putRehash(i11)) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i11 = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeEntryAt(int index) {
        ListBuilderKt.f(this.keysArray, index);
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            ListBuilderKt.f(vArr, index);
        }
        removeHashAt(this.presenceArray[index]);
        this.presenceArray[index] = -1;
        this.size = size() - 1;
        registerModification();
    }

    private final void removeHashAt(int removedHash) {
        int i11 = RangesKt.i(this.maxProbeDistance * 2, getHashSize() / 2);
        int i12 = 0;
        int i13 = removedHash;
        do {
            removedHash = removedHash == 0 ? getHashSize() - 1 : removedHash - 1;
            i12++;
            if (i12 > this.maxProbeDistance) {
                this.hashArray[i13] = 0;
                return;
            }
            int[] iArr = this.hashArray;
            int i14 = iArr[removedHash];
            if (i14 == 0) {
                iArr[i13] = 0;
                return;
            }
            if (i14 < 0) {
                iArr[i13] = -1;
            } else {
                int i15 = i14 - 1;
                if (((hash(this.keysArray[i15]) - removedHash) & (getHashSize() - 1)) >= i12) {
                    this.hashArray[i13] = i14;
                    this.presenceArray[i15] = i13;
                }
                i11--;
            }
            i13 = removedHash;
            i12 = 0;
            i11--;
        } while (i11 >= 0);
        this.hashArray[i13] = -1;
    }

    private final boolean shouldCompact(int extraCapacity) {
        int capacity$kotlin_stdlib = getCapacity$kotlin_stdlib();
        int i11 = this.length;
        int i12 = capacity$kotlin_stdlib - i11;
        int size = i11 - size();
        return i12 < extraCapacity && i12 + size >= extraCapacity && size >= getCapacity$kotlin_stdlib() / 4;
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.isReadOnly) {
            return new SerializedMap(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    public final int addKey$kotlin_stdlib(K key) {
        checkIsMutable$kotlin_stdlib();
        while (true) {
            int iHash = hash(key);
            int i11 = RangesKt.i(this.maxProbeDistance * 2, getHashSize() / 2);
            int i12 = 0;
            while (true) {
                int i13 = this.hashArray[iHash];
                if (i13 <= 0) {
                    if (this.length >= getCapacity$kotlin_stdlib()) {
                        ensureExtraCapacity(1);
                        break;
                    }
                    int i14 = this.length;
                    int i15 = i14 + 1;
                    this.length = i15;
                    this.keysArray[i14] = key;
                    this.presenceArray[i14] = iHash;
                    this.hashArray[iHash] = i15;
                    this.size = size() + 1;
                    registerModification();
                    if (i12 > this.maxProbeDistance) {
                        this.maxProbeDistance = i12;
                    }
                    return i14;
                }
                if (Intrinsics.c(this.keysArray[i13 - 1], key)) {
                    return -i13;
                }
                i12++;
                if (i12 > i11) {
                    rehash(getHashSize() * 2);
                    break;
                }
                iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
            }
        }
    }

    public final Map<K, V> build() {
        checkIsMutable$kotlin_stdlib();
        this.isReadOnly = true;
        if (size() > 0) {
            return this;
        }
        MapBuilder mapBuilder = Empty;
        Intrinsics.f(mapBuilder, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return mapBuilder;
    }

    public final void checkIsMutable$kotlin_stdlib() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public void clear() {
        checkIsMutable$kotlin_stdlib();
        int i11 = this.length - 1;
        if (i11 >= 0) {
            int i12 = 0;
            while (true) {
                int[] iArr = this.presenceArray;
                int i13 = iArr[i12];
                if (i13 >= 0) {
                    this.hashArray[i13] = 0;
                    iArr[i12] = -1;
                }
                if (i12 == i11) {
                    break;
                } else {
                    i12++;
                }
            }
        }
        ListBuilderKt.g(this.keysArray, 0, this.length);
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            ListBuilderKt.g(vArr, 0, this.length);
        }
        this.size = 0;
        this.length = 0;
        registerModification();
    }

    public final boolean containsAllEntries$kotlin_stdlib(Collection<?> m11) {
        Intrinsics.h(m11, "m");
        for (Object obj : m11) {
            if (obj != null) {
                try {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean containsEntry$kotlin_stdlib(Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.h(entry, "entry");
        int iFindKey = findKey(entry.getKey());
        if (iFindKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.e(vArr);
        return Intrinsics.c(vArr[iFindKey], entry.getValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object key) {
        return findKey(key) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsValue(Object value) {
        return findValue(value) >= 0;
    }

    public final EntriesItr<K, V> entriesIterator$kotlin_stdlib() {
        return new EntriesItr<>(this);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(Object other) {
        return other == this || ((other instanceof Map) && contentEquals((Map) other));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V get(Object key) {
        int iFindKey = findKey(key);
        if (iFindKey < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.e(vArr);
        return vArr[iFindKey];
    }

    public final int getCapacity$kotlin_stdlib() {
        return this.keysArray.length;
    }

    public Set<Map.Entry<K, V>> getEntries() {
        MapBuilderEntries<K, V> mapBuilderEntries = this.entriesView;
        if (mapBuilderEntries != null) {
            return mapBuilderEntries;
        }
        MapBuilderEntries<K, V> mapBuilderEntries2 = new MapBuilderEntries<>(this);
        this.entriesView = mapBuilderEntries2;
        return mapBuilderEntries2;
    }

    public Set<K> getKeys() {
        MapBuilderKeys<K> mapBuilderKeys = this.keysView;
        if (mapBuilderKeys != null) {
            return mapBuilderKeys;
        }
        MapBuilderKeys<K> mapBuilderKeys2 = new MapBuilderKeys<>(this);
        this.keysView = mapBuilderKeys2;
        return mapBuilderKeys2;
    }

    public int getSize() {
        return this.size;
    }

    public Collection<V> getValues() {
        MapBuilderValues<V> mapBuilderValues = this.valuesView;
        if (mapBuilderValues != null) {
            return mapBuilderValues;
        }
        MapBuilderValues<V> mapBuilderValues2 = new MapBuilderValues<>(this);
        this.valuesView = mapBuilderValues2;
        return mapBuilderValues2;
    }

    @Override // java.util.Map
    public int hashCode() {
        EntriesItr<K, V> entriesItrEntriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int iN = 0;
        while (entriesItrEntriesIterator$kotlin_stdlib.hasNext()) {
            iN += entriesItrEntriesIterator$kotlin_stdlib.n();
        }
        return iN;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    /* JADX INFO: renamed from: isReadOnly$kotlin_stdlib, reason: from getter */
    public final boolean getIsReadOnly() {
        return this.isReadOnly;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    public final KeysItr<K, V> keysIterator$kotlin_stdlib() {
        return new KeysItr<>(this);
    }

    @Override // java.util.Map
    public V put(K key, V value) {
        checkIsMutable$kotlin_stdlib();
        int iAddKey$kotlin_stdlib = addKey$kotlin_stdlib(key);
        V[] vArrAllocateValuesArray = allocateValuesArray();
        if (iAddKey$kotlin_stdlib >= 0) {
            vArrAllocateValuesArray[iAddKey$kotlin_stdlib] = value;
            return null;
        }
        int i11 = (-iAddKey$kotlin_stdlib) - 1;
        V v11 = vArrAllocateValuesArray[i11];
        vArrAllocateValuesArray[i11] = value;
        return v11;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> from) {
        Intrinsics.h(from, "from");
        checkIsMutable$kotlin_stdlib();
        putAllEntries(from.entrySet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V remove(Object key) {
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(key);
        if (iFindKey < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.e(vArr);
        V v11 = vArr[iFindKey];
        removeEntryAt(iFindKey);
        return v11;
    }

    public final boolean removeEntry$kotlin_stdlib(Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.h(entry, "entry");
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(entry.getKey());
        if (iFindKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.e(vArr);
        if (!Intrinsics.c(vArr[iFindKey], entry.getValue())) {
            return false;
        }
        removeEntryAt(iFindKey);
        return true;
    }

    public final boolean removeKey$kotlin_stdlib(K key) {
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(key);
        if (iFindKey < 0) {
            return false;
        }
        removeEntryAt(iFindKey);
        return true;
    }

    public final boolean removeValue$kotlin_stdlib(V element) {
        checkIsMutable$kotlin_stdlib();
        int iFindValue = findValue(element);
        if (iFindValue < 0) {
            return false;
        }
        removeEntryAt(iFindValue);
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder((size() * 3) + 2);
        sb2.append("{");
        EntriesItr<K, V> entriesItrEntriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i11 = 0;
        while (entriesItrEntriesIterator$kotlin_stdlib.hasNext()) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            entriesItrEntriesIterator$kotlin_stdlib.m(sb2);
            i11++;
        }
        sb2.append("}");
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    public final ValuesItr<K, V> valuesIterator$kotlin_stdlib() {
        return new ValuesItr<>(this);
    }
}
