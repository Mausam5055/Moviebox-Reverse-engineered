package t4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HttpURLConnection f76059a;

    public a(HttpURLConnection httpURLConnection) {
        this.f76059a = httpURLConnection;
    }

    private String b(HttpURLConnection httpURLConnection) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb2.append(line);
                    sb2.append('\n');
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th2) {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
                throw th2;
            }
        }
        bufferedReader.close();
        return sb2.toString();
    }

    @Override // t4.c
    public InputStream M() {
        return this.f76059a.getInputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f76059a.disconnect();
    }

    @Override // t4.c
    public String error() {
        try {
            if (isSuccessful()) {
                return null;
            }
            return "Unable to fetch " + this.f76059a.getURL() + ". Failed with " + this.f76059a.getResponseCode() + "\n" + b(this.f76059a);
        } catch (IOException e11) {
            v4.f.d("get error failed ", e11);
            return e11.getMessage();
        }
    }

    @Override // t4.c
    public boolean isSuccessful() {
        try {
            return this.f76059a.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // t4.c
    public String z() {
        return this.f76059a.getContentType();
    }
}
