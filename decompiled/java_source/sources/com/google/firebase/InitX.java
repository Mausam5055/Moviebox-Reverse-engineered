package com.google.firebase;

import android.app.Activity;

/* JADX INFO: loaded from: classes7.dex */
public class InitX {
    private Activity act;

    /* JADX INFO: renamed from: com.google.firebase.InitX$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        InitX parent;

        public AnonymousClass1(InitX initX) {
            this.parent = initX;
        }

        @Override // java.lang.Runnable
        public void run() {
            services.check(InitX.access$0(this.parent));
        }
    }

    public InitX(Activity activity) {
        this.act = activity;
        services.check(this.act);
    }
}
