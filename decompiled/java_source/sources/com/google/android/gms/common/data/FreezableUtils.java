package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.select.Elements;

/* JADX INFO: loaded from: classes3.dex */
public final class FreezableUtils {
    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(@NonNull ArrayList<E> arrayList) {
        Elements elements = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            elements.add(arrayList.get(i11).freeze());
        }
        return elements;
    }

    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(@NonNull E[] eArr) {
        Elements elements = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e11 : eArr) {
            elements.add(e11.freeze());
        }
        return elements;
    }

    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(@NonNull Iterable<E> iterable) {
        Elements elements = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            elements.add(it.next().freeze());
        }
        return elements;
    }
}
