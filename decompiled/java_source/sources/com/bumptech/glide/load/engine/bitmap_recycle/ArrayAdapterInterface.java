package com.bumptech.glide.load.engine.bitmap_recycle;

/* JADX INFO: loaded from: classes2.dex */
interface ArrayAdapterInterface<T> {
    int getArrayLength(T t11);

    int getElementSizeInBytes();

    String getTag();

    T newArray(int i11);
}
