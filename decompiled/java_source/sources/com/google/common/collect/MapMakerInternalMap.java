package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.collect.MapMakerInternalMap.Segment;
import com.google.common.collect.MapMakerInternalMap.h;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes4.dex */
class MapMakerInternalMap<K, V, E extends h, S extends Segment<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {
    static final int CONTAINS_VALUE_RETRIES = 3;
    static final int DRAIN_MAX = 16;
    static final int DRAIN_THRESHOLD = 63;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int MAX_SEGMENTS = 65536;
    static final u UNSET_WEAK_VALUE_REFERENCE = new a();
    private static final long serialVersionUID = 5;
    final int concurrencyLevel;
    final transient i entryHelper;
    transient Set<Map.Entry<K, V>> entrySet;
    final Equivalence keyEquivalence;
    transient Set<K> keySet;
    final transient int segmentMask;
    final transient int segmentShift;
    final transient Segment<K, V, E, S>[] segments;
    transient Collection<V> values;

    static abstract class AbstractSerializationProxy<K, V> extends l2 implements Serializable {
        private static final long serialVersionUID = 3;
        final int concurrencyLevel;
        transient ConcurrentMap<K, V> delegate;
        final Equivalence keyEquivalence;
        final Strength keyStrength;
        final Equivalence valueEquivalence;
        final Strength valueStrength;

        AbstractSerializationProxy(Strength strength, Strength strength2, Equivalence equivalence, Equivalence equivalence2, int i11, ConcurrentMap<K, V> concurrentMap) {
            this.keyStrength = strength;
            this.valueStrength = strength2;
            this.keyEquivalence = equivalence;
            this.valueEquivalence = equivalence2;
            this.concurrencyLevel = i11;
            this.delegate = concurrentMap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.n2, com.google.common.collect.q2
        /* JADX INFO: renamed from: delegate */
        public ConcurrentMap<K, V> l() {
            return this.delegate;
        }

        void readEntries(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            while (true) {
                Object object = objectInputStream.readObject();
                if (object == null) {
                    return;
                }
                this.delegate.put((K) object, (V) objectInputStream.readObject());
            }
        }

        MapMaker readMapMaker(ObjectInputStream objectInputStream) throws IOException {
            return new MapMaker().g(objectInputStream.readInt()).j(this.keyStrength).k(this.valueStrength).h(this.keyEquivalence).a(this.concurrencyLevel);
        }

        void writeMapTo(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.delegate.size());
            for (Map.Entry<K, V> entry : this.delegate.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }
    }

    static final class CleanupMapTask implements Runnable {
        final WeakReference<MapMakerInternalMap<?, ?, ?, ?>> mapReference;

        public CleanupMapTask(MapMakerInternalMap<?, ?, ?, ?> mapMakerInternalMap) {
            this.mapReference = new WeakReference<>(mapMakerInternalMap);
        }

        @Override // java.lang.Runnable
        public void run() {
            MapMakerInternalMap<?, ?, ?, ?> mapMakerInternalMap = this.mapReference.get();
            if (mapMakerInternalMap == null) {
                throw new CancellationException();
            }
            for (Segment<?, ?, E, S> segment : mapMakerInternalMap.segments) {
                segment.runCleanup();
            }
        }
    }

    static abstract class Segment<K, V, E extends h, S extends Segment<K, V, E, S>> extends ReentrantLock {
        volatile int count;
        final MapMakerInternalMap<K, V, E, S> map;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();
        volatile AtomicReferenceArray<E> table;
        int threshold;

        Segment(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i11) {
            this.map = mapMakerInternalMap;
            initTable(newEntryArray(i11));
        }

        static <K, V, E extends h> boolean isCollected(E e11) {
            return e11.getValue() == null;
        }

        abstract E castForTesting(h hVar);

        void clear() {
            if (this.count != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    for (int i11 = 0; i11 < atomicReferenceArray.length(); i11++) {
                        atomicReferenceArray.set(i11, null);
                    }
                    maybeClearReferenceQueues();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                }
            }
        }

        <T> void clearReferenceQueue(ReferenceQueue<T> referenceQueue) {
            while (referenceQueue.poll() != null) {
            }
        }

        boolean clearValueForTesting(K k11, int i11, u uVar) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i11;
                E e11 = atomicReferenceArray.get(length);
                for (h hVarK = e11; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i11 && key != null && this.map.keyEquivalence.equivalent(k11, key)) {
                        if (((t) hVarK).a() != uVar) {
                            return false;
                        }
                        atomicReferenceArray.set(length, (E) removeFromChain(e11, hVarK));
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        boolean containsKey(Object obj, int i11) {
            try {
                boolean z10 = false;
                if (this.count == 0) {
                    return false;
                }
                h liveEntry = getLiveEntry(obj, i11);
                if (liveEntry != null && liveEntry.getValue() != null) {
                    z10 = true;
                }
                return z10;
            } finally {
                postReadCleanup();
            }
        }

        boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i11 = 0; i11 < length; i11++) {
                        for (E eK = atomicReferenceArray.get(i11); eK != null; eK = eK.k()) {
                            V liveValue = getLiveValue(eK);
                            if (liveValue != null && this.map.valueEquivalence().equivalent(obj, liveValue)) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            } finally {
                postReadCleanup();
            }
        }

        E copyEntry(E e11, E e12) {
            return (E) this.map.entryHelper.b(self(), e11, e12);
        }

        E copyForTesting(h hVar, h hVar2) {
            return (E) this.map.entryHelper.b(self(), castForTesting(hVar), castForTesting(hVar2));
        }

        void drainKeyReferenceQueue(ReferenceQueue<K> referenceQueue) {
            int i11 = 0;
            do {
                Reference<? extends K> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.map.reclaimKey((h) referencePoll);
                i11++;
            } while (i11 != 16);
        }

        void drainValueReferenceQueue(ReferenceQueue<V> referenceQueue) {
            int i11 = 0;
            do {
                Reference<? extends V> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.map.reclaimValue((u) referencePoll);
                i11++;
            } while (i11 != 16);
        }

        void expand() {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i11 = this.count;
            AtomicReferenceArray<E> atomicReferenceArrayNewEntryArray = newEntryArray(length << 1);
            this.threshold = (atomicReferenceArrayNewEntryArray.length() * 3) / 4;
            int length2 = atomicReferenceArrayNewEntryArray.length() - 1;
            for (int i12 = 0; i12 < length; i12++) {
                E eK = atomicReferenceArray.get(i12);
                if (eK != null) {
                    h hVarK = eK.k();
                    int iB = eK.b() & length2;
                    if (hVarK == null) {
                        atomicReferenceArrayNewEntryArray.set(iB, eK);
                    } else {
                        h hVar = eK;
                        while (hVarK != null) {
                            int iB2 = hVarK.b() & length2;
                            if (iB2 != iB) {
                                hVar = hVarK;
                                iB = iB2;
                            }
                            hVarK = hVarK.k();
                        }
                        atomicReferenceArrayNewEntryArray.set(iB, hVar);
                        while (eK != hVar) {
                            int iB3 = eK.b() & length2;
                            h hVarCopyEntry = copyEntry(eK, (h) atomicReferenceArrayNewEntryArray.get(iB3));
                            if (hVarCopyEntry != null) {
                                atomicReferenceArrayNewEntryArray.set(iB3, hVarCopyEntry);
                            } else {
                                i11--;
                            }
                            eK = eK.k();
                        }
                    }
                }
            }
            this.table = atomicReferenceArrayNewEntryArray;
            this.count = i11;
        }

        V get(Object obj, int i11) {
            try {
                h liveEntry = getLiveEntry(obj, i11);
                if (liveEntry == null) {
                    return null;
                }
                V v11 = (V) liveEntry.getValue();
                if (v11 == null) {
                    tryDrainReferenceQueues();
                }
                return v11;
            } finally {
                postReadCleanup();
            }
        }

        E getEntry(Object obj, int i11) {
            if (this.count == 0) {
                return null;
            }
            for (E e11 = (E) getFirst(i11); e11 != null; e11 = (E) e11.k()) {
                if (e11.b() == i11) {
                    Object key = e11.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                        return e11;
                    }
                }
            }
            return null;
        }

        E getFirst(int i11) {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            return atomicReferenceArray.get(i11 & (atomicReferenceArray.length() - 1));
        }

        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            throw new AssertionError();
        }

        E getLiveEntry(Object obj, int i11) {
            return (E) getEntry(obj, i11);
        }

        V getLiveValue(E e11) {
            if (e11.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v11 = (V) e11.getValue();
            if (v11 != null) {
                return v11;
            }
            tryDrainReferenceQueues();
            return null;
        }

        V getLiveValueForTesting(h hVar) {
            return getLiveValue(castForTesting(hVar));
        }

        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            throw new AssertionError();
        }

        u getWeakValueReferenceForTesting(h hVar) {
            throw new AssertionError();
        }

        void initTable(AtomicReferenceArray<E> atomicReferenceArray) {
            this.threshold = (atomicReferenceArray.length() * 3) / 4;
            this.table = atomicReferenceArray;
        }

        void maybeClearReferenceQueues() {
        }

        void maybeDrainReferenceQueues() {
        }

        AtomicReferenceArray<E> newEntryArray(int i11) {
            return new AtomicReferenceArray<>(i11);
        }

        E newEntryForTesting(K k11, int i11, h hVar) {
            return (E) this.map.entryHelper.e(self(), k11, i11, castForTesting(hVar));
        }

        u newWeakValueReferenceForTesting(h hVar, V v11) {
            throw new AssertionError();
        }

        void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & MapMakerInternalMap.DRAIN_THRESHOLD) == 0) {
                runCleanup();
            }
        }

        void preWriteCleanup() {
            runLockedCleanup();
        }

        V put(K k11, int i11, V v11, boolean z10) {
            lock();
            try {
                preWriteCleanup();
                int i12 = this.count + 1;
                if (i12 > this.threshold) {
                    expand();
                    i12 = this.count + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i11;
                E e11 = atomicReferenceArray.get(length);
                for (h hVarK = e11; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i11 && key != null && this.map.keyEquivalence.equivalent(k11, key)) {
                        V v12 = (V) hVarK.getValue();
                        if (v12 == null) {
                            this.modCount++;
                            setValue(hVarK, v11);
                            this.count = this.count;
                            return null;
                        }
                        if (z10) {
                            return v12;
                        }
                        this.modCount++;
                        setValue(hVarK, v11);
                        return v12;
                    }
                }
                this.modCount++;
                h hVarE = this.map.entryHelper.e(self(), k11, i11, e11);
                setValue(hVarE, v11);
                atomicReferenceArray.set(length, (E) hVarE);
                this.count = i12;
                return null;
            } finally {
                unlock();
            }
        }

        boolean reclaimKey(E e11, int i11) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = i11 & (atomicReferenceArray.length() - 1);
                E e12 = atomicReferenceArray.get(length);
                for (h hVarK = e12; hVarK != null; hVarK = hVarK.k()) {
                    if (hVarK == e11) {
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e12, hVarK);
                        int i12 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i12;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        boolean reclaimValue(K k11, int i11, u uVar) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i11;
                E e11 = atomicReferenceArray.get(length);
                for (h hVarK = e11; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i11 && key != null && this.map.keyEquivalence.equivalent(k11, key)) {
                        if (((t) hVarK).a() != uVar) {
                            return false;
                        }
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e11, hVarK);
                        int i12 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i12;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        V remove(Object obj, int i11) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i11;
                E e11 = atomicReferenceArray.get(length);
                for (h hVarK = e11; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i11 && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        V v11 = (V) hVarK.getValue();
                        if (v11 == null && !isCollected(hVarK)) {
                            return null;
                        }
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e11, hVarK);
                        int i12 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i12;
                        return v11;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        boolean remove(Object obj, int i11, Object obj2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i11;
                E e11 = atomicReferenceArray.get(length);
                h hVarK = e11;
                while (true) {
                    boolean z10 = false;
                    if (hVarK == null) {
                        return false;
                    }
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i11 && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        if (this.map.valueEquivalence().equivalent(obj2, hVarK.getValue())) {
                            z10 = true;
                        } else if (!isCollected(hVarK)) {
                            return false;
                        }
                        this.modCount++;
                        h hVarRemoveFromChain = removeFromChain(e11, hVarK);
                        int i12 = this.count - 1;
                        atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                        this.count = i12;
                        return z10;
                    }
                    hVarK = hVarK.k();
                }
            } finally {
                unlock();
            }
        }

        boolean removeEntryForTesting(E e11) {
            int iB = e11.b();
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = iB & (atomicReferenceArray.length() - 1);
            E e12 = atomicReferenceArray.get(length);
            for (h hVarK = e12; hVarK != null; hVarK = hVarK.k()) {
                if (hVarK == e11) {
                    this.modCount++;
                    h hVarRemoveFromChain = removeFromChain(e12, hVarK);
                    int i11 = this.count - 1;
                    atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                    this.count = i11;
                    return true;
                }
            }
            return false;
        }

        E removeFromChain(E e11, E e12) {
            int i11 = this.count;
            E e13 = (E) e12.k();
            while (e11 != e12) {
                h hVarCopyEntry = copyEntry(e11, e13);
                if (hVarCopyEntry != null) {
                    e13 = (E) hVarCopyEntry;
                } else {
                    i11--;
                }
                e11 = (E) e11.k();
            }
            this.count = i11;
            return e13;
        }

        E removeFromChainForTesting(h hVar, h hVar2) {
            return (E) removeFromChain(castForTesting(hVar), castForTesting(hVar2));
        }

        boolean removeTableEntryForTesting(h hVar) {
            return removeEntryForTesting(castForTesting(hVar));
        }

        V replace(K k11, int i11, V v11) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i11;
                E e11 = atomicReferenceArray.get(length);
                for (h hVarK = e11; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i11 && key != null && this.map.keyEquivalence.equivalent(k11, key)) {
                        V v12 = (V) hVarK.getValue();
                        if (v12 != null) {
                            this.modCount++;
                            setValue(hVarK, v11);
                            return v12;
                        }
                        if (isCollected(hVarK)) {
                            this.modCount++;
                            h hVarRemoveFromChain = removeFromChain(e11, hVarK);
                            int i12 = this.count - 1;
                            atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                            this.count = i12;
                        }
                        return null;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        boolean replace(K k11, int i11, V v11, V v12) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i11;
                E e11 = atomicReferenceArray.get(length);
                for (h hVarK = e11; hVarK != null; hVarK = hVarK.k()) {
                    Object key = hVarK.getKey();
                    if (hVarK.b() == i11 && key != null && this.map.keyEquivalence.equivalent(k11, key)) {
                        Object value = hVarK.getValue();
                        if (value != null) {
                            if (!this.map.valueEquivalence().equivalent(v11, value)) {
                                return false;
                            }
                            this.modCount++;
                            setValue(hVarK, v12);
                            return true;
                        }
                        if (isCollected(hVarK)) {
                            this.modCount++;
                            h hVarRemoveFromChain = removeFromChain(e11, hVarK);
                            int i12 = this.count - 1;
                            atomicReferenceArray.set(length, (E) hVarRemoveFromChain);
                            this.count = i12;
                        }
                        return false;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        void runCleanup() {
            runLockedCleanup();
        }

        void runLockedCleanup() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        abstract S self();

        void setTableEntryForTesting(int i11, h hVar) {
            this.table.set(i11, (E) castForTesting(hVar));
        }

        void setValue(E e11, V v11) {
            this.map.entryHelper.d(self(), e11, v11);
        }

        void setValueForTesting(h hVar, V v11) {
            this.map.entryHelper.d(self(), castForTesting(hVar), v11);
        }

        void setWeakValueReferenceForTesting(h hVar, u uVar) {
            throw new AssertionError();
        }

        void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }
    }

    private static final class SerializationProxy<K, V> extends AbstractSerializationProxy<K, V> {
        private static final long serialVersionUID = 3;

        SerializationProxy(Strength strength, Strength strength2, Equivalence equivalence, Equivalence equivalence2, int i11, ConcurrentMap<K, V> concurrentMap) {
            super(strength, strength2, equivalence, equivalence2, i11, concurrentMap);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.delegate = readMapMaker(objectInputStream).i();
            readEntries(objectInputStream);
        }

        private Object readResolve() {
            return this.delegate;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            writeMapTo(objectOutputStream);
        }
    }

    enum Strength {
        STRONG { // from class: com.google.common.collect.MapMakerInternalMap.Strength.1
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            Equivalence defaultEquivalence() {
                return Equivalence.equals();
            }
        },
        WEAK { // from class: com.google.common.collect.MapMakerInternalMap.Strength.2
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            Equivalence defaultEquivalence() {
                return Equivalence.identity();
            }
        };

        /* synthetic */ Strength(a aVar) {
            this();
        }

        abstract Equivalence defaultEquivalence();
    }

    static final class StrongKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, l, StrongKeyDummyValueSegment<K>> {
        StrongKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, l, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i11) {
            super(mapMakerInternalMap, i11);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public l castForTesting(h hVar) {
            return (l) hVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyDummyValueSegment<K> self() {
            return this;
        }
    }

    static final class StrongKeyStrongValueSegment<K, V> extends Segment<K, V, m, StrongKeyStrongValueSegment<K, V>> {
        StrongKeyStrongValueSegment(MapMakerInternalMap<K, V, m, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i11) {
            super(mapMakerInternalMap, i11);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public m castForTesting(h hVar) {
            return (m) hVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyStrongValueSegment<K, V> self() {
            return this;
        }
    }

    static final class StrongKeyWeakValueSegment<K, V> extends Segment<K, V, n, StrongKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<V> queueForValues;

        StrongKeyWeakValueSegment(MapMakerInternalMap<K, V, n, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i11) {
            super(mapMakerInternalMap, i11);
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public n castForTesting(h hVar) {
            return (n) hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public u getWeakValueReferenceForTesting(h hVar) {
            return castForTesting(hVar).a();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public u newWeakValueReferenceForTesting(h hVar, V v11) {
            return new v(this.queueForValues, v11, castForTesting(hVar));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void setWeakValueReferenceForTesting(h hVar, u uVar) {
            n nVarCastForTesting = castForTesting(hVar);
            u uVar2 = nVarCastForTesting.f30566c;
            nVarCastForTesting.f30566c = uVar;
            uVar2.clear();
        }
    }

    static final class WeakKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, q, WeakKeyDummyValueSegment<K>> {
        private final ReferenceQueue<K> queueForKeys;

        WeakKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, q, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i11) {
            super(mapMakerInternalMap, i11);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public q castForTesting(h hVar) {
            return (q) hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyDummyValueSegment<K> self() {
            return this;
        }
    }

    static final class WeakKeyStrongValueSegment<K, V> extends Segment<K, V, r, WeakKeyStrongValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys;

        WeakKeyStrongValueSegment(MapMakerInternalMap<K, V, r, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i11) {
            super(mapMakerInternalMap, i11);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public r castForTesting(h hVar) {
            return (r) hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyStrongValueSegment<K, V> self() {
            return this;
        }
    }

    static final class WeakKeyWeakValueSegment<K, V> extends Segment<K, V, s, WeakKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys;
        private final ReferenceQueue<V> queueForValues;

        WeakKeyWeakValueSegment(MapMakerInternalMap<K, V, s, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i11) {
            super(mapMakerInternalMap, i11);
            this.queueForKeys = new ReferenceQueue<>();
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public s castForTesting(h hVar) {
            return (s) hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public u getWeakValueReferenceForTesting(h hVar) {
            return castForTesting(hVar).a();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public u newWeakValueReferenceForTesting(h hVar, V v11) {
            return new v(this.queueForValues, v11, castForTesting(hVar));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void setWeakValueReferenceForTesting(h hVar, u uVar) {
            s sVarCastForTesting = castForTesting(hVar);
            u uVar2 = sVarCastForTesting.f30576b;
            sVarCastForTesting.f30576b = uVar;
            uVar2.clear();
        }
    }

    class a implements u {
        a() {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.u
        public /* bridge */ /* synthetic */ h a() {
            d();
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.u
        public /* bridge */ /* synthetic */ u b(ReferenceQueue referenceQueue, h hVar) {
            android.support.v4.media.session.c.a(hVar);
            return c(referenceQueue, null);
        }

        public u c(ReferenceQueue referenceQueue, d dVar) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.u
        public void clear() {
        }

        public d d() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.u
        public Object get() {
            return null;
        }
    }

    static abstract class b implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f30546a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f30547b;

        b(Object obj, int i11) {
            this.f30546a = obj;
            this.f30547b = i11;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final int b() {
            return this.f30547b;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final Object getKey() {
            return this.f30546a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public h k() {
            return null;
        }
    }

    static abstract class c extends WeakReference implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f30548a;

        c(ReferenceQueue referenceQueue, Object obj, int i11) {
            super(obj, referenceQueue);
            this.f30548a = i11;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final int b() {
            return this.f30548a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final Object getKey() {
            return get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public h k() {
            return null;
        }
    }

    static final class d implements h {
    }

    final class e extends g {
        e() {
            super();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            return c();
        }
    }

    final class f extends AbstractSet {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = MapMakerInternalMap.this.get(key)) != null && MapMakerInternalMap.this.valueEquivalence().equivalent(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && MapMakerInternalMap.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    abstract class g implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f30551a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30552b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Segment f30553c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        AtomicReferenceArray f30554d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        h f30555e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        w f30556f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        w f30557g;

        g() {
            this.f30551a = MapMakerInternalMap.this.segments.length - 1;
            a();
        }

        final void a() {
            this.f30556f = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i11 = this.f30551a;
                if (i11 < 0) {
                    return;
                }
                Segment<K, V, E, S>[] segmentArr = MapMakerInternalMap.this.segments;
                this.f30551a = i11 - 1;
                Segment<K, V, E, S> segment = segmentArr[i11];
                this.f30553c = segment;
                if (segment.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f30553c.table;
                    this.f30554d = atomicReferenceArray;
                    this.f30552b = atomicReferenceArray.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        boolean b(h hVar) {
            Segment segment;
            try {
                Object key = hVar.getKey();
                Object liveValue = MapMakerInternalMap.this.getLiveValue(hVar);
                if (liveValue == null) {
                    return false;
                }
                this.f30556f = new w(key, liveValue);
                return true;
            } finally {
                this.f30553c.postReadCleanup();
            }
        }

        w c() {
            w wVar = this.f30556f;
            if (wVar == null) {
                throw new NoSuchElementException();
            }
            this.f30557g = wVar;
            a();
            return this.f30557g;
        }

        boolean d() {
            h hVar = this.f30555e;
            if (hVar == null) {
                return false;
            }
            while (true) {
                this.f30555e = hVar.k();
                h hVar2 = this.f30555e;
                if (hVar2 == null) {
                    return false;
                }
                if (b(hVar2)) {
                    return true;
                }
                hVar = this.f30555e;
            }
        }

        boolean e() {
            while (true) {
                int i11 = this.f30552b;
                if (i11 < 0) {
                    return false;
                }
                AtomicReferenceArray atomicReferenceArray = this.f30554d;
                this.f30552b = i11 - 1;
                h hVar = (h) atomicReferenceArray.get(i11);
                this.f30555e = hVar;
                if (hVar != null && (b(hVar) || d())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30556f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            e2.e(this.f30557g != null);
            MapMakerInternalMap.this.remove(this.f30557g.getKey());
            this.f30557g = null;
        }
    }

    interface h {
        int b();

        Object getKey();

        Object getValue();

        h k();
    }

    interface i {
        Segment a(MapMakerInternalMap mapMakerInternalMap, int i11);

        h b(Segment segment, h hVar, h hVar2);

        Strength c();

        void d(Segment segment, h hVar, Object obj);

        h e(Segment segment, Object obj, int i11, h hVar);

        Strength f();
    }

    final class j extends g {
        j() {
            super();
        }

        @Override // java.util.Iterator
        public Object next() {
            return c().getKey();
        }
    }

    final class k extends AbstractSet {
        k() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return MapMakerInternalMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    static class l extends b implements h {

        static final class a implements i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final a f30561a = new a();

            a() {
            }

            static a h() {
                return f30561a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength c() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength f() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public l b(StrongKeyDummyValueSegment strongKeyDummyValueSegment, l lVar, l lVar2) {
                return e(strongKeyDummyValueSegment, lVar.f30546a, lVar.f30547b, lVar2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public l e(StrongKeyDummyValueSegment strongKeyDummyValueSegment, Object obj, int i11, l lVar) {
                return lVar == null ? new l(obj, i11, null) : new b(obj, i11, lVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public StrongKeyDummyValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i11) {
                return new StrongKeyDummyValueSegment(mapMakerInternalMap, i11);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void d(StrongKeyDummyValueSegment strongKeyDummyValueSegment, l lVar, MapMaker.Dummy dummy) {
            }
        }

        private static final class b extends l {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final l f30562c;

            b(Object obj, int i11, l lVar) {
                super(obj, i11, null);
                this.f30562c = lVar;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.b, com.google.common.collect.MapMakerInternalMap.h
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public l k() {
                return this.f30562c;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.l, com.google.common.collect.MapMakerInternalMap.h
            public /* bridge */ /* synthetic */ Object getValue() {
                return super.getValue();
            }
        }

        private l(Object obj, int i11) {
            super(obj, i11);
        }

        /* synthetic */ l(Object obj, int i11, a aVar) {
            this(obj, i11);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }
    }

    static class m extends b implements h {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile Object f30563c;

        static final class a implements i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final a f30564a = new a();

            a() {
            }

            static a h() {
                return f30564a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength c() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength f() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public m b(StrongKeyStrongValueSegment strongKeyStrongValueSegment, m mVar, m mVar2) {
                m mVarE = e(strongKeyStrongValueSegment, mVar.f30546a, mVar.f30547b, mVar2);
                mVarE.f30563c = mVar.f30563c;
                return mVarE;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public m e(StrongKeyStrongValueSegment strongKeyStrongValueSegment, Object obj, int i11, m mVar) {
                return mVar == null ? new m(obj, i11, null) : new b(obj, i11, mVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public StrongKeyStrongValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i11) {
                return new StrongKeyStrongValueSegment(mapMakerInternalMap, i11);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void d(StrongKeyStrongValueSegment strongKeyStrongValueSegment, m mVar, Object obj) {
                mVar.f30563c = obj;
            }
        }

        private static final class b extends m {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final m f30565d;

            b(Object obj, int i11, m mVar) {
                super(obj, i11, null);
                this.f30565d = mVar;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.b, com.google.common.collect.MapMakerInternalMap.h
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public m k() {
                return this.f30565d;
            }
        }

        private m(Object obj, int i11) {
            super(obj, i11);
            this.f30563c = null;
        }

        /* synthetic */ m(Object obj, int i11, a aVar) {
            this(obj, i11);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final Object getValue() {
            return this.f30563c;
        }
    }

    static class n extends b implements t {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile u f30566c;

        static final class a implements i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final a f30567a = new a();

            a() {
            }

            static a h() {
                return f30567a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength c() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength f() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public n b(StrongKeyWeakValueSegment strongKeyWeakValueSegment, n nVar, n nVar2) {
                if (Segment.isCollected(nVar)) {
                    return null;
                }
                n nVarE = e(strongKeyWeakValueSegment, nVar.f30546a, nVar.f30547b, nVar2);
                nVarE.f30566c = nVar.f30566c.b(strongKeyWeakValueSegment.queueForValues, nVarE);
                return nVarE;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public n e(StrongKeyWeakValueSegment strongKeyWeakValueSegment, Object obj, int i11, n nVar) {
                return nVar == null ? new n(obj, i11, null) : new b(obj, i11, nVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public StrongKeyWeakValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i11) {
                return new StrongKeyWeakValueSegment(mapMakerInternalMap, i11);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void d(StrongKeyWeakValueSegment strongKeyWeakValueSegment, n nVar, Object obj) {
                u uVar = nVar.f30566c;
                nVar.f30566c = new v(strongKeyWeakValueSegment.queueForValues, obj, nVar);
                uVar.clear();
            }
        }

        private static final class b extends n {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final n f30568d;

            b(Object obj, int i11, n nVar) {
                super(obj, i11, null);
                this.f30568d = nVar;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.b, com.google.common.collect.MapMakerInternalMap.h
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public n k() {
                return this.f30568d;
            }
        }

        private n(Object obj, int i11) {
            super(obj, i11);
            this.f30566c = MapMakerInternalMap.unsetWeakValueReference();
        }

        /* synthetic */ n(Object obj, int i11, a aVar) {
            this(obj, i11);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.t
        public final u a() {
            return this.f30566c;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final Object getValue() {
            return this.f30566c.get();
        }
    }

    final class o extends g {
        o() {
            super();
        }

        @Override // java.util.Iterator
        public Object next() {
            return c().getValue();
        }
    }

    final class p extends AbstractCollection {
        p() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return new o();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    static class q extends c implements h {

        static final class a implements i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final a f30571a = new a();

            a() {
            }

            static a h() {
                return f30571a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength c() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength f() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public q b(WeakKeyDummyValueSegment weakKeyDummyValueSegment, q qVar, q qVar2) {
                Object key = qVar.getKey();
                if (key == null) {
                    return null;
                }
                return e(weakKeyDummyValueSegment, key, qVar.f30548a, qVar2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public q e(WeakKeyDummyValueSegment weakKeyDummyValueSegment, Object obj, int i11, q qVar) {
                return qVar == null ? new q(weakKeyDummyValueSegment.queueForKeys, obj, i11, null) : new b(weakKeyDummyValueSegment.queueForKeys, obj, i11, qVar, null);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public WeakKeyDummyValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i11) {
                return new WeakKeyDummyValueSegment(mapMakerInternalMap, i11);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void d(WeakKeyDummyValueSegment weakKeyDummyValueSegment, q qVar, MapMaker.Dummy dummy) {
            }
        }

        private static final class b extends q {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final q f30572b;

            private b(ReferenceQueue referenceQueue, Object obj, int i11, q qVar) {
                super(referenceQueue, obj, i11, null);
                this.f30572b = qVar;
            }

            /* synthetic */ b(ReferenceQueue referenceQueue, Object obj, int i11, q qVar, a aVar) {
                this(referenceQueue, obj, i11, qVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.c, com.google.common.collect.MapMakerInternalMap.h
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public q k() {
                return this.f30572b;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.q, com.google.common.collect.MapMakerInternalMap.h
            public /* bridge */ /* synthetic */ Object getValue() {
                return super.getValue();
            }
        }

        private q(ReferenceQueue referenceQueue, Object obj, int i11) {
            super(referenceQueue, obj, i11);
        }

        /* synthetic */ q(ReferenceQueue referenceQueue, Object obj, int i11, a aVar) {
            this(referenceQueue, obj, i11);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }
    }

    static class r extends c implements h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile Object f30573b;

        static final class a implements i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final a f30574a = new a();

            a() {
            }

            static a h() {
                return f30574a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength c() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength f() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public r b(WeakKeyStrongValueSegment weakKeyStrongValueSegment, r rVar, r rVar2) {
                Object key = rVar.getKey();
                if (key == null) {
                    return null;
                }
                r rVarE = e(weakKeyStrongValueSegment, key, rVar.f30548a, rVar2);
                rVarE.f30573b = rVar.f30573b;
                return rVarE;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public r e(WeakKeyStrongValueSegment weakKeyStrongValueSegment, Object obj, int i11, r rVar) {
                return rVar == null ? new r(weakKeyStrongValueSegment.queueForKeys, obj, i11, null) : new b(weakKeyStrongValueSegment.queueForKeys, obj, i11, rVar, null);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public WeakKeyStrongValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i11) {
                return new WeakKeyStrongValueSegment(mapMakerInternalMap, i11);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void d(WeakKeyStrongValueSegment weakKeyStrongValueSegment, r rVar, Object obj) {
                rVar.f30573b = obj;
            }
        }

        private static final class b extends r {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final r f30575c;

            private b(ReferenceQueue referenceQueue, Object obj, int i11, r rVar) {
                super(referenceQueue, obj, i11, null);
                this.f30575c = rVar;
            }

            /* synthetic */ b(ReferenceQueue referenceQueue, Object obj, int i11, r rVar, a aVar) {
                this(referenceQueue, obj, i11, rVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.c, com.google.common.collect.MapMakerInternalMap.h
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public r k() {
                return this.f30575c;
            }
        }

        private r(ReferenceQueue referenceQueue, Object obj, int i11) {
            super(referenceQueue, obj, i11);
            this.f30573b = null;
        }

        /* synthetic */ r(ReferenceQueue referenceQueue, Object obj, int i11, a aVar) {
            this(referenceQueue, obj, i11);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final Object getValue() {
            return this.f30573b;
        }
    }

    static class s extends c implements t {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile u f30576b;

        static final class a implements i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final a f30577a = new a();

            a() {
            }

            static a h() {
                return f30577a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength c() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength f() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public s b(WeakKeyWeakValueSegment weakKeyWeakValueSegment, s sVar, s sVar2) {
                Object key = sVar.getKey();
                if (key == null || Segment.isCollected(sVar)) {
                    return null;
                }
                s sVarE = e(weakKeyWeakValueSegment, key, sVar.f30548a, sVar2);
                sVarE.f30576b = sVar.f30576b.b(weakKeyWeakValueSegment.queueForValues, sVarE);
                return sVarE;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public s e(WeakKeyWeakValueSegment weakKeyWeakValueSegment, Object obj, int i11, s sVar) {
                return sVar == null ? new s(weakKeyWeakValueSegment.queueForKeys, obj, i11) : new b(weakKeyWeakValueSegment.queueForKeys, obj, i11, sVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public WeakKeyWeakValueSegment a(MapMakerInternalMap mapMakerInternalMap, int i11) {
                return new WeakKeyWeakValueSegment(mapMakerInternalMap, i11);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void d(WeakKeyWeakValueSegment weakKeyWeakValueSegment, s sVar, Object obj) {
                u uVar = sVar.f30576b;
                sVar.f30576b = new v(weakKeyWeakValueSegment.queueForValues, obj, sVar);
                uVar.clear();
            }
        }

        private static final class b extends s {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final s f30578c;

            b(ReferenceQueue referenceQueue, Object obj, int i11, s sVar) {
                super(referenceQueue, obj, i11);
                this.f30578c = sVar;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.c, com.google.common.collect.MapMakerInternalMap.h
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public s k() {
                return this.f30578c;
            }
        }

        s(ReferenceQueue referenceQueue, Object obj, int i11) {
            super(referenceQueue, obj, i11);
            this.f30576b = MapMakerInternalMap.unsetWeakValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.t
        public final u a() {
            return this.f30576b;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final Object getValue() {
            return this.f30576b.get();
        }
    }

    interface t extends h {
        u a();
    }

    interface u {
        h a();

        u b(ReferenceQueue referenceQueue, h hVar);

        void clear();

        Object get();
    }

    static final class v extends WeakReference implements u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final h f30579a;

        v(ReferenceQueue referenceQueue, Object obj, h hVar) {
            super(obj, referenceQueue);
            this.f30579a = hVar;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.u
        public h a() {
            return this.f30579a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.u
        public u b(ReferenceQueue referenceQueue, h hVar) {
            return new v(referenceQueue, get(), hVar);
        }
    }

    final class w extends com.google.common.collect.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f30580a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f30581b;

        w(Object obj, Object obj2) {
            this.f30580a = obj;
            this.f30581b = obj2;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f30580a.equals(entry.getKey()) && this.f30581b.equals(entry.getValue());
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public Object getKey() {
            return this.f30580a;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public Object getValue() {
            return this.f30581b;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public int hashCode() {
            return this.f30580a.hashCode() ^ this.f30581b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b, java.util.Map.Entry
        public Object setValue(Object obj) {
            Object objPut = MapMakerInternalMap.this.put(this.f30580a, obj);
            this.f30581b = obj;
            return objPut;
        }
    }

    private MapMakerInternalMap(MapMaker mapMaker, i iVar) {
        this.concurrencyLevel = Math.min(mapMaker.b(), 65536);
        this.keyEquivalence = mapMaker.d();
        this.entryHelper = iVar;
        int iMin = Math.min(mapMaker.c(), 1073741824);
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        int i14 = 1;
        while (i14 < this.concurrencyLevel) {
            i13++;
            i14 <<= 1;
        }
        this.segmentShift = 32 - i13;
        this.segmentMask = i14 - 1;
        this.segments = newSegmentArray(i14);
        int i15 = iMin / i14;
        while (i12 < (i14 * i15 < iMin ? i15 + 1 : i15)) {
            i12 <<= 1;
        }
        while (true) {
            Segment<K, V, E, S>[] segmentArr = this.segments;
            if (i11 >= segmentArr.length) {
                return;
            }
            segmentArr[i11] = createSegment(i12);
            i11++;
        }
    }

    static <K, V> MapMakerInternalMap<K, V, ? extends h, ?> create(MapMaker mapMaker) {
        Strength strengthE = mapMaker.e();
        Strength strength = Strength.STRONG;
        if (strengthE == strength && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, m.a.h());
        }
        if (mapMaker.e() == strength && mapMaker.f() == Strength.WEAK) {
            return new MapMakerInternalMap<>(mapMaker, n.a.h());
        }
        Strength strengthE2 = mapMaker.e();
        Strength strength2 = Strength.WEAK;
        if (strengthE2 == strength2 && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, r.a.h());
        }
        if (mapMaker.e() == strength2 && mapMaker.f() == strength2) {
            return new MapMakerInternalMap<>(mapMaker, s.a.h());
        }
        throw new AssertionError();
    }

    static <K> MapMakerInternalMap<K, MapMaker.Dummy, ? extends h, ?> createWithDummyValues(MapMaker mapMaker) {
        Strength strengthE = mapMaker.e();
        Strength strength = Strength.STRONG;
        if (strengthE == strength && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, l.a.h());
        }
        Strength strengthE2 = mapMaker.e();
        Strength strength2 = Strength.WEAK;
        if (strengthE2 == strength2 && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, q.a.h());
        }
        if (mapMaker.f() == strength2) {
            throw new IllegalArgumentException("Map cannot have both weak and dummy values");
        }
        throw new AssertionError();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializationProxy");
    }

    static int rehash(int i11) {
        int i12 = i11 + ((i11 << 15) ^ (-12931));
        int i13 = i12 ^ (i12 >>> 10);
        int i14 = i13 + (i13 << 3);
        int i15 = i14 ^ (i14 >>> 6);
        int i16 = i15 + (i15 << 2) + (i15 << 14);
        return i16 ^ (i16 >>> 16);
    }

    static <K, V, E extends h> u unsetWeakValueReference() {
        return UNSET_WEAK_VALUE_REFERENCE;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V, E, S> segment : this.segments) {
            segment.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).containsKey(obj, iHash);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [int] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [int] */
    /* JADX WARN: Type inference failed for: r13v3 */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        boolean z10 = false;
        if (obj == null) {
            return false;
        }
        Segment<K, V, E, S>[] segmentArr = this.segments;
        long j11 = -1;
        int i11 = 0;
        while (i11 < 3) {
            int length = segmentArr.length;
            long j12 = 0;
            for (?? r11 = z10; r11 < length; r11++) {
                Segment<K, V, E, S> segment = segmentArr[r11];
                int i12 = segment.count;
                AtomicReferenceArray<E> atomicReferenceArray = segment.table;
                for (?? r13 = z10; r13 < atomicReferenceArray.length(); r13++) {
                    for (E eK = atomicReferenceArray.get(r13); eK != null; eK = eK.k()) {
                        V liveValue = segment.getLiveValue(eK);
                        if (liveValue != null && valueEquivalence().equivalent(obj, liveValue)) {
                            return true;
                        }
                    }
                }
                j12 += (long) segment.modCount;
                z10 = false;
            }
            if (j12 == j11) {
                return false;
            }
            i11++;
            j11 = j12;
            z10 = false;
        }
        return z10;
    }

    E copyEntry(E e11, E e12) {
        return (E) segmentFor(e11.b()).copyEntry(e11, e12);
    }

    Segment<K, V, E, S> createSegment(int i11) {
        return this.entryHelper.a(this, i11);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        f fVar = new f();
        this.entrySet = fVar;
        return fVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).get(obj, iHash);
    }

    E getEntry(Object obj) {
        if (obj == null) {
            return null;
        }
        int iHash = hash(obj);
        return (E) segmentFor(iHash).getEntry(obj, iHash);
    }

    V getLiveValue(E e11) {
        if (e11.getKey() == null) {
            return null;
        }
        return (V) e11.getValue();
    }

    int hash(Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V, E, S>[] segmentArr = this.segments;
        long j11 = 0;
        for (int i11 = 0; i11 < segmentArr.length; i11++) {
            if (segmentArr[i11].count != 0) {
                return false;
            }
            j11 += (long) segmentArr[i11].modCount;
        }
        if (j11 == 0) {
            return true;
        }
        for (int i12 = 0; i12 < segmentArr.length; i12++) {
            if (segmentArr[i12].count != 0) {
                return false;
            }
            j11 -= (long) segmentArr[i12].modCount;
        }
        return j11 == 0;
    }

    boolean isLiveForTesting(h hVar) {
        return segmentFor(hVar.b()).getLiveValueForTesting(hVar) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        k kVar = new k();
        this.keySet = kVar;
        return kVar;
    }

    Strength keyStrength() {
        return this.entryHelper.f();
    }

    final Segment<K, V, E, S>[] newSegmentArray(int i11) {
        return new Segment[i11];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k11, V v11) {
        com.google.common.base.m.o(k11);
        com.google.common.base.m.o(v11);
        int iHash = hash(k11);
        return segmentFor(iHash).put(k11, iHash, v11, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k11, V v11) {
        com.google.common.base.m.o(k11);
        com.google.common.base.m.o(v11);
        int iHash = hash(k11);
        return segmentFor(iHash).put(k11, iHash, v11, true);
    }

    void reclaimKey(E e11) {
        int iB = e11.b();
        segmentFor(iB).reclaimKey(e11, iB);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void reclaimValue(u uVar) {
        h hVarA = uVar.a();
        int iB = hVarA.b();
        segmentFor(iB).reclaimValue(hVarA.getKey(), iB, uVar);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).remove(obj, iHash);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).remove(obj, iHash, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k11, V v11) {
        com.google.common.base.m.o(k11);
        com.google.common.base.m.o(v11);
        int iHash = hash(k11);
        return segmentFor(iHash).replace(k11, iHash, v11);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k11, V v11, V v12) {
        com.google.common.base.m.o(k11);
        com.google.common.base.m.o(v12);
        if (v11 == null) {
            return false;
        }
        int iHash = hash(k11);
        return segmentFor(iHash).replace(k11, iHash, v11, v12);
    }

    Segment<K, V, E, S> segmentFor(int i11) {
        return this.segments[(i11 >>> this.segmentShift) & this.segmentMask];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j11 = 0;
        for (Segment<K, V, E, S> segment : this.segments) {
            j11 += (long) segment.count;
        }
        return Ints.n(j11);
    }

    Equivalence valueEquivalence() {
        return this.entryHelper.c().defaultEquivalence();
    }

    Strength valueStrength() {
        return this.entryHelper.c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        p pVar = new p();
        this.values = pVar;
        return pVar;
    }

    Object writeReplace() {
        return new SerializationProxy(this.entryHelper.f(), this.entryHelper.c(), this.keyEquivalence, this.entryHelper.c().defaultEquivalence(), this.concurrencyLevel, this);
    }
}
