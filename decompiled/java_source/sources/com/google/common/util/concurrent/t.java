package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public interface t extends ExecutorService {
    r submit(Callable callable);
}
