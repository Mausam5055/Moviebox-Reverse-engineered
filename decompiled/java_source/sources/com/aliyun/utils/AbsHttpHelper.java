package com.aliyun.utils;

import com.cicada.player.utils.Logger;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbsHttpHelper {
    private static final int CONNECTION_TIMEOUT = 10000;

    /* JADX WARN: Code duplicated, block: B:31:0x0073  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.net.HttpURLConnection] */
    private void doHttpGet(String str) throws Throwable {
        ?? r11;
        HttpURLConnection httpURLConnection;
        InputStream errorStream;
        InputStream inputStream = null;
        try {
            try {
                URL url = new URL(str);
                if (((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection())) instanceof HttpURLConnection) {
                    httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
                    try {
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setConnectTimeout(10000);
                        httpURLConnection.setReadTimeout(10000);
                        httpURLConnection.connect();
                        if (httpURLConnection.getResponseCode() == 200) {
                            errorStream = httpURLConnection.getInputStream();
                            handleOKInputStream(errorStream);
                        } else {
                            errorStream = httpURLConnection.getErrorStream();
                            handleErrorInputStream(errorStream);
                        }
                        if (errorStream != null) {
                            try {
                                errorStream.close();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Exception e11) {
                        e = e11;
                        Logger.w("HttpClientUtil", e.getMessage());
                        if (0 != 0) {
                            try {
                                inputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        if (httpURLConnection == null) {
                            return;
                        }
                    }
                    httpURLConnection.disconnect();
                }
                return;
            } catch (Throwable th2) {
                th = th2;
                r11 = str;
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                if (r11 != 0) {
                    throw th;
                }
                r11.disconnect();
                throw th;
            }
        } catch (Exception e12) {
            e = e12;
            httpURLConnection = null;
        } catch (Throwable th3) {
            th = th3;
            r11 = 0;
            if (0 != 0) {
                inputStream.close();
            }
            if (r11 != 0) {
                throw th;
            }
            r11.disconnect();
            throw th;
        }
        Logger.w("HttpClientUtil", e.getMessage());
        if (0 != 0) {
            inputStream.close();
        }
        if (httpURLConnection == null) {
            return;
        }
        httpURLConnection.disconnect();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0073  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.net.HttpURLConnection] */
    private void doHttpsGet(String str) throws Throwable {
        ?? r11;
        HttpsURLConnection httpsURLConnection;
        InputStream errorStream;
        InputStream inputStream = null;
        try {
            try {
                URL url = new URL(str);
                if (((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection())) instanceof HttpsURLConnection) {
                    httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
                    try {
                        httpsURLConnection.setRequestMethod("GET");
                        httpsURLConnection.setConnectTimeout(10000);
                        httpsURLConnection.setReadTimeout(10000);
                        httpsURLConnection.connect();
                        if (httpsURLConnection.getResponseCode() == 200) {
                            errorStream = httpsURLConnection.getInputStream();
                            handleOKInputStream(errorStream);
                        } else {
                            errorStream = httpsURLConnection.getErrorStream();
                            handleErrorInputStream(errorStream);
                        }
                        if (errorStream != null) {
                            try {
                                errorStream.close();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Exception e11) {
                        e = e11;
                        Logger.d("HttpClientUtil", e.getMessage());
                        if (0 != 0) {
                            try {
                                inputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        if (httpsURLConnection == null) {
                            return;
                        }
                    }
                    httpsURLConnection.disconnect();
                }
                return;
            } catch (Throwable th2) {
                th = th2;
                r11 = str;
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                if (r11 != 0) {
                    throw th;
                }
                r11.disconnect();
                throw th;
            }
        } catch (Exception e12) {
            e = e12;
            httpsURLConnection = null;
        } catch (Throwable th3) {
            th = th3;
            r11 = 0;
            if (0 != 0) {
                inputStream.close();
            }
            if (r11 != 0) {
                throw th;
            }
            r11.disconnect();
            throw th;
        }
        Logger.d("HttpClientUtil", e.getMessage());
        if (0 != 0) {
            inputStream.close();
        }
        if (httpsURLConnection == null) {
            return;
        }
        httpsURLConnection.disconnect();
    }

    public void doGet(String str) throws Throwable {
        if (str.startsWith("https://")) {
            doHttpsGet(str);
        } else if (str.startsWith("http://")) {
            doHttpGet(str);
        }
    }

    protected abstract void handleErrorInputStream(InputStream inputStream);

    protected abstract void handleOKInputStream(InputStream inputStream);
}
