package com.mbridge.msdk.click.retry;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashSet;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f34429k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f34430l = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashSet<String> f34433c = new HashSet<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f34434d = System.currentTimeMillis();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CampaignEx f34435e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f34436f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f34437g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f34438h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f34439i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f34440j;

    public b(String str, String str2) {
        this.f34431a = str;
        a(str2);
    }

    public CampaignEx a() {
        return this.f34435e;
    }

    public void a(int i11) {
        this.f34440j = i11;
    }

    public void a(CampaignEx campaignEx) {
        this.f34435e = campaignEx;
    }

    public void a(String str) {
        this.f34432b++;
        this.f34433c.add(str);
    }

    public void a(boolean z10) {
        this.f34438h = z10;
    }

    public HashSet<String> b() {
        return this.f34433c;
    }

    public void b(int i11) {
        this.f34437g = i11;
    }

    public void b(String str) {
        this.f34436f = str;
    }

    public void b(boolean z10) {
        this.f34439i = z10;
    }

    public long c() {
        return this.f34434d;
    }

    public int d() {
        return this.f34440j;
    }

    public int e() {
        return this.f34432b;
    }

    public String f() {
        return this.f34436f;
    }

    public String g() {
        return this.f34431a;
    }

    public int h() {
        return this.f34437g;
    }

    public boolean i() {
        return this.f34438h;
    }

    public boolean j() {
        return this.f34439i;
    }
}
