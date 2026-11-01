package com.therouter.router;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f40782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f40783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f40784c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f40785d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f40786e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f40787f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f40788g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f40789h;

    public b(String type, String key, int i11, String args, String className, String fieldName, boolean z10, String description) {
        Intrinsics.h(type, "type");
        Intrinsics.h(key, "key");
        Intrinsics.h(args, "args");
        Intrinsics.h(className, "className");
        Intrinsics.h(fieldName, "fieldName");
        Intrinsics.h(description, "description");
        this.f40782a = type;
        this.f40783b = key;
        this.f40784c = i11;
        this.f40785d = args;
        this.f40786e = className;
        this.f40787f = fieldName;
        this.f40788g = z10;
        this.f40789h = description;
    }

    public final int a() {
        return this.f40784c;
    }

    public final String b() {
        return this.f40783b;
    }

    public final String c() {
        return this.f40782a;
    }
}
