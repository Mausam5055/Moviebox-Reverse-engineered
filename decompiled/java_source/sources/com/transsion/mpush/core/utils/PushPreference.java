package com.transsion.mpush.core.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.format.DateUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.config.PermanentConfig;
import com.transsion.mpush.core.config.PushConfig;
import java.util.Calendar;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class PushPreference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PushPreference f47608a = new PushPreference();

    private PushPreference() {
    }

    private final SharedPreferences f(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("new_sdk_push_prefs", 0);
        Intrinsics.g(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }

    public final PushConfig a(Context context) {
        Intrinsics.h(context, "context");
        String string = f(context).getString("key_push_config", null);
        if (string == null) {
            return null;
        }
        try {
            return (PushConfig) new Gson().fromJson(string, PushConfig.class);
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public final long b(Context context) {
        Intrinsics.h(context, "context");
        return f(context).getLong("key_last_pull_time", 0L);
    }

    public final PermanentConfig c(Context context) {
        Intrinsics.h(context, "context");
        String string = f(context).getString("key_permanent_config", null);
        if (string == null) {
            return null;
        }
        try {
            return (PermanentConfig) new Gson().fromJson(string, PermanentConfig.class);
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public final long d(Context context) {
        Intrinsics.h(context, "context");
        return f(context).getLong("key_permanent_last_req_time", 0L);
    }

    public final String e(Context context) {
        Intrinsics.h(context, "context");
        return f(context).getString("key_permanent_page", null);
    }

    public final String g(Context context) {
        Intrinsics.h(context, "context");
        String string = f(context).getString("key_push_register_user", "");
        return string == null ? "" : string;
    }

    public final List h(Context context) {
        Intrinsics.h(context, "context");
        String string = f(context).getString("key_seeking_items", null);
        if (string == null) {
            return null;
        }
        try {
            return (List) new Gson().fromJson(string, new TypeToken<List<? extends LocalPushMessage>>() { // from class: com.transsion.mpush.core.utils.PushPreference$getSeekingItems$type$1
            }.getType());
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public final String i(Context context) {
        Intrinsics.h(context, "context");
        String string = f(context).getString("push_topic_app", "");
        return string == null ? "" : string;
    }

    public final String j(Context context) {
        Intrinsics.h(context, "context");
        String string = f(context).getString("push_topic_country", "");
        return string == null ? "" : string;
    }

    public final String k(Context context) {
        Intrinsics.h(context, "context");
        String string = f(context).getString("push_topic_language", "");
        return string == null ? "" : string;
    }

    public final String l(Context context) {
        Intrinsics.h(context, "context");
        String string = f(context).getString("push_topic_zone", "");
        return string == null ? "" : string;
    }

    public final boolean m(Context context) {
        Intrinsics.h(context, "context");
        long jD = d(context);
        if (jD == 0) {
            return false;
        }
        return DateUtils.isToday(jD);
    }

    public final boolean n(Context context) {
        Intrinsics.h(context, "context");
        long jB = b(context);
        if (jB == 0) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jB);
        Calendar calendar2 = Calendar.getInstance();
        return calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    public final void o(Context context, PushConfig config) {
        Intrinsics.h(context, "context");
        Intrinsics.h(config, "config");
        try {
            f(context).edit().putString("key_push_config", new Gson().toJson(config)).apply();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final void p(Context context, PermanentConfig config) {
        Intrinsics.h(context, "context");
        Intrinsics.h(config, "config");
        try {
            f(context).edit().putString("key_permanent_config", new Gson().toJson(config)).apply();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final void q(Context context, String str) {
        Intrinsics.h(context, "context");
        f(context).edit().putString("key_permanent_page", str).apply();
    }

    public final void r(Context context, String hash) {
        Intrinsics.h(context, "context");
        Intrinsics.h(hash, "hash");
        f(context).edit().putString("key_push_register_user", hash).apply();
    }

    public final void s(Context context, List list) {
        Intrinsics.h(context, "context");
        try {
            f(context).edit().putString("key_seeking_items", new Gson().toJson(list)).apply();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final void t(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        f(context).edit().putString("push_topic_app", appId).apply();
    }

    public final void u(Context context, String country) {
        Intrinsics.h(context, "context");
        Intrinsics.h(country, "country");
        f(context).edit().putString("push_topic_country", country).apply();
    }

    public final void v(Context context, String language) {
        Intrinsics.h(context, "context");
        Intrinsics.h(language, "language");
        f(context).edit().putString("push_topic_language", language).apply();
    }

    public final void w(Context context, String zone) {
        Intrinsics.h(context, "context");
        Intrinsics.h(zone, "zone");
        f(context).edit().putString("push_topic_zone", zone).apply();
    }

    public final void x(Context context, long j11) {
        Intrinsics.h(context, "context");
        f(context).edit().putLong("key_last_pull_time", j11).apply();
    }

    public final void y(Context context, long j11) {
        Intrinsics.h(context, "context");
        f(context).edit().putLong("key_permanent_last_req_time", j11).apply();
    }
}
