package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f27378a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f27379b = new ArrayList();

    private n a(String str, Object obj) {
        this.f27378a.put((String) com.google.android.exoplayer2.util.a.e(str), com.google.android.exoplayer2.util.a.e(obj));
        this.f27379b.remove(str);
        return this;
    }

    public static n g(n nVar, long j11) {
        return nVar.e("exo_len", j11);
    }

    public static n h(n nVar, Uri uri) {
        return uri == null ? nVar.d("exo_redir") : nVar.f("exo_redir", uri.toString());
    }

    public Map b() {
        HashMap map = new HashMap(this.f27378a);
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        return Collections.unmodifiableMap(map);
    }

    public List c() {
        return Collections.unmodifiableList(new ArrayList(this.f27379b));
    }

    public n d(String str) {
        this.f27379b.add(str);
        this.f27378a.remove(str);
        return this;
    }

    public n e(String str, long j11) {
        return a(str, Long.valueOf(j11));
    }

    public n f(String str, String str2) {
        return a(str, str2);
    }
}
