package com.transsion.http.d;

import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes5.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f45931a = new h("GET", 0, "GET");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h f45932b = new h("POST", 1, "POST");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f45933c = new h("PUT", 2, "PUT");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f45934d = new h("PATCH", 3, "PATCH");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final h f45935e = new h("HEAD", 4, "HEAD");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final h f45936f = new h(CustomSwipeRefreshLayout.MOVE, 5, CustomSwipeRefreshLayout.MOVE);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final h f45937g = new h("COPY", 6, "COPY");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final h f45938h = new h("DELETE", 7, "DELETE");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final h f45939i = new h("OPTIONS", 8, "OPTIONS");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final h f45940j = new h("TRACE", 9, "TRACE");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final h f45941k = new h("CONNECT", 10, "CONNECT");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f45942l;

    private h(String str, int i11, String str2) {
        super(str, i11);
        this.f45942l = str2;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f45942l;
    }
}
