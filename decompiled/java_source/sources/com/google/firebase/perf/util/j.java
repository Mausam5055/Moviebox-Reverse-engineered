package com.google.firebase.perf.util;

import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes4.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final URL f32380a;

    public j(URL url) {
        this.f32380a = url;
    }

    public URLConnection a() {
        return this.f32380a.openConnection();
    }

    public String toString() {
        return this.f32380a.toString();
    }
}
