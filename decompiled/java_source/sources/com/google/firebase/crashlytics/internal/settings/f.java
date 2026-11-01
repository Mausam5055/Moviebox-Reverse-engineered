package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.c0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c0 f31762a;

    f(c0 c0Var) {
        this.f31762a = c0Var;
    }

    private static g a(int i11) {
        if (i11 == 3) {
            return new j();
        }
        ob.g.f().d("Could not determine SettingsJsonTransform for settings version " + i11 + ". Using default settings values.");
        return new a();
    }

    public c b(JSONObject jSONObject) {
        return a(jSONObject.getInt("settings_version")).a(this.f31762a, jSONObject);
    }
}
