package com.squareup.okhttp.internal;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.ConnectionSpec;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.internal.http.n;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {
    public static c instance;
    public static final Logger logger = Logger.getLogger(OkHttpClient.class.getName());

    public static void initializeInstanceForTests() {
        new OkHttpClient();
    }

    public abstract void addLenient(Headers.Builder builder, String str);

    public abstract void apply(ConnectionSpec connectionSpec, SSLSocket sSLSocket, boolean z10);

    public abstract boolean connectionBecameIdle(ConnectionPool connectionPool, df.a aVar);

    public abstract df.a get(ConnectionPool connectionPool, Address address, n nVar);

    public abstract InternalCache internalCache(OkHttpClient okHttpClient);

    public abstract void put(ConnectionPool connectionPool, df.a aVar);

    public abstract f routeDatabase(ConnectionPool connectionPool);
}
