package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f24028d = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f24029e = Pattern.compile("GET /(.*) HTTP");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f24030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f24031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f24032c;

    public d(String str) {
        long jA = a(str);
        this.f24031b = Math.max(0L, jA);
        this.f24032c = jA >= 0;
        this.f24030a = b(str);
    }

    private long a(String str) {
        Matcher matcher = f24028d.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    private String b(String str) {
        Matcher matcher = f24029e.matcher(str);
        return matcher.find() ? matcher.group(1) : str;
    }

    public static d c(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (TextUtils.isEmpty(line)) {
                return new d(sb2.toString());
            }
            sb2.append(line);
            sb2.append('\n');
        }
    }

    public String toString() {
        return "GetRequest{rangeOffset=" + this.f24031b + ", partial=" + this.f24032c + ", uri='" + this.f24030a + "'}";
    }
}
