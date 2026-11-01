package com.google.firebase.crashlytics.ndk;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f31789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f31790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f31791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f31792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f31793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final File f31794f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final File f31795g;

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private c f31796a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private File f31797b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private File f31798c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private File f31799d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private File f31800e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private File f31801f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private File f31802g;

        b() {
        }

        b h(File file) {
            this.f31800e = file;
            return this;
        }

        f i() {
            return new f(this);
        }

        b j(File file) {
            this.f31801f = file;
            return this;
        }

        b k(File file) {
            this.f31798c = file;
            return this;
        }

        b l(c cVar) {
            this.f31796a = cVar;
            return this;
        }

        b m(File file) {
            this.f31802g = file;
            return this;
        }

        b n(File file) {
            this.f31799d = file;
            return this;
        }
    }

    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final File f31803a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CrashlyticsReport.a f31804b;

        c(File file, CrashlyticsReport.a aVar) {
            this.f31803a = file;
            this.f31804b = aVar;
        }

        boolean a() {
            File file = this.f31803a;
            return (file != null && file.exists()) || this.f31804b != null;
        }
    }

    private f(b bVar) {
        this.f31789a = bVar.f31796a;
        this.f31790b = bVar.f31797b;
        this.f31791c = bVar.f31798c;
        this.f31792d = bVar.f31799d;
        this.f31793e = bVar.f31800e;
        this.f31794f = bVar.f31801f;
        this.f31795g = bVar.f31802g;
    }
}
