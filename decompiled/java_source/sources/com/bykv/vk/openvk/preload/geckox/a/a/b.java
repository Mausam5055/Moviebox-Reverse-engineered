package com.bykv.vk.openvk.preload.geckox.a.a;

import android.annotation.SuppressLint;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"CI_StaticFieldLeak"})
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f20589a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f20590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected a f20591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected File f20592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected List<String> f20593e;

    static {
        new f();
        f20590b = new e();
    }

    public abstract void a();

    public void a(a aVar, File file, List<String> list) {
        this.f20591c = aVar;
        this.f20592d = file;
        this.f20593e = list;
    }
}
