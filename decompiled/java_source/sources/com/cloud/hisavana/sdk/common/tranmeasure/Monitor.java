package com.cloud.hisavana.sdk.common.tranmeasure;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Monitor {

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Monitor f22091a = new b();
    }

    public static Monitor getInstance() {
        return a.f22091a;
    }

    public abstract void end();

    public abstract void start();
}
