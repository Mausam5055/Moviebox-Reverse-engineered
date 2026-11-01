package ub;

import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import ob.g;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f76709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f76710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f76711c = new HashMap();

    public a(String str, Map map) {
        this.f76709a = str;
        this.f76710b = map;
    }

    private String a(Map map) {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = map.entrySet().iterator();
        Map.Entry entry = (Map.Entry) it.next();
        sb2.append((String) entry.getKey());
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(entry.getValue() != null ? URLEncoder.encode((String) entry.getValue(), "UTF-8") : "");
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb2.append(UrlUtils.AND_MARK);
            sb2.append((String) entry2.getKey());
            sb2.append(UrlUtils.EQUAL_MARK);
            sb2.append(entry2.getValue() != null ? URLEncoder.encode((String) entry2.getValue(), "UTF-8") : "");
        }
        return sb2.toString();
    }

    private String b(String str, Map map) {
        String strA = a(map);
        if (strA.isEmpty()) {
            return str;
        }
        if (!str.contains(UrlUtils.QUESTION_MARK)) {
            return str + UrlUtils.QUESTION_MARK + strA;
        }
        if (!str.endsWith(UrlUtils.AND_MARK)) {
            strA = UrlUtils.AND_MARK + strA;
        }
        return str + strA;
    }

    private String e(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        char[] cArr = new char[8192];
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int i11 = bufferedReader.read(cArr);
            if (i11 == -1) {
                return sb2.toString();
            }
            sb2.append(cArr, 0, i11);
        }
    }

    public c c() throws Throwable {
        HttpsURLConnection httpsURLConnection;
        CrashlyticsWorkers.d();
        InputStream inputStream = null;
        String strE = null;
        inputStream = null;
        try {
            String strB = b(this.f76709a, this.f76710b);
            g.f().i("GET Request URL: " + strB);
            httpsURLConnection = (HttpsURLConnection) new URL(strB).openConnection();
            try {
                httpsURLConnection.setReadTimeout(10000);
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setRequestMethod("GET");
                for (Map.Entry entry : this.f76711c.entrySet()) {
                    httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                if (inputStream2 != null) {
                    try {
                        strE = e(inputStream2);
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return new c(responseCode, strE);
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            httpsURLConnection = null;
        }
    }

    public a d(String str, String str2) {
        this.f76711c.put(str, str2);
        return this;
    }
}
