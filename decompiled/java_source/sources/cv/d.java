package cv;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.Multimap;
import com.transsion.transfer.androidasync.http.w;
import com.transsion.transfer.androidasync.s;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Headers f60916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Multimap f60917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f60918c;

    public d(Headers headers) {
        this.f60918c = -1L;
        this.f60916a = headers;
        this.f60917b = Multimap.parseSemicolonDelimited(headers.c(HttpHeaders.CONTENT_DISPOSITION));
    }

    public d(String str, long j11, List list) {
        this.f60918c = j11;
        this.f60916a = new Headers();
        StringBuilder sb2 = new StringBuilder(String.format(Locale.ENGLISH, "form-data; name=\"%s\"", str));
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                w wVar = (w) it.next();
                sb2.append(String.format(Locale.ENGLISH, "; %s=\"%s\"", wVar.getName(), wVar.getValue()));
            }
        }
        this.f60916a.f(HttpHeaders.CONTENT_DISPOSITION, sb2.toString());
        this.f60917b = Multimap.parseSemicolonDelimited(this.f60916a.c(HttpHeaders.CONTENT_DISPOSITION));
    }

    public String a() {
        return this.f60917b.getString("name");
    }

    public Headers b() {
        return this.f60916a;
    }

    public long c() {
        return this.f60918c;
    }

    public void d(s sVar, bv.a aVar) {
    }
}
