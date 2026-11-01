package com.cloud.hisavana.net.disklrucache;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.sdk.commonutil.util.n;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes3.dex */
public class ImageCacheURL {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Charset f21388d = StandardCharsets.UTF_8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile byte[] f21389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f21390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f21391c;

    public ImageCacheURL(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f21391c = str;
            this.f21390b = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
        } else {
            this.f21391c = "";
            this.f21390b = "";
            c.netLog("url must be can not null or empty");
        }
    }

    public byte[] a() {
        if (this.f21389a == null) {
            this.f21389a = this.f21390b.getBytes(f21388d);
        }
        return this.f21389a;
    }

    public String b() {
        return d();
    }

    public String c() {
        return this.f21391c;
    }

    public String d() {
        return n.a(this.f21390b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof ImageCacheURL) {
            return b().equals(((ImageCacheURL) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f21390b.hashCode() * 31;
    }
}
