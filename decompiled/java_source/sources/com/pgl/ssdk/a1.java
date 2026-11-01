package com.pgl.ssdk;

import com.pgl.ssdk.z0;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes5.dex */
public class a1<T extends z0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f40082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BlockingQueue<T> f40083b = new LinkedBlockingQueue();

    private a1(int i11) {
        this.f40082a = i11;
    }

    public static a1 a(int i11) {
        return new a1(i11);
    }

    public T a() {
        return this.f40083b.poll();
    }
}
