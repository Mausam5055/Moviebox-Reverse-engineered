package com.amazonaws.util;

import com.amazonaws.Protocol;
import java.net.URI;

/* JADX INFO: loaded from: classes2.dex */
public class URIBuilder {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f19010h = Protocol.HTTPS.toString();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f19011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f19012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f19013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f19014d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f19015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f19016f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f19017g;

    private URIBuilder(URI uri) {
        this.f19011a = uri.getScheme();
        this.f19012b = uri.getUserInfo();
        this.f19013c = uri.getHost();
        this.f19014d = uri.getPort();
        this.f19015e = uri.getPath();
        this.f19016f = uri.getQuery();
        this.f19017g = uri.getFragment();
    }

    public static URIBuilder b(URI uri) {
        return new URIBuilder(uri);
    }

    public URI a() {
        return new URI(this.f19011a, this.f19012b, this.f19013c, this.f19014d, this.f19015e, this.f19016f, this.f19017g);
    }

    public URIBuilder c(String str) {
        this.f19013c = str;
        return this;
    }
}
