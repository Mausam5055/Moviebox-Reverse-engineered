package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f3735a;

    private /* synthetic */ h2(i iVar) {
        this.f3735a = iVar;
    }

    public static final /* synthetic */ h2 a(i iVar) {
        return new h2(iVar);
    }

    public static i b(i iVar) {
        return iVar;
    }

    public static boolean c(i iVar, Object obj) {
        return (obj instanceof h2) && Intrinsics.c(iVar, ((h2) obj).f());
    }

    public static int d(i iVar) {
        return iVar.hashCode();
    }

    public static String e(i iVar) {
        return "SkippableUpdater(composer=" + iVar + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f3735a, obj);
    }

    public final /* synthetic */ i f() {
        return this.f3735a;
    }

    public int hashCode() {
        return d(this.f3735a);
    }

    public String toString() {
        return e(this.f3735a);
    }
}
