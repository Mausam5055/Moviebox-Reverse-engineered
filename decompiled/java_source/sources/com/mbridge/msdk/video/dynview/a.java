package com.mbridge.msdk.video.dynview;

import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f38965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<View> f38966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f38967c;

    public List<View> a() {
        return this.f38966b;
    }

    public void a(View view) {
        this.f38965a = view;
    }

    public void a(List<View> list) {
        this.f38966b = list;
    }

    public void a(boolean z10) {
        this.f38967c = z10;
    }

    public View b() {
        return this.f38965a;
    }

    public boolean c() {
        return this.f38967c;
    }
}
