package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.sessions.api.SessionSubscriber;

/* JADX INFO: loaded from: classes4.dex */
public class k implements SessionSubscriber {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f31194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f31195b;

    public k(d0 d0Var, vb.g gVar) {
        this.f31194a = d0Var;
        this.f31195b = new j(gVar);
    }

    @Override // com.google.firebase.sessions.api.SessionSubscriber
    public boolean a() {
        return this.f31194a.d();
    }

    @Override // com.google.firebase.sessions.api.SessionSubscriber
    public SessionSubscriber.Name b() {
        return SessionSubscriber.Name.CRASHLYTICS;
    }

    @Override // com.google.firebase.sessions.api.SessionSubscriber
    public void c(SessionSubscriber.a aVar) {
        ob.g.f().b("App Quality Sessions session changed: " + aVar);
        this.f31195b.h(aVar.a());
    }

    public String d(String str) {
        return this.f31195b.c(str);
    }

    public void e(String str) {
        this.f31195b.i(str);
    }
}
