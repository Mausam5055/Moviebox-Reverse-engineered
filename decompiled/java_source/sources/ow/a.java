package ow;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f72189a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Gson f72190b = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();

    private a() {
    }

    public final String a(Object obj) {
        if (obj == null) {
            return "";
        }
        try {
            return new Gson().toJson(obj);
        } catch (Exception unused) {
            return "";
        }
    }
}
