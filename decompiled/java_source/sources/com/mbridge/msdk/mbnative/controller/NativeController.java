package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class NativeController extends com.mbridge.msdk.mbnative.controller.a {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final String f36237c0 = "NativeController";

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static Map<String, Long> f36238d0 = new HashMap();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static boolean f36239e0;
    private int A;
    private int B;
    private com.mbridge.msdk.foundation.same.task.b C;
    private List<com.mbridge.msdk.mbnative.controller.c> D;
    private List<com.mbridge.msdk.mbnative.controller.c.d> E;
    private CopyOnWriteArrayList<com.mbridge.msdk.foundation.same.task.a> F;
    private Hashtable<String, com.iab.omid.library.mmadbridge.adsession.b> G;
    private int H;
    private int I;
    private n J;
    private boolean K;
    private boolean L;
    private Timer M;
    private String N;
    private String O;
    private ViewTreeObserver.OnGlobalLayoutListener P;
    private com.mbridge.msdk.setting.l Q;
    private long R;
    private int S;
    private int T;
    private boolean U;
    private int V;
    private int W;
    private boolean X;
    private List<Campaign> Y;
    private String Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.b f36240a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected List<Integer> f36241b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.a f36242b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected List<Integer> f36243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Map<String, Object> f36244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.setting.j f36245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mbridge.msdk.mbnative.listener.a f36246f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private NativeListener.NativeTrackingListener f36247g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f36248h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f36249i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f36250j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Queue<Integer> f36251k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Queue<Long> f36252l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f36253m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.report.h f36254n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f36255o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.mbridge.msdk.click.a f36256p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f36257q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f36258r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f36259s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f36260t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f36261u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f36262v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f36263w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f36264x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f36265y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f36266z;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f36267a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ NativeListener.NativeAdListener f36268b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f36269c;

        a(List list, NativeListener.NativeAdListener nativeAdListener, int i11) {
            this.f36267a = list;
            this.f36268b = nativeAdListener;
            this.f36269c = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            List list = this.f36267a;
            if (list != null && list.size() > 0) {
                CampaignEx campaignEx = (CampaignEx) this.f36267a.get(0);
                NativeController.this.O = campaignEx.getRequestId();
                NativeController.this.Y = this.f36267a;
            }
            NativeController.this.f36262v = true;
            this.f36268b.onAdLoaded(this.f36267a, this.f36269c);
            com.mbridge.msdk.mbnative.report.a.a(NativeController.this.f36248h, (List<Campaign>) this.f36267a, NativeController.this.f36249i);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbnative.listener.a f36271a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36272b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f36273c;

        b(com.mbridge.msdk.mbnative.listener.a aVar, CampaignEx campaignEx, String str) {
            this.f36271a = aVar;
            this.f36272b = campaignEx;
            this.f36273c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f36271a.a(this.f36272b, this.f36273c);
        }
    }

    class c implements com.mbridge.msdk.foundation.same.image.c {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
        }
    }

    class d extends TimerTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f36276a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ o f36277b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f36278c;

        d(long j11, o oVar, List list) {
            this.f36276a = j11;
            this.f36277b = oVar;
            this.f36278c = list;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            boolean z10;
            if (System.currentTimeMillis() - this.f36276a >= 60000) {
                this.f36277b.a();
                NativeController.this.c();
                return;
            }
            int iS = k0.s(NativeController.this.f36248h);
            int iQ = NativeController.this.h().q();
            if (iS != 9 && iQ == 2) {
                this.f36277b.a();
                NativeController.this.c();
                return;
            }
            if (iQ == 3) {
                this.f36277b.a();
                NativeController.this.c();
                return;
            }
            loop0: while (true) {
                z10 = false;
                for (Campaign campaign : this.f36278c) {
                    String id2 = campaign.getId();
                    if (campaign instanceof CampaignEx) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(id2);
                        CampaignEx campaignEx = (CampaignEx) campaign;
                        sb2.append(campaignEx.getVideoUrlEncode());
                        sb2.append(campaignEx.getBidToken());
                        id2 = sb2.toString();
                    }
                    com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(NativeController.this.f36249i, id2);
                    if (aVarA != null && com.mbridge.msdk.videocommon.download.l.a(aVarA, NativeController.this.h().C())) {
                        z10 = true;
                    }
                }
                break loop0;
            }
            if (z10) {
                this.f36277b.a();
                NativeController.this.c();
            }
        }
    }

    class e implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f36280a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f36281b;

        e(ImageView imageView, View view) {
            this.f36280a = imageView;
            this.f36281b = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f36280a != null) {
                this.f36280a.setLayoutParams(new FrameLayout.LayoutParams(this.f36281b.getWidth(), this.f36281b.getHeight()));
            }
        }
    }

    class f extends com.mbridge.msdk.widget.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36283b;

        f(CampaignEx campaignEx) {
            this.f36283b = campaignEx;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            NativeController.this.b(view.getContext(), this.f36283b);
        }
    }

    class g extends com.mbridge.msdk.widget.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36285b;

        g(CampaignEx campaignEx) {
            this.f36285b = campaignEx;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            NativeController.this.b(view.getContext(), this.f36285b);
        }
    }

    class h implements com.mbridge.msdk.widget.dialog.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36287a;

        h(CampaignEx campaignEx) {
            this.f36287a = campaignEx;
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            NativeController.this.f36256p.a(this.f36287a, NativeController.this.f36246f);
            NativeController.this.b(this.f36287a);
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
        }
    }

    class i extends com.mbridge.msdk.widget.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36289b;

        i(CampaignEx campaignEx) {
            this.f36289b = campaignEx;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            NativeController.this.b(view.getContext(), this.f36289b);
        }
    }

    class j implements com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ s f36291a;

        j(s sVar) {
            this.f36291a = sVar;
        }

        @Override // com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a
        public void a(com.mbridge.msdk.foundation.same.task.a.b bVar) {
            if (bVar != com.mbridge.msdk.foundation.same.task.a.b.FINISH || NativeController.this.F == null || NativeController.this.F.size() <= 0 || !NativeController.this.F.contains(this.f36291a)) {
                return;
            }
            NativeController.this.F.remove(this.f36291a);
        }
    }

    class k implements com.mbridge.msdk.mbnative.controller.c.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36293a;

        k(CampaignEx campaignEx) {
            this.f36293a = campaignEx;
        }

        @Override // com.mbridge.msdk.mbnative.controller.c.d
        public void a(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            com.mbridge.msdk.mbnative.report.b.a(this.f36293a, NativeController.this.f36248h, NativeController.this.f36249i, NativeController.this.f36246f);
        }
    }

    class l implements o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f36295a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f36296b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbnative.listener.a f36297c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ List f36298d;

        l(List list, int i11, com.mbridge.msdk.mbnative.listener.a aVar, List list2) {
            this.f36295a = list;
            this.f36296b = i11;
            this.f36297c = aVar;
            this.f36298d = list2;
        }

        @Override // com.mbridge.msdk.mbnative.controller.NativeController.o
        public void a() {
            List listA = NativeController.this.a((List<Campaign>) this.f36295a, true);
            if (listA == null || listA.size() <= 0) {
                NativeController.this.a(this.f36297c, "has no ads", (CampaignEx) this.f36298d.get(0));
            } else {
                NativeController.this.a((List<Campaign>) listA, this.f36296b, this.f36297c);
            }
        }
    }

    class m implements o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f36300a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f36301b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbnative.listener.a f36302c;

        m(List list, int i11, com.mbridge.msdk.mbnative.listener.a aVar) {
            this.f36300a = list;
            this.f36301b = i11;
            this.f36302c = aVar;
        }

        @Override // com.mbridge.msdk.mbnative.controller.NativeController.o
        public void a() {
            List listA = NativeController.this.a((List<Campaign>) this.f36300a, false);
            if (listA == null || listA.size() <= 0) {
                NativeController.this.a(this.f36302c, "has no ads", (CampaignEx) null);
            } else {
                NativeController.this.a((List<Campaign>) listA, this.f36301b, this.f36302c);
            }
        }
    }

    public class n extends com.mbridge.msdk.mbnative.service.net.b implements com.mbridge.msdk.foundation.same.task.d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Runnable f36305d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f36304c = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f36306e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<String> f36307f = null;

        class a extends com.mbridge.msdk.foundation.same.c.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CampaignEx f36309a;

            a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
                this.f36309a = campaignEx;
            }

            @Override // com.mbridge.msdk.foundation.same.c.a
            public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
                com.mbridge.msdk.mbnative.report.a.a(str, cVar, this.f36309a, NativeController.this.f36248h, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
            }
        }

        public n() {
        }

        private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            try {
                com.mbridge.msdk.foundation.same.c.a(campaignEx, NativeController.this.f36248h, cVar, new a(campaignEx, aVar));
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(int i11, String str) {
            NativeController.this.U = true;
            if (this.f36304c) {
                if (NativeController.this.f36262v || !this.f36306e) {
                    return;
                }
                NativeController.this.a(str, a(), b(), (CampaignEx) null);
                return;
            }
            if (i11 == -1) {
                com.mbridge.msdk.mbnative.controller.d.b(NativeController.this.f36259s, this.unitId);
                NativeController.this.f36260t = 0;
            }
            Runnable runnable = this.f36305d;
            if (runnable != null) {
                NativeController.this.f36330a.removeCallbacks(runnable);
            }
            if (NativeController.this.f36262v) {
                return;
            }
            if (a() == 1 || this.f36306e) {
                NativeController.this.a(str, a(), b(), (CampaignEx) null);
            }
        }

        public void a(Runnable runnable) {
            this.f36305d = runnable;
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(List<Frame> list) {
            if (this.f36304c) {
                return;
            }
            Runnable runnable = this.f36305d;
            if (runnable != null) {
                NativeController.this.f36330a.removeCallbacks(runnable);
            }
            if (list == null || list.size() == 0) {
                if (NativeController.this.f36246f != null) {
                    NativeController.this.f36262v = true;
                    NativeController.this.f36246f.onAdLoadError("frame is empty");
                    return;
                }
                return;
            }
            Iterator<Frame> it = list.iterator();
            while (it.hasNext()) {
                List<CampaignEx> campaigns = it.next().getCampaigns();
                if (campaigns == null || campaigns.size() == 0) {
                    if (NativeController.this.f36246f != null) {
                        NativeController.this.f36262v = true;
                        NativeController.this.f36246f.onAdLoadError("ads in frame is empty");
                        return;
                    }
                    return;
                }
                for (CampaignEx campaignEx : campaigns) {
                    if (NativeController.f36239e0) {
                        campaignEx.loadImageUrlAsyncWithBlock(null);
                        campaignEx.loadIconUrlAsyncWithBlock(null);
                    }
                }
            }
            if (NativeController.this.f36246f != null) {
                NativeController.this.f36246f.onAdFramesLoaded(list);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v4, types: [com.mbridge.msdk.foundation.entity.CampaignEx, com.mbridge.msdk.out.Campaign, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r14v1, types: [com.mbridge.msdk.mbnative.controller.NativeController, com.mbridge.msdk.mbnative.controller.a] */
        /* JADX WARN: Type inference failed for: r14v10 */
        /* JADX WARN: Type inference failed for: r14v11, types: [int] */
        /* JADX WARN: Type inference failed for: r14v12 */
        /* JADX WARN: Type inference failed for: r16v0, types: [com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.mbnative.controller.NativeController$n, com.mbridge.msdk.mbnative.service.net.b] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(List<com.mbridge.msdk.tracker.network.g> list, CampaignUnit campaignUnit) {
            Integer num;
            boolean z10 = true;
            NativeController.this.U = true;
            com.mbridge.msdk.foundation.db.j jVarA = com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(NativeController.this.f36248h));
            jVarA.a();
            Runnable runnable = this.f36305d;
            if (runnable != null) {
                NativeController.this.f36330a.removeCallbacks(runnable);
            }
            if (com.mbridge.msdk.util.b.a()) {
                NativeController.this.a(campaignUnit);
            }
            if (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() <= 0) {
                this.unitId = "0_" + this.unitId;
                com.mbridge.msdk.mbnative.controller.d.b(NativeController.this.f36259s, this.unitId);
                NativeController.this.f36260t = 0;
                return;
            }
            NativeController.this.f36255o = campaignUnit.getSessionId();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            if (NativeController.this.S <= 0) {
                if (NativeController.this.S == -3) {
                    NativeController.this.S = campaignUnit.getAds().size();
                } else {
                    NativeController nativeController = NativeController.this;
                    nativeController.S = nativeController.f36258r;
                }
                if (NativeController.this.V != 0 && campaignUnit.getTemplate() == 2) {
                    NativeController nativeController2 = NativeController.this;
                    nativeController2.S = nativeController2.V;
                }
                if (NativeController.this.W != 0 && campaignUnit.getTemplate() == 3) {
                    NativeController nativeController3 = NativeController.this;
                    nativeController3.S = nativeController3.W;
                }
            }
            int i11 = 0;
            while (i11 < campaignUnit.getAds().size()) {
                CampaignEx campaignEx = campaignUnit.getAds().get(i11);
                campaignEx.setCampaignUnitId(this.unitId);
                if (!TextUtils.isEmpty(NativeController.this.N)) {
                    campaignEx.setBidToken(NativeController.this.N);
                    campaignEx.setIsBidCampaign(z10);
                }
                if (NativeController.f36239e0) {
                    campaignEx.loadIconUrlAsyncWithBlock(null);
                    campaignEx.loadImageUrlAsyncWithBlock(null);
                }
                boolean zC = t0.c(NativeController.this.f36248h, campaignEx.getPackageName());
                ?? r14 = NativeController.this;
                r14.a(((NativeController) r14).f36248h, campaignEx);
                if (i11 < NativeController.this.f36258r && campaignEx.getOfferType() != 99) {
                    if (t0.c(campaignEx)) {
                        campaignEx.setRtinsType(zC ? z10 : 2);
                    }
                    if (com.mbridge.msdk.foundation.same.c.b(NativeController.this.f36248h, campaignEx)) {
                        arrayList.add(campaignEx);
                        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                            arrayList3.add(campaignEx);
                        }
                    } else {
                        t0.a(this.unitId, campaignEx, com.mbridge.msdk.foundation.same.a.f35352x);
                        NativeController.this.Z = "APP ALREADY INSTALLED";
                    }
                    a(campaignEx, null, null);
                }
                if (i11 < NativeController.this.S && campaignEx.getOfferType() != 99) {
                    if (t0.c(campaignEx)) {
                        campaignEx.setRtinsType(zC ? 1 : 2);
                    }
                    if (!zC || t0.c(campaignEx)) {
                        arrayList2.add(campaignEx);
                    }
                }
                if (!jVarA.a(campaignEx.getId())) {
                    com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                    gVar.a(campaignEx.getId());
                    gVar.b(campaignEx.getFca());
                    gVar.c(campaignEx.getFcb());
                    gVar.a(0);
                    gVar.d(0);
                    gVar.a(System.currentTimeMillis());
                    jVarA.b(gVar);
                }
                com.mbridge.msdk.click.c.a(NativeController.this.f36248h, campaignEx.getMaitve(), campaignEx.getMaitve_src());
                i11++;
                z10 = true;
            }
            NativeController.this.d(arrayList3);
            int type = campaignUnit.getAds().get(0) != null ? campaignUnit.getAds().get(0).getType() : 1;
            com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(type);
            if (bVarA != null) {
                bVarA.a(this.unitId, arrayList2, NativeController.this.N);
            }
            if (arrayList.size() == 0) {
                if (NativeController.this.Z.contains("INSTALLED")) {
                    NativeController.this.a("APP ALREADY INSTALLED", a(), b(), campaignUnit.getAds().get(0));
                    new com.mbridge.msdk.foundation.error.b(880021, "APP ALREADY INSTALLED");
                    return;
                } else {
                    NativeController.this.a("v3 response error", a(), b(), campaignUnit.getAds().get(0));
                    new com.mbridge.msdk.foundation.error.b(880003);
                    return;
                }
            }
            NativeController nativeController4 = NativeController.this;
            nativeController4.c((List<Campaign>) nativeController4.a(type, (List<Campaign>) nativeController4.a(arrayList)));
            if (com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.unitId) && Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.unitId))) {
                com.mbridge.msdk.mbnative.controller.d.a(NativeController.this.f36259s, this.unitId);
                return;
            }
            int iIntValue = (!com.mbridge.msdk.mbnative.controller.d.d().containsKey(this.unitId) || (num = com.mbridge.msdk.mbnative.controller.d.d().get(this.unitId)) == null) ? 1 : num.intValue();
            int i12 = NativeController.this.f36258r + NativeController.this.f36260t;
            NativeController.this.f36260t = i12 <= iIntValue ? i12 : 0;
        }

        @Override // com.mbridge.msdk.foundation.same.task.d
        public void a(boolean z10) {
            this.f36304c = z10;
        }

        public void b(List<String> list) {
            this.f36307f = list;
        }

        public void b(boolean z10) {
            this.f36306e = z10;
        }
    }

    public interface o {
        void a();
    }

    public class p implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f36311a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.task.d f36312b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f36313c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f36314d;

        public p(int i11, com.mbridge.msdk.foundation.same.task.d dVar, int i12, String str) {
            this.f36311a = i11;
            this.f36312b = dVar;
            this.f36313c = i12;
            this.f36314d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f36312b.a(true);
            int i11 = this.f36311a;
            if (i11 == 1) {
                NativeController.this.U = true;
                NativeController.this.a("REQUEST_TIMEOUT", this.f36313c, this.f36314d, (CampaignEx) null);
            } else {
                if (i11 != 2) {
                    return;
                }
                if (!NativeController.this.f36262v || this.f36313c == 1) {
                    NativeController.this.a("REQUEST_TIMEOUT", this.f36313c, this.f36314d, (CampaignEx) null);
                }
            }
        }
    }

    private static class q implements H5DownLoadManager.IH5SourceDownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f36316a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CampaignEx f36317b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f36318c = System.currentTimeMillis();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f36319d;

        public q(String str, CampaignEx campaignEx, boolean z10) {
            this.f36319d = true;
            this.f36316a = str;
            this.f36317b = campaignEx;
            this.f36319d = z10;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            try {
                if (this.f36319d) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - this.f36318c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000043", 3, jCurrentTimeMillis + "", str, this.f36317b.getId(), this.f36316a, str2, "2");
                    mVar.n(this.f36317b.getRequestId());
                    mVar.k(this.f36317b.getCurrentLocalRid());
                    mVar.o(this.f36317b.getRequestIdNotice());
                    CampaignEx campaignEx = this.f36317b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        mVar.b(this.f36317b.getId());
                    }
                    CampaignEx campaignEx2 = this.f36317b;
                    if (campaignEx2 != null) {
                        mVar.a(campaignEx2.getAdSpaceT());
                    }
                    mVar.a("1");
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f36316a, this.f36317b);
                }
            } catch (Exception e11) {
                o0.b(NativeController.f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
            }
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            try {
                if (this.f36319d) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - this.f36318c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000043", 1, jCurrentTimeMillis + "", str, this.f36317b.getId(), this.f36316a, "", "2");
                    CampaignEx campaignEx = this.f36317b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        mVar.b(this.f36317b.getId());
                    }
                    CampaignEx campaignEx2 = this.f36317b;
                    if (campaignEx2 != null) {
                        mVar.n(campaignEx2.getRequestId());
                        mVar.o(this.f36317b.getRequestIdNotice());
                        mVar.k(this.f36317b.getCurrentLocalRid());
                        mVar.a(this.f36317b.getAdSpaceT());
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        mVar.q(str2);
                    }
                    mVar.a("1");
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f36316a, this.f36317b);
                }
            } catch (Exception e11) {
                o0.b(NativeController.f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
            }
        }
    }

    protected static class r extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<NativeController> f36320a;

        public r(NativeController nativeController) {
            this.f36320a = new WeakReference<>(nativeController);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<NativeController> weakReference;
            NativeController nativeController;
            super.handleMessage(message);
            try {
                if (message.what == 0 && (weakReference = this.f36320a) != null && (nativeController = weakReference.get()) != null) {
                    nativeController.f36254n.a(message.arg1, (String) message.obj);
                }
                if (message.what == 1) {
                    WeakReference<NativeController> weakReference2 = this.f36320a;
                    NativeController nativeController2 = (weakReference2 == null || weakReference2.get() == null) ? null : this.f36320a.get();
                    if (nativeController2 != null) {
                        nativeController2.f36263w = true;
                        List<Campaign> listA = nativeController2.a(nativeController2.f36249i, nativeController2.f36258r, nativeController2.N);
                        if (nativeController2.f36262v) {
                            return;
                        }
                        nativeController2.c(listA);
                    }
                }
            } catch (Exception e11) {
                o0.b(NativeController.f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
            }
        }
    }

    private static class s extends com.mbridge.msdk.foundation.same.task.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CampaignEx f36321a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WeakReference<View> f36322b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WeakReference<List<View>> f36323c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private WeakReference<NativeController> f36324d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private WeakReference<com.iab.omid.library.mmadbridge.adsession.b> f36325e;

        public s(CampaignEx campaignEx, View view, List<View> list, NativeController nativeController, com.iab.omid.library.mmadbridge.adsession.b bVar) {
            this.f36321a = campaignEx;
            this.f36322b = new WeakReference<>(view);
            this.f36323c = new WeakReference<>(list);
            this.f36324d = new WeakReference<>(nativeController);
            this.f36325e = new WeakReference<>(bVar);
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void cancelTask() {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void pauseTask(boolean z10) {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void runTask() {
            WeakReference<View> weakReference;
            try {
                if (this.f36324d == null || (weakReference = this.f36322b) == null || this.f36323c == null) {
                    return;
                }
                View view = weakReference.get();
                List<View> list = this.f36323c.get();
                NativeController nativeController = this.f36324d.get();
                WeakReference<com.iab.omid.library.mmadbridge.adsession.b> weakReference2 = this.f36325e;
                com.iab.omid.library.mmadbridge.adsession.b bVar = weakReference2 != null ? weakReference2.get() : null;
                if (view == null || nativeController == null) {
                    return;
                }
                nativeController.a(this.f36321a, view, list, bVar);
            } catch (Exception e11) {
                o0.b(NativeController.f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
            }
        }
    }

    private static final class t implements H5DownLoadManager.ZipDownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f36326a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CampaignEx f36327b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f36328c = System.currentTimeMillis();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f36329d;

        public t(String str, CampaignEx campaignEx, boolean z10) {
            this.f36329d = true;
            this.f36326a = str;
            this.f36327b = campaignEx;
            this.f36329d = z10;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            try {
                if (this.f36329d) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - this.f36328c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000043", 3, jCurrentTimeMillis + "", str2, this.f36327b.getId(), this.f36326a, str, "1");
                    CampaignEx campaignEx = this.f36327b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        mVar.b(this.f36327b.getId());
                    }
                    CampaignEx campaignEx2 = this.f36327b;
                    if (campaignEx2 != null) {
                        mVar.n(campaignEx2.getRequestId());
                        mVar.k(this.f36327b.getCurrentLocalRid());
                        mVar.o(this.f36327b.getRequestIdNotice());
                        mVar.a(this.f36327b.getAdSpaceT());
                    }
                    mVar.a("2");
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f36326a, this.f36327b);
                }
            } catch (Exception e11) {
                o0.b(NativeController.f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
            }
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            try {
                if (this.f36329d) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - this.f36328c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000043", 1, jCurrentTimeMillis + "", str, this.f36327b.getId(), this.f36326a, "", "1");
                    CampaignEx campaignEx = this.f36327b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        mVar.b(this.f36327b.getId());
                    }
                    CampaignEx campaignEx2 = this.f36327b;
                    if (campaignEx2 != null) {
                        mVar.n(campaignEx2.getRequestId());
                        mVar.k(this.f36327b.getCurrentLocalRid());
                        mVar.o(this.f36327b.getRequestIdNotice());
                        mVar.a(this.f36327b.getAdSpaceT());
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        mVar.q(str2);
                    }
                    mVar.a("2");
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f36326a, this.f36327b);
                }
            } catch (Exception e11) {
                o0.b(NativeController.f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
            }
        }
    }

    public NativeController() {
        this.f36257q = 1;
        this.f36258r = 1;
        this.f36259s = -1;
        this.f36260t = 0;
        this.f36262v = false;
        this.f36263w = false;
        this.f36264x = false;
        this.f36265y = 0;
        this.f36266z = 0;
        this.A = 0;
        this.B = 0;
        this.F = new CopyOnWriteArrayList<>();
        this.G = new Hashtable<>();
        this.H = 1;
        this.I = 2;
        this.N = "";
        this.O = "";
        this.Z = "";
    }

    public NativeController(com.mbridge.msdk.mbnative.listener.a aVar, NativeListener.NativeTrackingListener nativeTrackingListener, Map<String, Object> map, Context context) {
        int iIntValue;
        Object obj;
        this.f36257q = 1;
        this.f36258r = 1;
        this.f36259s = -1;
        this.f36260t = 0;
        this.f36262v = false;
        this.f36263w = false;
        this.f36264x = false;
        this.f36265y = 0;
        this.f36266z = 0;
        this.A = 0;
        this.B = 0;
        this.F = new CopyOnWriteArrayList<>();
        this.G = new Hashtable<>();
        this.H = 1;
        this.I = 2;
        this.N = "";
        this.O = "";
        this.Z = "";
        this.f36248h = context;
        this.f36244d = map;
        this.f36245e = new com.mbridge.msdk.setting.j();
        this.f36246f = aVar;
        this.f36247g = nativeTrackingListener;
        this.D = new ArrayList();
        this.E = new ArrayList();
        String str = (String) map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
        this.f36249i = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!map.containsKey(MBridgeConstans.PLACEMENT_ID) || map.get(MBridgeConstans.PLACEMENT_ID) == null) {
            this.f36250j = "";
        } else {
            this.f36250j = (String) map.get(MBridgeConstans.PLACEMENT_ID);
        }
        if (map.containsKey(MBridgeConstans.PREIMAGE) && (obj = map.get(MBridgeConstans.PREIMAGE)) != null) {
            f36239e0 = ((Boolean) obj).booleanValue();
        }
        this.f36251k = new LinkedList();
        this.f36252l = new LinkedList();
        this.C = new com.mbridge.msdk.foundation.same.task.b(this.f36248h);
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.f36330a = new r(this);
        if (map.containsKey(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY)) {
            this.f36261u = (String) map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY);
        }
        try {
            boolean zEquals = com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f36249i) ? Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.f36249i)) : false;
            Object obj2 = map.get("ad_num");
            Object obj3 = map.get(MBridgeConstans.PROPERTIES_AD_FRAME_NUM);
            if (zEquals) {
                if (com.mbridge.msdk.mbnative.controller.d.c().containsKey(this.f36249i)) {
                    Integer num = com.mbridge.msdk.mbnative.controller.d.c().get(this.f36249i);
                    if (num != null) {
                        this.f36258r = num.intValue();
                    }
                    if (map.containsKey("ad_num") && obj2 != null) {
                        int iIntValue2 = ((Integer) obj2).intValue();
                        this.f36265y = iIntValue2;
                        this.f36257q = iIntValue2;
                    }
                    if (map.containsKey(MBridgeConstans.PROPERTIES_AD_FRAME_NUM) && obj3 != null) {
                        int iIntValue3 = ((Integer) obj3).intValue();
                        this.f36266z = iIntValue3;
                        this.A = iIntValue3;
                    }
                }
            } else if (map.containsKey("ad_num") && obj2 != null) {
                try {
                    iIntValue = ((Integer) obj2).intValue();
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b(f36237c0, e11.getMessage());
                    }
                    iIntValue = 1;
                }
                iIntValue = iIntValue < 1 ? 1 : iIntValue;
                iIntValue = iIntValue > 10 ? 10 : iIntValue;
                this.f36258r = iIntValue;
                this.f36257q = iIntValue;
                if (map.containsKey(MBridgeConstans.PROPERTIES_AD_FRAME_NUM)) {
                    this.A = ((Integer) obj3).intValue();
                }
            } else if (map.containsKey(MBridgeConstans.PROPERTIES_AD_FRAME_NUM) && obj3 != null) {
                try {
                    this.A = ((Integer) obj3).intValue();
                } catch (Exception e12) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b(f36237c0, e12.getMessage());
                    }
                }
            }
        } catch (Exception e13) {
            o0.b(f36237c0, com.mbridge.msdk.mbnative.common.a.a(e13));
        }
        this.f36254n = new com.mbridge.msdk.foundation.same.report.h(this.f36248h);
        this.f36256p = new com.mbridge.msdk.click.a(this.f36248h, this.f36249i);
        try {
            int i11 = MBMediaView.f36656p0;
            this.L = true;
            Map<String, Object> map2 = this.f36244d;
            if (map2 != null && (map2.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH) || this.f36244d.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT) || map.containsKey(MBridgeConstans.NATIVE_VIDEO_SUPPORT))) {
                this.K = true;
            }
            com.mbridge.msdk.mbnative.controller.e.a(this.f36248h, this.f36249i);
            m0.a();
            if (TextUtils.isEmpty(this.f36249i)) {
                return;
            }
            com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f36248h)).a();
            int iA = a(map.containsKey(MBridgeConstans.NATIVE_INFO) ? (String) map.get(MBridgeConstans.NATIVE_INFO) : null);
            List<Campaign> listA = a(this.f36249i, iA <= 0 ? this.f36257q : iA);
            if (listA != null) {
                ArrayList arrayList = new ArrayList();
                for (int i12 = 0; i12 < listA.size(); i12++) {
                    CampaignEx campaignEx = (CampaignEx) listA.get(i12);
                    if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                        arrayList.add(campaignEx);
                    }
                }
                if (arrayList.size() > 0) {
                    Object objInvoke = com.mbridge.msdk.videocommon.download.b.class.getMethod("getInstance", null).invoke(null, null);
                    com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", Context.class, String.class, CopyOnWriteArrayList.class, Integer.TYPE, com.mbridge.msdk.videocommon.listener.a.class).invoke(objInvoke, context, this.f36249i, new CopyOnWriteArrayList(arrayList), 1, null);
                    com.mbridge.msdk.videocommon.download.b.class.getMethod(NativeImgComponent.EVENT_LOAD, String.class).invoke(objInvoke, this.f36249i);
                }
            }
        } catch (Throwable unused) {
            o0.b(f36237c0, "please import the nativex aar");
        }
    }

    private int a(String str) {
        if (str == null) {
            return 0;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() > 0) {
                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.opt(i11);
                    if (2 == jSONObject.optInt("id", 0)) {
                        return jSONObject.optInt("ad_num");
                    }
                }
            }
        } catch (Exception e11) {
            o0.b(f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
        }
        return 0;
    }

    private com.iab.omid.library.mmadbridge.adsession.b a(CampaignEx campaignEx) {
        if (this.G == null) {
            this.G = new Hashtable<>();
        }
        String requestIdNotice = campaignEx.getRequestIdNotice();
        com.iab.omid.library.mmadbridge.adsession.b bVarA = this.G.get(requestIdNotice);
        if (bVarA == null && campaignEx.isActiveOm() && TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            bVarA = com.mbridge.msdk.omsdk.b.a(this.f36248h, true, campaignEx.getOmid(), campaignEx.getRequestId(), campaignEx.getId(), this.f36249i, "", campaignEx.getRequestIdNotice());
        }
        if (bVarA != null) {
            this.G.put(requestIdNotice, bVarA);
        }
        return bVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Campaign> a(int i11, List<Campaign> list) {
        if (i11 != 1 || !this.f36244d.containsKey(MBridgeConstans.NATIVE_INFO) || list == null || list.size() <= 0) {
            return list;
        }
        CampaignEx campaignEx = (CampaignEx) list.get(0);
        int template = campaignEx != null ? campaignEx.getTemplate() : 1;
        if (template == 2) {
            int size = list.size();
            int i12 = this.V;
            return size >= i12 ? list.subList(0, i12) : list;
        }
        if (template != 3) {
            return list;
        }
        int size2 = list.size();
        int i13 = this.W;
        return size2 >= i13 ? list.subList(0, i13) : list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Campaign> a(List<Campaign> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        for (Campaign campaign : list) {
            if (campaign instanceof CampaignEx) {
                CampaignEx campaignEx = (CampaignEx) campaign;
                if (TextUtils.isEmpty(this.N) && TextUtils.isEmpty(campaignEx.getBidToken()) && !campaignEx.isBidCampaign()) {
                    arrayList2.add(campaignEx);
                } else if (!TextUtils.isEmpty(this.N) && TextUtils.equals(campaignEx.getBidToken(), this.N)) {
                    arrayList.add(campaign);
                }
            } else {
                arrayList2.add(campaign);
            }
        }
        return TextUtils.isEmpty(this.N) ? arrayList2 : arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Campaign> a(List<Campaign> list, boolean z10) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                Campaign campaign = list.get(size);
                String id2 = campaign.getId();
                boolean z11 = campaign instanceof CampaignEx;
                if (z11) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(id2);
                    CampaignEx campaignEx = (CampaignEx) campaign;
                    sb2.append(campaignEx.getVideoUrlEncode());
                    sb2.append(campaignEx.getBidToken());
                    id2 = sb2.toString();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f36249i, id2);
                if (z10) {
                    if (aVarA == null || !com.mbridge.msdk.videocommon.download.l.a(aVarA, h().C())) {
                        com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f36249i, list.remove(size), this.N);
                    }
                } else if (z11) {
                    CampaignEx campaignEx2 = (CampaignEx) campaign;
                    if (TextUtils.isEmpty(campaignEx2.getImageUrl()) && !TextUtils.isEmpty(campaignEx2.getVideoUrlEncode()) && (aVarA == null || !com.mbridge.msdk.videocommon.download.l.a(aVarA, h().C()))) {
                        com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f36249i, list.remove(size), this.N);
                    }
                }
            }
        }
        return list;
    }

    public static List<String> a(Map<String, Object> map) {
        Exception e11;
        ArrayList arrayList = null;
        try {
            if (!(map.get(MBridgeConstans.KEY_WORD) instanceof String)) {
                return null;
            }
            String str = (String) map.get(MBridgeConstans.KEY_WORD);
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() == 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i11);
                    if (jSONObjectOptJSONObject != null) {
                        String strOptString = jSONObjectOptJSONObject.optString(TtmlNode.TAG_P);
                        if (TextUtils.isEmpty(strOptString)) {
                            continue;
                        } else {
                            arrayList2.add(strOptString);
                        }
                    }
                } catch (Exception e12) {
                    e11 = e12;
                    arrayList = arrayList2;
                }
            }
            return arrayList2;
        } catch (Exception e13) {
            e11 = e13;
        }
        o0.b(f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
        return arrayList;
    }

    private void a(View view, View.OnClickListener onClickListener, Class cls) {
        if (view == null || onClickListener == null) {
            return;
        }
        if (cls != null) {
            try {
                if (cls.isInstance(view)) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        view.setOnClickListener(onClickListener);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                a(viewGroup.getChildAt(i11), onClickListener, cls);
            }
        }
    }

    private void a(View view, CampaignEx campaignEx) {
        BitmapDrawable bitmapDrawableA;
        ImageView imageView;
        if (!(view instanceof FrameLayout) || (bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f36249i, campaignEx.getAdType())) == null) {
            return;
        }
        try {
            int childCount = ((ViewGroup) view).getChildCount();
            int i11 = 0;
            while (true) {
                if (i11 >= childCount) {
                    imageView = null;
                    break;
                }
                View childAt = ((ViewGroup) view).getChildAt(i11);
                if ((childAt instanceof ImageView) && childAt.getTag() != null && "mb_wm".equals((String) childAt.getTag())) {
                    ((ImageView) childAt).setLayoutParams(new FrameLayout.LayoutParams(view.getWidth(), view.getHeight()));
                    imageView = (ImageView) childAt;
                    break;
                }
                i11++;
            }
            if (imageView == null) {
                imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                imageView.setTag("mb_wm");
                t0.a(imageView, bitmapDrawableA, view.getResources().getDisplayMetrics());
                if (imageView.getParent() == null) {
                    ((FrameLayout) view).addView(imageView, new FrameLayout.LayoutParams(view.getWidth(), view.getHeight()));
                }
                com.iab.omid.library.mmadbridge.adsession.b bVar = this.f36240a0;
                if (bVar != null) {
                    bVar.a(imageView, FriendlyObstructionPurpose.OTHER, null);
                }
            }
            this.P = new e(imageView, view);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this.P);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void a(View view, Class cls) {
        if (view == null) {
            return;
        }
        if (cls != null) {
            try {
                if (cls.isInstance(view)) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        view.setOnClickListener(null);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                a(viewGroup.getChildAt(i11), cls);
            }
        }
    }

    private void a(CampaignEx campaignEx, View view, List<View> list) {
        com.iab.omid.library.mmadbridge.adsession.b bVarA;
        try {
            if (this.f36248h == null || campaignEx == null) {
                bVarA = null;
            } else {
                bVarA = a(campaignEx);
                if (bVarA != null) {
                    bVarA.d(view);
                    bVarA.g();
                }
            }
            com.iab.omid.library.mmadbridge.adsession.b bVar = bVarA;
            com.mbridge.msdk.setting.l lVar = this.Q;
            int iS = lVar != null ? lVar.s() : 0;
            if (campaignEx != null && campaignEx.getImpReportType() == 1) {
                iS = 0;
            }
            s sVar = new s(campaignEx, view, list, this, bVar);
            if (this.F == null) {
                this.F = new CopyOnWriteArrayList<>();
            }
            this.F.add(sVar);
            sVar.setOnStateChangeListener(new j(sVar));
            Handler handler = this.f36330a;
            if (handler != null) {
                handler.postDelayed(sVar, iS * 1000);
            }
        } catch (Exception e11) {
            o0.b(f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, View view, List<View> list, com.iab.omid.library.mmadbridge.adsession.b bVar) {
        try {
            k kVar = new k(campaignEx);
            com.mbridge.msdk.mbnative.controller.c cVar = new com.mbridge.msdk.mbnative.controller.c(list, kVar, new Handler(Looper.getMainLooper()), campaignEx.getImpReportType());
            cVar.a(view);
            List<com.mbridge.msdk.mbnative.controller.c> list2 = this.D;
            if (list2 != null) {
                list2.add(cVar);
            }
            List<com.mbridge.msdk.mbnative.controller.c.d> list3 = this.E;
            if (list3 != null) {
                list3.add(kVar);
            }
            com.iab.omid.library.mmadbridge.adsession.a aVar = this.f36242b0;
            if (aVar != null) {
                aVar.b();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.mbnative.listener.a aVar, String str, CampaignEx campaignEx) {
        this.f36330a.post(new b(aVar, campaignEx, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<Campaign> list, int i11, NativeListener.NativeAdListener nativeAdListener) {
        this.f36330a.post(new a(list, nativeAdListener, i11));
    }

    private void a(List<Campaign> list, o oVar) {
        c();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Timer timer = new Timer();
        this.M = timer;
        timer.schedule(new d(jCurrentTimeMillis, oVar, list), 0L, 1000L);
    }

    private void a(boolean z10, int i11) {
        boolean zB;
        if (z10 && i11 == 1 && a(i11)) {
            return;
        }
        String strB = com.mbridge.msdk.foundation.controller.c.m().b();
        String strC = com.mbridge.msdk.foundation.controller.c.m().c();
        if (this.f36244d.containsKey("app_id") && this.f36244d.containsKey(MBridgeConstans.APP_KEY) && this.f36244d.containsKey(MBridgeConstans.KEY_WORD)) {
            strB = (String) this.f36244d.get("app_id");
            strC = (String) this.f36244d.get(MBridgeConstans.APP_KEY);
        }
        a(strB, strC);
        com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e(strB, this.f36249i);
        this.Q = lVarE;
        if (lVarE == null) {
            this.Q = com.mbridge.msdk.setting.l.i(this.f36249i);
        }
        com.mbridge.msdk.mbnative.controller.d.d().put(this.f36249i, Integer.valueOf(this.Q.y() * this.f36258r));
        this.f36241b = this.Q.b();
        this.f36243c = this.Q.c();
        this.T = this.Q.f();
        this.S = this.Q.e();
        this.f36258r = this.f36257q;
        List<Integer> list = this.f36241b;
        if (list == null || list.size() == 0) {
            com.mbridge.msdk.mbnative.listener.a aVar = this.f36246f;
            if (aVar != null) {
                this.f36262v = true;
                aVar.onAdLoadError("do not have sorceList");
                return;
            }
            return;
        }
        try {
            zB = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
        } catch (Exception unused) {
            zB = false;
        }
        if (!zB) {
            com.mbridge.msdk.mbnative.listener.a aVar2 = this.f36246f;
            if (aVar2 != null) {
                aVar2.onAdLoadError("webview is not available");
                return;
            }
            return;
        }
        if (this.f36244d.containsKey(MBridgeConstans.NATIVE_INFO) && this.f36253m == null) {
            this.f36253m = (String) this.f36244d.get(MBridgeConstans.NATIVE_INFO);
            f();
        }
        if ((!this.f36241b.contains(1) || this.f36241b.get(0).intValue() == 1) && i11 == 0 && c(a(this.f36249i, this.f36258r, this.N))) {
            return;
        }
        this.X = true;
        if (this.f36241b.contains(1) && i11 == 0 && this.f36241b.get(0).intValue() != 1) {
            int iIntValue = this.f36241b.get(0).intValue();
            com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(iIntValue);
            if (iIntValue == 2 && this.f36244d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                this.f36258r = this.H;
            } else {
                this.f36258r = this.f36257q;
            }
            if (bVarA != null && c(a(iIntValue, a(bVarA.a(this.f36249i, this.f36258r))))) {
                return;
            }
            this.X = false;
            try {
                a(this.f36243c.get(this.f36241b.indexOf(1)).intValue() * 1000, i11, false, this.f36249i, this.N);
            } catch (Exception unused2) {
            }
        }
        this.f36330a.sendEmptyMessageDelayed(1, this.Q.K() * 1000);
        j();
        b(i11, this.N);
    }

    private List<Campaign> b(List<Campaign> list) {
        ArrayList arrayList = null;
        if (list != null) {
            for (Campaign campaign : list) {
                if (campaign instanceof CampaignEx) {
                    CampaignEx campaignEx = (CampaignEx) campaign;
                    if (TextUtils.isEmpty(campaignEx.getImageUrl()) && !TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(campaign);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.needShowIDialog() && com.mbridge.msdk.util.b.a()) {
                    h hVar = new h(campaignEx);
                    if (com.mbridge.msdk.click.c.a(campaignEx) && campaignEx.needShowIDialog()) {
                        if (a(this.f36256p, context, campaignEx, this.f36249i, hVar)) {
                            return;
                        }
                        b(campaignEx);
                        this.f36246f.onAdClick(campaignEx);
                        return;
                    }
                }
            } catch (Throwable th2) {
                o0.a(f36237c0, th2.getMessage());
            }
        }
        this.f36256p.a(campaignEx, this.f36246f);
        b(campaignEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.isReportClick()) {
            return;
        }
        campaignEx.setReportClick(true);
        if (campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(this.f36248h, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
    }

    public static boolean b(Map<String, Object> map) {
        if (map == null) {
            return false;
        }
        try {
            return map.containsKey("app_id") && map.containsKey(MBridgeConstans.APP_KEY) && map.containsKey(MBridgeConstans.KEY_WORD) && map.get(MBridgeConstans.KEY_WORD) != null;
        } catch (Exception e11) {
            o0.b(f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Timer timer = this.M;
        if (timer != null) {
            timer.cancel();
            this.M = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(List<Campaign> list) {
        if ((!TextUtils.isEmpty(this.N) && list != null && list.size() == 0) || list == null || list.size() <= 0) {
            return false;
        }
        com.mbridge.msdk.mbnative.listener.a aVar = this.f36246f;
        if (aVar == null) {
            return true;
        }
        CampaignEx campaignEx = (CampaignEx) list.get(0);
        if (campaignEx != null && campaignEx.isActiveOm()) {
            com.iab.omid.library.mmadbridge.adsession.b bVarA = a(campaignEx);
            this.f36240a0 = bVarA;
            if (bVarA != null) {
                bVarA.g();
                com.iab.omid.library.mmadbridge.adsession.a aVarA = com.iab.omid.library.mmadbridge.adsession.a.a(this.f36240a0);
                this.f36242b0 = aVarA;
                aVarA.c();
            }
        }
        int template = campaignEx != null ? campaignEx.getTemplate() : 2;
        com.mbridge.msdk.foundation.db.j jVarA = com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(this.f36248h));
        jVarA.a();
        for (int i11 = 0; i11 < list.size(); i11++) {
            CampaignEx campaignEx2 = (CampaignEx) list.get(i11);
            if (!jVarA.a(campaignEx2.getId())) {
                com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                gVar.a(campaignEx2.getId());
                gVar.b(campaignEx2.getFca());
                gVar.c(campaignEx2.getFcb());
                gVar.a(0);
                gVar.d(0);
                gVar.a(System.currentTimeMillis());
                jVarA.b(gVar);
            }
        }
        if (!this.L || !this.K) {
            if (list.size() <= 0) {
                a(aVar, "has no ads", (CampaignEx) null);
                return true;
            }
            Iterator<Campaign> it = list.iterator();
            while (it.hasNext()) {
                it.next().setVideoLength(0);
            }
            a(list, template, aVar);
            return true;
        }
        if (h().m() == 3) {
            List<Campaign> listE = e(list);
            if (list.size() > 0) {
                a(list, new l(listE, template, aVar, list));
                return true;
            }
            a(aVar, "has no ads", (CampaignEx) null);
            return true;
        }
        List<Campaign> listB = b(list);
        if (listB == null || listB.size() <= 0) {
            a(list, template, aVar);
            return true;
        }
        a(listB, new m(list, template, aVar));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    try {
                        int i11 = MBMediaView.f36656p0;
                        Object objInvoke = com.mbridge.msdk.videocommon.download.b.class.getMethod("getInstance", null).invoke(null, null);
                        if (objInvoke != null) {
                            com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", Context.class, String.class, CopyOnWriteArrayList.class, Integer.TYPE, com.mbridge.msdk.videocommon.listener.a.class).invoke(objInvoke, this.f36248h, this.f36249i, new CopyOnWriteArrayList(list), 1, null);
                            com.mbridge.msdk.videocommon.download.b.class.getMethod(NativeImgComponent.EVENT_LOAD, String.class).invoke(objInvoke, this.f36249i);
                        }
                        Iterator<CampaignEx> it = list.iterator();
                        while (it.hasNext()) {
                            CampaignEx next = it.next();
                            if (next != null && !TextUtils.isEmpty(next.getImageUrl())) {
                                com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(next.getImageUrl(), new c());
                            }
                            String str = "";
                            if (next != null) {
                                try {
                                    str = next.getendcard_url();
                                } catch (Exception unused) {
                                }
                            }
                            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                            cVar.a(next);
                            if (!TextUtils.isEmpty(str)) {
                                cVar.f((next == null || next.getAabEntity() == null) ? 0 : next.getAabEntity().h3c);
                                if (str.contains(".zip") && str.contains(ResourceManager.KEY_MD5FILENAME)) {
                                    H5DownLoadManager.getInstance().downloadH5Res(cVar, str, new t(this.f36249i, next, TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(str))));
                                } else {
                                    H5DownLoadManager.getInstance().downloadH5Res(cVar, str, new q(this.f36249i, next, TextUtils.isEmpty(HTMLResourceManager.getInstance().getHtmlContentFromUrl(str))));
                                }
                            }
                        }
                    } catch (Throwable unused2) {
                        o0.b(f36237c0, "please import the videocommon and nativex aar");
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
        }
    }

    private List<Campaign> e(List<Campaign> list) {
        if (list != null) {
            CampaignEx campaignEx = null;
            for (int size = list.size() - 1; size >= 0; size--) {
                try {
                    campaignEx = (CampaignEx) list.get(size);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                if (campaignEx != null && TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                    Campaign campaignRemove = list.remove(size);
                    com.mbridge.msdk.mbnative.cache.c.a(campaignEx.getType()).a(this.f36249i, campaignRemove, this.N);
                    o0.a(f36237c0, "remove no videoURL ads:" + campaignRemove);
                }
            }
        }
        return list;
    }

    private void f() {
        try {
            if (this.f36253m == null) {
                return;
            }
            JSONArray jSONArray = new JSONArray(this.f36253m);
            if (jSONArray.length() > 0) {
                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.opt(i11);
                    int iOptInt = jSONObject.optInt("id", 0);
                    if (2 == iOptInt) {
                        this.V = jSONObject.optInt("ad_num");
                        if (this.T > 0) {
                            jSONObject.remove("ad_num");
                            jSONObject.put("ad_num", this.T);
                        }
                    } else if (3 == iOptInt) {
                        this.W = jSONObject.optInt("ad_num");
                        if (this.T > 0) {
                            jSONObject.remove("ad_num");
                            jSONObject.put("ad_num", this.T);
                        }
                    }
                }
            }
            this.H = Math.max(this.V, this.W);
            this.f36253m = jSONArray.toString();
        } catch (JSONException e11) {
            o0.b(f36237c0, com.mbridge.msdk.mbnative.common.a.a(e11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.setting.l h() {
        com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e("", this.f36249i);
        this.Q = lVarE;
        if (lVarE == null) {
            this.Q = com.mbridge.msdk.setting.l.i(this.f36249i);
        }
        return this.Q;
    }

    public List<Campaign> a(String str, int i11) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA;
        com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e("", str);
        this.Q = lVarE;
        if (lVarE == null) {
            this.Q = com.mbridge.msdk.setting.l.i(str);
        }
        List<Integer> listB = this.Q.b();
        this.f36241b = listB;
        if (listB == null || listB.size() <= 0 || !this.f36241b.contains(1) || (bVarA = com.mbridge.msdk.mbnative.cache.c.a(1)) == null) {
            return null;
        }
        return bVarA.a(str, i11);
    }

    public List<Campaign> a(String str, int i11, String str2) {
        List<Campaign> listA = null;
        if (this.f36241b != null) {
            ArrayList arrayList = new ArrayList(this.f36241b);
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(((Integer) arrayList.get(i12)).intValue());
                if (bVarA != null) {
                    listA = a(((Integer) arrayList.get(i12)).intValue(), bVarA.a(str, ((((Integer) arrayList.get(i12)).intValue() == 1 || ((Integer) arrayList.get(i12)).intValue() == 2) && this.f36244d.containsKey(MBridgeConstans.NATIVE_INFO)) ? this.H : this.f36257q));
                    if (listA != null) {
                        break;
                    }
                }
            }
            if (listA == null) {
                for (int i13 = 0; i13 < arrayList.size(); i13++) {
                    listA = a(((Integer) arrayList.get(i13)).intValue(), com.mbridge.msdk.mbnative.cache.c.a(((Integer) arrayList.get(i13)).intValue()).b(str, ((((Integer) arrayList.get(i13)).intValue() == 1 || ((Integer) arrayList.get(i13)).intValue() == 2) && this.f36244d.containsKey(MBridgeConstans.NATIVE_INFO)) ? this.H : this.f36257q));
                    if (listA != null) {
                        break;
                    }
                }
            }
        }
        return a(listA);
    }

    @Override // com.mbridge.msdk.mbnative.controller.a
    public synchronized void a(int i11, long j11, int i12, String str) {
        n nVar;
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar;
        int i13;
        com.mbridge.msdk.foundation.entity.k kVar;
        try {
            try {
                if (this.f36244d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                    this.f36258r = Math.max(this.V, this.W);
                }
                if (i12 == 0) {
                    com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(i11);
                    if (bVarA != null && c(a(1, a(bVarA.a(this.f36249i, this.f36258r))))) {
                        return;
                    }
                    n nVar2 = this.J;
                    if (nVar2 != null && !this.U) {
                        nVar2.b(true);
                    }
                    if (this.U && !this.f36262v) {
                        a("mb load failed", i12, str, (CampaignEx) null);
                    }
                    if (!this.X) {
                        return;
                    }
                }
                int i14 = this.f36259s;
                if (i14 == -1) {
                    this.f36259s = i11;
                } else if (i14 != i11) {
                    this.f36260t = 0;
                }
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f36248h)).a();
                com.mbridge.msdk.mbnative.service.net.a aVar = new com.mbridge.msdk.mbnative.service.net.a(this.f36248h);
                com.mbridge.msdk.foundation.same.net.wrapper.e eVar2 = new com.mbridge.msdk.foundation.same.net.wrapper.e();
                String strB = com.mbridge.msdk.foundation.controller.c.m().b();
                String strC = com.mbridge.msdk.foundation.controller.c.m().c();
                Map<String, Object> map = this.f36244d;
                if (map != null && map.containsKey("app_id") && this.f36244d.containsKey(MBridgeConstans.APP_KEY) && this.f36244d.containsKey(MBridgeConstans.KEY_WORD) && this.f36244d.get(MBridgeConstans.KEY_WORD) != null) {
                    if (this.f36244d.get("app_id") instanceof String) {
                        strB = (String) this.f36244d.get("app_id");
                    }
                    if (this.f36244d.get(MBridgeConstans.APP_KEY) instanceof String) {
                        strC = (String) this.f36244d.get(MBridgeConstans.APP_KEY);
                    }
                    String str2 = this.f36244d.get(MBridgeConstans.KEY_WORD) instanceof String ? (String) this.f36244d.get(MBridgeConstans.KEY_WORD) : null;
                    if (!TextUtils.isEmpty(str2)) {
                        eVar2.a("smart", i0.b(str2));
                    }
                }
                eVar2.a("app_id", strB);
                eVar2.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36249i);
                if (!TextUtils.isEmpty(this.f36250j)) {
                    eVar2.a(MBridgeConstans.PLACEMENT_ID, this.f36250j);
                }
                eVar2.a("req_type", "2");
                if (!TextUtils.isEmpty(this.f36261u)) {
                    eVar2.a("category", this.f36261u);
                }
                eVar2.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(strB + strC));
                if (this.T <= 0 || i12 != 0) {
                    eVar2.a("ad_num", this.f36257q + "");
                } else {
                    eVar2.a("ad_num", this.T + "");
                }
                String strD = t0.d(this.f36249i);
                if (!TextUtils.isEmpty(strD)) {
                    eVar2.a("j", strD);
                }
                eVar2.a("only_impression", "1");
                eVar2.a("ping_mode", "1");
                if (this.A != 0) {
                    eVar2.a("frame_num", this.A + "");
                }
                if (!TextUtils.isEmpty(this.f36253m)) {
                    eVar2.a(MBridgeConstans.NATIVE_INFO, this.f36253m);
                    if (i11 == 1) {
                        eVar2.a("tnum", this.H + "");
                    }
                } else if (i11 == 1) {
                    eVar2.a("tnum", this.f36257q + "");
                }
                a(eVar2, i11);
                String strA = com.mbridge.msdk.foundation.same.buffer.b.a(this.f36249i, "native");
                if (!TextUtils.isEmpty(strA)) {
                    eVar2.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35500g, strA);
                }
                if (this.f36244d.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH) && (this.f36244d.get(MBridgeConstans.NATIVE_VIDEO_WIDTH) instanceof Integer)) {
                    eVar2.a("video_width", ((Integer) this.f36244d.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                }
                if (this.f36244d.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT) && (this.f36244d.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT) instanceof Integer)) {
                    eVar2.a("video_height", ((Integer) this.f36244d.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                }
                if (this.f36244d.containsKey(MBridgeConstans.NATIVE_VIDEO_SUPPORT) && (this.f36244d.get(MBridgeConstans.NATIVE_VIDEO_SUPPORT) instanceof Boolean)) {
                    ((Boolean) this.f36244d.get(MBridgeConstans.NATIVE_VIDEO_SUPPORT)).booleanValue();
                }
                eVar2.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                if (com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                    com.mbridge.msdk.setting.h.b().a();
                }
                if (!b(this.f36244d)) {
                    JSONArray jSONArrayB = t0.b(this.f36248h, this.f36249i);
                    if (jSONArrayB.length() > 0) {
                        eVar2.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35501h, t0.a(jSONArrayB));
                    }
                }
                if (com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f36249i) && com.mbridge.msdk.mbnative.controller.d.g().get(this.f36249i).booleanValue() && com.mbridge.msdk.mbnative.controller.d.e().get(this.f36249i) != null && (kVar = com.mbridge.msdk.mbnative.controller.d.e().get(this.f36249i)) != null) {
                    if (i11 == 1) {
                        this.f36260t = kVar.a();
                    } else if (i11 == 2) {
                        this.f36260t = kVar.b();
                    }
                }
                eVar2.a("offset", this.f36260t + "");
                eVar2.a("ad_type", "42");
                eVar2.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i11 + "");
                if (!TextUtils.isEmpty(this.f36255o)) {
                    eVar2.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35502i, this.f36255o);
                }
                n nVar3 = new n();
                nVar3.b(a(this.f36244d));
                nVar3.setUnitId(this.f36249i);
                nVar3.setPlacementId(this.f36250j);
                nVar3.setAdType(42);
                nVar3.b(true);
                p pVar = new p(1, nVar3, i12, str);
                nVar3.a(pVar);
                nVar3.a(i12);
                nVar3.a(str);
                if (i12 == 0) {
                    if (!TextUtils.isEmpty(str)) {
                        eVar2.a("token", str);
                    }
                    nVar = nVar3;
                    eVar = eVar2;
                    i13 = 1;
                    aVar.choiceV3OrV5BySetting(1, eVar, nVar, str, com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                } else {
                    nVar = nVar3;
                    eVar = eVar2;
                    i13 = 1;
                }
                if (i12 == i13) {
                    aVar.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f35465b0, eVar, nVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                }
                this.f36330a.postDelayed(pVar, j11);
            } catch (Exception e11) {
                String str3 = f36237c0;
                o0.b(str3, com.mbridge.msdk.mbnative.common.a.a(e11));
                o0.b(str3, e11.getMessage());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void a(int i11, String str) {
        boolean zEquals = false;
        this.f36262v = false;
        this.f36263w = false;
        this.f36264x = false;
        this.U = false;
        this.N = str;
        this.f36246f.a(!TextUtils.isEmpty(str));
        this.J = null;
        Map<String, Long> map = f36238d0;
        if (map != null && map.size() > 0) {
            f36238d0.clear();
        }
        if (com.mbridge.msdk.mbnative.controller.d.g() != null && com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f36249i)) {
            zEquals = Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.f36249i));
        }
        a(zEquals, i11);
    }

    public void a(Campaign campaign, View view) {
        try {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f36247g;
            if (nativeTrackingListener != null) {
                this.f36256p.a(nativeTrackingListener);
            }
            com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f36249i, campaign, this.N);
            CampaignEx campaignEx = (CampaignEx) campaign;
            com.mbridge.msdk.foundation.same.buffer.b.a(this.f36249i, campaignEx, "native");
            i iVar = new i(campaignEx);
            try {
                int i11 = MBMediaView.f36656p0;
                a(view, iVar, MBMediaView.class);
            } catch (Throwable unused) {
                a(view, iVar, (Class) null);
            }
            if (!com.mbridge.msdk.util.b.a()) {
                a(view, (CampaignEx) campaign);
            }
            if (campaignEx.isReport()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(view);
            a(campaignEx, view, (List<View>) arrayList);
            o0.c(f36237c0, "sendImpression" + campaignEx);
        } catch (Exception unused2) {
            o0.b(f36237c0, "registerview exception!");
        }
    }

    public void a(Campaign campaign, View view, List<View> list) {
        Class<MBMediaView> cls;
        try {
            a(view, (CampaignEx) campaign);
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f36247g;
            if (nativeTrackingListener != null) {
                this.f36256p.a(nativeTrackingListener);
            }
            com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f36249i, campaign, this.N);
            CampaignEx campaignEx = (CampaignEx) campaign;
            try {
                cls = MBMediaView.class;
                int i11 = MBMediaView.f36656p0;
            } catch (Throwable unused) {
                cls = null;
            }
            com.mbridge.msdk.foundation.same.buffer.b.a(this.f36249i, campaignEx, "native");
            if (view != null) {
                if (cls != null && cls.isInstance(view)) {
                    return;
                } else {
                    view.setOnClickListener(new f(campaignEx));
                }
            }
            if (list != null && list.size() > 0) {
                for (View view2 : list) {
                    if (cls != null && cls.isInstance(view2)) {
                        break;
                    } else {
                        view2.setOnClickListener(new g(campaignEx));
                    }
                }
            }
            if (campaignEx.isReport()) {
                return;
            }
            a(campaignEx, view, list);
            Log.e(f36237c0, "sendImpression" + campaignEx);
        } catch (Exception unused2) {
            o0.b(f36237c0, "registerview exception!");
        }
    }

    public void a(String str, int i11, String str2, CampaignEx campaignEx) {
        Queue<Integer> queue = this.f36251k;
        if ((queue == null || queue.size() > 0) && this.f36251k != null) {
            b(i11, str2);
            return;
        }
        com.mbridge.msdk.mbnative.listener.a aVar = this.f36246f;
        if (aVar == null || this.f36262v) {
            return;
        }
        this.f36262v = true;
        aVar.a(campaignEx, str);
    }

    public void a(String str, String str2) {
        this.f36245e.a(this.f36248h, str, str2, this.f36249i);
    }

    public boolean a(int i11) {
        int iMin;
        int iOptInt;
        int iOptInt2;
        com.mbridge.msdk.mbnative.listener.a aVar;
        int i12 = 0;
        if (com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f36249i) && Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.f36249i))) {
            Map<String, Map<Long, Object>> mapF = com.mbridge.msdk.mbnative.controller.d.f();
            Map<Long, Object> map = mapF.get(i11 + "_" + this.f36249i);
            Integer num = com.mbridge.msdk.mbnative.controller.d.c().get(this.f36249i);
            com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (num != null) {
                this.f36258r = num.intValue();
            }
            if (map != null && map.size() > 0) {
                Long next = map.keySet().iterator().next();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (gVarD == null) {
                    gVarD = com.mbridge.msdk.setting.h.b().a();
                }
                if (jCurrentTimeMillis - next.longValue() >= gVarD.Z() * 1000) {
                    mapF.remove(i11 + "_" + this.f36249i);
                } else {
                    if (i11 == 1) {
                        List<Frame> list = (List) map.get(next);
                        if (list == null || list.size() <= 0 || (aVar = this.f36246f) == null) {
                            return false;
                        }
                        if (this.A >= list.size()) {
                            mapF.remove(i11 + "_" + this.f36249i);
                            aVar.onAdFramesLoaded(list);
                            return true;
                        }
                        if (this.A == 0) {
                            return false;
                        }
                        List<Frame> listSubList = list.subList(0, this.f36266z);
                        aVar.onAdFramesLoaded(list);
                        list.removeAll(listSubList);
                        map.put(next, listSubList);
                        ArrayList arrayList = new ArrayList();
                        for (Frame frame : list) {
                            if (i12 >= this.A) {
                                arrayList.add(frame);
                            }
                            i12++;
                        }
                        map.put(next, arrayList);
                        mapF.put(i11 + "_" + this.f36249i, map);
                        aVar.onAdFramesLoaded(listSubList);
                        return true;
                    }
                    List list2 = (List) map.get(next);
                    if (list2 != null && list2.size() > 0) {
                        List<Campaign> arrayList2 = new ArrayList<>();
                        if (((CampaignEx) list2.get(0)).getType() == 1) {
                            if (TextUtils.isEmpty(this.f36253m)) {
                                iMin = Math.min(this.f36265y, list2.size());
                            } else {
                                try {
                                    JSONArray jSONArray = new JSONArray(this.f36253m);
                                    if (jSONArray.length() > 0) {
                                        iOptInt = 0;
                                        iOptInt2 = 0;
                                        for (int i13 = 0; i13 < jSONArray.length(); i13++) {
                                            JSONObject jSONObject = (JSONObject) jSONArray.opt(i13);
                                            int iOptInt3 = jSONObject.optInt("id", 0);
                                            if (2 == iOptInt3) {
                                                iOptInt = jSONObject.optInt("ad_num");
                                            } else if (3 == iOptInt3) {
                                                iOptInt2 = jSONObject.optInt("ad_num");
                                            }
                                        }
                                    } else {
                                        iOptInt = 0;
                                        iOptInt2 = 0;
                                    }
                                    iMin = 3 == ((CampaignEx) list2.get(0)).getTemplate() ? Math.min(iOptInt2, list2.size()) : Math.min(iOptInt, list2.size());
                                } catch (Exception unused) {
                                    o0.b(f36237c0, "load from catch error in get nativeinfo adnum");
                                    iMin = 0;
                                }
                            }
                            if (iMin <= 0) {
                                return false;
                            }
                            Iterator it = list2.iterator();
                            while (it.hasNext() && i12 != iMin) {
                                CampaignEx campaignEx = (CampaignEx) it.next();
                                campaignEx.getTemplate();
                                arrayList2.add(campaignEx);
                                it.remove();
                                i12++;
                            }
                        } else {
                            int iMin2 = Math.min(this.f36265y, list2.size());
                            if (iMin2 > 0) {
                                Iterator it2 = list2.iterator();
                                while (it2.hasNext() && i12 != iMin2) {
                                    CampaignEx campaignEx2 = (CampaignEx) it2.next();
                                    campaignEx2.getTemplate();
                                    arrayList2.add(campaignEx2);
                                    it2.remove();
                                    i12++;
                                }
                            }
                        }
                        c(arrayList2);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void b(int i11, long j11, int i12, String str) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA;
        if (i12 == 0 && (bVarA = com.mbridge.msdk.mbnative.cache.c.a(i11)) != null) {
            if ((i11 == 1 || i11 == 2) && this.f36244d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                this.f36258r = this.H;
            } else {
                this.f36258r = this.f36257q;
            }
            if (c(a(i11, a(bVarA.a(this.f36249i, this.f36258r))))) {
                return;
            }
        }
        if (i11 == 1) {
            a(j11, i12, true, this.f36249i, str);
        } else if (i11 != 2) {
            a(i11, j11, i12, str);
        } else {
            a(2, j11, i12, str);
        }
    }

    public void b(int i11, String str) {
        com.mbridge.msdk.mbnative.listener.a aVar;
        Long lPoll;
        Queue<Integer> queue = this.f36251k;
        if (queue == null || queue.size() <= 0) {
            if (this.f36262v || (aVar = this.f36246f) == null) {
                return;
            }
            this.f36262v = true;
            aVar.onAdLoadError("no ad source");
            return;
        }
        Integer numPoll = this.f36251k.poll();
        int iIntValue = numPoll != null ? numPoll.intValue() : 1;
        this.R = MBridgeConstans.REQUEST_TIME_OUT;
        Queue<Long> queue2 = this.f36252l;
        if (queue2 != null && queue2.size() > 0 && (lPoll = this.f36252l.poll()) != null) {
            this.R = lPoll.longValue();
        }
        b(iIntValue, this.R, i11, str);
    }

    public void b(Campaign campaign, View view) {
        b(campaign, view, null);
    }

    public void b(Campaign campaign, View view, List<View> list) {
        Class<MBMediaView> cls;
        if (view != null && this.P != null) {
            try {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this.P);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        if (campaign != null) {
            int type = campaign.getType();
            if (type == 1 || type == 2) {
                try {
                    cls = MBMediaView.class;
                    int i11 = MBMediaView.f36656p0;
                } catch (Throwable unused) {
                    cls = null;
                }
                if (list == null || list.size() <= 0) {
                    if (view != null) {
                        a(view, cls);
                    }
                } else {
                    Iterator<View> it = list.iterator();
                    while (it.hasNext()) {
                        a(it.next(), cls);
                    }
                }
            }
        }
    }

    public void d() {
        m0.b();
    }

    public String e() {
        ArrayList arrayList = new ArrayList();
        List<Campaign> list = this.Y;
        if (list != null) {
            for (Campaign campaign : list) {
                CampaignEx campaignEx = new CampaignEx();
                campaignEx.setCreativeId(campaign.getCreativeId());
                arrayList.add(campaignEx);
            }
        }
        return com.mbridge.msdk.foundation.same.c.b(arrayList);
    }

    public String g() {
        return this.O;
    }

    public void i() {
        com.mbridge.msdk.foundation.same.task.a next;
        com.mbridge.msdk.foundation.same.task.b bVar = this.C;
        if (bVar != null) {
            bVar.a();
            this.C = null;
        }
        Hashtable<String, com.iab.omid.library.mmadbridge.adsession.b> hashtable = this.G;
        if (hashtable != null) {
            for (com.iab.omid.library.mmadbridge.adsession.b bVar2 : hashtable.values()) {
                if (bVar2 != null) {
                    bVar2.c();
                }
            }
            this.G.clear();
        }
        Handler handler = this.f36330a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f36247g = null;
        this.f36256p.c();
        try {
            Context context = this.f36248h;
            if (context != null) {
                com.mbridge.msdk.foundation.same.image.b.a(context).b();
            }
            List<com.mbridge.msdk.mbnative.controller.c> list = this.D;
            if (list != null && list.size() > 0) {
                Iterator<com.mbridge.msdk.mbnative.controller.c> it = this.D.iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
                this.D.clear();
                this.D = null;
            }
            List<com.mbridge.msdk.mbnative.controller.c.d> list2 = this.E;
            if (list2 != null && list2.size() > 0) {
                for (com.mbridge.msdk.mbnative.controller.c.d dVar : this.E) {
                }
                this.E.clear();
                this.E = null;
            }
            CopyOnWriteArrayList<com.mbridge.msdk.foundation.same.task.a> copyOnWriteArrayList = this.F;
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                return;
            }
            Iterator<com.mbridge.msdk.foundation.same.task.a> it2 = this.F.iterator();
            if (it2.hasNext() && (next = it2.next()) != null) {
                next.cancel();
                this.f36330a.removeCallbacks(next);
            }
            this.F.clear();
        } catch (Exception unused) {
        }
    }

    public void j() {
        List<Integer> list = this.f36241b;
        if (list != null && list.size() > 0) {
            Queue<Integer> queue = this.f36251k;
            if (queue != null && queue.size() > 0) {
                this.f36251k.clear();
            }
            for (Integer num : this.f36241b) {
                Queue<Integer> queue2 = this.f36251k;
                if (queue2 != null) {
                    queue2.add(num);
                }
            }
        }
        List<Integer> list2 = this.f36243c;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        Queue<Long> queue3 = this.f36252l;
        if (queue3 != null && queue3.size() > 0) {
            this.f36252l.clear();
        }
        for (Integer num2 : this.f36243c) {
            Queue<Long> queue4 = this.f36252l;
            if (queue4 != null) {
                queue4.add(Long.valueOf(num2.intValue() * 1000));
            }
        }
    }
}
