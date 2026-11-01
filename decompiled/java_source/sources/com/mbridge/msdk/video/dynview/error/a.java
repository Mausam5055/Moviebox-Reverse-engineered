package com.mbridge.msdk.video.dynview.error;

/* JADX INFO: loaded from: classes5.dex */
public enum a {
    NOT_FOUND_VIEWOPTION(-1, "ViewOption is null"),
    NOT_FOUND_CONTEXT(-2, "Context is null"),
    NOT_FOUND_LAYOUTNAME(-3, "layout xml name is null"),
    CAMPAIGNEX_IS_NULL(-4, "Campaign size only one"),
    VIEW_CREATE_ERROR(-5, "view create error"),
    NOT_FOUND_ROOTVIEW(-6, "rootview is null");


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f39019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f39020b;

    a(int i11, String str) {
        this.f39019a = i11;
        this.f39020b = str;
    }

    public int b() {
        return this.f39019a;
    }

    public String c() {
        return this.f39020b;
    }
}
