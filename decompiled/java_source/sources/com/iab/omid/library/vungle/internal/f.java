package com.iab.omid.library.vungle.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f33812b = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f33813a = new ArrayList();

    public List a() {
        return this.f33813a;
    }

    public void b() {
        this.f33813a.clear();
    }
}
