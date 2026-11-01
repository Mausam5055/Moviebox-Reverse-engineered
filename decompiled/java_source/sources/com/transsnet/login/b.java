package com.transsnet.login;

import com.blankj.utilcode.util.ThreadUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f60283a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(int i11) {
            uh.b.f76753a.d(i11);
        }

        public final void b(final int i11) {
            ThreadUtils.g().postDelayed(new Runnable() { // from class: com.transsnet.login.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.a.c(i11);
                }
            }, 500L);
        }
    }
}
