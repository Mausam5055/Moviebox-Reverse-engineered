package com.bykv.vk.openvk.preload.geckox.model;

import androidx.core.app.NotificationCompat;
import com.bykv.vk.openvk.preload.a.a.b;

/* JADX INFO: loaded from: classes2.dex */
public class Response<T> {

    @b(a = "data")
    public T data;

    @b(a = NotificationCompat.CATEGORY_STATUS)
    public int status;
}
