package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f32696a = a.f32697a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f32697a = new a();

        private a() {
        }

        public final s a() {
            Object objJ = com.google.firebase.l.a(com.google.firebase.c.f31069a).j(s.class);
            Intrinsics.g(objJ, "Firebase.app[SessionDatastore::class.java]");
            return (s) objJ;
        }
    }

    String a();

    void b(String str);
}
