package com.transsion.ad.web;

import android.text.TextUtils;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f42457a = new c();

    private c() {
    }

    public final void a(String str, b callback) {
        Object objM454constructorimpl;
        Intrinsics.h(callback, "callback");
        if (TextUtils.isEmpty(str)) {
            callback.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "adConfig is empty");
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            if (str == null) {
                str = "{}";
            }
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("sceneId");
            if (TextUtils.isEmpty(strOptString)) {
                callback.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "sceneId is empty");
                return;
            }
            int iOptInt = jSONObject.optInt("adType");
            if (iOptInt == 3) {
                H5VideoAdProvider.f42452a.h(strOptString, callback);
            } else if (iOptInt == 4) {
                H5InterstitialAdProvider.f42448a.f(strOptString, callback);
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl == null) {
                return;
            }
            callback.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), thM457exceptionOrNullimpl.getMessage());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
