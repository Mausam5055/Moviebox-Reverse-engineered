package com.google.common.util.concurrent;

import com.google.common.collect.Maps;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class AtomicLongMap<K> implements Serializable {
    private transient Map<K, Long> asMap;
    private final ConcurrentHashMap<K, AtomicLong> map;

    class a implements com.google.common.base.f {
        a() {
        }

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long apply(AtomicLong atomicLong) {
            return Long.valueOf(atomicLong.get());
        }
    }

    private AtomicLongMap(ConcurrentHashMap<K, AtomicLong> concurrentHashMap) {
        this.map = (ConcurrentHashMap) com.google.common.base.m.o(concurrentHashMap);
    }

    public static <K> AtomicLongMap<K> create() {
        return new AtomicLongMap<>(new ConcurrentHashMap());
    }

    public static <K> AtomicLongMap<K> create(Map<? extends K, ? extends Long> map) {
        AtomicLongMap<K> atomicLongMapCreate = create();
        atomicLongMapCreate.putAll(map);
        return atomicLongMapCreate;
    }

    private Map<K, Long> createAsMap() {
        return Collections.unmodifiableMap(Maps.A(this.map, new a()));
    }

    public long addAndGet(K k11, long j11) {
        AtomicLong atomicLongPutIfAbsent;
        long j12;
        long j13;
        do {
            atomicLongPutIfAbsent = this.map.get(k11);
            if (atomicLongPutIfAbsent == null && (atomicLongPutIfAbsent = this.map.putIfAbsent(k11, new AtomicLong(j11))) == null) {
                return j11;
            }
            do {
                j12 = atomicLongPutIfAbsent.get();
                if (j12 != 0) {
                    j13 = j12 + j11;
                }
            } while (!atomicLongPutIfAbsent.compareAndSet(j12, j13));
            return j13;
        } while (!this.map.replace(k11, atomicLongPutIfAbsent, new AtomicLong(j11)));
        return j11;
    }

    public Map<K, Long> asMap() {
        Map<K, Long> map = this.asMap;
        if (map != null) {
            return map;
        }
        Map<K, Long> mapCreateAsMap = createAsMap();
        this.asMap = mapCreateAsMap;
        return mapCreateAsMap;
    }

    public void clear() {
        this.map.clear();
    }

    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    public long decrementAndGet(K k11) {
        return addAndGet(k11, -1L);
    }

    public long get(K k11) {
        AtomicLong atomicLong = this.map.get(k11);
        if (atomicLong == null) {
            return 0L;
        }
        return atomicLong.get();
    }

    public long getAndAdd(K k11, long j11) {
        AtomicLong atomicLongPutIfAbsent;
        long j12;
        do {
            atomicLongPutIfAbsent = this.map.get(k11);
            if (atomicLongPutIfAbsent == null && (atomicLongPutIfAbsent = this.map.putIfAbsent(k11, new AtomicLong(j11))) == null) {
                return 0L;
            }
            do {
                j12 = atomicLongPutIfAbsent.get();
                if (j12 == 0) {
                }
            } while (!atomicLongPutIfAbsent.compareAndSet(j12, j12 + j11));
            return j12;
        } while (!this.map.replace(k11, atomicLongPutIfAbsent, new AtomicLong(j11)));
        return 0L;
    }

    public long getAndDecrement(K k11) {
        return getAndAdd(k11, -1L);
    }

    public long getAndIncrement(K k11) {
        return getAndAdd(k11, 1L);
    }

    public long incrementAndGet(K k11) {
        return addAndGet(k11, 1L);
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public long put(K k11, long j11) {
        AtomicLong atomicLongPutIfAbsent;
        long j12;
        do {
            atomicLongPutIfAbsent = this.map.get(k11);
            if (atomicLongPutIfAbsent == null && (atomicLongPutIfAbsent = this.map.putIfAbsent(k11, new AtomicLong(j11))) == null) {
                return 0L;
            }
            do {
                j12 = atomicLongPutIfAbsent.get();
                if (j12 == 0) {
                }
            } while (!atomicLongPutIfAbsent.compareAndSet(j12, j11));
            return j12;
        } while (!this.map.replace(k11, atomicLongPutIfAbsent, new AtomicLong(j11)));
        return 0L;
    }

    public void putAll(Map<? extends K, ? extends Long> map) {
        for (Map.Entry<? extends K, ? extends Long> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue().longValue());
        }
    }

    long putIfAbsent(K k11, long j11) {
        AtomicLong atomicLongPutIfAbsent;
        do {
            atomicLongPutIfAbsent = this.map.get(k11);
            if (atomicLongPutIfAbsent == null && (atomicLongPutIfAbsent = this.map.putIfAbsent(k11, new AtomicLong(j11))) == null) {
                return 0L;
            }
            long j12 = atomicLongPutIfAbsent.get();
            if (j12 != 0) {
                return j12;
            }
        } while (!this.map.replace(k11, atomicLongPutIfAbsent, new AtomicLong(j11)));
        return 0L;
    }

    public long remove(K k11) {
        long j11;
        AtomicLong atomicLong = this.map.get(k11);
        if (atomicLong == null) {
            return 0L;
        }
        do {
            j11 = atomicLong.get();
            if (j11 == 0) {
                break;
            }
        } while (!atomicLong.compareAndSet(j11, 0L));
        this.map.remove(k11, atomicLong);
        return j11;
    }

    boolean remove(K k11, long j11) {
        AtomicLong atomicLong = this.map.get(k11);
        if (atomicLong == null) {
            return false;
        }
        long j12 = atomicLong.get();
        if (j12 != j11) {
            return false;
        }
        if (j12 != 0 && !atomicLong.compareAndSet(j12, 0L)) {
            return false;
        }
        this.map.remove(k11, atomicLong);
        return true;
    }

    public void removeAllZeros() {
        Iterator<Map.Entry<K, AtomicLong>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            AtomicLong value = it.next().getValue();
            if (value != null && value.get() == 0) {
                it.remove();
            }
        }
    }

    public boolean removeIfZero(K k11) {
        return remove(k11, 0L);
    }

    boolean replace(K k11, long j11, long j12) {
        if (j11 == 0) {
            return putIfAbsent(k11, j12) == 0;
        }
        AtomicLong atomicLong = this.map.get(k11);
        if (atomicLong == null) {
            return false;
        }
        return atomicLong.compareAndSet(j11, j12);
    }

    public int size() {
        return this.map.size();
    }

    public long sum() {
        Iterator<AtomicLong> it = this.map.values().iterator();
        long j11 = 0;
        while (it.hasNext()) {
            j11 += it.next().get();
        }
        return j11;
    }

    public String toString() {
        return this.map.toString();
    }
}
