package com.bumptech.glide.load.engine.bitmap_recycle;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class GroupedLinkedMap<K extends Poolable, V> {
    private final LinkedEntry<K, V> head = new LinkedEntry<>();
    private final Map<K, LinkedEntry<K, V>> keyToEntry = new HashMap();

    private static class LinkedEntry<K, V> {
        final K key;
        LinkedEntry<K, V> next;
        LinkedEntry<K, V> prev;
        private List<V> values;

        LinkedEntry() {
            this(null);
        }

        LinkedEntry(K k11) {
            this.prev = this;
            this.next = this;
            this.key = k11;
        }

        public void add(V v11) {
            if (this.values == null) {
                this.values = new ArrayList();
            }
            this.values.add(v11);
        }

        @Nullable
        public V removeLast() {
            int size = size();
            if (size > 0) {
                return this.values.remove(size - 1);
            }
            return null;
        }

        public int size() {
            List<V> list = this.values;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
    }

    GroupedLinkedMap() {
    }

    private void makeHead(LinkedEntry<K, V> linkedEntry) {
        removeEntry(linkedEntry);
        LinkedEntry<K, V> linkedEntry2 = this.head;
        linkedEntry.prev = linkedEntry2;
        linkedEntry.next = linkedEntry2.next;
        updateEntry(linkedEntry);
    }

    private void makeTail(LinkedEntry<K, V> linkedEntry) {
        removeEntry(linkedEntry);
        LinkedEntry<K, V> linkedEntry2 = this.head;
        linkedEntry.prev = linkedEntry2.prev;
        linkedEntry.next = linkedEntry2;
        updateEntry(linkedEntry);
    }

    private static <K, V> void removeEntry(LinkedEntry<K, V> linkedEntry) {
        LinkedEntry<K, V> linkedEntry2 = linkedEntry.prev;
        linkedEntry2.next = linkedEntry.next;
        linkedEntry.next.prev = linkedEntry2;
    }

    private static <K, V> void updateEntry(LinkedEntry<K, V> linkedEntry) {
        linkedEntry.next.prev = linkedEntry;
        linkedEntry.prev.next = linkedEntry;
    }

    @Nullable
    public V get(K k11) {
        LinkedEntry<K, V> linkedEntry = this.keyToEntry.get(k11);
        if (linkedEntry == null) {
            linkedEntry = new LinkedEntry<>(k11);
            this.keyToEntry.put(k11, linkedEntry);
        } else {
            k11.offer();
        }
        makeHead(linkedEntry);
        return linkedEntry.removeLast();
    }

    public void put(K k11, V v11) {
        LinkedEntry<K, V> linkedEntry = this.keyToEntry.get(k11);
        if (linkedEntry == null) {
            linkedEntry = new LinkedEntry<>(k11);
            makeTail(linkedEntry);
            this.keyToEntry.put(k11, linkedEntry);
        } else {
            k11.offer();
        }
        linkedEntry.add(v11);
    }

    @Nullable
    public V removeLast() {
        for (LinkedEntry linkedEntry = this.head.prev; !linkedEntry.equals(this.head); linkedEntry = linkedEntry.prev) {
            V v11 = (V) linkedEntry.removeLast();
            if (v11 != null) {
                return v11;
            }
            removeEntry(linkedEntry);
            this.keyToEntry.remove(linkedEntry.key);
            ((Poolable) linkedEntry.key).offer();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("GroupedLinkedMap( ");
        LinkedEntry linkedEntry = this.head.next;
        boolean z10 = false;
        while (!linkedEntry.equals(this.head)) {
            sb2.append('{');
            sb2.append(linkedEntry.key);
            sb2.append(':');
            sb2.append(linkedEntry.size());
            sb2.append("}, ");
            linkedEntry = linkedEntry.next;
            z10 = true;
        }
        if (z10) {
            sb2.delete(sb2.length() - 2, sb2.length());
        }
        sb2.append(" )");
        return sb2.toString();
    }
}
