package com.mbridge.msdk.foundation.feedback;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.dialog.MBFeedBackDialog;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f35287d = -2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f35288e = -2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile boolean f35289f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RelativeLayout.LayoutParams f35290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap<String, com.mbridge.msdk.foundation.feedback.bean.a> f35291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f35292c;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.feedback.b$b, reason: collision with other inner class name */
    static class C0485b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f35293a = new b();
    }

    private b() {
        this.f35290a = new RelativeLayout.LayoutParams(f35288e, f35287d);
        this.f35291b = new ConcurrentHashMap<>();
    }

    private boolean a(Context context, MBFeedBackDialog mBFeedBackDialog) {
        Activity activityA = a(context);
        if (activityA == null || mBFeedBackDialog == null || activityA.isDestroyed()) {
            return false;
        }
        try {
            if (mBFeedBackDialog.isShowing() || activityA.isFinishing()) {
                return false;
            }
            mBFeedBackDialog.show();
            return true;
        } catch (Exception e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static b b() {
        return C0485b.f35293a;
    }

    private com.mbridge.msdk.foundation.feedback.bean.a c(String str) {
        if (TextUtils.isEmpty(str)) {
            str = c.m().b();
        }
        if (this.f35291b.containsKey(str)) {
            return this.f35291b.get(str);
        }
        return null;
    }

    public Activity a(Context context) {
        Activity activity;
        Context contextF = c.m().f();
        Activity activity2 = null;
        try {
            Activity activity3 = contextF instanceof Activity ? (Activity) contextF : null;
            try {
                if ((context instanceof Activity) && !((Activity) context).isDestroyed()) {
                    activity3 = (Activity) context;
                }
                WeakReference<Activity> weakReferenceA = c.m().a();
                if (weakReferenceA != null && (activity = weakReferenceA.get()) != null && !activity.isFinishing() && !activity.isDestroyed()) {
                    activity3 = activity;
                }
                if (activity3 == null || activity3.isFinishing() || activity3.isDestroyed()) {
                    return null;
                }
                return activity3;
            } catch (Exception e11) {
                e = e11;
                activity2 = activity3;
                e.printStackTrace();
                return activity2;
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    public FeedBackButton a(String str) {
        return b(str).i();
    }

    public void a(String str, int i11) {
        b(str).b(i11);
    }

    public void a(String str, int i11, int i12, int i13, float f11, float f12, float f13, String str2, String str3, float f14, JSONArray jSONArray) {
        com.mbridge.msdk.foundation.feedback.bean.a aVarB = b(str);
        Context contextD = c.m().d();
        aVarB.a(t0.a(contextD, f11), t0.a(contextD, f12), t0.a(contextD, i11), t0.a(contextD, i12), t0.a(contextD, i13), f13, str2, str3, f14, jSONArray);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x006e A[PHI: r2
  0x006e: PHI (r2v8 com.mbridge.msdk.foundation.feedback.bean.a) = 
  (r2v7 com.mbridge.msdk.foundation.feedback.bean.a)
  (r2v11 com.mbridge.msdk.foundation.feedback.bean.a)
  (r2v14 com.mbridge.msdk.foundation.feedback.bean.a)
 binds: [B:5:0x0035, B:7:0x004e, B:9:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    public void a(String str, int i11, int i12, String str2, String str3) {
        com.mbridge.msdk.foundation.feedback.bean.a aVarC = c(str + "_1");
        if (aVarC == null) {
            aVarC = c(str + "_2");
            if (aVarC == null) {
                aVarC = c(str + "_3");
                if (aVarC == null) {
                    aVarC = c(str + "_4");
                    if (aVarC == null) {
                        aVarC = b(str);
                    } else {
                        aVarC.c(0);
                    }
                } else {
                    aVarC.c(0);
                }
            } else {
                aVarC.c(0);
            }
        }
        if (aVarC != null) {
            CampaignEx campaignExH = aVarC.h();
            j.a(campaignExH, campaignExH != null ? campaignExH.getCampaignUnitId() : "", aVarC.k(), aVarC.j(), !TextUtils.isEmpty(str2) ? str2 : "", i11, campaignExH != null ? campaignExH.getAdType() : 0, i12, str3);
        }
    }

    public void a(String str, int i11, ViewGroup viewGroup) {
        com.mbridge.msdk.foundation.feedback.bean.a aVarB = b(str);
        if (aVarB.i() != null) {
            aVarB.d(i11);
            if (i11 == 0) {
                a(str, c.m().d(), viewGroup, (ViewGroup.LayoutParams) null, (com.mbridge.msdk.foundation.feedback.a) null);
            }
        }
    }

    public void a(String str, int i11, com.mbridge.msdk.foundation.feedback.a aVar) {
        com.mbridge.msdk.foundation.feedback.bean.a aVarB = b(str);
        aVarB.a(new com.mbridge.msdk.foundation.feedback.bean.a.g(str, aVar));
        if (i11 == 1) {
            aVarB.g();
        } else {
            aVarB.p();
        }
    }

    public void a(String str, Context context, ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, com.mbridge.msdk.foundation.feedback.a aVar) {
        if (a()) {
            com.mbridge.msdk.foundation.feedback.bean.a aVarB = b(str);
            if (aVar != null) {
                aVarB.a(new com.mbridge.msdk.foundation.feedback.bean.a.g(str, aVar));
            }
            FeedBackButton feedBackButtonI = aVarB.i();
            if (feedBackButtonI != null) {
                if (layoutParams == null) {
                    int iA = t0.a(c.m().d(), 10.0f);
                    this.f35290a.setMargins(iA, iA, iA, iA);
                    layoutParams = this.f35290a;
                }
                ViewGroup viewGroup2 = (ViewGroup) feedBackButtonI.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(feedBackButtonI);
                }
                Activity activityA = a(context);
                if (activityA != null && viewGroup == null) {
                    viewGroup = (ViewGroup) activityA.findViewById(R.id.content);
                }
                if (viewGroup != null) {
                    viewGroup.removeView(feedBackButtonI);
                    viewGroup.addView(feedBackButtonI, layoutParams);
                }
            }
        }
    }

    public void a(String str, CampaignEx campaignEx) {
        b(str).a(campaignEx);
    }

    public void a(String str, com.mbridge.msdk.foundation.feedback.a aVar) {
        com.mbridge.msdk.foundation.feedback.bean.a aVarB = b(str);
        if (aVar != null) {
            aVarB.a(new com.mbridge.msdk.foundation.feedback.bean.a.g(str, aVar));
        }
    }

    public void a(String str, FeedBackButton feedBackButton) {
        b(str).a(feedBackButton);
    }

    public void a(String str, String str2) {
        b(str).b(str2);
    }

    public boolean a() {
        g gVarD = h.b().d(c.m().b());
        this.f35292c = gVarD;
        if (gVarD != null) {
            return false;
        }
        this.f35292c = h.b().a();
        return false;
    }

    public boolean a(String str, Context context, MBFeedBackDialog mBFeedBackDialog) {
        if (mBFeedBackDialog != null) {
            return a(context, mBFeedBackDialog);
        }
        o0.c("", "mbAlertDialog  is null");
        return false;
    }

    public com.mbridge.msdk.foundation.feedback.bean.a b(String str) {
        com.mbridge.msdk.foundation.feedback.bean.a aVar;
        if (TextUtils.isEmpty(str)) {
            str = c.m().b();
        }
        if (this.f35291b.containsKey(str)) {
            aVar = this.f35291b.get(str);
        } else {
            aVar = new com.mbridge.msdk.foundation.feedback.bean.a(str);
            this.f35291b.put(str, aVar);
        }
        if (aVar != null) {
            return aVar;
        }
        com.mbridge.msdk.foundation.feedback.bean.a aVar2 = new com.mbridge.msdk.foundation.feedback.bean.a(str);
        this.f35291b.put(str, aVar2);
        return aVar2;
    }

    public void b(String str, int i11) {
        b(str).c(i11);
    }

    public void d(String str) {
        try {
            com.mbridge.msdk.foundation.feedback.bean.a aVarC = c(str);
            if (aVarC != null) {
                aVarC.f();
            }
            this.f35291b.remove(str);
            f35289f = false;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
