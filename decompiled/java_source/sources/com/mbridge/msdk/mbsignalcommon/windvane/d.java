package com.mbridge.msdk.mbsignalcommon.windvane;

/* JADX INFO: loaded from: classes5.dex */
public enum d {
    JS("js", "application/x-javascript"),
    CSS("css", "text/css"),
    JPG("jpg", "image/jpeg"),
    JPEG("jpep", "image/jpeg"),
    PNG("png", "image/png"),
    WEBP("webp", "image/webp"),
    GIF("gif", "image/gif"),
    HTM("htm", "text/html"),
    HTML("html", "text/html");


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36558b;

    d(String str, String str2) {
        this.f36557a = str;
        this.f36558b = str2;
    }

    public String b() {
        return this.f36558b;
    }

    public String c() {
        return this.f36557a;
    }
}
