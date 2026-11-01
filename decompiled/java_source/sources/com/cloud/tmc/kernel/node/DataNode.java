package com.cloud.tmc.kernel.node;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public interface DataNode extends Node {
    @Nullable
    <T> T getData(Class<T> cls);

    <T> T getData(Class<T> cls, boolean z10);

    <T> void setData(Class<T> cls, T t11);
}
