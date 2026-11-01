package com.transsion.http.d;

import java.util.UUID;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f45927a = new a("FORM", 0, "application/x-www-form-urlencoded");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f45928b = new a("JSON", 1, "application/json");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f45929c = new a("FILE", 2, "multipart/form-data;boundary=--" + UUID.randomUUID().toString());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f45930d;

    private a(String str, int i11, String str2) {
        super(str, i11);
        this.f45930d = str2;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f45930d;
    }
}
