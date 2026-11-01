package com.mbridge.msdk.video.dynview.wrapper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBCusRoundImageView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f39148m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.util.time.b f39149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Bitmap> f39150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f39151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f39152d = "#FFFFFFFF";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f39153e = "#60000000";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f39154f = "#FF5F5F5F";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f39155g = "#90ECECEC";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile long f39156h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.util.time.a f39157i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f39158j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f39159k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public com.mbridge.msdk.video.dynview.inter.a f39160l = new c();

    /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.wrapper.a$a, reason: collision with other inner class name */
    class C0565a implements com.mbridge.msdk.video.dynview.util.time.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TextView f39161a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39162b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CampaignEx f39163c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Map f39164d;

        C0565a(TextView textView, String str, CampaignEx campaignEx, Map map) {
            this.f39161a = textView;
            this.f39162b = str;
            this.f39163c = campaignEx;
            this.f39164d = map;
        }

        @Override // com.mbridge.msdk.video.dynview.util.time.a
        public void onFinish() {
            this.f39163c.setShowType(com.mbridge.msdk.foundation.same.report.metrics.a.f35575c);
            a.this.b(this.f39164d);
        }

        @Override // com.mbridge.msdk.video.dynview.util.time.a
        public void onTick(long j11) {
            a.this.f39159k = (int) (j11 / 1000);
            this.f39161a.setText(com.mbridge.msdk.video.dynview.util.a.a(a.this.f39159k, this.f39161a.getContext()));
            a.this.f39156h++;
            if (TextUtils.isEmpty(this.f39162b) || !this.f39162b.equals("1")) {
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "choseFromTwoHeartbeat");
            eVar.a("xtSecond", "countTimeForReport");
            eVar.a("autoPlayCountDownTime", "mLeftOverCountTime");
            com.mbridge.msdk.video.module.report.a.a("2000103", this.f39163c, eVar);
        }
    }

    class b implements com.mbridge.msdk.foundation.feedback.a {
        b() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            if (a.this.f39149a != null) {
                a.this.f39149a.a();
                a.this.f39158j = true;
            }
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            if (!a.this.f39158j || a.this.f39149a == null) {
                return;
            }
            a.this.f39149a.a(a.this.f39159k * 1000, a.this.f39157i);
            a.this.f39158j = false;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            if (!a.this.f39158j || a.this.f39149a == null) {
                return;
            }
            a.this.f39149a.a(a.this.f39159k * 1000, a.this.f39157i);
            a.this.f39158j = false;
        }
    }

    class c implements com.mbridge.msdk.video.dynview.inter.a {
        c() {
        }

        @Override // com.mbridge.msdk.video.dynview.inter.a
        public void a() {
            if (!a.this.f39158j || a.this.f39149a == null) {
                return;
            }
            a.this.f39149a.a(a.this.f39159k * 1000, a.this.f39157i);
            a.this.f39158j = false;
        }

        @Override // com.mbridge.msdk.video.dynview.inter.a
        public void b() {
            if (a.this.f39149a != null) {
                a.this.f39149a.a();
                a.this.f39158j = true;
            }
        }

        @Override // com.mbridge.msdk.video.dynview.inter.a
        public void c() {
            if (a.this.f39149a != null) {
                a.this.f39149a.a();
                a.this.f39158j = true;
            }
        }
    }

    class d extends com.mbridge.msdk.widget.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f39168b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f39169c;

        d(Map map, List list) {
            this.f39168b = map;
            this.f39169c = list;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (a.this.f39151c) {
                return;
            }
            a.this.f39151c = true;
            a.this.a(this.f39168b, (List<CampaignEx>) this.f39169c, 0);
        }
    }

    class e extends com.mbridge.msdk.widget.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f39171b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f39172c;

        e(Map map, List list) {
            this.f39171b = map;
            this.f39172c = list;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (a.this.f39151c) {
                return;
            }
            a.this.f39151c = true;
            a.this.a(this.f39171b, (List<CampaignEx>) this.f39172c, 1);
        }
    }

    class f implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f39174a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f39175b;

        f(Map map, List list) {
            this.f39174a = map;
            this.f39175b = list;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i11, long j11) {
            a.this.a(this.f39174a, (List<CampaignEx>) this.f39175b, i11);
        }
    }

    class g implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f39177a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f39178b;

        g(Map map, List list) {
            this.f39177a = map;
            this.f39178b = list;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i11, long j11) {
            a.this.a(this.f39177a, (List<CampaignEx>) this.f39178b, i11);
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f39180a;

        h(Map map) {
            this.f39180a = map;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.a(this.f39180a);
        }
    }

    class i implements com.mbridge.msdk.foundation.same.image.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f39182a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f39183b;

        /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.wrapper.a$i$a, reason: collision with other inner class name */
        class RunnableC0566a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f39185a;

            /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.wrapper.a$i$a$a, reason: collision with other inner class name */
            class RunnableC0567a implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ Bitmap f39187a;

                RunnableC0567a(Bitmap bitmap) {
                    this.f39187a = bitmap;
                }

                @Override // java.lang.Runnable
                public void run() {
                    i.this.f39183b.setImageBitmap(this.f39187a);
                }
            }

            RunnableC0566a(Bitmap bitmap) {
                this.f39185a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    i.this.f39183b.post(new RunnableC0567a(y.a(this.f39185a, 10)));
                } catch (Exception e11) {
                    o0.b("DataEnergizeWrapper", e11.getMessage());
                }
            }
        }

        i(int i11, ImageView imageView) {
            this.f39182a = i11;
            this.f39183b = imageView;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            try {
                int iA = g0.a(this.f39183b.getContext(), "mbridge_icon_play_bg", "drawable");
                this.f39183b.setBackgroundColor(Color.parseColor(a.this.f39154f));
                this.f39183b.setImageResource(iA);
                this.f39183b.setScaleType(ImageView.ScaleType.CENTER);
            } catch (Exception e11) {
                o0.a("DataEnergizeWrapper", e11.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap == null || bitmap.isRecycled()) {
                int iA = g0.a(this.f39183b.getContext(), "mbridge_icon_play_bg", "drawable");
                this.f39183b.setBackgroundColor(Color.parseColor(a.this.f39154f));
                this.f39183b.setImageResource(iA);
                this.f39183b.setScaleType(ImageView.ScaleType.CENTER);
                return;
            }
            int i11 = this.f39182a;
            if (i11 != 501 && i11 != 802) {
                this.f39183b.setImageBitmap(bitmap);
            } else {
                com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new RunnableC0566a(bitmap));
            }
        }
    }

    class j implements com.mbridge.msdk.foundation.same.image.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f39189a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39190b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.video.dynview.c f39191c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f39192d;

        j(ImageView imageView, String str, com.mbridge.msdk.video.dynview.c cVar, View view) {
            this.f39189a = imageView;
            this.f39190b = str;
            this.f39191c = cVar;
            this.f39192d = view;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            ImageView imageView;
            if (bitmap == null || bitmap.isRecycled() || (imageView = this.f39189a) == null) {
                return;
            }
            imageView.setImageBitmap(bitmap);
            if (a.this.f39150b != null) {
                a.this.f39150b.put(SameMD5.getMD5(this.f39190b), bitmap);
                a.this.a(this.f39191c, this.f39192d);
            }
        }
    }

    class k extends com.mbridge.msdk.widget.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f39194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f39195c;

        k(CampaignEx campaignEx, Map map) {
            this.f39194b = campaignEx;
            this.f39195c = map;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (a.this.f39151c) {
                return;
            }
            a.this.f39151c = true;
            this.f39194b.setShowType(com.mbridge.msdk.foundation.same.report.metrics.a.f35576d);
            a.this.b(this.f39195c);
        }
    }

    private int a(boolean z10, String str) {
        try {
            if (!z10) {
                return g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "id");
            }
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return str.hashCode();
        } catch (Exception e11) {
            o0.b("DataEnergizeWrapper", e11.getMessage());
            return -1;
        }
    }

    private Bitmap a() {
        Bitmap bitmapCreateBitmap = null;
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_4444);
            bitmapCreateBitmap.eraseColor(Color.parseColor(this.f39155g));
            return bitmapCreateBitmap;
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return bitmapCreateBitmap;
            }
            e11.printStackTrace();
            return bitmapCreateBitmap;
        }
    }

    private void a(ImageView imageView, String str, int i11) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.image.b.a(imageView.getContext()).a(str, new i(i11, imageView));
    }

    private void a(ListView listView, com.mbridge.msdk.video.dynview.c cVar) {
        if (listView == null || cVar == null) {
            return;
        }
        try {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) listView.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.height = -1;
            float fK = (cVar.k() - t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 720.0f)) / 2.0f;
            int iA = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
            int i11 = (int) fK;
            layoutParams.setMargins(iA, i11, iA, i11);
            listView.setLayoutParams(layoutParams);
        } catch (Exception e11) {
            o0.b("DataEnergizeWrapper", e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.video.dynview.c cVar, View view) {
        Map<String, Bitmap> map = this.f39150b;
        if (map == null || map.size() <= 1) {
            return;
        }
        new com.mbridge.msdk.video.dynview.ui.b().a(this.f39150b, cVar, view);
    }

    private void a(String str, Context context, View view, int i11, Map map, CampaignEx campaignEx) {
        String strA = z0.a(str, "cltp");
        String strA2 = z0.a(str, "xt");
        long j11 = !TextUtils.isEmpty(strA) ? Long.parseLong(strA) : 0L;
        if (j11 != 0) {
            if (map != null && map.containsKey("is_dy_success")) {
                f39148m = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            TextView textView = (TextView) view.findViewById(a(f39148m, "mbridge_choice_one_countdown_tv"));
            if (textView != null) {
                textView.setTextSize(11.0f);
                textView.setTextColor(Color.parseColor(this.f39152d));
                String str2 = this.f39153e;
                com.mbridge.msdk.video.dynview.util.drawable.a.a(textView, 1, 12, str2, str2);
                textView.setVisibility(0);
                textView.setOnClickListener(new k(campaignEx, map));
                this.f39157i = new C0565a(textView, strA2, campaignEx, map);
                com.mbridge.msdk.video.dynview.util.time.b bVarA = new com.mbridge.msdk.video.dynview.util.time.b().b(j11 * 1000).a(1000L).a(this.f39157i);
                this.f39149a = bVarA;
                bVarA.c();
            }
            ImageView imageView = (ImageView) view.findViewById(a(f39148m, "mbridge_iv_link"));
            if (campaignEx == null) {
                return;
            }
            if (campaignEx.getAdchoice() != null) {
                campaignEx.getAdchoice().g("");
            }
            t0.a(4, imageView, campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), false, new b());
        }
    }

    private void a(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            return;
        }
        a(imageView, str, -1);
    }

    private void a(String str, ImageView imageView, com.mbridge.msdk.video.dynview.c cVar, View view) {
        com.mbridge.msdk.foundation.same.image.b.a(imageView.getContext()).a(str, new j(imageView, str, cVar, view));
        try {
            Bitmap bitmapA = a();
            if (bitmapA == null || bitmapA.isRecycled()) {
                return;
            }
            b(cVar, view);
        } catch (Exception e11) {
            o0.b("DataEnergizeWrapper", e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map map) {
        if (map != null) {
            try {
                if (map.containsKey("order_view_callback") && (map.get("order_view_callback") instanceof com.mbridge.msdk.video.dynview.listener.c)) {
                    ((com.mbridge.msdk.video.dynview.listener.c) map.get("order_view_callback")).close();
                    b();
                }
            } catch (Exception e11) {
                o0.b("DataEnergizeWrapper", e11.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map map, List<CampaignEx> list, int i11) {
        if (map == null || list == null || list.size() <= 1) {
            return;
        }
        if (!map.containsKey("choice_one_callback") || !(map.get("choice_one_callback") instanceof com.mbridge.msdk.video.dynview.listener.d)) {
            if (map.containsKey("order_view_callback") && (map.get("order_view_callback") instanceof com.mbridge.msdk.video.dynview.listener.c)) {
                com.mbridge.msdk.video.dynview.listener.c cVar = (com.mbridge.msdk.video.dynview.listener.c) map.get("order_view_callback");
                if (cVar != null) {
                    cVar.a(list.get(i11), i11);
                }
                b();
                return;
            }
            return;
        }
        com.mbridge.msdk.video.dynview.listener.d dVar = (com.mbridge.msdk.video.dynview.listener.d) map.get("choice_one_callback");
        if (dVar != null) {
            dVar.a(list.get(i11));
            try {
                CampaignEx campaignEx = list.get(i11);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("click", "0");
                eVar.a(EventConstants.KEY_TIME, Long.valueOf(this.f39156h));
                eVar.a("choose_cid", campaignEx.getId());
                eVar.a(RequestParameters.POSITION, Integer.valueOf(i11));
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "choseFromTwoSelect");
                com.mbridge.msdk.video.module.report.a.a("2000103", campaignEx, eVar);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
        b();
    }

    private void b() {
        com.mbridge.msdk.video.dynview.util.draw.a.a().b();
        com.mbridge.msdk.video.dynview.util.time.b bVar = this.f39149a;
        if (bVar != null) {
            bVar.a();
            this.f39149a = null;
        }
        com.mbridge.msdk.video.dynview.energize.a.a().f39010a = null;
        if (this.f39160l != null) {
            this.f39160l = null;
        }
        Map<String, Bitmap> map = this.f39150b;
        if (map != null) {
            if (map.entrySet() != null) {
                try {
                    Iterator<Map.Entry<String, Bitmap>> it = this.f39150b.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<String, Bitmap> next = it.next();
                        if (next != null && next.getValue() != null && !next.getValue().isRecycled()) {
                            next.getValue().recycle();
                        }
                        it.remove();
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            this.f39150b.clear();
        }
    }

    private void b(com.mbridge.msdk.video.dynview.c cVar, View view) {
        com.mbridge.msdk.video.dynview.shape.a.b bVarA = com.mbridge.msdk.video.dynview.shape.a.a();
        bVarA.a(cVar.h()).a(true);
        if (cVar.h() != 2 || cVar.m() > cVar.k()) {
            bVarA.b(cVar.m()).a(cVar.k());
        } else {
            bVarA.b(cVar.k()).a(cVar.m());
        }
        if (view.getBackground() == null) {
            view.setBackground(bVarA.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Map map) {
        if (map != null) {
            try {
                if (map.containsKey("choice_one_callback") && (map.get("choice_one_callback") instanceof com.mbridge.msdk.video.dynview.listener.d)) {
                    ((com.mbridge.msdk.video.dynview.listener.d) map.get("choice_one_callback")).a();
                    b();
                }
            } catch (Exception e11) {
                o0.b("DataEnergizeWrapper", e11.getMessage());
            }
        }
    }

    public void a(com.mbridge.msdk.video.dynview.c cVar, View view, com.mbridge.msdk.video.dynview.listener.e eVar) {
        if (eVar == null) {
            return;
        }
        if (cVar == null) {
            eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_VIEWOPTION);
            return;
        }
        try {
            ImageView imageView = (ImageView) view.findViewById(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_iv_adbanner_bg", "id"));
            if (imageView != null) {
                imageView.setBackgroundColor(Color.parseColor(this.f39155g));
            }
            ImageView imageView2 = (ImageView) view.findViewById(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_iv_adbanner", "id"));
            if (imageView2 != null) {
                imageView2.setBackgroundColor(Color.parseColor(this.f39155g));
            }
            eVar.a(view, new ArrayList());
        } catch (Exception e11) {
            o0.a("DataEnergizeWrapper", e11.getMessage());
            eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_VIEWOPTION);
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0202  */
    /* JADX WARN: Code duplicated, block: B:54:0x020e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0217  */
    /* JADX WARN: Code duplicated, block: B:58:0x0221  */
    /* JADX WARN: Code duplicated, block: B:59:0x0229  */
    /* JADX WARN: Code duplicated, block: B:61:0x0230  */
    /* JADX WARN: Code duplicated, block: B:63:0x023a  */
    /* JADX WARN: Code duplicated, block: B:65:0x0256  */
    /* JADX WARN: Code duplicated, block: B:67:0x025c  */
    /* JADX WARN: Code duplicated, block: B:69:0x0266  */
    /* JADX WARN: Code duplicated, block: B:70:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:72:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:74:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:76:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:79:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:82:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:85:0x0305  */
    /* JADX WARN: Code duplicated, block: B:87:0x030e  */
    /* JADX WARN: Code duplicated, block: B:89:0x0322  */
    /* JADX WARN: Code duplicated, block: B:91:0x0337  */
    /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
    public void a(com.mbridge.msdk.video.dynview.c cVar, View view, Map map, com.mbridge.msdk.video.dynview.listener.e eVar) {
        CampaignEx campaignEx;
        CampaignEx campaignEx2;
        RoundImageView roundImageView;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        Context context;
        MBRotationView mBRotationView;
        ImageView imageView4;
        MBridgeImageView mBridgeImageView;
        ImageView imageView5;
        ImageView imageView6;
        TextView textView;
        int i11;
        int i12;
        ImageView imageView7;
        TextView textView2;
        ImageView imageView8;
        if (this.f39150b == null) {
            this.f39150b = new HashMap();
        }
        List<CampaignEx> listB = cVar.b();
        if (view == null) {
            eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_ROOTVIEW);
            return;
        }
        Context context2 = view.getContext();
        if (context2 == null) {
            eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_CONTEXT);
            return;
        }
        if (listB == null || listB.size() <= 1) {
            campaignEx = null;
            campaignEx2 = null;
        } else {
            CampaignEx campaignEx3 = listB.get(0);
            campaignEx3.setShowIndex(com.mbridge.msdk.foundation.same.report.metrics.a.f35573a);
            campaignEx = listB.get(1);
            campaignEx.setShowIndex(com.mbridge.msdk.foundation.same.report.metrics.a.f35574b);
            campaignEx2 = campaignEx3;
        }
        if (campaignEx2 == null && eVar != null) {
            eVar.a(com.mbridge.msdk.video.dynview.error.a.CAMPAIGNEX_IS_NULL);
            return;
        }
        if (campaignEx == null && eVar != null) {
            eVar.a(com.mbridge.msdk.video.dynview.error.a.CAMPAIGNEX_IS_NULL);
            return;
        }
        if (map != null && map.containsKey("is_dy_success")) {
            f39148m = ((Boolean) map.get("is_dy_success")).booleanValue();
        }
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(a(f39148m, "mbridge_top_item_rl"));
        MBridgeImageView mBridgeImageView2 = (MBridgeImageView) view.findViewById(a(f39148m, "mbridge_top_iv"));
        MBRotationView mBRotationView2 = (MBRotationView) view.findViewById(a(f39148m, "mbridge_top_ration"));
        TextView textView3 = (TextView) view.findViewById(a(f39148m, "mbridge_top_title_tv"));
        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(a(f39148m, "mbridge_bottom_item_rl"));
        MBRotationView mBRotationView3 = (MBRotationView) view.findViewById(a(f39148m, "mbridge_bottom_ration"));
        MBridgeImageView mBridgeImageView3 = (MBridgeImageView) view.findViewById(a(f39148m, "mbridge_bottom_iv"));
        boolean z10 = f39148m;
        if (z10) {
            imageView2 = (MBCusRoundImageView) view.findViewById(a(z10, "mbridge_top_icon_iv"));
            imageView3 = (MBCusRoundImageView) view.findViewById(a(f39148m, "mbridge_bottom_icon_iv"));
            roundImageView = null;
            imageView = null;
        } else {
            roundImageView = (RoundImageView) view.findViewById(a(z10, "mbridge_top_icon_iv"));
            imageView = (RoundImageView) view.findViewById(a(f39148m, "mbridge_bottom_icon_iv"));
            imageView2 = null;
            imageView3 = null;
        }
        ImageView imageView9 = imageView2;
        TextView textView4 = (TextView) view.findViewById(a(f39148m, "mbridge_bottom_title_tv"));
        ImageView imageView10 = (ImageView) view.findViewById(a(f39148m, "mbridge_reward_choice_one_like_iv"));
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new d(map, listB));
        }
        if (mBridgeImageView2 != null) {
            imageView5 = imageView;
            context = context2;
            mBRotationView = mBRotationView3;
            imageView4 = imageView10;
            mBridgeImageView = mBridgeImageView3;
            imageView6 = imageView9;
            textView = textView4;
            mBridgeImageView2.setCustomBorder(20, 20, 0, 0, 10, ViewCompat.MEASURED_STATE_MASK);
            a(campaignEx2.getImageUrl(), mBridgeImageView2, cVar, view);
            if (mBRotationView2 != null) {
                if (!campaignEx2.getCanStart2C1Anim()) {
                    i11 = 0;
                    mBRotationView2.setWidthRatio(1.0f);
                    mBRotationView2.setHeightRatio(1.0f);
                    mBRotationView2.setAutoscroll(false);
                } else if (TextUtils.isEmpty(campaignEx2.getIconUrl())) {
                    mBRotationView2.setWidthRatio(1.0f);
                    mBRotationView2.setHeightRatio(1.0f);
                    i11 = 0;
                    mBRotationView2.setAutoscroll(false);
                } else {
                    ImageView imageView11 = new ImageView(cVar.c());
                    imageView11.setLayoutParams(new FrameLayout.LayoutParams(-1, t0.a(cVar.c(), 200.0f)));
                    imageView11.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    mBRotationView2.addView(imageView11);
                    a(campaignEx2.getIconUrl(), imageView11);
                    mBRotationView2.setWidthRatio(0.45f);
                    mBRotationView2.setHeightRatio(0.9f);
                    mBRotationView2.setAutoscroll(true);
                }
            }
            if (roundImageView != null) {
                roundImageView.setType(i11);
                a(campaignEx2.getIconUrl(), roundImageView);
            }
            if (imageView6 != null) {
                a(campaignEx2.getIconUrl(), imageView6);
            }
            if (textView3 != null) {
                if (TextUtils.isEmpty(campaignEx2.getAppName())) {
                    textView3.setVisibility(8);
                } else {
                    textView3.setText(campaignEx2.getAppName());
                }
            }
            if (relativeLayout2 != null) {
                relativeLayout2.setOnClickListener(new e(map, listB));
            }
            if (mBridgeImageView != null) {
                mBridgeImageView.setCustomBorder(20, 20, 0, 0, 10, ViewCompat.MEASURED_STATE_MASK);
                a(campaignEx.getImageUrl(), mBridgeImageView, cVar, view);
                if (mBRotationView != null) {
                    if (campaignEx.getCanStart2C1Anim()) {
                        if (TextUtils.isEmpty(campaignEx.getIconUrl())) {
                            MBRotationView mBRotationView4 = mBRotationView;
                            mBRotationView4.setWidthRatio(1.0f);
                            mBRotationView4.setHeightRatio(1.0f);
                            i12 = 0;
                            mBRotationView4.setAutoscroll(false);
                        } else {
                            ImageView imageView12 = new ImageView(cVar.c());
                            imageView12.setLayoutParams(new FrameLayout.LayoutParams(-1, t0.a(cVar.c(), 200.0f)));
                            imageView12.setScaleType(ImageView.ScaleType.CENTER_CROP);
                            MBRotationView mBRotationView5 = mBRotationView;
                            mBRotationView5.addView(imageView12);
                            a(campaignEx.getIconUrl(), imageView12);
                            mBRotationView5.setWidthRatio(0.45f);
                            mBRotationView5.setHeightRatio(0.9f);
                            mBRotationView5.setAutoscroll(true);
                            i12 = 0;
                        }
                        if (imageView5 != 0) {
                            imageView5.setType(i12);
                            a(campaignEx.getIconUrl(), imageView5);
                        }
                        imageView7 = imageView3;
                        if (imageView7 != null) {
                            a(campaignEx.getIconUrl(), imageView7);
                        }
                        textView2 = textView;
                        if (textView2 != null) {
                            textView2.setText(campaignEx.getAppName());
                        }
                        a(campaignEx2.getCMPTEntryUrl(), context, view, cVar.h(), map, campaignEx2);
                        imageView8 = imageView4;
                        if (imageView8 != null) {
                            if (cVar.h() == 1) {
                                Context context3 = context;
                                imageView8.setImageResource(g0.a(context3.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context3, 1), "drawable"));
                            } else {
                                Context context4 = context;
                                imageView8.setImageResource(g0.a(context4.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context4, 2), "drawable"));
                            }
                        }
                        if (eVar != null) {
                            eVar.a(view, null);
                        }
                    }
                    MBRotationView mBRotationView6 = mBRotationView;
                    i12 = 0;
                    mBRotationView6.setWidthRatio(1.0f);
                    mBRotationView6.setHeightRatio(1.0f);
                    mBRotationView6.setAutoscroll(false);
                }
                if (imageView5 != 0) {
                    imageView5.setType(i12);
                    a(campaignEx.getIconUrl(), imageView5);
                }
                imageView7 = imageView3;
                if (imageView7 != null) {
                    a(campaignEx.getIconUrl(), imageView7);
                }
                textView2 = textView;
                if (textView2 != null) {
                    textView2.setText(campaignEx.getAppName());
                }
                a(campaignEx2.getCMPTEntryUrl(), context, view, cVar.h(), map, campaignEx2);
                imageView8 = imageView4;
                if (imageView8 != null) {
                    if (cVar.h() == 1) {
                        Context context5 = context;
                        imageView8.setImageResource(g0.a(context5.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context5, 1), "drawable"));
                    } else {
                        Context context6 = context;
                        imageView8.setImageResource(g0.a(context6.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context6, 2), "drawable"));
                    }
                }
                if (eVar != null) {
                    eVar.a(view, null);
                }
            }
            i12 = 0;
            if (imageView5 != 0) {
                imageView5.setType(i12);
                a(campaignEx.getIconUrl(), imageView5);
            }
            imageView7 = imageView3;
            if (imageView7 != null) {
                a(campaignEx.getIconUrl(), imageView7);
            }
            textView2 = textView;
            if (textView2 != null) {
                textView2.setText(campaignEx.getAppName());
            }
            a(campaignEx2.getCMPTEntryUrl(), context, view, cVar.h(), map, campaignEx2);
            imageView8 = imageView4;
            if (imageView8 != null) {
                if (cVar.h() == 1) {
                    Context context7 = context;
                    imageView8.setImageResource(g0.a(context7.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context7, 1), "drawable"));
                } else {
                    Context context8 = context;
                    imageView8.setImageResource(g0.a(context8.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context8, 2), "drawable"));
                }
            }
            if (eVar != null) {
                eVar.a(view, null);
            }
        }
        context = context2;
        mBRotationView = mBRotationView3;
        imageView4 = imageView10;
        mBridgeImageView = mBridgeImageView3;
        imageView5 = imageView;
        imageView6 = imageView9;
        textView = textView4;
        i11 = 0;
        if (roundImageView != null) {
            roundImageView.setType(i11);
            a(campaignEx2.getIconUrl(), roundImageView);
        }
        if (imageView6 != null) {
            a(campaignEx2.getIconUrl(), imageView6);
        }
        if (textView3 != null) {
            if (TextUtils.isEmpty(campaignEx2.getAppName())) {
                textView3.setText(campaignEx2.getAppName());
            } else {
                textView3.setVisibility(8);
            }
        }
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new e(map, listB));
        }
        if (mBridgeImageView != null) {
            mBridgeImageView.setCustomBorder(20, 20, 0, 0, 10, ViewCompat.MEASURED_STATE_MASK);
            a(campaignEx.getImageUrl(), mBridgeImageView, cVar, view);
            if (mBRotationView != null) {
                if (campaignEx.getCanStart2C1Anim()) {
                    if (TextUtils.isEmpty(campaignEx.getIconUrl())) {
                        ImageView imageView13 = new ImageView(cVar.c());
                        imageView13.setLayoutParams(new FrameLayout.LayoutParams(-1, t0.a(cVar.c(), 200.0f)));
                        imageView13.setScaleType(ImageView.ScaleType.CENTER_CROP);
                        MBRotationView mBRotationView7 = mBRotationView;
                        mBRotationView7.addView(imageView13);
                        a(campaignEx.getIconUrl(), imageView13);
                        mBRotationView7.setWidthRatio(0.45f);
                        mBRotationView7.setHeightRatio(0.9f);
                        mBRotationView7.setAutoscroll(true);
                        i12 = 0;
                    } else {
                        MBRotationView mBRotationView8 = mBRotationView;
                        mBRotationView8.setWidthRatio(1.0f);
                        mBRotationView8.setHeightRatio(1.0f);
                        i12 = 0;
                        mBRotationView8.setAutoscroll(false);
                    }
                    if (imageView5 != 0) {
                        imageView5.setType(i12);
                        a(campaignEx.getIconUrl(), imageView5);
                    }
                    imageView7 = imageView3;
                    if (imageView7 != null) {
                        a(campaignEx.getIconUrl(), imageView7);
                    }
                    textView2 = textView;
                    if (textView2 != null) {
                        textView2.setText(campaignEx.getAppName());
                    }
                    a(campaignEx2.getCMPTEntryUrl(), context, view, cVar.h(), map, campaignEx2);
                    imageView8 = imageView4;
                    if (imageView8 != null) {
                        if (cVar.h() == 1) {
                            Context context9 = context;
                            imageView8.setImageResource(g0.a(context9.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context9, 1), "drawable"));
                        } else {
                            Context context10 = context;
                            imageView8.setImageResource(g0.a(context10.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context10, 2), "drawable"));
                        }
                    }
                    if (eVar != null) {
                        eVar.a(view, null);
                    }
                }
                MBRotationView mBRotationView9 = mBRotationView;
                i12 = 0;
                mBRotationView9.setWidthRatio(1.0f);
                mBRotationView9.setHeightRatio(1.0f);
                mBRotationView9.setAutoscroll(false);
            }
            if (imageView5 != 0) {
                imageView5.setType(i12);
                a(campaignEx.getIconUrl(), imageView5);
            }
            imageView7 = imageView3;
            if (imageView7 != null) {
                a(campaignEx.getIconUrl(), imageView7);
            }
            textView2 = textView;
            if (textView2 != null) {
                textView2.setText(campaignEx.getAppName());
            }
            a(campaignEx2.getCMPTEntryUrl(), context, view, cVar.h(), map, campaignEx2);
            imageView8 = imageView4;
            if (imageView8 != null) {
                if (cVar.h() == 1) {
                    Context context11 = context;
                    imageView8.setImageResource(g0.a(context11.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context11, 1), "drawable"));
                } else {
                    Context context12 = context;
                    imageView8.setImageResource(g0.a(context12.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context12, 2), "drawable"));
                }
            }
            if (eVar != null) {
                eVar.a(view, null);
            }
        }
        i12 = 0;
        if (imageView5 != 0) {
            imageView5.setType(i12);
            a(campaignEx.getIconUrl(), imageView5);
        }
        imageView7 = imageView3;
        if (imageView7 != null) {
            a(campaignEx.getIconUrl(), imageView7);
        }
        textView2 = textView;
        if (textView2 != null) {
            textView2.setText(campaignEx.getAppName());
        }
        a(campaignEx2.getCMPTEntryUrl(), context, view, cVar.h(), map, campaignEx2);
        imageView8 = imageView4;
        if (imageView8 != null) {
            if (cVar.h() == 1) {
                Context context13 = context;
                imageView8.setImageResource(g0.a(context13.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context13, 1), "drawable"));
            } else {
                Context context14 = context;
                imageView8.setImageResource(g0.a(context14.getApplicationContext(), com.mbridge.msdk.video.dynview.util.a.a(context14, 2), "drawable"));
            }
        }
        if (eVar != null) {
            eVar.a(view, null);
        }
    }

    public void b(com.mbridge.msdk.video.dynview.c cVar, View view, Map map, com.mbridge.msdk.video.dynview.listener.e eVar) {
        if (eVar == null) {
            return;
        }
        if (cVar == null) {
            eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_VIEWOPTION);
            return;
        }
        if (map != null && map.containsKey("is_dy_success")) {
            f39148m = ((Boolean) map.get("is_dy_success")).booleanValue();
        }
        boolean z10 = f39148m;
        LinearLayout linearLayout = z10 ? (LinearLayout) view.findViewById(a(z10, "mbridge_reward_heat_mllv")) : null;
        ImageView imageView = (ImageView) view.findViewById(a(f39148m, "mbridge_reward_icon_riv"));
        TextView textView = (TextView) view.findViewById(a(f39148m, "mbridge_reward_title_tv"));
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(a(f39148m, "mbridge_reward_stars_mllv"));
        TextView textView2 = (TextView) view.findViewById(a(f39148m, "mbridge_reward_click_tv"));
        ImageView imageView2 = (ImageView) view.findViewById(a(f39148m, "mbridge_videoview_bg"));
        TextView textView3 = (TextView) view.findViewById(a(f39148m, "mbridge_reward_desc_tv"));
        View view2 = (RelativeLayout) view.findViewById(a(f39148m, "mbridge_reward_bottom_layout"));
        List<View> arrayList = new ArrayList<>();
        List<CampaignEx> listB = cVar.b();
        if (listB == null || listB.size() <= 0) {
            eVar.a(com.mbridge.msdk.video.dynview.error.a.CAMPAIGNEX_IS_NULL);
            return;
        }
        CampaignEx campaignEx = listB.get(0);
        if (campaignEx == null) {
            eVar.a(com.mbridge.msdk.video.dynview.error.a.CAMPAIGNEX_IS_NULL);
            return;
        }
        if (imageView != null) {
            if (!f39148m) {
                ((RoundImageView) imageView).setBorderRadius(10);
            } else if (imageView instanceof MBCusRoundImageView) {
                ((MBCusRoundImageView) imageView).setCustomBorder(30, 30, 30, 30, 10, -1);
            }
            a(campaignEx.getIconUrl(), imageView);
        }
        if (textView != null) {
            textView.setText(campaignEx.getAppName());
        }
        if (textView3 != null) {
            textView3.setText(campaignEx.getAppDesc());
        }
        if (linearLayout2 != null) {
            double rating = campaignEx.getRating();
            if (rating <= 0.0d) {
                rating = 5.0d;
            }
            if (f39148m) {
                if (linearLayout2 instanceof MBStarLevelLayoutView) {
                    MBStarLevelLayoutView mBStarLevelLayoutView = (MBStarLevelLayoutView) linearLayout2;
                    mBStarLevelLayoutView.setRating((int) rating);
                    mBStarLevelLayoutView.setOrientation(0);
                }
                if (linearLayout instanceof MBHeatLevelLayoutView) {
                    ((MBHeatLevelLayoutView) linearLayout).setHeatCount(campaignEx.getNumberRating());
                }
            } else {
                ((MBridgeLevelLayoutView) linearLayout2).setRatingAndUser(rating, campaignEx.getNumberRating());
            }
        }
        if (textView2 != null) {
            textView2.setText(campaignEx.getAdCall());
        }
        int iL = cVar.l();
        if (iL == 102 || iL == 202 || iL == 302) {
            if (textView2 != null) {
                arrayList.add(textView2);
            }
        } else if (iL == 802) {
            if (imageView != null) {
                arrayList.add(imageView);
            }
            if (textView2 != null) {
                arrayList.add(textView2);
            }
            a(imageView2, campaignEx.getImageUrl(), iL);
        } else if (iL != 902) {
            if (iL != 904) {
                if (iL == 5002010) {
                    if (cVar.p() && view2 != null && view2.getVisibility() == 0) {
                        arrayList.add(view2);
                    } else {
                        if (imageView != null) {
                            arrayList.add(imageView);
                        }
                        if (textView2 != null) {
                            arrayList.add(textView2);
                        }
                    }
                }
            } else if (cVar.p()) {
                arrayList.add(view);
            }
        } else if (TextUtils.isEmpty(cVar.n()) || !cVar.n().equals("dsp") || !TextUtils.isEmpty(campaignEx.getClickURL())) {
            arrayList.add(view);
        }
        eVar.a(view, arrayList);
    }

    public void c(com.mbridge.msdk.video.dynview.c cVar, View view, Map map, com.mbridge.msdk.video.dynview.listener.e eVar) {
        try {
            if (this.f39150b == null) {
                this.f39150b = new HashMap();
            }
            List<CampaignEx> listB = cVar.b();
            if (view.getContext() == null) {
                eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_CONTEXT);
                return;
            }
            if (map != null && map.containsKey("is_dy_success")) {
                f39148m = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            for (CampaignEx campaignEx : listB) {
                if (campaignEx != null) {
                    campaignEx.setECTemplateRenderSucc(f39148m);
                }
            }
            ListView listView = (ListView) view.findViewById(a(f39148m, "mbridge_order_view_lv"));
            GridView gridView = (GridView) view.findViewById(a(f39148m, "mbridge_order_view_h_lv"));
            ImageView imageView = (ImageView) view.findViewById(a(f39148m, "mbridge_order_view_iv_close"));
            com.mbridge.msdk.video.dynview.ordercamp.adapter.a aVar = new com.mbridge.msdk.video.dynview.ordercamp.adapter.a(listB);
            if (cVar.h() == 1) {
                if (listView != null) {
                    a(listView, cVar);
                    listView.setAdapter((ListAdapter) aVar);
                    listView.setOnItemClickListener(new f(map, listB));
                }
            } else if (gridView != null) {
                int iM = (int) cVar.m();
                int size = iM / listB.size();
                int i11 = size / 9;
                int i12 = i11 / 2;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) gridView.getLayoutParams();
                layoutParams.width = iM - (i11 * 2);
                gridView.setLayoutParams(layoutParams);
                gridView.setColumnWidth((size - i11) - (i12 / 2));
                gridView.setHorizontalSpacing(i12);
                gridView.setStretchMode(0);
                gridView.setNumColumns(listB.size());
                gridView.setAdapter((ListAdapter) aVar);
                gridView.setOnItemClickListener(new g(map, listB));
            }
            if (imageView != null) {
                imageView.setOnClickListener(new h(map));
            }
            if (eVar != null) {
                eVar.a(view, null);
            }
        } catch (Exception unused) {
            if (eVar != null) {
                eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_VIEWOPTION);
            }
        }
    }
}
