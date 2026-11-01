package com.apm.insight.l;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Writer f19672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<a> f19673b = new ArrayList();

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f19674a = new a("EMPTY_ARRAY", 0);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f19675b = new a("NONEMPTY_ARRAY", 1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f19676c = new a("EMPTY_OBJECT", 2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a f19677d = new a("DANGLING_KEY", 3);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f19678e = new a("NONEMPTY_OBJECT", 4);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final a f19679f = new a("NULL", 5);

        private a(String str, int i11) {
            super(str, i11);
        }
    }

    private h(Writer writer) {
        this.f19672a = writer;
    }

    private h a() throws JSONException, IOException {
        return a(a.f19674a, "[");
    }

    private h a(a aVar, String str) throws JSONException, IOException {
        f();
        this.f19673b.add(aVar);
        this.f19672a.write(str);
        return this;
    }

    private h a(Object obj) throws JSONException, IOException {
        if (obj instanceof JSONArray) {
            a((JSONArray) obj);
            return this;
        }
        if (obj instanceof JSONObject) {
            a((JSONObject) obj);
            return this;
        }
        f();
        if (obj == null || obj == JSONObject.NULL) {
            this.f19672a.write("null");
        } else if (obj instanceof Boolean) {
            this.f19672a.write(String.valueOf(obj));
        } else if (obj instanceof Number) {
            this.f19672a.write(JSONObject.numberToString((Number) obj));
        } else {
            b(obj.toString());
        }
        return this;
    }

    private h a(String str) throws JSONException, IOException {
        e();
        List<a> list = this.f19673b;
        list.remove(list.size() - 1);
        this.f19672a.write(str);
        return this;
    }

    private void a(a aVar) {
        List<a> list = this.f19673b;
        list.set(list.size() - 1, aVar);
    }

    private void a(JSONArray jSONArray) throws JSONException, IOException {
        a();
        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
            a(jSONArray.get(i11));
        }
        b();
    }

    public static void a(JSONArray jSONArray, Writer writer) throws Throwable {
        new h(writer).a(jSONArray);
        writer.flush();
    }

    private void a(JSONObject jSONObject) throws JSONException, IOException {
        c();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            c(next).a(jSONObject.get(next));
        }
        d();
    }

    public static void a(JSONObject jSONObject, Writer writer) throws Throwable {
        new h(writer).a(jSONObject);
        writer.flush();
    }

    private h b() throws JSONException, IOException {
        a aVar = a.f19674a;
        return a("]");
    }

    private void b(String str) throws IOException {
        this.f19672a.write("\"");
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == '\f') {
                this.f19672a.write("\\f");
            } else if (cCharAt != '\r') {
                if (cCharAt != '\"' && cCharAt != '/' && cCharAt != '\\') {
                    switch (cCharAt) {
                        case '\b':
                            this.f19672a.write("\\b");
                            continue;
                        case '\t':
                            this.f19672a.write("\\t");
                            continue;
                        case '\n':
                            this.f19672a.write("\\n");
                            continue;
                        default:
                            if (cCharAt <= 31) {
                                this.f19672a.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                            }
                            break;
                    }
                } else {
                    this.f19672a.write(92);
                }
                this.f19672a.write(cCharAt);
            } else {
                this.f19672a.write("\\r");
            }
        }
        this.f19672a.write("\"");
    }

    private h c() throws JSONException, IOException {
        return a(a.f19676c, "{");
    }

    private h c(String str) throws JSONException, IOException {
        a aVarE = e();
        if (aVarE == a.f19678e) {
            this.f19672a.write(44);
        } else if (aVarE != a.f19676c) {
            throw new JSONException("Nesting problem");
        }
        a(a.f19677d);
        b(str);
        return this;
    }

    private h d() throws JSONException, IOException {
        a aVar = a.f19674a;
        return a("}");
    }

    private a e() throws JSONException {
        List<a> list = this.f19673b;
        return list.get(list.size() - 1);
    }

    private void f() throws JSONException, IOException {
        if (this.f19673b.isEmpty()) {
            return;
        }
        a aVarE = e();
        if (aVarE == a.f19674a) {
            a(a.f19675b);
            return;
        }
        if (aVarE == a.f19675b) {
            this.f19672a.write(44);
        } else if (aVarE == a.f19677d) {
            this.f19672a.write(":");
            a(a.f19678e);
        } else if (aVarE != a.f19679f) {
            throw new JSONException("Nesting problem");
        }
    }

    public final String toString() {
        return "";
    }
}
