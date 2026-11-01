package com.google.common.collect;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
abstract class SortedLists {

    enum KeyAbsentBehavior {
        NEXT_LOWER { // from class: com.google.common.collect.SortedLists.KeyAbsentBehavior.1
            @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
            int resultIndex(int i11) {
                return i11 - 1;
            }
        },
        NEXT_HIGHER { // from class: com.google.common.collect.SortedLists.KeyAbsentBehavior.2
            @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
            public int resultIndex(int i11) {
                return i11;
            }
        },
        INVERTED_INSERTION_INDEX { // from class: com.google.common.collect.SortedLists.KeyAbsentBehavior.3
            @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
            public int resultIndex(int i11) {
                return ~i11;
            }
        };

        abstract int resultIndex(int i11);
    }

    enum KeyPresentBehavior {
        ANY_PRESENT { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.1
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            <E> int resultIndex(Comparator<? super E> comparator, E e11, List<? extends E> list, int i11) {
                return i11;
            }
        },
        LAST_PRESENT { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            <E> int resultIndex(Comparator<? super E> comparator, E e11, List<? extends E> list, int i11) {
                int size = list.size() - 1;
                while (i11 < size) {
                    int i12 = ((i11 + size) + 1) >>> 1;
                    if (comparator.compare(list.get(i12), e11) > 0) {
                        size = i12 - 1;
                    } else {
                        i11 = i12;
                    }
                }
                return i11;
            }
        },
        FIRST_PRESENT { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            <E> int resultIndex(Comparator<? super E> comparator, E e11, List<? extends E> list, int i11) {
                int i12 = 0;
                while (i12 < i11) {
                    int i13 = (i12 + i11) >>> 1;
                    if (comparator.compare(list.get(i13), e11) < 0) {
                        i12 = i13 + 1;
                    } else {
                        i11 = i13;
                    }
                }
                return i12;
            }
        },
        FIRST_AFTER { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.4
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public <E> int resultIndex(Comparator<? super E> comparator, E e11, List<? extends E> list, int i11) {
                return KeyPresentBehavior.LAST_PRESENT.resultIndex(comparator, e11, list, i11) + 1;
            }
        },
        LAST_BEFORE { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.5
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public <E> int resultIndex(Comparator<? super E> comparator, E e11, List<? extends E> list, int i11) {
                return KeyPresentBehavior.FIRST_PRESENT.resultIndex(comparator, e11, list, i11) - 1;
            }
        };

        abstract <E> int resultIndex(Comparator<? super E> comparator, E e11, List<? extends E> list, int i11);
    }

    public static int a(List list, com.google.common.base.f fVar, Comparable comparable, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        com.google.common.base.m.o(comparable);
        return b(list, fVar, comparable, Ordering.natural(), keyPresentBehavior, keyAbsentBehavior);
    }

    public static int b(List list, com.google.common.base.f fVar, Object obj, Comparator comparator, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        return c(Lists.o(list, fVar), obj, comparator, keyPresentBehavior, keyAbsentBehavior);
    }

    public static int c(List list, Object obj, Comparator comparator, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        com.google.common.base.m.o(comparator);
        com.google.common.base.m.o(list);
        com.google.common.base.m.o(keyPresentBehavior);
        com.google.common.base.m.o(keyAbsentBehavior);
        if (!(list instanceof RandomAccess)) {
            list = new ArrayList(list);
        }
        int size = list.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) >>> 1;
            int iCompare = comparator.compare(obj, list.get(i12));
            if (iCompare < 0) {
                size = i12 - 1;
            } else {
                if (iCompare <= 0) {
                    return i11 + keyPresentBehavior.resultIndex(comparator, obj, list.subList(i11, size + 1), i12 - i11);
                }
                i11 = i12 + 1;
            }
        }
        return keyAbsentBehavior.resultIndex(i11);
    }
}
