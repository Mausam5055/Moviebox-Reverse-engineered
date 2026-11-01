package com.android.volley.toolbox;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f19300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f19301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f19302c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final InputStream f19303d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f19304e;

    public e(int i11, List list) {
        this(i11, list, -1, null);
    }

    public e(int i11, List list, int i12, InputStream inputStream) {
        this.f19300a = i11;
        this.f19301b = list;
        this.f19302c = i12;
        this.f19303d = inputStream;
        this.f19304e = null;
    }

    public final InputStream a() {
        InputStream inputStream = this.f19303d;
        if (inputStream != null) {
            return inputStream;
        }
        if (this.f19304e != null) {
            return new ByteArrayInputStream(this.f19304e);
        }
        return null;
    }

    public final int b() {
        return this.f19302c;
    }

    public final List c() {
        return Collections.unmodifiableList(this.f19301b);
    }

    public final int d() {
        return this.f19300a;
    }
}
