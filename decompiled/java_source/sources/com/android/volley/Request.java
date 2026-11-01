package com.android.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Request implements Comparable {
    private static final String DEFAULT_PARAMS_ENCODING = "UTF-8";

    @Nullable
    private c.a mCacheEntry;
    private boolean mCanceled;
    private final int mDefaultTrafficStatsTag;

    @Nullable
    private i.a mErrorListener;
    private final l.a mEventLog;
    private final Object mLock;
    private final int mMethod;
    private a mRequestCompleteListener;
    private h mRequestQueue;
    private boolean mResponseDelivered;
    private k mRetryPolicy;
    private Integer mSequence;
    private boolean mShouldCache;
    private boolean mShouldRetryConnectionErrors;
    private boolean mShouldRetryServerErrors;
    private Object mTag;
    private final String mUrl;

    public enum Priority {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    interface a {
        void a(Request request, i iVar);

        void b(Request request);
    }

    public Request(int i11, String str, i.a aVar) {
        this.mEventLog = l.a.f19258c ? new l.a() : null;
        this.mLock = new Object();
        this.mShouldCache = true;
        this.mCanceled = false;
        this.mResponseDelivered = false;
        this.mShouldRetryServerErrors = false;
        this.mShouldRetryConnectionErrors = false;
        this.mCacheEntry = null;
        this.mMethod = i11;
        this.mUrl = str;
        this.mErrorListener = aVar;
        setRetryPolicy(new d());
        this.mDefaultTrafficStatsTag = b(str);
    }

    private byte[] a(Map map, String str) {
        StringBuilder sb2 = new StringBuilder();
        try {
            for (Map.Entry entry : map.entrySet()) {
                if (entry.getKey() == null || entry.getValue() == null) {
                    throw new IllegalArgumentException(String.format("Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null.", entry.getKey(), entry.getValue()));
                }
                sb2.append(URLEncoder.encode((String) entry.getKey(), str));
                sb2.append('=');
                sb2.append(URLEncoder.encode((String) entry.getValue(), str));
                sb2.append('&');
            }
            return sb2.toString().getBytes(str);
        } catch (UnsupportedEncodingException e11) {
            throw new RuntimeException("Encoding not supported: " + str, e11);
        }
    }

    private static int b(String str) {
        Uri uri;
        String host;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || (host = uri.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public void addMarker(String str) {
        if (l.a.f19258c) {
            this.mEventLog.a(str, Thread.currentThread().getId());
        }
    }

    public void cancel() {
        synchronized (this.mLock) {
            this.mCanceled = true;
            this.mErrorListener = null;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Request request) {
        Priority priority = getPriority();
        Priority priority2 = request.getPriority();
        return priority == priority2 ? this.mSequence.intValue() - request.mSequence.intValue() : priority2.ordinal() - priority.ordinal();
    }

    public void deliverError(VolleyError volleyError) {
        i.a aVar;
        synchronized (this.mLock) {
            aVar = this.mErrorListener;
        }
        if (aVar != null) {
            aVar.onErrorResponse(volleyError);
        }
    }

    protected abstract void deliverResponse(Object obj);

    void finish(final String str) {
        h hVar = this.mRequestQueue;
        if (hVar != null) {
            hVar.c(this);
        }
        if (l.a.f19258c) {
            final long id2 = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.volley.Request.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Request.this.mEventLog.a(str, id2);
                        Request.this.mEventLog.b(Request.this.toString());
                    }
                });
            } else {
                this.mEventLog.a(str, id2);
                this.mEventLog.b(toString());
            }
        }
    }

    public byte[] getBody() throws AuthFailureError {
        Map<String, String> params = getParams();
        if (params == null || params.size() <= 0) {
            return null;
        }
        return a(params, getParamsEncoding());
    }

    public String getBodyContentType() {
        return "application/x-www-form-urlencoded; charset=" + getParamsEncoding();
    }

    @Nullable
    public c.a getCacheEntry() {
        return this.mCacheEntry;
    }

    public String getCacheKey() {
        String url = getUrl();
        int method = getMethod();
        if (method == 0 || method == -1) {
            return url;
        }
        return Integer.toString(method) + '-' + url;
    }

    @Nullable
    public i.a getErrorListener() {
        i.a aVar;
        synchronized (this.mLock) {
            aVar = this.mErrorListener;
        }
        return aVar;
    }

    public abstract Map getHeaders();

    public int getMethod() {
        return this.mMethod;
    }

    @Nullable
    protected Map<String, String> getParams() throws AuthFailureError {
        return null;
    }

    protected String getParamsEncoding() {
        return "UTF-8";
    }

    @Deprecated
    public byte[] getPostBody() throws AuthFailureError {
        Map<String, String> postParams = getPostParams();
        if (postParams == null || postParams.size() <= 0) {
            return null;
        }
        return a(postParams, getPostParamsEncoding());
    }

    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Nullable
    @Deprecated
    protected Map<String, String> getPostParams() throws AuthFailureError {
        return getParams();
    }

    @Deprecated
    protected String getPostParamsEncoding() {
        return getParamsEncoding();
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    public k getRetryPolicy() {
        return this.mRetryPolicy;
    }

    public final int getSequence() {
        Integer num = this.mSequence;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("getSequence called before setSequence");
    }

    public Object getTag() {
        return this.mTag;
    }

    public final int getTimeoutMs() {
        return getRetryPolicy().c();
    }

    public int getTrafficStatsTag() {
        return this.mDefaultTrafficStatsTag;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public boolean hasHadResponseDelivered() {
        boolean z10;
        synchronized (this.mLock) {
            z10 = this.mResponseDelivered;
        }
        return z10;
    }

    public boolean isCanceled() {
        boolean z10;
        synchronized (this.mLock) {
            z10 = this.mCanceled;
        }
        return z10;
    }

    public void markDelivered() {
        synchronized (this.mLock) {
            this.mResponseDelivered = true;
        }
    }

    void notifyListenerResponseNotUsable() {
        a aVar;
        synchronized (this.mLock) {
            aVar = this.mRequestCompleteListener;
        }
        if (aVar != null) {
            aVar.b(this);
        }
    }

    void notifyListenerResponseReceived(i iVar) {
        a aVar;
        synchronized (this.mLock) {
            aVar = this.mRequestCompleteListener;
        }
        if (aVar != null) {
            aVar.a(this, iVar);
        }
    }

    protected VolleyError parseNetworkError(VolleyError volleyError) {
        return volleyError;
    }

    protected abstract i parseNetworkResponse(g gVar);

    void sendEvent(int i11) {
        h hVar = this.mRequestQueue;
        if (hVar != null) {
            hVar.e(this, i11);
        }
    }

    public Request setCacheEntry(c.a aVar) {
        this.mCacheEntry = aVar;
        return this;
    }

    void setNetworkRequestCompleteListener(a aVar) {
        synchronized (this.mLock) {
            this.mRequestCompleteListener = aVar;
        }
    }

    public Request setRequestQueue(h hVar) {
        this.mRequestQueue = hVar;
        return this;
    }

    public Request setRetryPolicy(k kVar) {
        this.mRetryPolicy = kVar;
        return this;
    }

    public final Request setSequence(int i11) {
        this.mSequence = Integer.valueOf(i11);
        return this;
    }

    public final Request setShouldCache(boolean z10) {
        this.mShouldCache = z10;
        return this;
    }

    public final Request setShouldRetryConnectionErrors(boolean z10) {
        this.mShouldRetryConnectionErrors = z10;
        return this;
    }

    public final Request setShouldRetryServerErrors(boolean z10) {
        this.mShouldRetryServerErrors = z10;
        return this;
    }

    public Request setTag(Object obj) {
        this.mTag = obj;
        return this;
    }

    public final boolean shouldCache() {
        return this.mShouldCache;
    }

    public final boolean shouldRetryConnectionErrors() {
        return this.mShouldRetryConnectionErrors;
    }

    public final boolean shouldRetryServerErrors() {
        return this.mShouldRetryServerErrors;
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(getTrafficStatsTag());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(isCanceled() ? "[X] " : "[ ] ");
        sb2.append(getUrl());
        sb2.append(" ");
        sb2.append(str);
        sb2.append(" ");
        sb2.append(getPriority());
        sb2.append(" ");
        sb2.append(this.mSequence);
        return sb2.toString();
    }
}
