package com.mbridge.msdk.video.dynview.ordercamp.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.dycreator.baseview.MBFrameLayout;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBCusRoundImageView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeImageView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeTextView;
import com.mbridge.msdk.dycreator.wrapper.DyAdType;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewCreator;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.image.c;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import java.io.File;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class a extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f39044a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f39045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<CampaignEx> f39046c;

    /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.ordercamp.adapter.a$a, reason: collision with other inner class name */
    class C0558a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f39047a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f39048b;

        C0558a(ImageView imageView, boolean z10) {
            this.f39047a = imageView;
            this.f39048b = z10;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            if (this.f39048b) {
                this.f39047a.setVisibility(8);
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (bitmap.isRecycled()) {
                    return;
                }
                this.f39047a.setImageBitmap(bitmap);
            } catch (Throwable th2) {
                o0.b("OrderCampAdapter", th2.getMessage());
            }
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        RelativeLayout f39050a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        MBRotationView f39051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        MBridgeImageView f39052c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RoundImageView f39053d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f39054e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f39055f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f39056g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f39057h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        MBridgeLevelLayoutView f39058i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        ImageView f39059j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        ImageView f39060k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        MBCusRoundImageView f39061l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        MBCusRoundImageView f39062m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        MBStarLevelLayoutView f39063n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        MBHeatLevelLayoutView f39064o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        MBFrameLayout f39065p;

        b() {
        }
    }

    public a(List<CampaignEx> list) {
        this.f39046c = list;
    }

    private int a(String str) {
        return this.f39044a ? b(str) : c(str);
    }

    private View a() {
        View viewInflate = LayoutInflater.from(com.mbridge.msdk.foundation.controller.c.m().d()).inflate(d("mbridge_order_layout_item"), (ViewGroup) null);
        b bVar = new b();
        this.f39045b = bVar;
        bVar.f39052c = (MBridgeImageView) viewInflate.findViewById(c("mbridge_lv_iv"));
        this.f39045b.f39060k = (ImageView) viewInflate.findViewById(c("mbridge_lv_iv_burl"));
        this.f39045b.f39053d = (RoundImageView) viewInflate.findViewById(c("mbridge_lv_icon_iv"));
        this.f39045b.f39058i = (MBridgeLevelLayoutView) viewInflate.findViewById(c("mbridge_lv_sv_starlevel"));
        this.f39045b.f39051b = (MBRotationView) viewInflate.findViewById(c("mbridge_lv_ration"));
        viewInflate.setTag(this.f39045b);
        return viewInflate;
    }

    private View a(int i11, List<String> list) {
        int iF = k0.F(com.mbridge.msdk.foundation.controller.c.m().d());
        h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        View viewCreateDynamicView = DynamicViewCreator.getInstance().createDynamicView(new DyOption.Builder().campaignEx(this.f39046c.get(i11)).fileDirs(list).dyAdType(DyAdType.REWARD).orientation(iF).adChoiceLink(t0.a(this.f39046c.get(i11))).build());
        if (viewCreateDynamicView != null) {
            this.f39044a = true;
            b bVar = new b();
            this.f39045b = bVar;
            bVar.f39061l = (MBCusRoundImageView) viewCreateDynamicView.findViewById(b("mbridge_lv_iv"));
            this.f39045b.f39060k = (ImageView) viewCreateDynamicView.findViewById(b("mbridge_lv_iv_burl"));
            this.f39045b.f39062m = (MBCusRoundImageView) viewCreateDynamicView.findViewById(b("mbridge_lv_icon_iv"));
            this.f39045b.f39063n = (MBStarLevelLayoutView) viewCreateDynamicView.findViewById(b("mbridge_lv_sv_starlevel"));
            this.f39045b.f39065p = (MBFrameLayout) viewCreateDynamicView.findViewById(b("mbridge_lv_ration"));
            viewCreateDynamicView.setTag(this.f39045b);
        }
        return viewCreateDynamicView;
    }

    private void a(int i11) {
        b bVar = this.f39045b;
        if (bVar != null) {
            if (bVar.f39054e != null) {
                this.f39045b.f39054e.setText(this.f39046c.get(i11).getAppName());
            }
            if (this.f39045b.f39055f != null) {
                this.f39045b.f39055f.setText(this.f39046c.get(i11).getAppDesc());
            }
            if (this.f39045b.f39056g != null) {
                String adCall = this.f39046c.get(i11).getAdCall();
                if (this.f39045b.f39056g instanceof MBridgeTextView) {
                    ((MBridgeTextView) this.f39045b.f39056g).setObjectAnimator(new com.mbridge.msdk.video.dynview.ui.b().a(this.f39045b.f39056g));
                }
                this.f39045b.f39056g.setText(adCall);
            }
            if (this.f39045b.f39059j != null) {
                try {
                    String language = Locale.getDefault().getLanguage();
                    Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                    if (contextD != null) {
                        if (TextUtils.isEmpty(language) || !language.equals("zh")) {
                            this.f39045b.f39059j.setImageDrawable(contextD.getResources().getDrawable(contextD.getResources().getIdentifier("mbridge_reward_flag_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
                        } else {
                            this.f39045b.f39059j.setImageDrawable(contextD.getResources().getDrawable(contextD.getResources().getIdentifier("mbridge_reward_flag_cn", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
                        }
                    }
                } catch (Exception e11) {
                    o0.b("OrderCampAdapter", e11.getMessage());
                }
                t0.a(2, this.f39045b.f39059j, this.f39046c.get(i11), com.mbridge.msdk.foundation.controller.c.m().d(), false, null);
            }
            if (this.f39045b.f39057h != null) {
                try {
                    this.f39045b.f39057h.setText(com.mbridge.msdk.foundation.controller.c.m().d().getResources().getString(com.mbridge.msdk.foundation.controller.c.m().d().getResources().getIdentifier("mbridge_reward_viewed_text_str", "string", com.mbridge.msdk.foundation.controller.c.m().h())));
                    this.f39045b.f39057h.setVisibility(0);
                } catch (Exception e12) {
                    o0.b("OrderCampAdapter", e12.getMessage());
                }
            }
        }
    }

    private void a(int i11, ViewGroup viewGroup) {
        List<CampaignEx> list = this.f39046c;
        if (list == null || this.f39045b == null || list.size() == 0) {
            return;
        }
        MBridgeImageView mBridgeImageView = this.f39045b.f39052c;
        if (mBridgeImageView != null) {
            a(mBridgeImageView, this.f39046c.get(i11).getImageUrl(), false);
        }
        ImageView imageView = this.f39045b.f39060k;
        if (imageView != null) {
            a(imageView, this.f39046c.get(i11).getImageUrl(), false);
        }
        RoundImageView roundImageView = this.f39045b.f39053d;
        if (roundImageView != null) {
            roundImageView.setBorderRadius(25);
            a(this.f39045b.f39053d, this.f39046c.get(i11).getIconUrl(), true);
        }
        double rating = this.f39046c.get(i11).getRating();
        if (rating <= 0.0d) {
            rating = 5.0d;
        }
        MBridgeLevelLayoutView mBridgeLevelLayoutView = this.f39045b.f39058i;
        if (mBridgeLevelLayoutView != null) {
            mBridgeLevelLayoutView.setRatingAndUser(rating, this.f39046c.get(i11).getNumberRating());
            this.f39045b.f39058i.setOrientation(0);
        }
        MBRotationView mBRotationView = this.f39045b.f39051b;
        if (mBRotationView != null) {
            mBRotationView.setWidthRatio(1.0f);
            this.f39045b.f39051b.setHeightRatio(1.0f);
            this.f39045b.f39051b.setAutoscroll(false);
        }
        MBridgeImageView mBridgeImageView2 = this.f39045b.f39052c;
        if (mBridgeImageView2 != null) {
            mBridgeImageView2.setCustomBorder(30, 30, 30, 30, 10, -1728053248);
        }
    }

    private void a(View view) {
        this.f39045b.f39050a = (RelativeLayout) view.findViewById(a("mbridge_lv_item_rl"));
        this.f39045b.f39054e = (TextView) view.findViewById(a("mbridge_lv_title_tv"));
        this.f39045b.f39056g = (TextView) view.findViewById(a("mbridge_lv_tv_install"));
        this.f39045b.f39064o = (MBHeatLevelLayoutView) view.findViewById(a("mbridge_lv_sv_heat_level"));
        this.f39045b.f39055f = (TextView) view.findViewById(a("mbridge_lv_desc_tv"));
        this.f39045b.f39059j = (ImageView) view.findViewById(a("mbridge_iv_flag"));
        this.f39045b.f39057h = (TextView) view.findViewById(a("mbridge_order_viewed_tv"));
    }

    private void a(ImageView imageView, String str, boolean z10) {
        if (imageView == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            com.mbridge.msdk.foundation.same.image.b.a(imageView.getContext()).a(str, new C0558a(imageView, z10));
        } else if (z10) {
            imageView.setVisibility(8);
        }
    }

    private int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }

    private View b(int i11) throws Throwable {
        View viewA;
        String str;
        try {
            List<CampaignEx> list = this.f39046c;
            String cMPTEntryUrl = "";
            if (list == null || list.get(i11) == null) {
                str = "501";
            } else {
                str = this.f39046c.get(i11).getMof_tplid() + "";
                cMPTEntryUrl = this.f39046c.get(i11).getCMPTEntryUrl();
            }
            if (TextUtils.isEmpty(cMPTEntryUrl)) {
                return a();
            }
            int iF = k0.F(com.mbridge.msdk.foundation.controller.c.m().d());
            String strA = x.a(0, str, cMPTEntryUrl);
            if (TextUtils.isEmpty(strA)) {
                return a();
            }
            File file = new File(strA + File.separator + "template_config.json");
            if (file.isFile() && file.exists()) {
                List<String> listA = m0.a(strA, "template_" + str + "_" + iF + "_item");
                if (listA == null) {
                    return a();
                }
                viewA = a(i11, listA);
                return this.f39044a ? viewA : a();
            }
            return a();
        } catch (Exception e11) {
            o0.b("OrderCampAdapter", e11.getMessage());
            viewA = null;
        }
    }

    private void b(int i11, ViewGroup viewGroup) {
        List<CampaignEx> list = this.f39046c;
        if (list == null || this.f39045b == null || list.size() == 0) {
            return;
        }
        MBCusRoundImageView mBCusRoundImageView = this.f39045b.f39061l;
        if (mBCusRoundImageView != null) {
            mBCusRoundImageView.setCustomBorder(30, 30, 30, 30, 10, -1728053248);
            a(this.f39045b.f39061l, this.f39046c.get(i11).getImageUrl(), false);
        }
        ImageView imageView = this.f39045b.f39060k;
        if (imageView != null) {
            a(imageView, this.f39046c.get(i11).getImageUrl(), false);
        }
        MBCusRoundImageView mBCusRoundImageView2 = this.f39045b.f39062m;
        if (mBCusRoundImageView2 != null) {
            mBCusRoundImageView2.setBorder(50, 20, -1);
            a(this.f39045b.f39062m, this.f39046c.get(i11).getIconUrl(), true);
        }
        double rating = this.f39046c.get(i11).getRating();
        if (rating <= 0.0d) {
            rating = 5.0d;
        }
        MBStarLevelLayoutView mBStarLevelLayoutView = this.f39045b.f39063n;
        if (mBStarLevelLayoutView != null) {
            mBStarLevelLayoutView.setRating((int) rating);
            this.f39045b.f39063n.setOrientation(0);
        }
        MBHeatLevelLayoutView mBHeatLevelLayoutView = this.f39045b.f39064o;
        if (mBHeatLevelLayoutView != null) {
            mBHeatLevelLayoutView.setHeatCount(this.f39046c.get(i11).getNumberRating());
        }
    }

    private int c(String str) {
        return g0.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), str, "id");
    }

    public int d(String str) {
        return g0.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<CampaignEx> list = this.f39046c;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.f39046c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i11) {
        List<CampaignEx> list = this.f39046c;
        if (list != null) {
            return list.get(i11);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i11) {
        return i11;
    }

    @Override // android.widget.Adapter
    public View getView(int i11, View view, ViewGroup viewGroup) throws Throwable {
        try {
            if (view == null) {
                view = b(i11);
            } else {
                this.f39045b = (b) view.getTag();
            }
            a(view);
            if (this.f39044a) {
                b(i11, viewGroup);
            } else {
                a(i11, viewGroup);
            }
            a(i11);
        } catch (Exception e11) {
            o0.b("OrderCampAdapter", e11.getMessage());
        }
        return view;
    }
}
