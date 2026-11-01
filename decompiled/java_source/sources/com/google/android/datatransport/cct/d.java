package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.miniapp.BuildConfig;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.ComplianceData;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.cct.internal.m;
import com.google.android.datatransport.cct.internal.n;
import com.google.android.datatransport.cct.internal.o;
import com.google.android.datatransport.cct.internal.p;
import com.google.android.datatransport.cct.internal.q;
import com.google.android.datatransport.cct.internal.r;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.h;
import com.google.android.datatransport.runtime.i;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.google.firebase.encoders.EncodingException;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import t8.k;

/* JADX INFO: loaded from: classes3.dex */
final class d implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final bc.a f24188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectivityManager f24189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f24190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final URL f24191d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c9.a f24192e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c9.a f24193f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f24194g;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final URL f24195a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final m f24196b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f24197c;

        a(URL url, m mVar, String str) {
            this.f24195a = url;
            this.f24196b = mVar;
            this.f24197c = str;
        }

        a a(URL url) {
            return new a(url, this.f24196b, this.f24197c);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f24198a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final URL f24199b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final long f24200c;

        b(int i11, URL url, long j11) {
            this.f24198a = i11;
            this.f24199b = url;
            this.f24200c = j11;
        }
    }

    d(Context context, c9.a aVar, c9.a aVar2) {
        this(context, aVar, aVar2, 130000);
    }

    d(Context context, c9.a aVar, c9.a aVar2, int i11) {
        this.f24188a = m.b();
        this.f24190c = context;
        this.f24189b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f24191d = o(com.google.android.datatransport.cct.a.f24179c);
        this.f24192e = aVar2;
        this.f24193f = aVar;
        this.f24194g = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b e(a aVar) throws IOException {
        w8.a.f("CctTransportBackend", "Making request to: %s", aVar.f24195a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f24195a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f24194g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "3.3.0"));
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_ENCODING, "gzip");
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.f24197c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    this.f24188a.a(aVar.f24196b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    w8.a.f("CctTransportBackend", "Status Code: %d", Integer.valueOf(responseCode));
                    w8.a.b("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField(HttpHeaders.CONTENT_TYPE));
                    w8.a.b("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new b(responseCode, new URL(httpURLConnection.getHeaderField(HttpHeaders.LOCATION)), 0L);
                    }
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream inputStreamN = n(inputStream, httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
                        try {
                            b bVar = new b(responseCode, null, s8.b.b(new BufferedReader(new InputStreamReader(inputStreamN))).c());
                            if (inputStreamN != null) {
                                inputStreamN.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } catch (Throwable th2) {
                            if (inputStreamN != null) {
                                try {
                                    inputStreamN.close();
                                } catch (Throwable th3) {
                                    th2.addSuppressed(th3);
                                }
                            }
                            throw th2;
                        }
                    } catch (Throwable th4) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th5) {
                                th4.addSuppressed(th5);
                            }
                        }
                        throw th4;
                    }
                } catch (Throwable th6) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th7) {
                        th6.addSuppressed(th7);
                    }
                    throw th6;
                }
            } catch (Throwable th8) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th9) {
                        th8.addSuppressed(th9);
                    }
                }
                throw th8;
            }
        } catch (EncodingException e11) {
            e = e11;
            w8.a.d("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        } catch (ConnectException e12) {
            e = e12;
            w8.a.d("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (UnknownHostException e13) {
            e = e13;
            w8.a.d("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (IOException e14) {
            e = e14;
            w8.a.d("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        }
    }

    private static String f(Context context) {
        String simOperator = k(context).getSimOperator();
        return simOperator != null ? simOperator : "";
    }

    private static int g(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.MobileSubtype.UNKNOWN_MOBILE_SUBTYPE.getValue();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return NetworkConnectionInfo.MobileSubtype.COMBINED.getValue();
        }
        if (NetworkConnectionInfo.MobileSubtype.forNumber(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    private static int h(NetworkInfo networkInfo) {
        return networkInfo == null ? NetworkConnectionInfo.NetworkType.NONE.getValue() : networkInfo.getType();
    }

    private static int i(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e11) {
            w8.a.d("CctTransportBackend", "Unable to find version code for package", e11);
            return -1;
        }
    }

    private m j(t8.e eVar) {
        q.a aVarL;
        HashMap map = new HashMap();
        for (i iVar : eVar.b()) {
            String strN = iVar.n();
            if (map.containsKey(strN)) {
                ((List) map.get(strN)).add(iVar);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(iVar);
                map.put(strN, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            i iVar2 = (i) ((List) entry.getValue()).get(0);
            r.a aVarB = r.a().f(QosTier.DEFAULT).g(this.f24193f.getTime()).h(this.f24192e.getTime()).b(ClientInfo.a().c(ClientInfo.ClientType.ANDROID_FIREBASE).b(com.google.android.datatransport.cct.internal.a.a().m(Integer.valueOf(iVar2.i("sdk-version"))).j(iVar2.b("model")).f(iVar2.b("hardware")).d(iVar2.b("device")).l(iVar2.b(BuildConfig.FLAVOR_sdkMode)).k(iVar2.b("os-uild")).h(iVar2.b("manufacturer")).e(iVar2.b("fingerprint")).c(iVar2.b(PlaceTypes.COUNTRY)).g(iVar2.b("locale")).i(iVar2.b("mcc_mnc")).b(iVar2.b("application_build")).a()).a());
            try {
                aVarB.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                aVarB.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (i iVar3 : (List) entry.getValue()) {
                h hVarE = iVar3.e();
                r8.c cVarB = hVarE.b();
                if (cVarB.equals(r8.c.b("proto"))) {
                    aVarL = q.l(hVarE.a());
                } else if (cVarB.equals(r8.c.b("json"))) {
                    aVarL = q.k(new String(hVarE.a(), Charset.forName("UTF-8")));
                } else {
                    w8.a.g("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", cVarB);
                }
                aVarL.d(iVar3.f()).e(iVar3.o()).j(iVar3.j("tz-offset")).g(NetworkConnectionInfo.a().c(NetworkConnectionInfo.NetworkType.forNumber(iVar3.i("net-type"))).b(NetworkConnectionInfo.MobileSubtype.forNumber(iVar3.i("mobile-subtype"))).a());
                if (iVar3.d() != null) {
                    aVarL.c(iVar3.d());
                }
                if (iVar3.l() != null) {
                    aVarL.b(ComplianceData.a().b(p.a().b(o.a().b(iVar3.l()).a()).a()).c(ComplianceData.ProductIdOrigin.EVENT_OVERRIDE).a());
                }
                if (iVar3.g() != null || iVar3.h() != null) {
                    n.a aVarA = n.a();
                    if (iVar3.g() != null) {
                        aVarA.b(iVar3.g());
                    }
                    if (iVar3.h() != null) {
                        aVarA.c(iVar3.h());
                    }
                    aVarL.f(aVarA.a());
                }
                arrayList3.add(aVarL.a());
            }
            aVarB.c(arrayList3);
            arrayList2.add(aVarB.a());
        }
        return m.a(arrayList2);
    }

    private static TelephonyManager k(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    static long l() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a m(a aVar, b bVar) {
        URL url = bVar.f24199b;
        if (url == null) {
            return null;
        }
        w8.a.b("CctTransportBackend", "Following redirect to: %s", url);
        return aVar.a(bVar.f24199b);
    }

    private static InputStream n(InputStream inputStream, String str) {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    private static URL o(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e11) {
            throw new IllegalArgumentException("Invalid url: " + str, e11);
        }
    }

    @Override // t8.k
    public i a(i iVar) {
        NetworkInfo activeNetworkInfo = this.f24189b.getActiveNetworkInfo();
        return iVar.p().a("sdk-version", Build.VERSION.SDK_INT).c("model", Build.MODEL).c("hardware", Build.HARDWARE).c("device", Build.DEVICE).c(BuildConfig.FLAVOR_sdkMode, Build.PRODUCT).c("os-uild", Build.ID).c("manufacturer", Build.MANUFACTURER).c("fingerprint", Build.FINGERPRINT).b("tz-offset", l()).a("net-type", h(activeNetworkInfo)).a("mobile-subtype", g(activeNetworkInfo)).c(PlaceTypes.COUNTRY, Locale.getDefault().getCountry()).c("locale", Locale.getDefault().getLanguage()).c("mcc_mnc", f(this.f24190c)).c("application_build", Integer.toString(i(this.f24190c))).d();
    }

    @Override // t8.k
    public BackendResponse b(t8.e eVar) {
        m mVarJ = j(eVar);
        URL urlO = this.f24191d;
        String strD = null;
        if (eVar.c() != null) {
            try {
                com.google.android.datatransport.cct.a aVarC = com.google.android.datatransport.cct.a.c(eVar.c());
                strD = aVarC.d() != null ? aVarC.d() : null;
                if (aVarC.e() != null) {
                    urlO = o(aVarC.e());
                }
            } catch (IllegalArgumentException unused) {
                return BackendResponse.a();
            }
        }
        try {
            b bVar = (b) x8.b.a(5, new a(urlO, mVarJ, strD), new x8.a() { // from class: com.google.android.datatransport.cct.b
                @Override // x8.a
                public final Object apply(Object obj) {
                    return this.f24187a.e((d.a) obj);
                }
            }, new x8.c() { // from class: com.google.android.datatransport.cct.c
                @Override // x8.c
                public final Object a(Object obj, Object obj2) {
                    return d.m((d.a) obj, (d.b) obj2);
                }
            });
            int i11 = bVar.f24198a;
            if (i11 == 200) {
                return BackendResponse.e(bVar.f24200c);
            }
            if (i11 < 500 && i11 != 404) {
                return i11 == 400 ? BackendResponse.d() : BackendResponse.a();
            }
            return BackendResponse.f();
        } catch (IOException e11) {
            w8.a.d("CctTransportBackend", "Could not make request to the backend", e11);
            return BackendResponse.f();
        }
    }
}
