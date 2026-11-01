package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
abstract class j0 {
    private static final j0 FULL_INSTANCE;
    private static final j0 LITE_INSTANCE;

    private static final class b extends j0 {
        private static final Class<?> UNMODIFIABLE_LIST_CLASS = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private b() {
            super();
        }

        static <E> List<E> getList(Object obj, long j11) {
            return (List) s1.getObject(obj, j11);
        }

        private static <L> List<L> mutableListAt(Object obj, long j11, int i11) {
            Object obj2;
            List<L> listMutableCopyWithCapacity;
            List<L> list = getList(obj, j11);
            if (list.isEmpty()) {
                if (list instanceof i0) {
                    listMutableCopyWithCapacity = new h0(i11);
                } else {
                    listMutableCopyWithCapacity = ((list instanceof c1) && (list instanceof y.j)) ? ((y.j) list).mutableCopyWithCapacity(i11) : new ArrayList<>(i11);
                }
                s1.putObject(obj, j11, listMutableCopyWithCapacity);
                return listMutableCopyWithCapacity;
            }
            if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i11);
                arrayList.addAll(list);
                s1.putObject(obj, j11, arrayList);
                obj2 = arrayList;
            } else {
                if (!(list instanceof r1)) {
                    if (!(list instanceof c1) || !(list instanceof y.j)) {
                        return list;
                    }
                    y.j jVar = (y.j) list;
                    if (jVar.isModifiable()) {
                        return list;
                    }
                    y.j jVarMutableCopyWithCapacity = jVar.mutableCopyWithCapacity(list.size() + i11);
                    s1.putObject(obj, j11, jVarMutableCopyWithCapacity);
                    return jVarMutableCopyWithCapacity;
                }
                h0 h0Var = new h0(list.size() + i11);
                h0Var.addAll((r1) list);
                s1.putObject(obj, j11, h0Var);
                obj2 = h0Var;
            }
            return (List<L>) obj2;
        }

        @Override // com.google.protobuf.j0
        void makeImmutableListAt(Object obj, long j11) {
            Object objUnmodifiableList;
            List list = (List) s1.getObject(obj, j11);
            if (list instanceof i0) {
                objUnmodifiableList = ((i0) list).getUnmodifiableView();
            } else {
                if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof c1) && (list instanceof y.j)) {
                    y.j jVar = (y.j) list;
                    if (jVar.isModifiable()) {
                        jVar.makeImmutable();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            s1.putObject(obj, j11, objUnmodifiableList);
        }

        @Override // com.google.protobuf.j0
        <E> void mergeListsAt(Object obj, Object obj2, long j11) {
            List list = getList(obj2, j11);
            List listMutableListAt = mutableListAt(obj, j11, list.size());
            int size = listMutableListAt.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listMutableListAt.addAll(list);
            }
            if (size > 0) {
                list = listMutableListAt;
            }
            s1.putObject(obj, j11, list);
        }

        @Override // com.google.protobuf.j0
        <L> List<L> mutableListAt(Object obj, long j11) {
            return mutableListAt(obj, j11, 10);
        }
    }

    private static final class c extends j0 {
        private c() {
            super();
        }

        static <E> y.j getProtobufList(Object obj, long j11) {
            return (y.j) s1.getObject(obj, j11);
        }

        @Override // com.google.protobuf.j0
        void makeImmutableListAt(Object obj, long j11) {
            getProtobufList(obj, j11).makeImmutable();
        }

        @Override // com.google.protobuf.j0
        <E> void mergeListsAt(Object obj, Object obj2, long j11) {
            y.j protobufList = getProtobufList(obj, j11);
            y.j protobufList2 = getProtobufList(obj2, j11);
            int size = protobufList.size();
            int size2 = protobufList2.size();
            if (size > 0 && size2 > 0) {
                if (!protobufList.isModifiable()) {
                    protobufList = protobufList.mutableCopyWithCapacity(size2 + size);
                }
                protobufList.addAll(protobufList2);
            }
            if (size > 0) {
                protobufList2 = protobufList;
            }
            s1.putObject(obj, j11, protobufList2);
        }

        @Override // com.google.protobuf.j0
        <L> List<L> mutableListAt(Object obj, long j11) {
            y.j protobufList = getProtobufList(obj, j11);
            if (protobufList.isModifiable()) {
                return protobufList;
            }
            int size = protobufList.size();
            y.j jVarMutableCopyWithCapacity = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            s1.putObject(obj, j11, jVarMutableCopyWithCapacity);
            return jVarMutableCopyWithCapacity;
        }
    }

    static {
        FULL_INSTANCE = new b();
        LITE_INSTANCE = new c();
    }

    private j0() {
    }

    static j0 full() {
        return FULL_INSTANCE;
    }

    static j0 lite() {
        return LITE_INSTANCE;
    }

    abstract void makeImmutableListAt(Object obj, long j11);

    abstract <L> void mergeListsAt(Object obj, Object obj2, long j11);

    abstract <L> List<L> mutableListAt(Object obj, long j11);
}
