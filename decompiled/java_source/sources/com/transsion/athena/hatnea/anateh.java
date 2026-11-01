package com.transsion.athena.hatnea;

import android.os.Handler;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public abstract class anateh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Handler f42761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Thread f42762b;

    protected anateh() {
    }

    protected anateh(@NonNull Handler handler) {
        this.f42761a = handler;
    }

    protected abstract void a();

    public String b() {
        return "Task-Athena-" + c();
    }

    protected abstract String c();

    @Override // java.lang.Runnable
    public void run() {
        Thread threadCurrentThread = Thread.currentThread();
        this.f42762b = threadCurrentThread;
        String name = threadCurrentThread.getName();
        this.f42762b.setName(b());
        try {
            a();
        } catch (Exception e11) {
            e11.printStackTrace();
        } finally {
            athena.a().b(this);
            this.f42762b.setName(name);
        }
    }
}
