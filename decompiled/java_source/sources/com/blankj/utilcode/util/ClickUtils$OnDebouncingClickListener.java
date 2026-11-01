package com.blankj.utilcode.util;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ClickUtils$OnDebouncingClickListener implements View.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f20006c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Runnable f20007d = new Runnable() { // from class: com.blankj.utilcode.util.ClickUtils$OnDebouncingClickListener.1
        @Override // java.lang.Runnable
        public void run() {
            boolean unused = ClickUtils$OnDebouncingClickListener.f20006c = true;
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f20008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f20009b;

    public ClickUtils$OnDebouncingClickListener() {
        this(true, 1000L);
    }

    public ClickUtils$OnDebouncingClickListener(boolean z10, long j11) {
        this.f20009b = z10;
        this.f20008a = j11;
    }

    private static boolean b(View view, long j11) {
        return e0.E(view, j11);
    }

    public abstract void c(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (!this.f20009b) {
            if (b(view, this.f20008a)) {
                c(view);
            }
        } else if (f20006c) {
            f20006c = false;
            view.postDelayed(f20007d, this.f20008a);
            c(view);
        }
    }
}
