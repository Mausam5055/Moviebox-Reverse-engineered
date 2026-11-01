package com.transsion.commercialization.task;

import com.transsion.commercializationapi.ITaskCenterApi;

/* JADX INFO: loaded from: classes5.dex */
public abstract class q {
    public static final ITaskCenterApi a() {
        return new TaskCenterProvider();
    }
}
