package com.google.firebase.crashlytics.ndk;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
class c implements ob.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static c f31784e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.crashlytics.ndk.a f31785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f31786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f31787c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f31788d;

    /* JADX INFO: Access modifiers changed from: private */
    interface a {
        void a();
    }

    c(com.google.firebase.crashlytics.ndk.a aVar, boolean z10) {
        this.f31785a = aVar;
        this.f31786b = z10;
    }

    static c f(Context context, boolean z10) {
        c cVar = new c(new com.google.firebase.crashlytics.ndk.a(context, new JniNativeApi(context), new vb.g(context)), z10);
        f31784e = cVar;
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(String str, String str2, long j11, sb.e eVar) {
        ob.g.f().b("Initializing native session: " + str);
        if (this.f31785a.k(str, str2, j11, eVar)) {
            return;
        }
        ob.g.f().k("Failed to initialize Crashlytics NDK for session " + str);
    }

    @Override // ob.a
    public ob.h a(String str) {
        return new g(this.f31785a.d(str));
    }

    @Override // ob.a
    public boolean b() {
        String str = this.f31787c;
        return str != null && d(str);
    }

    @Override // ob.a
    public synchronized void c(final String str, final String str2, final long j11, final sb.e eVar) {
        this.f31787c = str;
        a aVar = new a() { // from class: com.google.firebase.crashlytics.ndk.b
            @Override // com.google.firebase.crashlytics.ndk.c.a
            public final void a() {
                this.f31779a.g(str, str2, j11, eVar);
            }
        };
        this.f31788d = aVar;
        if (this.f31786b) {
            aVar.a();
        }
    }

    @Override // ob.a
    public boolean d(String str) {
        return this.f31785a.j(str);
    }
}
