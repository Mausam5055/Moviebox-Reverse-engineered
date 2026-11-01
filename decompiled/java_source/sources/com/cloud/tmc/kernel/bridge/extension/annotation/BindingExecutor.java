package com.cloud.tmc.kernel.bridge.extension.annotation;

import com.cloud.tmc.kernel.executor.ExecutorType;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes3.dex */
@Bindable
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface BindingExecutor {
    ExecutorType value() default ExecutorType.SYNC;
}
