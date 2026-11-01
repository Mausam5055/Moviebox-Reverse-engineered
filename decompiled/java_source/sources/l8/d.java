package l8;

import android.util.Log;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.facebook.biddingkit.http.client.HttpMethod;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f68746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected HttpMethod f68747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f68748c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected byte[] f68749d;

    public d(String str, Map map) {
        this.f68746a = "";
        if (str != null) {
            this.f68746a = str;
        }
        if (map != null) {
            this.f68746a += UrlUtils.QUESTION_MARK + e(map);
        }
    }

    private String e(Map map) {
        StringBuilder sb2 = new StringBuilder();
        for (String str : map.keySet()) {
            if (sb2.length() > 0) {
                sb2.append(UrlUtils.AND_MARK);
            }
            sb2.append(str);
            String str2 = (String) map.get(str);
            if (str2 != null) {
                sb2.append(UrlUtils.EQUAL_MARK);
                try {
                    sb2.append(URLEncoder.encode(str2, "UTF-8"));
                } catch (UnsupportedEncodingException e11) {
                    Log.e("HttpRequest", "Failed url encode: ", e11);
                }
            }
        }
        return sb2.toString();
    }

    public byte[] a() {
        return this.f68749d;
    }

    public String b() {
        return this.f68748c;
    }

    public HttpMethod c() {
        return this.f68747b;
    }

    public String d() {
        return this.f68746a;
    }
}
