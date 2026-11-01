package com.cloud.tmc.kernel.bridge.extension.bind;

import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes3.dex */
public interface Binder<A extends Annotation, T> {
    T bind(Class<T> cls, A a11) throws BindException;
}
