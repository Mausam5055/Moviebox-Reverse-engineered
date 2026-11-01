package com.tn.lib.widget.toast.core;

import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f41470a;

    public c(Handler mHandler) {
        Intrinsics.h(mHandler, "mHandler");
        this.f41470a = mHandler;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        Intrinsics.h(msg, "msg");
        try {
            this.f41470a.handleMessage(msg);
        } catch (WindowManager.BadTokenException e11) {
            e11.printStackTrace();
        } catch (IllegalStateException e12) {
            e12.printStackTrace();
        }
    }
}
