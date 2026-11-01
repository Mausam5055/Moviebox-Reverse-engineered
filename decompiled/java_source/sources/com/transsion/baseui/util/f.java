package com.transsion.baseui.util;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class f implements View.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f43511c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f43512d = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f43513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f43514b = new Handler(Looper.getMainLooper());

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    protected f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(f fVar, View view) {
        int i11 = fVar.f43513a;
        if (i11 == 1) {
            fVar.d(view);
        } else if (i11 >= 2) {
            fVar.c(view);
        }
        fVar.f43514b.removeCallbacksAndMessages(null);
        fVar.f43513a = 0;
    }

    public abstract void c(View view);

    public abstract void d(View view);

    @Override // android.view.View.OnClickListener
    public void onClick(final View v11) {
        Intrinsics.h(v11, "v");
        int i11 = this.f43513a + 1;
        this.f43513a = i11;
        if (i11 > 1) {
            return;
        }
        this.f43514b.postDelayed(new Runnable() { // from class: com.transsion.baseui.util.e
            @Override // java.lang.Runnable
            public final void run() {
                f.b(this.f43509a, v11);
            }
        }, 300L);
    }
}
