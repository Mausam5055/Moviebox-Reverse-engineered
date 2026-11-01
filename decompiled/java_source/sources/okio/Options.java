package okio;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0015B\u001f\b\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0096\u0002R\u001e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006X\u0080\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "byteStrings", "", "trie", "", "([Lokio/ByteString;[I)V", "getByteStrings$okio", "()[Lokio/ByteString;", "[Lokio/ByteString;", "size", "", "getSize", "()I", "getTrie$okio", "()[I", "get", "index", "Companion", "okio"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Options extends AbstractList<ByteString> implements RandomAccess {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final ByteString[] byteStrings;
    private final int[] trie;

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JT\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\r2\b\b\u0002\u0010\u0012\u001a\u00020\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007¢\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Lokio/Options$Companion;", "", "()V", "intCount", "", "Lokio/Buffer;", "getIntCount", "(Lokio/Buffer;)J", "buildTrieRecursive", "", "nodeOffset", "node", "byteStringOffset", "", "byteStrings", "", "Lokio/ByteString;", "fromIndex", "toIndex", "indexes", "of", "Lokio/Options;", "", "([Lokio/ByteString;)Lokio/Options;", "okio"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void buildTrieRecursive(long nodeOffset, Buffer node, int byteStringOffset, List<? extends ByteString> byteStrings, int fromIndex, int toIndex, List<Integer> indexes) throws IOException {
            int i11;
            int i12;
            int i13;
            int i14 = byteStringOffset;
            if (fromIndex >= toIndex) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            for (int i15 = fromIndex; i15 < toIndex; i15++) {
                if (byteStrings.get(i15).size() < i14) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
            }
            ByteString byteString = byteStrings.get(fromIndex);
            ByteString byteString2 = byteStrings.get(toIndex - 1);
            int i16 = -1;
            if (i14 == byteString.size()) {
                int iIntValue = indexes.get(fromIndex).intValue();
                int i17 = fromIndex + 1;
                ByteString byteString3 = byteStrings.get(i17);
                i11 = i17;
                i12 = iIntValue;
                byteString = byteString3;
            } else {
                i11 = fromIndex;
                i12 = -1;
            }
            if (byteString.getByte(i14) == byteString2.getByte(i14)) {
                int iMin = Math.min(byteString.size(), byteString2.size());
                int i18 = 0;
                for (int i19 = i14; i19 < iMin && byteString.getByte(i19) == byteString2.getByte(i19); i19++) {
                    i18++;
                }
                long intCount = nodeOffset + getIntCount(node) + ((long) 2) + ((long) i18) + 1;
                node.writeInt(-i18);
                node.writeInt(i12);
                int i20 = i18 + i14;
                while (i14 < i20) {
                    node.writeInt(byteString.getByte(i14) & 255);
                    i14++;
                }
                if (i11 + 1 == toIndex) {
                    if (i20 != byteStrings.get(i11).size()) {
                        throw new IllegalStateException("Check failed.");
                    }
                    node.writeInt(indexes.get(i11).intValue());
                    return;
                } else {
                    Buffer buffer = new Buffer();
                    node.writeInt(((int) (getIntCount(buffer) + intCount)) * (-1));
                    buildTrieRecursive(intCount, buffer, i20, byteStrings, i11, toIndex, indexes);
                    node.writeAll(buffer);
                    return;
                }
            }
            int i21 = 1;
            for (int i22 = i11 + 1; i22 < toIndex; i22++) {
                if (byteStrings.get(i22 - 1).getByte(i14) != byteStrings.get(i22).getByte(i14)) {
                    i21++;
                }
            }
            long intCount2 = nodeOffset + getIntCount(node) + ((long) 2) + ((long) (i21 * 2));
            node.writeInt(i21);
            node.writeInt(i12);
            for (int i23 = i11; i23 < toIndex; i23++) {
                byte b11 = byteStrings.get(i23).getByte(i14);
                if (i23 == i11 || b11 != byteStrings.get(i23 - 1).getByte(i14)) {
                    node.writeInt(b11 & 255);
                }
            }
            Buffer buffer2 = new Buffer();
            while (i11 < toIndex) {
                byte b12 = byteStrings.get(i11).getByte(i14);
                int i24 = i11 + 1;
                int i25 = i24;
                while (true) {
                    if (i25 >= toIndex) {
                        i13 = toIndex;
                        break;
                    } else {
                        if (b12 != byteStrings.get(i25).getByte(i14)) {
                            i13 = i25;
                            break;
                        }
                        i25++;
                    }
                }
                if (i24 == i13 && i14 + 1 == byteStrings.get(i11).size()) {
                    node.writeInt(indexes.get(i11).intValue());
                } else {
                    node.writeInt(((int) (intCount2 + getIntCount(buffer2))) * i16);
                    buildTrieRecursive(intCount2, buffer2, i14 + 1, byteStrings, i11, i13, indexes);
                }
                buffer2 = buffer2;
                i11 = i13;
                i16 = -1;
            }
            node.writeAll(buffer2);
        }

        static /* synthetic */ void buildTrieRecursive$default(Companion companion, long j11, Buffer buffer, int i11, List list, int i12, int i13, List list2, int i14, Object obj) throws IOException {
            companion.buildTrieRecursive((i14 & 1) != 0 ? 0L : j11, buffer, (i14 & 4) != 0 ? 0 : i11, list, (i14 & 16) != 0 ? 0 : i12, (i14 & 32) != 0 ? list.size() : i13, list2);
        }

        private final long getIntCount(Buffer buffer) {
            return buffer.size() / ((long) 4);
        }

        @JvmStatic
        public final Options of(ByteString... byteStrings) throws IOException {
            Intrinsics.h(byteStrings, "byteStrings");
            DefaultConstructorMarker defaultConstructorMarker = null;
            int i11 = 0;
            if (byteStrings.length == 0) {
                return new Options(new ByteString[0], new int[]{0, -1}, defaultConstructorMarker);
            }
            List listO0 = ArraysKt.O0(byteStrings);
            CollectionsKt.z(listO0);
            ArrayList arrayList = new ArrayList(byteStrings.length);
            for (ByteString byteString : byteStrings) {
                arrayList.add(-1);
            }
            Integer[] numArr = (Integer[]) arrayList.toArray(new Integer[0]);
            List listQ = CollectionsKt.q(Arrays.copyOf(numArr, numArr.length));
            int length = byteStrings.length;
            int i12 = 0;
            int i13 = 0;
            while (i12 < length) {
                listQ.set(CollectionsKt.k(listO0, byteStrings[i12], 0, 0, 6, null), Integer.valueOf(i13));
                i12++;
                i13++;
            }
            if (((ByteString) listO0.get(0)).size() <= 0) {
                throw new IllegalArgumentException("the empty byte string is not a supported option");
            }
            int i14 = 0;
            while (i14 < listO0.size()) {
                ByteString byteString2 = (ByteString) listO0.get(i14);
                int i15 = i14 + 1;
                int i16 = i15;
                while (i16 < listO0.size()) {
                    ByteString byteString3 = (ByteString) listO0.get(i16);
                    if (!byteString3.startsWith(byteString2)) {
                        break;
                    }
                    if (byteString3.size() == byteString2.size()) {
                        throw new IllegalArgumentException(("duplicate option: " + byteString3).toString());
                    }
                    if (((Number) listQ.get(i16)).intValue() > ((Number) listQ.get(i14)).intValue()) {
                        listO0.remove(i16);
                        listQ.remove(i16);
                    } else {
                        i16++;
                    }
                }
                i14 = i15;
            }
            Buffer buffer = new Buffer();
            buildTrieRecursive$default(this, 0L, buffer, 0, listO0, 0, 0, listQ, 53, null);
            int[] iArr = new int[(int) getIntCount(buffer)];
            while (!buffer.exhausted()) {
                iArr[i11] = buffer.readInt();
                i11++;
            }
            Object[] objArrCopyOf = Arrays.copyOf(byteStrings, byteStrings.length);
            Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
            return new Options((ByteString[]) objArrCopyOf, iArr, defaultConstructorMarker);
        }
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringArr, iArr);
    }

    @JvmStatic
    public static final Options of(ByteString... byteStringArr) {
        return INSTANCE.of(byteStringArr);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return contains((ByteString) obj);
        }
        return false;
    }

    public /* bridge */ boolean contains(ByteString byteString) {
        return super.contains((Object) byteString);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public ByteString get(int index) {
        return this.byteStrings[index];
    }

    /* JADX INFO: renamed from: getByteStrings$okio, reason: from getter */
    public final ByteString[] getByteStrings() {
        return this.byteStrings;
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public int get_size() {
        return this.byteStrings.length;
    }

    /* JADX INFO: renamed from: getTrie$okio, reason: from getter */
    public final int[] getTrie() {
        return this.trie;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return indexOf((ByteString) obj);
        }
        return -1;
    }

    public /* bridge */ int indexOf(ByteString byteString) {
        return super.indexOf((Object) byteString);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    public /* bridge */ int lastIndexOf(ByteString byteString) {
        return super.lastIndexOf((Object) byteString);
    }
}
