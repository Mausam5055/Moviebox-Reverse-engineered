package com.squareup.okhttp.internal.framed;

import okhttp3.internal.http2.Header;
import okio.ByteString;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ByteString f40363d = ByteString.encodeUtf8(Header.RESPONSE_STATUS_UTF8);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ByteString f40364e = ByteString.encodeUtf8(Header.TARGET_METHOD_UTF8);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ByteString f40365f = ByteString.encodeUtf8(Header.TARGET_PATH_UTF8);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ByteString f40366g = ByteString.encodeUtf8(Header.TARGET_SCHEME_UTF8);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ByteString f40367h = ByteString.encodeUtf8(Header.TARGET_AUTHORITY_UTF8);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ByteString f40368i = ByteString.encodeUtf8(":host");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ByteString f40369j = ByteString.encodeUtf8(":version");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteString f40370a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f40371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f40372c;

    public b(String str, String str2) {
        this(ByteString.encodeUtf8(str), ByteString.encodeUtf8(str2));
    }

    public b(ByteString byteString, String str) {
        this(byteString, ByteString.encodeUtf8(str));
    }

    public b(ByteString byteString, ByteString byteString2) {
        this.f40370a = byteString;
        this.f40371b = byteString2;
        this.f40372c = byteString.size() + 32 + byteString2.size();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f40370a.equals(bVar.f40370a) && this.f40371b.equals(bVar.f40371b);
    }

    public int hashCode() {
        return ((527 + this.f40370a.hashCode()) * 31) + this.f40371b.hashCode();
    }

    public String toString() {
        return String.format("%s: %s", this.f40370a.utf8(), this.f40371b.utf8());
    }
}
