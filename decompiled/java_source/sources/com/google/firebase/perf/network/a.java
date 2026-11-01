package com.google.firebase.perf.network;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends HttpURLConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f32311a;

    a(HttpURLConnection httpURLConnection, Timer timer, i iVar) {
        super(httpURLConnection.getURL());
        this.f32311a = new c(httpURLConnection, timer, iVar);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.f32311a.a(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() {
        this.f32311a.b();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.f32311a.c();
    }

    public boolean equals(Object obj) {
        return this.f32311a.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f32311a.d();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f32311a.e();
    }

    @Override // java.net.URLConnection
    public Object getContent() {
        return this.f32311a.f();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) {
        return this.f32311a.g(clsArr);
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.f32311a.h();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f32311a.i();
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.f32311a.j();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.f32311a.k();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f32311a.l();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f32311a.m();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f32311a.n();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f32311a.o();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.f32311a.p();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f32311a.q();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i11) {
        return this.f32311a.r(i11);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.f32311a.s(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j11) {
        return this.f32311a.t(str, j11);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i11) {
        return this.f32311a.u(str, i11);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i11) {
        return this.f32311a.v(i11);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j11) {
        return this.f32311a.w(str, j11);
    }

    @Override // java.net.URLConnection
    public Map getHeaderFields() {
        return this.f32311a.x();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f32311a.y();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        return this.f32311a.z();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f32311a.A();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f32311a.B();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return this.f32311a.C();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() {
        return this.f32311a.D();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f32311a.E();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.f32311a.F();
    }

    @Override // java.net.URLConnection
    public Map getRequestProperties() {
        return this.f32311a.G();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.f32311a.H(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() {
        return this.f32311a.I();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() {
        return this.f32311a.J();
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.f32311a.K();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f32311a.L();
    }

    public int hashCode() {
        return this.f32311a.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z10) {
        this.f32311a.M(z10);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i11) {
        this.f32311a.N(i11);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i11) {
        this.f32311a.O(i11);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z10) {
        this.f32311a.P(z10);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z10) {
        this.f32311a.Q(z10);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z10) {
        this.f32311a.R(z10);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i11) {
        this.f32311a.S(i11);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j11) {
        this.f32311a.T(j11);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j11) {
        this.f32311a.U(j11);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z10) {
        this.f32311a.V(z10);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i11) {
        this.f32311a.W(i11);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) {
        this.f32311a.X(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.f32311a.Y(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z10) {
        this.f32311a.Z(z10);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.f32311a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f32311a.b0();
    }
}
