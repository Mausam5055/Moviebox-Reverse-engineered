package com.transsion.photoview;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
abstract class a {
    public static void a(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
