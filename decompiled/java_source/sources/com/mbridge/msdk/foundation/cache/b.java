package com.mbridge.msdk.foundation.cache;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.i0;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f34971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f34972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34973c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34974d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f34975e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f34976f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f34977g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f34978h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f34979i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f34980j;

    public CopyOnWriteArrayList<CampaignEx> a() {
        return this.f34971a;
    }

    public void a(int i11) {
        this.f34975e = i11;
    }

    public void a(long j11) {
        this.f34980j = j11;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strA = i0.a(str);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        try {
            double d11 = Double.parseDouble(strA);
            if (d11 <= 0.0d) {
                return;
            }
            this.f34972b = d11;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f34971a = copyOnWriteArrayList;
    }

    public double b() {
        return this.f34972b;
    }

    public void b(int i11) {
        this.f34977g = i11;
    }

    public void b(long j11) {
        this.f34976f = j11;
    }

    public void b(String str) {
        this.f34973c = str;
    }

    public long c() {
        return this.f34980j;
    }

    public void c(long j11) {
        this.f34978h = j11;
    }

    public void c(String str) {
        this.f34974d = str;
    }

    public String d() {
        return this.f34973c;
    }

    public void d(String str) {
        this.f34979i = str;
    }

    public String e() {
        return this.f34974d;
    }

    public int f() {
        return this.f34975e;
    }

    public int g() {
        return this.f34977g;
    }

    public long h() {
        return this.f34978h;
    }
}
