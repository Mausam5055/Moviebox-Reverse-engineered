package com.google.firebase.perf.network;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends HttpsURLConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f32312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HttpsURLConnection f32313b;

    b(HttpsURLConnection httpsURLConnection, Timer timer, i iVar) {
        super(httpsURLConnection.getURL());
        this.f32313b = httpsURLConnection;
        this.f32312a = new c(httpsURLConnection, timer, iVar);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.f32312a.a(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() {
        this.f32312a.b();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.f32312a.c();
    }

    public boolean equals(Object obj) {
        return this.f32312a.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f32312a.d();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public String getCipherSuite() {
        return this.f32313b.getCipherSuite();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f32312a.e();
    }

    @Override // java.net.URLConnection
    public Object getContent() {
        return this.f32312a.f();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) {
        return this.f32312a.g(clsArr);
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.f32312a.h();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f32312a.i();
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.f32312a.j();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.f32312a.k();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f32312a.l();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f32312a.m();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f32312a.n();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f32312a.o();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.f32312a.p();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f32312a.q();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i11) {
        return this.f32312a.r(i11);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.f32312a.s(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j11) {
        return this.f32312a.t(str, j11);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i11) {
        return this.f32312a.u(str, i11);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i11) {
        return this.f32312a.v(i11);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j11) {
        return this.f32312a.w(str, j11);
    }

    @Override // java.net.URLConnection
    public Map getHeaderFields() {
        return this.f32312a.x();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public HostnameVerifier getHostnameVerifier() {
        return this.f32313b.getHostnameVerifier();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f32312a.y();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        return this.f32312a.z();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f32312a.A();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f32312a.B();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Certificate[] getLocalCertificates() {
        return this.f32313b.getLocalCertificates();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Principal getLocalPrincipal() {
        return this.f32313b.getLocalPrincipal();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return this.f32312a.C();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Principal getPeerPrincipal() {
        return this.f32313b.getPeerPrincipal();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() {
        return this.f32312a.D();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f32312a.E();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.f32312a.F();
    }

    @Override // java.net.URLConnection
    public Map getRequestProperties() {
        return this.f32312a.G();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.f32312a.H(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() {
        return this.f32312a.I();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() {
        return this.f32312a.J();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public SSLSocketFactory getSSLSocketFactory() {
        return this.f32313b.getSSLSocketFactory();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Certificate[] getServerCertificates() {
        return this.f32313b.getServerCertificates();
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.f32312a.K();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f32312a.L();
    }

    public int hashCode() {
        return this.f32312a.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z10) {
        this.f32312a.M(z10);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i11) {
        this.f32312a.N(i11);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i11) {
        this.f32312a.O(i11);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z10) {
        this.f32312a.P(z10);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z10) {
        this.f32312a.Q(z10);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z10) {
        this.f32312a.R(z10);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i11) {
        this.f32312a.S(i11);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j11) {
        this.f32312a.T(j11);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f32313b.setHostnameVerifier(hostnameVerifier);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j11) {
        this.f32312a.U(j11);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z10) {
        this.f32312a.V(z10);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i11) {
        this.f32312a.W(i11);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) {
        this.f32312a.X(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.f32312a.Y(str, str2);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f32313b.setSSLSocketFactory(sSLSocketFactory);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z10) {
        this.f32312a.Z(z10);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.f32312a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f32312a.b0();
    }
}
