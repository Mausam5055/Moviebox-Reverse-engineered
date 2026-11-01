package com.mbridge.msdk.foundation.error;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.out.MBridgeIds;
import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class b implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f35271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f35272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f35273c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Throwable f35274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CampaignEx f35275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MBridgeIds f35276f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f35277g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f35278h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f35279i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f35280j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f35281k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private HashMap<Object, Object> f35282l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f35283m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f35284n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f35285o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f35286p;

    public b(int i11) {
        this.f35271a = i11;
        this.f35272b = a.b(i11);
    }

    public b(int i11, String str) {
        this.f35271a = i11;
        if (!TextUtils.isEmpty(str)) {
            a("his_reason", str);
        }
        this.f35273c = str;
        this.f35272b = a.b(i11);
    }

    public CampaignEx a() {
        return this.f35275e;
    }

    public Object a(Object obj) {
        HashMap<Object, Object> map = this.f35282l;
        if (map != null && map.containsKey(obj)) {
            return this.f35282l.get(obj);
        }
        return null;
    }

    public void a(int i11) {
        this.f35280j = i11;
    }

    public void a(CampaignEx campaignEx) {
        this.f35275e = campaignEx;
    }

    public void a(MBridgeIds mBridgeIds) {
        this.f35276f = mBridgeIds;
    }

    public void a(Object obj, Object obj2) {
        if (this.f35282l == null) {
            this.f35282l = new HashMap<>();
        }
        this.f35282l.put(obj, obj2);
    }

    public void a(String str) {
        this.f35286p = str;
    }

    public void a(Throwable th2) {
        this.f35274d = th2;
    }

    public void a(boolean z10) {
        this.f35279i = z10;
    }

    public int b() {
        return this.f35271a;
    }

    public void b(String str) {
        this.f35278h = str;
    }

    public int c() {
        return this.f35272b;
    }

    public void c(String str) {
        this.f35273c = str;
    }

    public String d() {
        return this.f35286p;
    }

    public void d(String str) {
        this.f35281k = str;
    }

    public MBridgeIds e() {
        if (this.f35276f == null) {
            this.f35276f = new MBridgeIds();
        }
        return this.f35276f;
    }

    public String f() {
        return this.f35278h;
    }

    public String g() {
        int i11;
        String strA = !TextUtils.isEmpty(this.f35273c) ? this.f35273c : "";
        if (TextUtils.isEmpty(strA) && (i11 = this.f35271a) != -1) {
            strA = a.a(i11);
        }
        Throwable th2 = this.f35274d;
        if (th2 == null) {
            return strA;
        }
        String message = th2.getMessage();
        if (TextUtils.isEmpty(message)) {
            return strA;
        }
        return strA + " # " + message;
    }

    public String h() {
        return this.f35281k;
    }

    public int i() {
        return this.f35280j;
    }

    public String toString() {
        return "MBFailureReason{errorCode=" + this.f35271a + ", errorSubType=" + this.f35272b + ", message='" + this.f35273c + "', cause=" + this.f35274d + ", campaign=" + this.f35275e + ", ids=" + this.f35276f + ", requestId='" + this.f35277g + "', localRequestId='" + this.f35278h + "', isHeaderBidding=" + this.f35279i + ", typeD=" + this.f35280j + ", reasonD='" + this.f35281k + "', extraMap=" + this.f35282l + ", serverErrorCode=" + this.f35283m + ", errorUrl='" + this.f35284n + "', serverErrorResponse='" + this.f35285o + "'}";
    }
}
