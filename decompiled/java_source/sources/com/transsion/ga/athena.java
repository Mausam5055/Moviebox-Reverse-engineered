package com.transsion.ga;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.taaneh.aethna;
import com.transsion.athena.taaneh.anehat;
import com.transsion.push.PushConstants;
import java.util.LinkedList;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class athena implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f44189b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f44191d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f44195h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f44198k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f44188a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f44190c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f44192e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f44193f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f44194g = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f44196i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final LinkedList f44197j = new LinkedList();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f44199a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f44200b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f44201c;

        a(int i11, String str, long j11) {
            this.f44199a = i11;
            this.f44200b = str;
            this.f44201c = j11;
        }
    }

    /* JADX INFO: renamed from: com.transsion.ga.athena$athena, reason: collision with other inner class name */
    class RunnableC0624athena implements Runnable {
        RunnableC0624athena() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                athena.this.f44196i = 0;
                athena.this.f44197j.clear();
                athena.this.f44190c = true;
                athena.this.f44192e = 0L;
                ehanat.d("");
            } catch (Exception unused) {
            }
        }
    }

    private boolean e(Activity activity) {
        Window window;
        if (activity == null || AthenaAnalytics.r(activity.getClass()) || (window = activity.getWindow()) == null) {
            return false;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        return (attributes.width == 1 && attributes.height == 1) ? false : true;
    }

    void d(long j11) {
        this.f44198k = j11;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        com.transsion.athena.taaneh.athena.b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        com.transsion.athena.taaneh.athena.a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        String strValueOf;
        if (e(activity)) {
            try {
                String simpleName = activity.getClass().getSimpleName();
                int i11 = 1;
                if (ehanat.s()) {
                    int i12 = this.f44196i + 1;
                    this.f44196i = i12;
                    this.f44197j.addLast(new a(i12, simpleName, SystemClock.elapsedRealtime()));
                }
                int i13 = this.f44189b + 1;
                this.f44189b = i13;
                if (i13 <= 1) {
                    this.f44195h = SystemClock.elapsedRealtime();
                    if (this.f44190c) {
                        try {
                            strValueOf = UUID.randomUUID().toString();
                        } catch (Exception unused) {
                            strValueOf = String.valueOf(System.currentTimeMillis());
                        }
                        ehanat.d(strValueOf);
                        this.f44192e = System.currentTimeMillis();
                        try {
                            Uri referrer = activity.getReferrer();
                            if (referrer != null) {
                                this.f44194g = referrer.getAuthority();
                            }
                            Intent intent = activity.getIntent();
                            String str = this.f44194g;
                            int i14 = anehat.f42803e;
                            if (intent != null) {
                                Set<String> categories = intent.getCategories();
                                if (!"android.intent.action.MAIN".equals(intent.getAction()) || categories == null || !categories.contains("android.intent.category.LAUNCHER")) {
                                    i11 = TextUtils.isEmpty(str) ? 0 : 2;
                                }
                            }
                            this.f44193f = i11;
                            if (TextUtils.equals(this.f44194g, activity.getPackageName())) {
                                this.f44193f = 3;
                            }
                        } catch (Exception e11) {
                            aethna.b(Log.getStackTraceString(e11));
                        }
                        for (Integer num : com.transsion.athena.data.athena.a()) {
                            if (num.intValue() != 9999) {
                                AthenaAnalytics.K(num.intValue()).g0("page_enter", new TrackData().add("purl", simpleName), num.intValue());
                            }
                        }
                    }
                }
                this.f44190c = false;
                Runnable runnable = this.f44191d;
                if (runnable != null) {
                    this.f44188a.removeCallbacks(runnable);
                    this.f44191d = null;
                }
            } catch (Exception e12) {
                aethna.b(Log.getStackTraceString(e12));
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Bundle bundleExtra;
        if (e(activity)) {
            try {
                if (ehanat.s() && this.f44197j.size() > 0) {
                    String simpleName = activity.getClass().getSimpleName();
                    for (a aVar : this.f44197j) {
                        if (simpleName.equals(aVar.f44200b)) {
                            long jElapsedRealtime = SystemClock.elapsedRealtime() - aVar.f44201c;
                            TrackData trackDataAdd = new TrackData().add("s_id", ehanat.m()).add("url", aVar.f44200b).add("no", aVar.f44199a);
                            if (jElapsedRealtime <= 0) {
                                jElapsedRealtime = 0;
                            }
                            TrackData trackDataAdd2 = trackDataAdd.add("t", jElapsedRealtime).add("ext", "");
                            if (activity.getIntent() != null && (bundleExtra = activity.getIntent().getBundleExtra("athena")) != null) {
                                trackDataAdd2.add("ext", bundleExtra);
                            }
                            AthenaAnalytics.L(this.f44198k).h0("page_view", trackDataAdd2, this.f44198k);
                            this.f44197j.remove(aVar);
                            break;
                        }
                    }
                }
                int i11 = this.f44189b - 1;
                this.f44189b = i11;
                if (i11 == 0) {
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime() - this.f44195h;
                    if (jElapsedRealtime2 > 1000 && jElapsedRealtime2 < 86400000) {
                        for (Integer num : com.transsion.athena.data.athena.a()) {
                            if (num.intValue() != 9999) {
                                AthenaAnalytics.K(num.intValue()).g0("app_active", new TrackData().add("s_id", ehanat.m()).add("s_t", this.f44193f).add(PushConstants.PROVIDER_FIELD_PKG, this.f44193f == 2 ? this.f44194g : "").add("s_s", this.f44192e).add("t", jElapsedRealtime2), num.intValue());
                            }
                        }
                    }
                    Runnable runnable = this.f44191d;
                    if (runnable != null) {
                        this.f44188a.removeCallbacks(runnable);
                    }
                    Handler handler = this.f44188a;
                    RunnableC0624athena runnableC0624athena = new RunnableC0624athena();
                    this.f44191d = runnableC0624athena;
                    handler.postDelayed(runnableC0624athena, ehanat.n());
                    AthenaAnalytics.X();
                }
            } catch (Exception e11) {
                aethna.b(Log.getStackTraceString(e11));
            }
        }
    }
}
