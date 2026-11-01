package kotlin.collections;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
@SinceKotlin
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u001e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b#\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u000e\b\u0007\u0018\u0000 U*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001VB\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\f\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0011\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0012\u0010\u000fJ%\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00032\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u001f\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001f\u0010\u001bJ\u000f\u0010 \u001a\u00020\tH\u0002¢\u0006\u0004\b \u0010\u0007J\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J\r\u0010$\u001a\u00028\u0000¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b&\u0010%J\r\u0010'\u001a\u00028\u0000¢\u0006\u0004\b'\u0010%J\u000f\u0010(\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b(\u0010%J\u0015\u0010*\u001a\u00020\t2\u0006\u0010)\u001a\u00028\u0000¢\u0006\u0004\b*\u0010+J\u0015\u0010,\u001a\u00020\t2\u0006\u0010)\u001a\u00028\u0000¢\u0006\u0004\b,\u0010+J\r\u0010-\u001a\u00028\u0000¢\u0006\u0004\b-\u0010%J\u000f\u0010.\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b.\u0010%J\r\u0010/\u001a\u00028\u0000¢\u0006\u0004\b/\u0010%J\u000f\u00100\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b0\u0010%J\u0017\u00101\u001a\u00020!2\u0006\u0010)\u001a\u00028\u0000H\u0016¢\u0006\u0004\b1\u00102J\u001f\u00101\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010)\u001a\u00028\u0000H\u0016¢\u0006\u0004\b1\u00103J\u001d\u00104\u001a\u00020!2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0016¢\u0006\u0004\b4\u00105J%\u00104\u001a\u00020!2\u0006\u0010\r\u001a\u00020\u00032\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0016¢\u0006\u0004\b4\u00106J\u0018\u00107\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b7\u00108J \u00109\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010)\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b9\u0010:J\u0018\u0010;\u001a\u00020!2\u0006\u0010)\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b;\u00102J\u0017\u0010<\u001a\u00020\u00032\u0006\u0010)\u001a\u00028\u0000H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010>\u001a\u00020\u00032\u0006\u0010)\u001a\u00028\u0000H\u0016¢\u0006\u0004\b>\u0010=J\u0017\u0010?\u001a\u00020!2\u0006\u0010)\u001a\u00028\u0000H\u0016¢\u0006\u0004\b?\u00102J\u0017\u0010@\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0003H\u0016¢\u0006\u0004\b@\u00108J\u001d\u0010A\u001a\u00020!2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0016¢\u0006\u0004\bA\u00105J\u001d\u0010B\u001a\u00020!2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0016¢\u0006\u0004\bB\u00105J\u000f\u0010C\u001a\u00020\tH\u0016¢\u0006\u0004\bC\u0010\u0007J)\u0010G\u001a\b\u0012\u0004\u0012\u00028\u00010E\"\u0004\b\u0001\u0010D2\f\u0010F\u001a\b\u0012\u0004\u0012\u00028\u00010EH\u0016¢\u0006\u0004\bG\u0010HJ\u0017\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010I0EH\u0016¢\u0006\u0004\bG\u0010JJ\u001f\u0010K\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0014¢\u0006\u0004\bK\u0010\u001bR\u0016\u0010M\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010LR\u001e\u0010P\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010I0E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR$\u0010T\u001a\u00020\u00032\u0006\u0010Q\u001a\u00020\u00038\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b\f\u0010L\u001a\u0004\bR\u0010S¨\u0006W"}, d2 = {"Lkotlin/collections/ArrayDeque;", "E", "Lkotlin/collections/AbstractMutableList;", "", "initialCapacity", "<init>", "(I)V", "()V", "minCapacity", "", "f", "newCapacity", "c", "index", "o", "(I)I", "m", "j", "e", "internalIndex", "", "elements", "a", "(ILjava/util/Collection;)V", "fromIndex", "toIndex", CampaignEx.JSON_KEY_AD_R, "(II)V", "s", "internalFromIndex", "internalToIndex", "n", "registerModification", "", "isEmpty", "()Z", "first", "()Ljava/lang/Object;", "h", "last", "l", "element", "addFirst", "(Ljava/lang/Object;)V", "addLast", "removeFirst", TtmlNode.TAG_P, "removeLast", CampaignEx.JSON_KEY_AD_Q, "add", "(Ljava/lang/Object;)Z", "(ILjava/lang/Object;)V", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "get", "(I)Ljava/lang/Object;", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "contains", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "remove", "removeAt", "removeAll", "retainAll", "clear", "T", "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "removeRange", "I", TtmlNode.TAG_HEAD, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "[Ljava/lang/Object;", "elementData", AppMeasurementSdk.ConditionalUserProperty.VALUE, "getSize", "()I", "size", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ArrayDeque<E> extends AbstractMutableList<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object[] f67085e = new Object[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int head;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Object[] elementData;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int size;

    public ArrayDeque() {
        this.elementData = f67085e;
    }

    public ArrayDeque(int i11) {
        Object[] objArr;
        if (i11 == 0) {
            objArr = f67085e;
        } else {
            if (i11 <= 0) {
                throw new IllegalArgumentException("Illegal Capacity: " + i11);
            }
            objArr = new Object[i11];
        }
        this.elementData = objArr;
    }

    private final void a(int internalIndex, Collection elements) {
        Iterator<E> it = elements.iterator();
        int length = this.elementData.length;
        while (internalIndex < length && it.hasNext()) {
            this.elementData[internalIndex] = it.next();
            internalIndex++;
        }
        int i11 = this.head;
        for (int i12 = 0; i12 < i11 && it.hasNext(); i12++) {
            this.elementData[i12] = it.next();
        }
        this.size = size() + elements.size();
    }

    private final void c(int newCapacity) {
        Object[] objArr = new Object[newCapacity];
        Object[] objArr2 = this.elementData;
        ArraysKt.n(objArr2, objArr, 0, this.head, objArr2.length);
        Object[] objArr3 = this.elementData;
        int length = objArr3.length;
        int i11 = this.head;
        ArraysKt.n(objArr3, objArr, length - i11, 0, i11);
        this.head = 0;
        this.elementData = objArr;
    }

    private final int e(int index) {
        return index == 0 ? ArraysKt.b0(this.elementData) : index - 1;
    }

    private final void f(int minCapacity) {
        if (minCapacity < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.elementData;
        if (minCapacity <= objArr.length) {
            return;
        }
        if (objArr == f67085e) {
            this.elementData = new Object[RangesKt.f(minCapacity, 10)];
        } else {
            c(AbstractList.INSTANCE.e(objArr.length, minCapacity));
        }
    }

    private final int j(int index) {
        if (index == ArraysKt.b0(this.elementData)) {
            return 0;
        }
        return index + 1;
    }

    private final int m(int index) {
        return index < 0 ? index + this.elementData.length : index;
    }

    private final void n(int internalFromIndex, int internalToIndex) {
        if (internalFromIndex < internalToIndex) {
            ArraysKt.w(this.elementData, null, internalFromIndex, internalToIndex);
            return;
        }
        Object[] objArr = this.elementData;
        ArraysKt.w(objArr, null, internalFromIndex, objArr.length);
        ArraysKt.w(this.elementData, null, 0, internalToIndex);
    }

    private final int o(int index) {
        Object[] objArr = this.elementData;
        return index >= objArr.length ? index - objArr.length : index;
    }

    private final void r(int fromIndex, int toIndex) {
        int iO = o(this.head + (fromIndex - 1));
        int iO2 = o(this.head + (toIndex - 1));
        while (fromIndex > 0) {
            int i11 = iO + 1;
            int iMin = Math.min(fromIndex, Math.min(i11, iO2 + 1));
            Object[] objArr = this.elementData;
            int i12 = iO2 - iMin;
            int i13 = iO - iMin;
            ArraysKt.n(objArr, objArr, i12 + 1, i13 + 1, i11);
            iO = m(i13);
            iO2 = m(i12);
            fromIndex -= iMin;
        }
    }

    private final void registerModification() {
        ((java.util.AbstractList) this).modCount++;
    }

    private final void s(int fromIndex, int toIndex) {
        int iO = o(this.head + toIndex);
        int iO2 = o(this.head + fromIndex);
        int size = size();
        while (true) {
            size -= toIndex;
            if (size <= 0) {
                return;
            }
            Object[] objArr = this.elementData;
            toIndex = Math.min(size, Math.min(objArr.length - iO, objArr.length - iO2));
            Object[] objArr2 = this.elementData;
            int i11 = iO + toIndex;
            ArraysKt.n(objArr2, objArr2, iO2, iO, i11);
            iO = o(i11);
            iO2 = o(iO2 + toIndex);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int index, Object element) {
        AbstractList.INSTANCE.c(index, size());
        if (index == size()) {
            addLast(element);
            return;
        }
        if (index == 0) {
            addFirst(element);
            return;
        }
        registerModification();
        f(size() + 1);
        int iO = o(this.head + index);
        if (index < ((size() + 1) >> 1)) {
            int iE = e(iO);
            int iE2 = e(this.head);
            int i11 = this.head;
            if (iE >= i11) {
                Object[] objArr = this.elementData;
                objArr[iE2] = objArr[i11];
                ArraysKt.n(objArr, objArr, i11, i11 + 1, iE + 1);
            } else {
                Object[] objArr2 = this.elementData;
                ArraysKt.n(objArr2, objArr2, i11 - 1, i11, objArr2.length);
                Object[] objArr3 = this.elementData;
                objArr3[objArr3.length - 1] = objArr3[0];
                ArraysKt.n(objArr3, objArr3, 0, 1, iE + 1);
            }
            this.elementData[iE] = element;
            this.head = iE2;
        } else {
            int iO2 = o(this.head + size());
            if (iO < iO2) {
                Object[] objArr4 = this.elementData;
                ArraysKt.n(objArr4, objArr4, iO + 1, iO, iO2);
            } else {
                Object[] objArr5 = this.elementData;
                ArraysKt.n(objArr5, objArr5, 1, 0, iO2);
                Object[] objArr6 = this.elementData;
                objArr6[0] = objArr6[objArr6.length - 1];
                ArraysKt.n(objArr6, objArr6, iO + 1, iO, objArr6.length - 1);
            }
            this.elementData[iO] = element;
        }
        this.size = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object element) {
        addLast(element);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection elements) {
        Intrinsics.h(elements, "elements");
        AbstractList.INSTANCE.c(index, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (index == size()) {
            return addAll(elements);
        }
        registerModification();
        f(size() + elements.size());
        int iO = o(this.head + size());
        int iO2 = o(this.head + index);
        int size = elements.size();
        if (index < ((size() + 1) >> 1)) {
            int i11 = this.head;
            int length = i11 - size;
            if (iO2 < i11) {
                Object[] objArr = this.elementData;
                ArraysKt.n(objArr, objArr, length, i11, objArr.length);
                if (size >= iO2) {
                    Object[] objArr2 = this.elementData;
                    ArraysKt.n(objArr2, objArr2, objArr2.length - size, 0, iO2);
                } else {
                    Object[] objArr3 = this.elementData;
                    ArraysKt.n(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.elementData;
                    ArraysKt.n(objArr4, objArr4, 0, size, iO2);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.elementData;
                ArraysKt.n(objArr5, objArr5, length, i11, iO2);
            } else {
                Object[] objArr6 = this.elementData;
                length += objArr6.length;
                int i12 = iO2 - i11;
                int length2 = objArr6.length - length;
                if (length2 >= i12) {
                    ArraysKt.n(objArr6, objArr6, length, i11, iO2);
                } else {
                    ArraysKt.n(objArr6, objArr6, length, i11, i11 + length2);
                    Object[] objArr7 = this.elementData;
                    ArraysKt.n(objArr7, objArr7, 0, this.head + length2, iO2);
                }
            }
            this.head = length;
            a(m(iO2 - size), elements);
        } else {
            int i13 = iO2 + size;
            if (iO2 < iO) {
                int i14 = size + iO;
                Object[] objArr8 = this.elementData;
                if (i14 <= objArr8.length) {
                    ArraysKt.n(objArr8, objArr8, i13, iO2, iO);
                } else if (i13 >= objArr8.length) {
                    ArraysKt.n(objArr8, objArr8, i13 - objArr8.length, iO2, iO);
                } else {
                    int length3 = iO - (i14 - objArr8.length);
                    ArraysKt.n(objArr8, objArr8, 0, length3, iO);
                    Object[] objArr9 = this.elementData;
                    ArraysKt.n(objArr9, objArr9, i13, iO2, length3);
                }
            } else {
                Object[] objArr10 = this.elementData;
                ArraysKt.n(objArr10, objArr10, size, 0, iO);
                Object[] objArr11 = this.elementData;
                if (i13 >= objArr11.length) {
                    ArraysKt.n(objArr11, objArr11, i13 - objArr11.length, iO2, objArr11.length);
                } else {
                    ArraysKt.n(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.elementData;
                    ArraysKt.n(objArr12, objArr12, i13, iO2, objArr12.length - size);
                }
            }
            a(iO2, elements);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        registerModification();
        f(size() + elements.size());
        a(o(this.head + size()), elements);
        return true;
    }

    public final void addFirst(Object element) {
        registerModification();
        f(size() + 1);
        int iE = e(this.head);
        this.head = iE;
        this.elementData[iE] = element;
        this.size = size() + 1;
    }

    public final void addLast(Object element) {
        registerModification();
        f(size() + 1);
        this.elementData[o(this.head + size())] = element;
        this.size = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (!isEmpty()) {
            registerModification();
            n(this.head, o(this.head + size()));
        }
        this.head = 0;
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    public final Object first() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return this.elementData[this.head];
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int index) {
        AbstractList.INSTANCE.b(index, size());
        return this.elementData[o(this.head + index)];
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: getSize, reason: from getter */
    public int getLength() {
        return this.size;
    }

    public final Object h() {
        if (isEmpty()) {
            return null;
        }
        return this.elementData[this.head];
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        int i11;
        int iO = o(this.head + size());
        int length = this.head;
        if (length < iO) {
            while (length < iO) {
                if (Intrinsics.c(element, this.elementData[length])) {
                    i11 = this.head;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iO) {
            return -1;
        }
        int length2 = this.elementData.length;
        while (length < length2) {
            if (Intrinsics.c(element, this.elementData[length])) {
                i11 = this.head;
            } else {
                length++;
            }
        }
        for (int i12 = 0; i12 < iO; i12++) {
            if (Intrinsics.c(element, this.elementData[i12])) {
                length = i12 + this.elementData.length;
                i11 = this.head;
            }
        }
        return -1;
        return length - i11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    public final Object l() {
        if (isEmpty()) {
            return null;
        }
        return this.elementData[o(this.head + CollectionsKt.n(this))];
    }

    public final Object last() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return this.elementData[o(this.head + CollectionsKt.n(this))];
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        int iB0;
        int i11;
        int iO = o(this.head + size());
        int i12 = this.head;
        if (i12 < iO) {
            iB0 = iO - 1;
            if (i12 <= iB0) {
                while (!Intrinsics.c(element, this.elementData[iB0])) {
                    if (iB0 != i12) {
                        iB0--;
                    }
                }
                i11 = this.head;
                return iB0 - i11;
            }
            return -1;
        }
        if (i12 > iO) {
            for (int i13 = iO - 1; -1 < i13; i13--) {
                if (Intrinsics.c(element, this.elementData[i13])) {
                    iB0 = i13 + this.elementData.length;
                    i11 = this.head;
                    return iB0 - i11;
                }
            }
            iB0 = ArraysKt.b0(this.elementData);
            int i14 = this.head;
            if (i14 <= iB0) {
                while (!Intrinsics.c(element, this.elementData[iB0])) {
                    if (iB0 != i14) {
                        iB0--;
                    }
                }
                i11 = this.head;
                return iB0 - i11;
            }
        }
        return -1;
    }

    public final Object p() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final Object q() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection elements) {
        int iO;
        Intrinsics.h(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty() && this.elementData.length != 0) {
            int iO2 = o(this.head + size());
            int i11 = this.head;
            if (i11 < iO2) {
                iO = i11;
                while (i11 < iO2) {
                    Object obj = this.elementData[i11];
                    if (elements.contains(obj)) {
                        z10 = true;
                    } else {
                        this.elementData[iO] = obj;
                        iO++;
                    }
                    i11++;
                }
                ArraysKt.w(this.elementData, null, iO, iO2);
            } else {
                int length = this.elementData.length;
                boolean z11 = false;
                int i12 = i11;
                while (i11 < length) {
                    Object[] objArr = this.elementData;
                    Object obj2 = objArr[i11];
                    objArr[i11] = null;
                    if (elements.contains(obj2)) {
                        z11 = true;
                    } else {
                        this.elementData[i12] = obj2;
                        i12++;
                    }
                    i11++;
                }
                iO = o(i12);
                for (int i13 = 0; i13 < iO2; i13++) {
                    Object[] objArr2 = this.elementData;
                    Object obj3 = objArr2[i13];
                    objArr2[i13] = null;
                    if (elements.contains(obj3)) {
                        z11 = true;
                    } else {
                        this.elementData[iO] = obj3;
                        iO = j(iO);
                    }
                }
                z10 = z11;
            }
            if (z10) {
                registerModification();
                this.size = m(iO - this.head);
            }
        }
        return z10;
    }

    @Override // kotlin.collections.AbstractMutableList
    public Object removeAt(int index) {
        AbstractList.INSTANCE.b(index, size());
        if (index == CollectionsKt.n(this)) {
            return removeLast();
        }
        if (index == 0) {
            return removeFirst();
        }
        registerModification();
        int iO = o(this.head + index);
        Object obj = this.elementData[iO];
        if (index < (size() >> 1)) {
            int i11 = this.head;
            if (iO >= i11) {
                Object[] objArr = this.elementData;
                ArraysKt.n(objArr, objArr, i11 + 1, i11, iO);
            } else {
                Object[] objArr2 = this.elementData;
                ArraysKt.n(objArr2, objArr2, 1, 0, iO);
                Object[] objArr3 = this.elementData;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i12 = this.head;
                ArraysKt.n(objArr3, objArr3, i12 + 1, i12, objArr3.length - 1);
            }
            Object[] objArr4 = this.elementData;
            int i13 = this.head;
            objArr4[i13] = null;
            this.head = j(i13);
        } else {
            int iO2 = o(this.head + CollectionsKt.n(this));
            if (iO <= iO2) {
                Object[] objArr5 = this.elementData;
                ArraysKt.n(objArr5, objArr5, iO, iO + 1, iO2 + 1);
            } else {
                Object[] objArr6 = this.elementData;
                ArraysKt.n(objArr6, objArr6, iO, iO + 1, objArr6.length);
                Object[] objArr7 = this.elementData;
                objArr7[objArr7.length - 1] = objArr7[0];
                ArraysKt.n(objArr7, objArr7, 0, 1, iO2 + 1);
            }
            this.elementData[iO2] = null;
        }
        this.size = size() - 1;
        return obj;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        registerModification();
        Object[] objArr = this.elementData;
        int i11 = this.head;
        Object obj = objArr[i11];
        objArr[i11] = null;
        this.head = j(i11);
        this.size = size() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        registerModification();
        int iO = o(this.head + CollectionsKt.n(this));
        Object[] objArr = this.elementData;
        Object obj = objArr[iO];
        objArr[iO] = null;
        this.size = size() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    protected void removeRange(int fromIndex, int toIndex) {
        AbstractList.INSTANCE.d(fromIndex, toIndex, size());
        int i11 = toIndex - fromIndex;
        if (i11 == 0) {
            return;
        }
        if (i11 == size()) {
            clear();
            return;
        }
        if (i11 == 1) {
            remove(fromIndex);
            return;
        }
        registerModification();
        if (fromIndex < size() - toIndex) {
            r(fromIndex, toIndex);
            int iO = o(this.head + i11);
            n(this.head, iO);
            this.head = iO;
        } else {
            s(fromIndex, toIndex);
            int iO2 = o(this.head + size());
            n(m(iO2 - i11), iO2);
        }
        this.size = size() - i11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection elements) {
        int iO;
        Intrinsics.h(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty() && this.elementData.length != 0) {
            int iO2 = o(this.head + size());
            int i11 = this.head;
            if (i11 < iO2) {
                iO = i11;
                while (i11 < iO2) {
                    Object obj = this.elementData[i11];
                    if (elements.contains(obj)) {
                        this.elementData[iO] = obj;
                        iO++;
                    } else {
                        z10 = true;
                    }
                    i11++;
                }
                ArraysKt.w(this.elementData, null, iO, iO2);
            } else {
                int length = this.elementData.length;
                boolean z11 = false;
                int i12 = i11;
                while (i11 < length) {
                    Object[] objArr = this.elementData;
                    Object obj2 = objArr[i11];
                    objArr[i11] = null;
                    if (elements.contains(obj2)) {
                        this.elementData[i12] = obj2;
                        i12++;
                    } else {
                        z11 = true;
                    }
                    i11++;
                }
                iO = o(i12);
                for (int i13 = 0; i13 < iO2; i13++) {
                    Object[] objArr2 = this.elementData;
                    Object obj3 = objArr2[i13];
                    objArr2[i13] = null;
                    if (elements.contains(obj3)) {
                        this.elementData[iO] = obj3;
                        iO = j(iO);
                    } else {
                        z11 = true;
                    }
                }
                z10 = z11;
            }
            if (z10) {
                registerModification();
                this.size = m(iO - this.head);
            }
        }
        return z10;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int index, Object element) {
        AbstractList.INSTANCE.b(index, size());
        int iO = o(this.head + index);
        Object[] objArr = this.elementData;
        Object obj = objArr[iO];
        objArr[iO] = element;
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] array) {
        Intrinsics.h(array, "array");
        if (array.length < size()) {
            array = d.a(array, size());
        }
        int iO = o(this.head + size());
        int i11 = this.head;
        if (i11 < iO) {
            ArraysKt.r(this.elementData, array, 0, i11, iO, 2, null);
        } else if (!isEmpty()) {
            Object[] objArr = this.elementData;
            ArraysKt.n(objArr, array, 0, this.head, objArr.length);
            Object[] objArr2 = this.elementData;
            ArraysKt.n(objArr2, array, objArr2.length - this.head, 0, iO);
        }
        return CollectionsKt.g(size(), array);
    }
}
