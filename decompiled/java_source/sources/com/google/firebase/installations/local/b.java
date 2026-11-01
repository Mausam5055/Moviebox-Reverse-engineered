package com.google.firebase.installations.local;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b f31924a = a().a();

    public static abstract class a {
        public abstract b a();

        public abstract a b(String str);

        public abstract a c(long j11);

        public abstract a d(String str);

        public abstract a e(String str);

        public abstract a f(String str);

        public abstract a g(PersistedInstallation.RegistrationStatus registrationStatus);

        public abstract a h(long j11);
    }

    public static a a() {
        return new com.google.firebase.installations.local.a.b().h(0L).g(PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION).c(0L);
    }

    public abstract String b();

    public abstract long c();

    public abstract String d();

    public abstract String e();

    public abstract String f();

    public abstract PersistedInstallation.RegistrationStatus g();

    public abstract long h();

    public boolean i() {
        return g() == PersistedInstallation.RegistrationStatus.REGISTER_ERROR;
    }

    public boolean j() {
        return g() == PersistedInstallation.RegistrationStatus.NOT_GENERATED || g() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION;
    }

    public boolean k() {
        return g() == PersistedInstallation.RegistrationStatus.REGISTERED;
    }

    public boolean l() {
        return g() == PersistedInstallation.RegistrationStatus.UNREGISTERED;
    }

    public boolean m() {
        return g() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION;
    }

    public abstract a n();

    public b o(String str, long j11, long j12) {
        return n().b(str).c(j11).h(j12).a();
    }

    public b p() {
        return n().b(null).a();
    }

    public b q(String str) {
        return n().e(str).g(PersistedInstallation.RegistrationStatus.REGISTER_ERROR).a();
    }

    public b r() {
        return n().g(PersistedInstallation.RegistrationStatus.NOT_GENERATED).a();
    }

    public b s(String str, String str2, long j11, String str3, long j12) {
        return n().d(str).g(PersistedInstallation.RegistrationStatus.REGISTERED).b(str3).f(str2).c(j12).h(j11).a();
    }

    public b t(String str) {
        return n().d(str).g(PersistedInstallation.RegistrationStatus.UNREGISTERED).a();
    }
}
