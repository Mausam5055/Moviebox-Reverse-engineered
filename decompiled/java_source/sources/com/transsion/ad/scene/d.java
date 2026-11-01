package com.transsion.ad.scene;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.monopoly.model.MbAdPlansBean;
import com.transsion.ad.monopoly.model.MbAdPlansDto;
import com.transsion.ad.strategy.f;
import java.util.HashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f42204a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap f42205b = new HashMap();

    private d() {
    }

    private final String a() {
        String simpleName = d.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final JsonObject b(String str) {
        JsonObject asJsonObject;
        String asString;
        JsonObject jsonObject;
        try {
            Result.Companion companion = Result.INSTANCE;
            HashMap map = f42205b;
            if (map.containsKey(str) && (jsonObject = (JsonObject) map.get(str)) != null) {
                return jsonObject;
            }
            JsonArray jsonArray = (JsonArray) o.d(f.f42232a.c().getString("non_ad_scene_config_data", ""), JsonArray.class);
            if (jsonArray != null) {
                for (JsonElement jsonElement : jsonArray) {
                    if (jsonElement != null && (asJsonObject = jsonElement.getAsJsonObject()) != null) {
                        JsonElement jsonElement2 = asJsonObject.get("id");
                        if (jsonElement2 == null || (asString = jsonElement2.getAsString()) == null) {
                            asString = "";
                        }
                        f42205b.put(asString, asJsonObject);
                    }
                }
            }
            HashMap map2 = f42205b;
            if (map2.containsKey(str)) {
                return (JsonObject) map2.get(str);
            }
            Result.m454constructorimpl(Unit.f67061a);
            return null;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
            return null;
        }
    }

    public final String c() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(f.f42232a.c().getString("non_ad_scene_config_data", ""));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = null;
        }
        return (String) objM454constructorimpl;
    }

    public final String d() {
        return f.f42232a.c().getString("non_ad_scene_version", "");
    }

    public final boolean e() {
        return !TextUtils.isEmpty(f.f42232a.c().getString("non_ad_scene_config_data", ""));
    }

    public final void f(String assetsString) {
        Intrinsics.h(assetsString, "assetsString");
        f.f42232a.c().putString("non_ad_scene_config_data", assetsString);
        oi.a.c(oi.a.f71022a, a() + " --> setScene4Assets() --> 场景信息保存到MMKV --> success", 0, false, 6, null);
    }

    public final void g(MbAdPlansDto mbAdPlansDto) {
        Intrinsics.h(mbAdPlansDto, "mbAdPlansDto");
        f fVar = f.f42232a;
        String string = fVar.c().getString("non_ad_scene_version", "");
        MbAdPlansBean data = mbAdPlansDto.getData();
        String versionAdScene = data != null ? data.getVersionAdScene() : null;
        if (TextUtils.equals(string, versionAdScene)) {
            oi.a.c(oi.a.f71022a, a() + " --> setSceneConfig() --> 版本号一致，服务端不会下发list 省流量 --> localAdSceneVersion = " + string + " --> newVersion = " + versionAdScene, 0, false, 6, null);
            return;
        }
        fVar.c().putString("non_ad_scene_version", versionAdScene);
        MMKV mmkvC = fVar.c();
        MbAdPlansBean data2 = mbAdPlansDto.getData();
        mmkvC.putString("non_ad_scene_config_data", data2 != null ? data2.getAdSceneConfigData() : null);
        oi.a.c(oi.a.f71022a, a() + " --> setSceneConfig() --> 场景信息保存到MMKV --> success --> newVersion = " + versionAdScene, 0, false, 6, null);
    }
}
