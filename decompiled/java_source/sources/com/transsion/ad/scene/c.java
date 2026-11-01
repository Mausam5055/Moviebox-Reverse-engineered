package com.transsion.ad.scene;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import hi.e;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f42203a = new c();

    private c() {
    }

    public static /* synthetic */ boolean b(c cVar, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return cVar.a(str, z10);
    }

    public static /* synthetic */ boolean d(c cVar, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return cVar.c(str, z10);
    }

    public static /* synthetic */ boolean f(c cVar, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return cVar.e(str, z10);
    }

    public final boolean a(String str, boolean z10) {
        Object objM454constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f42204a.b(str);
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("hiOff")) == null) ? z10 : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.valueOf(z10);
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final boolean c(String sceneId, boolean z10) {
        Object objM454constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f42204a.b(sceneId);
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("nonOff")) == null) ? z10 : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.valueOf(z10);
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final boolean e(String str, boolean z10) {
        Object objM454constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f42204a.b(str);
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("sceneOff")) == null) ? z10 : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.valueOf(z10);
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final boolean g(String str) {
        if (e.f64471a.a()) {
            return b.f42202a.o() || a.f42201a.w(str);
        }
        return false;
    }
}
