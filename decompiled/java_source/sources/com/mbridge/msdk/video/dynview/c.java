package com.mbridge.msdk.video.dynview;

import android.content.Context;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f38970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f38972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f38973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f38974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f38975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f38976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f38977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<CampaignEx> f38978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f38979j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f38980k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<String> f38981l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f38982m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f38983n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f38984o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f38985p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f38986q;

    public static class b implements InterfaceC0556c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f38987a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f38988b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f38989c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f38990d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f38991e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f38992f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f38993g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private View f38994h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private List<CampaignEx> f38995i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f38996j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f38997k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private List<String> f38998l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f38999m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private String f39000n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f39001o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f39002p = 1;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private String f39003q;

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c a(float f11) {
            this.f38991e = f11;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c a(int i11) {
            this.f38996j = i11;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c a(Context context) {
            this.f38987a = context.getApplicationContext();
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c a(View view) {
            this.f38994h = view;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c a(String str) {
            this.f39000n = str;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c a(List<CampaignEx> list) {
            this.f38995i = list;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c a(boolean z10) {
            this.f38997k = z10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c b(float f11) {
            this.f38990d = f11;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c b(int i11) {
            this.f38989c = i11;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c b(String str) {
            this.f39003q = str;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public c build() {
            return new c(this);
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c c(int i11) {
            this.f38993g = i11;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c c(String str) {
            this.f38988b = str;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c d(int i11) {
            this.f38999m = i11;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c e(int i11) {
            this.f39002p = i11;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c f(int i11) {
            this.f39001o = i11;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c fileDirs(List<String> list) {
            this.f38998l = list;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0556c
        public InterfaceC0556c orientation(int i11) {
            this.f38992f = i11;
            return this;
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.c$c, reason: collision with other inner class name */
    public interface InterfaceC0556c {
        InterfaceC0556c a(float f11);

        InterfaceC0556c a(int i11);

        InterfaceC0556c a(Context context);

        InterfaceC0556c a(View view);

        InterfaceC0556c a(String str);

        InterfaceC0556c a(List<CampaignEx> list);

        InterfaceC0556c a(boolean z10);

        InterfaceC0556c b(float f11);

        InterfaceC0556c b(int i11);

        InterfaceC0556c b(String str);

        c build();

        InterfaceC0556c c(int i11);

        InterfaceC0556c c(String str);

        InterfaceC0556c d(int i11);

        InterfaceC0556c e(int i11);

        InterfaceC0556c f(int i11);

        InterfaceC0556c fileDirs(List<String> list);

        InterfaceC0556c orientation(int i11);
    }

    private c(b bVar) {
        this.f38974e = bVar.f38991e;
        this.f38973d = bVar.f38990d;
        this.f38975f = bVar.f38992f;
        this.f38976g = bVar.f38993g;
        this.f38970a = bVar.f38987a;
        this.f38971b = bVar.f38988b;
        this.f38972c = bVar.f38989c;
        this.f38977h = bVar.f38994h;
        this.f38978i = bVar.f38995i;
        this.f38979j = bVar.f38996j;
        this.f38980k = bVar.f38997k;
        this.f38981l = bVar.f38998l;
        this.f38982m = bVar.f38999m;
        this.f38983n = bVar.f39000n;
        this.f38984o = bVar.f39001o;
        this.f38985p = bVar.f39002p;
        this.f38986q = bVar.f39003q;
    }

    public static b a() {
        return new b();
    }

    public List<CampaignEx> b() {
        return this.f38978i;
    }

    public Context c() {
        return this.f38970a;
    }

    public List<String> d() {
        return this.f38981l;
    }

    public int e() {
        return this.f38984o;
    }

    public String f() {
        return this.f38971b;
    }

    public int g() {
        return this.f38972c;
    }

    public int h() {
        return this.f38975f;
    }

    public View i() {
        return this.f38977h;
    }

    public int j() {
        return this.f38976g;
    }

    public float k() {
        return this.f38973d;
    }

    public int l() {
        return this.f38979j;
    }

    public float m() {
        return this.f38974e;
    }

    public String n() {
        return this.f38986q;
    }

    public int o() {
        return this.f38985p;
    }

    public boolean p() {
        return this.f38980k;
    }
}
