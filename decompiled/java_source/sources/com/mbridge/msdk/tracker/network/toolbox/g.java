package com.mbridge.msdk.tracker.network.toolbox;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f38655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<com.mbridge.msdk.tracker.network.g> f38656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f38657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final InputStream f38658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f38659e;

    public g(int i11, List<com.mbridge.msdk.tracker.network.g> list) {
        this(i11, list, -1, null);
    }

    public g(int i11, List<com.mbridge.msdk.tracker.network.g> list, int i12, InputStream inputStream) {
        this.f38655a = i11;
        this.f38656b = list;
        this.f38657c = i12;
        this.f38658d = inputStream;
        this.f38659e = null;
    }

    public final InputStream a() {
        InputStream inputStream = this.f38658d;
        if (inputStream != null) {
            return inputStream;
        }
        if (this.f38659e != null) {
            return new ByteArrayInputStream(this.f38659e);
        }
        return null;
    }

    public final int b() {
        return this.f38657c;
    }

    public final List<com.mbridge.msdk.tracker.network.g> c() {
        return Collections.unmodifiableList(this.f38656b);
    }

    public final int d() {
        return this.f38655a;
    }
}
