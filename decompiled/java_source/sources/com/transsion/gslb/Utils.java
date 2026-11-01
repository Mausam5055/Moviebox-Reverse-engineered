package com.transsion.gslb;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.core.log.ObjectLogUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public class Utils {
    public static final String SEPARATOR = "#";
    public static ObjectLogUtils LOG = new ObjectLogUtils.a().p("GSLB_SDK_LOG").q(true).n(false).m();
    public static SSLSocketFactory sslSocketFactory = null;

    public static String bufferRead(File file) throws Throwable {
        if (file == null) {
            return "";
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                if (!file.exists()) {
                    return "";
                }
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[fileInputStream2.available()];
                    fileInputStream2.read(bArr);
                    String str = new String(bArr);
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused) {
                    }
                    return str;
                } catch (Exception e11) {
                    e = e11;
                    fileInputStream = fileInputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e12) {
                e = e12;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        LOG.i(Log.getStackTraceString(e));
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException unused3) {
            }
        }
        return "";
    }

    public static void bufferSave(String str, String str2) {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                    try {
                        fileOutputStream2.write(str2.getBytes());
                        fileOutputStream2.close();
                    } catch (Exception e11) {
                        e = e11;
                        fileOutputStream = fileOutputStream2;
                        LOG.i(Log.getStackTraceString(e));
                        if (fileOutputStream == null) {
                        } else {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused2) {
                }
            } catch (Exception e12) {
                e = e12;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static NetResponse<String> doPost(String str, String str2) {
        NetResponse<String> netResponse;
        String str3 = GslbSdk.isTestMode() ? "https://test-gslb.shalltry.com/gslb/domain/convert" : "https://gslb.shalltry.com/gslb/domain/convert";
        LOG.g("begin net connect: " + str);
        HttpURLConnection httpURLConnection = null;
        NetResponse<String> netResponse2 = new NetResponse<>(-1, null);
        String str4 = str != null ? str : "";
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str3).openConnection()));
            try {
                httpURLConnection2.setRequestProperty("accept", "*/*");
                httpURLConnection2.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
                httpURLConnection2.setRequestProperty(HttpHeaders.CONTENT_LENGTH, String.valueOf(str4.length()));
                httpURLConnection2.setRequestProperty("X-Gslb-Sign", str2);
                httpURLConnection2.setRequestMethod("POST");
                httpURLConnection2.setReadTimeout(20000);
                httpURLConnection2.setConnectTimeout(30000);
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setDoOutput(true);
                PrintWriter printWriter = new PrintWriter(httpURLConnection2.getOutputStream());
                printWriter.write(str4);
                printWriter.flush();
                printWriter.close();
                int responseCode = httpURLConnection2.getResponseCode();
                String responseMessage = httpURLConnection2.getResponseMessage();
                LOG.n("url:" + str3 + " code:" + responseCode + " Post Data:" + str + " " + responseMessage);
                if (responseCode == 200) {
                    InputStream inputStream = httpURLConnection2.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("UTF-8")));
                    StringBuilder sb2 = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb2.append(line);
                    }
                    String string = sb2.toString();
                    try {
                        if (TextUtils.equals("{}", string)) {
                            netResponse = new NetResponse<>(1, null);
                        } else {
                            if (TextUtils.isEmpty(string)) {
                                netResponse = new NetResponse<>(-1, null);
                            } else {
                                netResponse2 = new NetResponse<>(0, string);
                            }
                            bufferedReader.close();
                            inputStream.close();
                        }
                        bufferedReader.close();
                        inputStream.close();
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            LOG.i(Log.getStackTraceString(th));
                            return netResponse2;
                        } finally {
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                        }
                    }
                    netResponse2 = netResponse;
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = httpURLConnection2;
                httpURLConnection2 = httpURLConnection;
                LOG.i(Log.getStackTraceString(th));
                return netResponse2;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        return netResponse2;
    }

    public static String getCurProcessName(Context context) {
        String processName = null;
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                processName = Application.getProcessName();
            } else {
                int iMyPid = Process.myPid();
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
                if (runningAppProcesses != null) {
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        if (runningAppProcessInfo.pid == iMyPid) {
                            processName = runningAppProcessInfo.processName;
                        }
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return TextUtils.isEmpty(processName) ? context.getPackageName() : processName;
    }

    public static String getDomain(String str) {
        String host;
        if (str == null || !str.startsWith("http")) {
            host = str;
        } else {
            try {
                host = new URL(str).getHost();
            } catch (MalformedURLException e11) {
                e11.printStackTrace();
                host = "";
            }
        }
        if (TextUtils.isEmpty(host)) {
            LOG.i("the url is illegal->" + str);
        }
        return host;
    }

    public static String getMcc() {
        String strF = DeviceInfo.f();
        return (TextUtils.isEmpty(strF) || strF.length() < 3) ? "" : strF.substring(0, 3);
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3);
            }
        } catch (Exception e11) {
            LOG.i(Log.getStackTraceString(e11));
        }
        return false;
    }

    public static String mapToString(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(SEPARATOR);
            sb2.append(entry.getValue());
            sb2.append(",");
        }
        return sb2.toString();
    }

    public static Map<String, String> stringToMap(String str) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(8);
        if (str != null && str.length() != 0) {
            for (String str2 : str.split(",")) {
                String[] strArrSplit = str2.split(SEPARATOR);
                if (strArrSplit.length == 2) {
                    concurrentHashMap.put(strArrSplit[0], strArrSplit[1]);
                }
            }
        }
        return concurrentHashMap;
    }
}
