package com.cloud.tmc.kernel.utils;

import android.util.Log;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J \u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010\u000f\u001a\u00020\u0006H\u0002J)\u0010\u0010\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0015H\u0007¢\u0006\u0002\u0010\u0016J-\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0004\b\u0000\u0010\u00112\b\u0010\r\u001a\u0004\u0018\u00010\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0015H\u0007¢\u0006\u0002\u0010\u0017J%\u0010\u0010\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112\b\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0007¢\u0006\u0002\u0010\u001aJ*\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00110\u001c\"\u0004\b\u0000\u0010\u00112\u0006\u0010\u001d\u001a\u00020\u001e2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0015H\u0007J*\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00110\u001c\"\u0004\b\u0000\u0010\u00112\u0006\u0010\r\u001a\u00020\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0015H\u0007J&\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u0011\u0018\u00010\f\"\u0004\b\u0000\u0010\u00112\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J(\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J*\u0010 \u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u00110\f\u0018\u00010\u001c\"\u0004\b\u0000\u0010\u00112\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0012\u0010!\u001a\u00020\u00042\b\u0010\"\u001a\u0004\u0018\u00010\u0001H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006#"}, d2 = {"Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;", "", "()V", "TAG", "", "gson", "Lcom/google/gson/Gson;", "getGson", "()Lcom/google/gson/Gson;", "gson$delegate", "Lkotlin/Lazy;", "JsonToMapValueIsAny", "", "json", "JsonToMapValueIsString", "createGson", "fromJson", "T", "element", "Lcom/google/gson/JsonElement;", "cls", "Ljava/lang/Class;", "(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "typeOfT", "Ljava/lang/reflect/Type;", "(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;", "listFromJson", "", "array", "Lcom/google/gson/JsonArray;", "mapFromJson", "mapListFromJson", "toJson", "object", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TmcGsonUtils {
    private static final String TAG = "GsonUtils";
    public static final TmcGsonUtils INSTANCE = new TmcGsonUtils();

    /* JADX INFO: renamed from: gson$delegate, reason: from kotlin metadata */
    private static final Lazy gson = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<Gson>() { // from class: com.cloud.tmc.kernel.utils.TmcGsonUtils$gson$2
        @Override // kotlin.jvm.functions.Function0
        public final Gson invoke() {
            return TmcGsonUtils.INSTANCE.createGson();
        }
    });

    private TmcGsonUtils() {
    }

    @JvmStatic
    public static final Map<String, Object> JsonToMapValueIsAny(String json) {
        try {
            return (Map) INSTANCE.getGson().fromJson(json, new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.kernel.utils.TmcGsonUtils.JsonToMapValueIsAny.1
            }.getType());
        } catch (Exception e11) {
            String message = e11.getMessage();
            if (message == null) {
                message = "";
            }
            Log.e(TAG, message);
            return null;
        }
    }

    @JvmStatic
    public static final Map<String, String> JsonToMapValueIsString(String json) {
        try {
            return (Map) INSTANCE.getGson().fromJson(json, new TypeToken<Map<String, ? extends String>>() { // from class: com.cloud.tmc.kernel.utils.TmcGsonUtils.JsonToMapValueIsString.1
            }.getType());
        } catch (Exception e11) {
            String message = e11.getMessage();
            if (message == null) {
                message = "";
            }
            Log.e(TAG, message);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Gson createGson() {
        Gson gson2 = GsonUtils.getGson();
        Intrinsics.g(gson2, "getGson()");
        return gson2;
    }

    @JvmStatic
    public static final <T> T fromJson(JsonElement element, Class<T> cls) {
        Intrinsics.h(element, "element");
        Intrinsics.h(cls, "cls");
        return (T) INSTANCE.getGson().fromJson(element, (Class) cls);
    }

    @JvmStatic
    public static final <T> T fromJson(String json, Class<T> cls) {
        Intrinsics.h(cls, "cls");
        try {
            return (T) INSTANCE.getGson().fromJson(json, (Class) cls);
        } catch (Exception e11) {
            String message = e11.getMessage();
            if (message == null) {
                message = "";
            }
            Log.e(TAG, message);
            return null;
        }
    }

    @JvmStatic
    public static final <T> T fromJson(String json, Type typeOfT) {
        Intrinsics.h(typeOfT, "typeOfT");
        return (T) INSTANCE.getGson().fromJson(json, typeOfT);
    }

    private final Gson getGson() {
        return (Gson) gson.getValue();
    }

    @JvmStatic
    public static final <T> List<T> listFromJson(JsonArray array, Class<T> cls) {
        Intrinsics.h(array, "array");
        Intrinsics.h(cls, "cls");
        ArrayList arrayList = new ArrayList();
        Iterator<JsonElement> it = array.iterator();
        while (it.hasNext()) {
            arrayList.add(INSTANCE.getGson().fromJson(it.next(), (Class) cls));
        }
        return arrayList;
    }

    @JvmStatic
    public static final <T> List<T> listFromJson(String json, Class<T> cls) {
        Intrinsics.h(json, "json");
        Intrinsics.h(cls, "cls");
        ArrayList arrayList = new ArrayList();
        Iterator<JsonElement> it = JsonParser.parseString(json).getAsJsonArray().iterator();
        while (it.hasNext()) {
            arrayList.add(INSTANCE.getGson().fromJson(it.next(), (Class) cls));
        }
        return arrayList;
    }

    @JvmStatic
    public static final <T> Map<String, T> mapFromJson(String json) {
        try {
            return (Map) INSTANCE.getGson().fromJson(json, new TypeToken<Map<String, ? extends T>>() { // from class: com.cloud.tmc.kernel.utils.TmcGsonUtils.mapFromJson.1
            }.getType());
        } catch (Exception e11) {
            String message = e11.getMessage();
            if (message == null) {
                message = "";
            }
            Log.e(TAG, message);
            return null;
        }
    }

    @JvmStatic
    public static final Map<String, Object> mapFromJson(String json, Type typeOfT) {
        Intrinsics.h(typeOfT, "typeOfT");
        try {
            return (Map) INSTANCE.getGson().fromJson(json, typeOfT);
        } catch (Exception e11) {
            String message = e11.getMessage();
            if (message == null) {
                message = "";
            }
            Log.e(TAG, message);
            return null;
        }
    }

    @JvmStatic
    public static final <T> List<Map<String, T>> mapListFromJson(String json) {
        Intrinsics.h(json, "json");
        try {
            return (List) INSTANCE.getGson().fromJson(json, new TypeToken<List<? extends Map<String, ? extends T>>>() { // from class: com.cloud.tmc.kernel.utils.TmcGsonUtils.mapListFromJson.1
            }.getType());
        } catch (Exception e11) {
            String message = e11.getMessage();
            if (message == null) {
                message = "";
            }
            Log.e(TAG, message);
            return null;
        }
    }

    @JvmStatic
    public static final String toJson(Object object) {
        String json = INSTANCE.getGson().toJson(object);
        Intrinsics.g(json, "gson.toJson(`object`)");
        return json;
    }
}
