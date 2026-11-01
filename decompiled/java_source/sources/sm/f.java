package sm;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.transsion.base.report.athena.sampler.EventConfig;
import com.transsion.mb.config.manager.ConfigBean;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f75407c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f75408d = LazyKt.b(new Function0() { // from class: sm.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.g();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static HashSet f75409e = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f75410a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet f75411b = new HashSet();

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a() {
            return (f) f.f75408d.getValue();
        }
    }

    public static /* synthetic */ ConfigBean d(f fVar, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        return fVar.c(str, z10);
    }

    private final String e() {
        String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(Calendar.getInstance().getTime());
        Intrinsics.g(str, "format(...)");
        return str;
    }

    private final ConfigBean f(String str) {
        d dVar = d.f75403a;
        String string = dVar.e().getString(str, "");
        if (string != null && string.length() != 0) {
            return (ConfigBean) o.d(string, ConfigBean.class);
        }
        String string2 = dVar.f().getString(str, "");
        int iC = i.c(i.f75412a, str, 0, 2, null);
        if (iC >= 0 && string2 != null && string2.length() != 0) {
            JsonArray asJsonArray = ((JsonObject) o.d(string2, JsonObject.class)).get(str).getAsJsonArray();
            if (asJsonArray.size() > iC) {
                String string3 = asJsonArray.get(iC).toString();
                Intrinsics.g(string3, "toString(...)");
                ConfigBean configBean = (ConfigBean) o.d(string3, ConfigBean.class);
                dVar.e().putString(str, string3);
                return configBean;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f g() {
        return new f();
    }

    private final void h(ConfigBean configBean) {
        if (TextUtils.isEmpty(configBean.getOps())) {
            return;
        }
        HashMap map = new HashMap();
        map.put("key", configBean.getKey());
        map.put("ops", configBean.getOps());
        map.put("isFirebase", String.valueOf(configBean.isFirebase()));
        hj.i.f64505a.t("config_ab_result", map);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0021  */
    public final ConfigBean c(String key, boolean z10) {
        ConfigBean configBeanF;
        Intrinsics.h(key, "key");
        if (this.f75410a.containsKey(key)) {
            configBeanF = (ConfigBean) this.f75410a.get(key);
            if (z10 && configBeanF != null && configBeanF.getHasUpdate()) {
                configBeanF = null;
            }
        } else {
            configBeanF = null;
        }
        if (configBeanF == null) {
            String string = d.f75403a.g().getString(key, null);
            try {
                if (!TextUtils.isEmpty(string)) {
                    configBeanF = (ConfigBean) o.d(string, ConfigBean.class);
                }
                if (configBeanF == null && f75409e.contains(key)) {
                    configBeanF = f(key);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            this.f75410a.put(key, configBeanF);
        }
        String str = key + e();
        if (configBeanF != null && !this.f75411b.contains(str)) {
            h(configBeanF);
            this.f75411b.add(str);
        }
        return configBeanF;
    }

    public final void i(com.google.firebase.remoteconfig.a firebaseRemoteConfig) {
        Intrinsics.h(firebaseRemoteConfig, "firebaseRemoteConfig");
        Set<String> setM = firebaseRemoteConfig.m("");
        Intrinsics.g(setM, "getKeysByPrefix(...)");
        for (String str : setM) {
            ConfigBean configBean = new ConfigBean();
            configBean.setKey(str);
            configBean.setValue(firebaseRemoteConfig.p(str));
            configBean.setFirebase(true);
            d.f75403a.g().putString(str, o.j(configBean));
        }
    }

    public final void j(JsonArray items) {
        Intrinsics.h(items, "items");
        Iterator<JsonElement> it = items.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            JsonObject asJsonObject = it.next().getAsJsonObject();
            Intrinsics.g(asJsonObject, "getAsJsonObject(...)");
            String asString = asJsonObject.get("key").getAsString();
            d dVar = d.f75403a;
            String string = dVar.g().getString(asString, null);
            if (string == null || string.length() == 0 || !StringsKt.c0(string, "\"isFirebase\":true", false, 2, null)) {
                dVar.g().putString(asString, asJsonObject.toString());
            }
        }
        ConfigBean configBeanD = d(this, "point_config", false, 2, null);
        EventConfig.f43003a.j(configBeanD != null ? configBeanD.getValue() : null);
        Iterator it2 = this.f75410a.entrySet().iterator();
        while (it2.hasNext()) {
            ConfigBean configBean = (ConfigBean) ((Map.Entry) it2.next()).getValue();
            if (configBean != null) {
                configBean.setHasUpdate(true);
            }
        }
    }
}
