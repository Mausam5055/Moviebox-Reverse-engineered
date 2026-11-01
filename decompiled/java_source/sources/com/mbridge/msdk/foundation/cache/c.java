package com.mbridge.msdk.foundation.cache;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f34981i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f34982j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f34983k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f34984l = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f34985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34987c = 21;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f34988d = f34982j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<String> f34989e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<String> f34990f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<String> f34991g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<String> f34992h = new ArrayList();

    public String a() {
        ArrayList<String> arrayList = this.f34989e;
        return arrayList == null ? "" : arrayList.toString();
    }

    public void a(int i11) {
        this.f34988d = i11;
    }

    public void a(String str) {
        try {
            ArrayList<String> arrayList = this.f34989e;
            if (arrayList != null) {
                arrayList.add(str);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f34985a = copyOnWriteArrayList;
    }

    public String b() {
        List<String> list = this.f34992h;
        return list == null ? "" : list.toString();
    }

    public void b(String str) {
        try {
            List<String> list = this.f34991g;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public CopyOnWriteArrayList<CampaignEx> c() {
        return this.f34985a;
    }

    public void c(String str) {
        try {
            List<String> list = this.f34990f;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String d() {
        List<String> list = this.f34991g;
        return list == null ? "" : list.toString();
    }

    public void d(String str) {
        this.f34986b = str;
    }

    public String e() {
        return this.f34986b;
    }

    public String f() {
        List<String> list = this.f34990f;
        return list == null ? "" : list.toString();
    }

    public int g() {
        return this.f34988d;
    }
}
