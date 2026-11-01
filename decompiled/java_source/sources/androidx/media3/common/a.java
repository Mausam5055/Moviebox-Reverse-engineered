package androidx.media3.common;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f9786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f9788c;

    /* JADX INFO: renamed from: androidx.media3.common.a$a, reason: collision with other inner class name */
    public static final class C0087a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f9789a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f9790b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f9791c;

        public C0087a(View view, int i11) {
            this.f9789a = view;
            this.f9790b = i11;
        }

        public a a() {
            return new a(this.f9789a, this.f9790b, this.f9791c);
        }

        public C0087a b(String str) {
            this.f9791c = str;
            return this;
        }
    }

    public a(View view, int i11, String str) {
        this.f9786a = view;
        this.f9787b = i11;
        this.f9788c = str;
    }
}
