package com.squareup.okhttp.internal.http;

import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;

/* JADX INFO: loaded from: classes5.dex */
public abstract class h {
    public static boolean a(String str) {
        return str.equals("POST") || str.equals("PATCH") || str.equals("PUT") || str.equals("DELETE") || str.equals(CustomSwipeRefreshLayout.MOVE);
    }

    public static boolean b(String str) {
        return d(str) || str.equals("OPTIONS") || str.equals("DELETE") || str.equals("PROPFIND") || str.equals("MKCOL") || str.equals("LOCK");
    }

    public static boolean c(String str) {
        return !str.equals("PROPFIND");
    }

    public static boolean d(String str) {
        return str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT");
    }
}
