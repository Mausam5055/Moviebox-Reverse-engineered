package com.mbridge.msdk.video.dynview.moffer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.system.NoProGuard;
import com.mbridge.msdk.video.dynview.endcard.expose.OnItemExposeListener;
import com.mbridge.msdk.video.dynview.widget.MBridgeRelativeLayout;
import com.mbridge.msdk.video.dynview.widget.ObservableScrollView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MOfferModel implements NoProGuard {
    private static final String MOF_LOAD_RESULT_CODE_OFFER_LESS_THAN_5 = "12930014";
    private static final String MOF_LOAD_RESULT_FAILED = "2";
    private static final String MOF_LOAD_RESULT_SUCCESS = "1";
    private static final String TAG = "MOfferModel";
    private int admf;
    private int admftm;
    private List<Integer> cacheImpressionReportList;
    private List<Integer> cacheOnlyImpressionReportList;
    private boolean isShowMoreOffer;
    private CampaignUnit mCampaignUnit;
    private Context mContext;
    private LinearLayout mLinearLayout;
    private CampaignEx mMainOfferCampaignEx;
    private com.mbridge.msdk.video.dynview.listener.g mMoreOfferLayoutListener;
    private com.mbridge.msdk.video.module.listener.a mNotifyListener;
    private ObservableScrollView mObservableScrollView;
    private com.mbridge.msdk.foundation.same.net.wrapper.e mParam;
    private String mRid;
    private String mUnitId;
    private MBridgeRelativeLayout viewMofferLayout;
    private final String VALUE_MOF_TYPE = "1";
    private final String VALUE_H5_TYPE = "1";
    private final String VALUE_MOF = "1";
    private final String VALUE_COUNTRY_CODE = "CN";
    private final String VALUE_MOF_VER = "1";
    private final String VALUE_OFF_SET = "0";
    private final String VALUE_CATEGORY = "0";
    private final String VALUE_ONLY_IMPRESSION = "1";
    private final String VALUE_PING_MODE = "1";
    private final String VALUE_HTTP_REQ = "2";
    private final String VALUE_AD_NUM = "20";
    private final String VALUE_TNUM = "20";
    private final String VALUE_API_VERSION = "2.3";
    private final String VALUE_DEFAULT_VIDEO_TEMP_ID = "404";
    private final String K = CampaignEx.JSON_KEY_AD_K;
    private final String MOF_TEST_UID = "mof_testuid";
    private final String MCC = "mcc";
    private final String MOF_UID = "mof_uid";
    private final String MNC = "mnc";
    private final String RV_TID = "rv_tid";
    private final String EC_ID = "ecid";
    private final String TP_LGP = "tplgp";
    private final String V_FMD5 = "v_fmd5";
    private final String I_FMD5 = "i_fmd5";
    private final String APP_ID = "app_id";
    private final String SIGN = TmcConstants.EXTRA_APP_DEV_TOKEN;
    private final String PARENT_UNIT = "parent_unit";
    private final String E = "e";
    private final String MOF_TYPE = "mof_type";
    private final String H5_TYPE = "h5_type";
    private final String MOF = "mof";
    private final String COUNTRY_CODE = "country_code";
    private final String MOF_VER = "mof_ver";
    private final String CRT_CID = "crt_cid";
    private final String CRT_RID = "crt_rid";
    private final String H5_T = "h5_t";
    private final String MOF_T = "mof_t";
    private final String MOF_DATA = "mof_data";
    private final String OFFER_ID = "offer_id";
    private final String OFF_SET = "offset";
    private final String CATEGORY = "category";
    private final String ONLY_IMPRESSION = "only_impression";
    private final String PING_MODE = "ping_mode";
    private final String HTTP_REQ = "http_req";
    private final String AD_NUM = "ad_num";
    private final String TNUM = "tnum";
    private final String API_VERSION = "api_version";
    private final String MOF_DOMAIN = "mof_domain";
    private final String PARENT_ID = "parent_id";
    private final String MOF_PARENT_ID = "mof_parent_id";
    private final String MOF_CALLBACK_DATE = "mcd";
    private final String UC_PARENT_UNIT = "uc_parent_unit";
    private final String DEFAULT_PATH_V3 = "/openapi/ad/v3";
    private final String PARENT_EXCHANGE = "parent_exchange";
    private final String PARENT_AD_TYPE = "parent_ad_type";
    private final String PARENT_TEMPLATE_ID = "parent_template_id";
    private final String ONE_ID = "oneId";
    private final String DY_VIEW = "dy_view";
    private final String MORE_OFFER_DEFAULT_UNIT_ID = "117361";
    private final String MORE_OFFER_DEFAULT_APP_ID = "92762";
    private final String MORE_OFFER_DEFAULT_APP_KEY = "936dcbdd57fe235fd7cf61c2e93da3c4";
    private final String MORE_OFFER_LOAD_SUCCESS = "more offer load success";
    private final String MORE_OFFER_LOAD_FAILED = "more offer load failed";
    private final String MORE_OFFER_SHOW = "more offer show";
    private final String MORE_OFFER_CLICK = "more offer click";
    private final String MORE_OFFER_SHOW_FAILED = "more offer show fail";
    private final String UNIT_ID = MBridgeConstans.PROPERTIES_UNIT_ID;
    private final String R_ID = "r_id";
    private final int DO_ACTION_IMPRESSION = 0;
    private final int DO_ACTION_ONLY_IMPRESSION = 1;
    private volatile boolean hasReportMoreOfferLoad = false;
    private volatile boolean hasReportMoreOfferShow = false;
    private int bitmapSuccessCount = 0;
    private List<Integer> mImpressionId = new ArrayList();
    private int mControlShowSize = 0;
    private boolean isOnlyImpShow = false;
    private boolean mHasReportMofScenes = false;
    private boolean mIsRetry = false;
    private int mFromType = 0;
    private OnItemExposeListener onItemExposeListener = new a();
    private com.mbridge.msdk.video.dynview.moffer.c mMoreOfferShowCallBack = new b();

    class a implements OnItemExposeListener {
        a() {
        }

        @Override // com.mbridge.msdk.video.dynview.endcard.expose.OnItemExposeListener
        public void onItemViewFirstVisible() {
            if (MOfferModel.this.viewMofferLayout == null || !MOfferModel.this.isOnlyImpShow) {
                return;
            }
            if (MOfferModel.this.viewMofferLayout.getVisibility() == 0) {
                try {
                    com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mCampaignUnit, 0, 1, "117361");
                    return;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
            }
            if (MOfferModel.this.cacheOnlyImpressionReportList == null) {
                MOfferModel.this.cacheOnlyImpressionReportList = new ArrayList();
            }
            MOfferModel.this.cacheOnlyImpressionReportList.add(0);
        }

        @Override // com.mbridge.msdk.video.dynview.endcard.expose.OnItemExposeListener
        public void onItemViewVisible(boolean z10, int i11) {
            if (MOfferModel.this.viewMofferLayout == null) {
                return;
            }
            if (MOfferModel.this.viewMofferLayout.getVisibility() != 0) {
                if (MOfferModel.this.cacheImpressionReportList == null) {
                    MOfferModel.this.cacheImpressionReportList = new ArrayList();
                }
                if (MOfferModel.this.cacheImpressionReportList.contains(Integer.valueOf(i11))) {
                    return;
                }
                MOfferModel.this.cacheImpressionReportList.add(Integer.valueOf(i11));
                return;
            }
            if (!MOfferModel.this.hasReportMoreOfferShow) {
                com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), "more offer show", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                MOfferModel.this.hasReportMoreOfferShow = true;
            }
            try {
                com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mCampaignUnit, i11, 0, "117361");
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class b implements com.mbridge.msdk.video.dynview.moffer.c {
        b() {
        }

        @Override // com.mbridge.msdk.video.dynview.moffer.c
        public void a(List<View> list) {
            TextView textView;
            if (MOfferModel.this.viewMofferLayout == null || (textView = (TextView) MOfferModel.this.viewMofferLayout.findViewById(MOfferModel.this.findID("mbridge_reward_end_card_like_tv"))) == null) {
                return;
            }
            textView.setVisibility(0);
        }
    }

    class c extends com.mbridge.msdk.video.dynview.request.abs.a {
        c() {
        }

        @Override // com.mbridge.msdk.video.dynview.request.abs.a
        public void a(int i11, String str) {
            if (MOfferModel.this.mParam == null) {
                com.mbridge.msdk.video.dynview.moffer.a.a().b();
                return;
            }
            try {
                MOfferModel mOfferModel = MOfferModel.this;
                mOfferModel.mUnitId = mOfferModel.mParam.a().get(MBridgeConstans.PROPERTIES_UNIT_ID);
                MOfferModel mOfferModel2 = MOfferModel.this;
                mOfferModel2.mRid = mOfferModel2.mParam.a().get("r_id");
                if (!MOfferModel.this.hasReportMoreOfferLoad) {
                    com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), "more offer load failed errorCode:" + i11 + "errorMsg:" + str, MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                    MOfferModel.this.hasReportMoreOfferLoad = true;
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", "2");
                eVar.a("code", i11 + "");
                if (MOfferModel.this.mIsRetry) {
                    eVar.a("retry", "1");
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mof_req_result", MOfferModel.this.mMainOfferCampaignEx, eVar);
                com.mbridge.msdk.video.dynview.moffer.a.a().b();
            } catch (Exception e11) {
                o0.b(MOfferModel.TAG, e11.getMessage());
                com.mbridge.msdk.video.dynview.moffer.a.a().b();
            }
        }

        @Override // com.mbridge.msdk.video.dynview.request.abs.a
        public void a(List<com.mbridge.msdk.tracker.network.g> list, CampaignUnit campaignUnit) {
            if (MOfferModel.this.mParam == null || campaignUnit == null) {
                com.mbridge.msdk.video.dynview.moffer.a.a().b();
                return;
            }
            try {
                MOfferModel mOfferModel = MOfferModel.this;
                mOfferModel.mUnitId = mOfferModel.mParam.a().get(MBridgeConstans.PROPERTIES_UNIT_ID);
                MOfferModel mOfferModel2 = MOfferModel.this;
                mOfferModel2.mRid = mOfferModel2.mParam.a().get("r_id");
                if (campaignUnit.getAds() == null || campaignUnit.getAds().size() < 5) {
                    if (!MOfferModel.this.hasReportMoreOfferLoad) {
                        com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), "more offer load failed errorCode: -999 errorMsg: The campaign quantity less than 5.", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                        MOfferModel.this.hasReportMoreOfferLoad = true;
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a("result", "2");
                    eVar.a("code", MOfferModel.MOF_LOAD_RESULT_CODE_OFFER_LESS_THAN_5);
                    if (MOfferModel.this.mIsRetry) {
                        eVar.a("retry", "1");
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mof_req_result", MOfferModel.this.mMainOfferCampaignEx, eVar);
                    com.mbridge.msdk.video.dynview.moffer.a.a().b();
                    return;
                }
                MOfferModel.this.mCampaignUnit = campaignUnit;
                if (MOfferModel.this.admf > 0 && MOfferModel.this.admftm == 1) {
                    MOfferModel.this.doControllableImpOnRequest();
                }
                if (!MOfferModel.this.hasReportMoreOfferLoad) {
                    com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), "more offer load success", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                    MOfferModel.this.hasReportMoreOfferLoad = true;
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar2.a("result", "1");
                if (MOfferModel.this.mIsRetry) {
                    eVar2.a("retry", "1");
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mof_req_result", MOfferModel.this.mMainOfferCampaignEx, eVar2);
                MOfferModel.this.createMoreOfferView();
            } catch (Exception e11) {
                o0.b(MOfferModel.TAG, e11.getMessage());
                com.mbridge.msdk.video.dynview.moffer.a.a().b();
            }
        }
    }

    class d implements com.mbridge.msdk.video.dynview.moffer.b {
        d() {
        }

        @Override // com.mbridge.msdk.video.dynview.moffer.b
        public void a() {
            try {
                if (MOfferModel.this.cacheImpressionReportList != null) {
                    for (int i11 = 0; i11 < MOfferModel.this.cacheImpressionReportList.size(); i11++) {
                        if (!MOfferModel.this.hasReportMoreOfferShow) {
                            com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, MOfferModel.this.mContext, "more offer show", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                            MOfferModel.this.hasReportMoreOfferShow = true;
                        }
                        com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mCampaignUnit, ((Integer) MOfferModel.this.cacheImpressionReportList.get(i11)).intValue(), 0, "117361");
                    }
                }
                if (!MOfferModel.this.isOnlyImpShow && MOfferModel.this.cacheOnlyImpressionReportList != null) {
                    for (int i12 = 0; i12 < MOfferModel.this.cacheOnlyImpressionReportList.size(); i12++) {
                        com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mCampaignUnit, ((Integer) MOfferModel.this.cacheOnlyImpressionReportList.get(i12)).intValue(), 1, "117361");
                    }
                }
                MOfferModel.this.release();
            } catch (Exception e11) {
                o0.b(MOfferModel.TAG, e11.getMessage());
            }
        }
    }

    class e implements com.mbridge.msdk.video.dynview.moffer.d {
        e() {
        }

        @Override // com.mbridge.msdk.video.dynview.moffer.d
        public void a() {
            if (MOfferModel.this.viewMofferLayout != null && MOfferModel.this.viewMofferLayout.getVisibility() != 0) {
                com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, MOfferModel.this.mContext, "more offer show fail", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
            }
            MOfferModel.this.release();
        }
    }

    class f implements View.OnTouchListener {
        f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1) {
                return false;
            }
            MOfferModel.this.checkViewVisiableState();
            return false;
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f39027a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f39028b;

        g(int i11, View view) {
            this.f39027a = i11;
            this.f39028b = view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CampaignEx campaignEx;
            try {
                if (MOfferModel.this.mCampaignUnit == null || MOfferModel.this.mCampaignUnit.ads == null || MOfferModel.this.mCampaignUnit.ads.size() <= 0 || (campaignEx = MOfferModel.this.mCampaignUnit.ads.get(this.f39027a)) == null) {
                    return;
                }
                if (MOfferModel.this.mNotifyListener != null) {
                    MOfferModel mOfferModel = MOfferModel.this;
                    mOfferModel.callBackClick(mOfferModel.mNotifyListener);
                }
                com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), "more offer click", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                com.mbridge.msdk.video.dynview.request.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, MOfferModel.this.mUnitId, this.f39028b);
            } catch (Exception e11) {
                o0.b(MOfferModel.TAG, e11.getMessage());
            }
        }
    }

    class h implements com.mbridge.msdk.foundation.same.image.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RoundImageView f39030a;

        h(RoundImageView roundImageView) {
            this.f39030a = roundImageView;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (this.f39030a != null && bitmap != null && !bitmap.isRecycled()) {
                    this.f39030a.setBorderRadius(13);
                    this.f39030a.setImageBitmap(bitmap);
                }
                MOfferModel.access$2208(MOfferModel.this);
                if (MOfferModel.this.isShowMoreOffer || MOfferModel.this.bitmapSuccessCount < 5 || MOfferModel.this.mMoreOfferShowCallBack == null) {
                    return;
                }
                MOfferModel.this.isShowMoreOffer = true;
                MOfferModel.this.mMoreOfferShowCallBack.a(null);
            } catch (Exception e11) {
                o0.b(MOfferModel.TAG, e11.getMessage());
            }
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MOfferModel.this.mObservableScrollView != null) {
                if (MOfferModel.this.mObservableScrollView.getVisibility() == 0) {
                    MOfferModel.this.mObservableScrollView.setVisibility(8);
                } else {
                    MOfferModel.this.mObservableScrollView.setVisibility(0);
                }
            }
            try {
                new com.mbridge.msdk.video.dynview.ui.b().c(MOfferModel.this.mLinearLayout, 300L);
            } catch (Exception e11) {
                o0.b(MOfferModel.TAG, e11.getMessage());
            }
        }
    }

    static /* synthetic */ int access$2208(MOfferModel mOfferModel) {
        int i11 = mOfferModel.bitmapSuccessCount;
        mOfferModel.bitmapSuccessCount = i11 + 1;
        return i11;
    }

    private void addLikeTextView() {
        TextView textView;
        MBridgeRelativeLayout mBridgeRelativeLayout = this.viewMofferLayout;
        if (mBridgeRelativeLayout == null || (textView = (TextView) mBridgeRelativeLayout.findViewById(findID("mbridge_reward_end_card_like_tv"))) == null) {
            return;
        }
        textView.setTextColor(Color.parseColor("#FF000000"));
        textView.setTextSize(10.0f);
        if (k0.p(com.mbridge.msdk.foundation.controller.c.m().d()).contains("zh")) {
            textView.setEms(1);
            textView.getLayoutParams().width = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f);
            textView.setText("猜你喜欢");
        } else {
            textView.setText("Just\nfor\nYou");
        }
        textView.setOnClickListener(new i());
    }

    private View buildItemView(int i11) {
        Context context = this.mContext;
        if (context == null) {
            return null;
        }
        View viewInflate = LayoutInflater.from(this.mContext).inflate(g0.a(context, "mbridge_reward_end_card_more_offer_item", TtmlNode.TAG_LAYOUT), (ViewGroup) null, false);
        int iA = g0.a(this.mContext, "mbridge_reward_end_card_item_iv", "id");
        if (viewInflate == null) {
            return null;
        }
        setOfferData(this.mCampaignUnit.getAds(), i11, (RoundImageView) viewInflate.findViewById(iA), (TextView) viewInflate.findViewById(g0.a(this.mContext, "mbridge_reward_end_card_item_title_tv", "id")));
        viewInflate.setOnClickListener(new g(i11, viewInflate));
        return viewInflate;
    }

    private void buildRequestParams(CampaignEx campaignEx) {
        String strK;
        if (campaignEx == null) {
            return;
        }
        this.mParam = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        String campaignUnitId = campaignEx.getCampaignUnitId();
        String id2 = campaignEx.getId();
        String requestIdNotice = campaignEx.getRequestIdNotice();
        campaignEx.getRequestId();
        String strA = z0.a(campaignEx.getendcard_url(), "mof_testuid");
        if (TextUtils.isEmpty(strA)) {
            strA = z0.a(campaignEx.getendcard_url(), "mof_uid");
        }
        String strB = com.mbridge.msdk.foundation.controller.c.m().b();
        try {
            strK = (TextUtils.isEmpty(strB) || com.mbridge.msdk.setting.h.b().d(strB) == null) ? "CN" : com.mbridge.msdk.setting.h.b().d(strB).k();
        } catch (Exception unused) {
        }
        String strA2 = z0.a(campaignEx.getendcard_url(), "mcc");
        String strA3 = z0.a(campaignEx.getendcard_url(), "mnc");
        String strA4 = z0.a(campaignEx.getendcard_url(), "rv_tid");
        String strA5 = campaignEx.getendcard_url().contains("ecid") ? z0.a(campaignEx.getendcard_url(), "ecid") : String.valueOf(campaignEx.getEcTemplateId());
        String strA6 = z0.a(campaignEx.getendcard_url(), "tplgp");
        String strA7 = z0.a(campaignEx.getendcard_url(), "v_fmd5");
        String strA8 = z0.a(campaignEx.getendcard_url(), "i_fmd5");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "app_id", com.mbridge.msdk.foundation.controller.c.m().b());
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(strB + com.mbridge.msdk.foundation.controller.c.m().c()));
        String str = "";
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "r_id", TextUtils.isEmpty(requestIdNotice) ? "" : requestIdNotice);
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "e", Arrays.toString(new String[]{id2}));
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "mof_type", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "h5_type", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "mof", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "country_code", TextUtils.isEmpty(strK) ? "CN" : strK);
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "mof_ver", "1");
        this.mParam.a("parent_exchange", "");
        int adType = campaignEx.getAdType();
        if (adType == 94) {
            str = "rewarded_video";
        } else if (adType == 287) {
            str = "interstitial_video";
        }
        this.mParam.a("parent_ad_type", str);
        this.mParam.a("oneId", campaignEx.getReq_ext_data());
        if (TextUtils.isEmpty(strA5)) {
            this.mParam.a("parent_template_id", "404");
        } else {
            this.mParam.a("parent_template_id", strA5);
        }
        if (TextUtils.isEmpty(strA)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "uc_parent_unit", campaignUnitId);
        } else {
            com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "parent_unit", campaignUnitId);
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "mnc", strA3);
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "mcc", strA2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("crt_cid", id2);
            jSONObject.put("crt_rid", requestIdNotice);
            jSONObject.put("rv_tid", strA4);
            jSONObject.put("ecid", strA5);
            jSONObject.put("tplgp", strA6);
            jSONObject.put("v_fmd5", strA7);
            jSONObject.put("i_fmd5", strA8);
            jSONObject.put("h5_t", 1);
            jSONObject.put("mof_t", 1);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "mof_data", jSONObject.toString());
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "offer_id", id2);
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "offset", "0");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "category", "0");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "only_impression", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "ping_mode", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "http_req", "2");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "ad_num", "20");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "tnum", "20");
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "api_version", "2.3");
        if (TextUtils.isEmpty(strA)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "app_id", "92762");
            com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5("92762936dcbdd57fe235fd7cf61c2e93da3c4"));
            strA = "117361";
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, MBridgeConstans.PROPERTIES_UNIT_ID, strA);
        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "dy_view", "1");
    }

    private void buildScrollViewGroup() {
        if (this.mContext == null || this.viewMofferLayout == null || this.mMainOfferCampaignEx == null) {
            return;
        }
        this.mLinearLayout = new LinearLayout(this.mContext);
        this.mLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        this.mLinearLayout.setOrientation(0);
        this.mLinearLayout.setGravity(17);
        for (int i11 = 0; i11 < this.mCampaignUnit.ads.size(); i11++) {
            View viewBuildItemView = buildItemView(i11);
            if (viewBuildItemView != null) {
                this.mLinearLayout.addView(viewBuildItemView);
            }
        }
        this.mObservableScrollView.addView(this.mLinearLayout);
        this.mObservableScrollView.setOnTouchListener(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callBackClick(com.mbridge.msdk.video.module.listener.a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.a(128, "");
    }

    private void createMoreOfferList() {
        MBridgeRelativeLayout mBridgeRelativeLayout = this.viewMofferLayout;
        if (mBridgeRelativeLayout == null) {
            return;
        }
        this.mObservableScrollView = (ObservableScrollView) mBridgeRelativeLayout.findViewById(findID("mbridge_moreoffer_hls"));
        buildScrollViewGroup();
        addLikeTextView();
        showView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMoreOfferView() {
        CampaignUnit campaignUnit = this.mCampaignUnit;
        if (campaignUnit == null || this.mContext == null || campaignUnit.getAds() == null || this.mCampaignUnit.getAds().size() == 0) {
            return;
        }
        setMoreOfferLayoutCallBack();
        createMoreOfferList();
    }

    private void doAdmfContorl() {
        JSONObject jSONObject;
        try {
            CampaignEx campaignEx = this.mMainOfferCampaignEx;
            if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getMoreOfferJsonData())) {
                JSONObject jSONObject2 = new JSONObject(this.mMainOfferCampaignEx.getMoreOfferJsonData());
                int i11 = this.mFromType;
                if (i11 != 1) {
                    jSONObject = i11 != 2 ? null : jSONObject2.getJSONObject("endcard_url");
                } else {
                    jSONObject = jSONObject2.getJSONObject("template_url");
                }
                if (jSONObject == null) {
                    return;
                }
                if (jSONObject.has(MBridgeConstans.DYNAMIC_VIEW_MORE_OFFER_ADMFTM)) {
                    this.admftm = jSONObject.getInt(MBridgeConstans.DYNAMIC_VIEW_MORE_OFFER_ADMFTM);
                }
                if (jSONObject.has(MBridgeConstans.DYNAMIC_VIEW_MORE_OFFER_ADMF)) {
                    this.admf = jSONObject.getInt(MBridgeConstans.DYNAMIC_VIEW_MORE_OFFER_ADMF);
                }
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doControllableImpOnRequest() {
        CampaignUnit campaignUnit = this.mCampaignUnit;
        if (campaignUnit == null) {
            return;
        }
        try {
            com.mbridge.msdk.video.dynview.request.a.a(campaignUnit, 0, 1, "117361");
            this.isOnlyImpShow = true;
            if (this.mCampaignUnit.getAds() == null) {
                return;
            }
            int size = this.mCampaignUnit.getAds().size();
            if (this.admf >= size) {
                this.admf = size;
            }
            if (this.mImpressionId == null) {
                this.mImpressionId = new ArrayList();
            }
            for (int i11 = 0; i11 < this.admf; i11++) {
                if (!this.mImpressionId.contains(Integer.valueOf(i11))) {
                    com.mbridge.msdk.video.dynview.request.a.a(this.mCampaignUnit, i11, 0, "117361");
                    this.mImpressionId.add(Integer.valueOf(i11));
                }
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void doControllableImpOnShow(int i11) {
        CampaignUnit campaignUnit = this.mCampaignUnit;
        if (campaignUnit == null || campaignUnit.getAds() == null) {
            return;
        }
        try {
            int size = this.mCampaignUnit.getAds().size();
            if (this.mControlShowSize == 0) {
                this.mControlShowSize = this.admf + i11;
            }
            if (this.mControlShowSize >= size) {
                this.mControlShowSize = size;
            }
            while (i11 < this.mControlShowSize) {
                if (!this.mImpressionId.contains(Integer.valueOf(i11))) {
                    com.mbridge.msdk.video.dynview.request.a.a(this.mCampaignUnit, i11, 0, "117361");
                    this.mImpressionId.add(Integer.valueOf(i11));
                }
                i11++;
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findID(String str) {
        return g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "id");
    }

    private void initData() {
        String str;
        CampaignEx campaignEx = this.mMainOfferCampaignEx;
        if (campaignEx == null || this.mContext == null) {
            return;
        }
        buildRequestParams(campaignEx);
        if (this.mParam == null) {
            return;
        }
        com.mbridge.msdk.video.dynview.request.b bVar = new com.mbridge.msdk.video.dynview.request.b(this.mContext);
        c cVar = new c();
        String str2 = com.mbridge.msdk.foundation.same.net.utils.d.h().Z;
        if (!TextUtils.isEmpty(this.mMainOfferCampaignEx.getReq_ext_data())) {
            try {
                JSONObject jSONObject = new JSONObject(this.mMainOfferCampaignEx.getReq_ext_data());
                String strOptString = jSONObject.optString("mof_domain");
                if (!TextUtils.isEmpty(strOptString)) {
                    str2 = strOptString + "/openapi/ad/v3";
                }
                String strOptString2 = jSONObject.optString("parent_id");
                if (!TextUtils.isEmpty(strOptString2)) {
                    com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "mof_parent_id", strOptString2);
                }
                String strOptString3 = jSONObject.optString("oneId");
                if (!TextUtils.isEmpty(strOptString3)) {
                    com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "oneId", strOptString3);
                }
                String strOptString4 = jSONObject.optString("mcd");
                if (!TextUtils.isEmpty(strOptString4)) {
                    com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "mcd", strOptString4);
                }
                cVar.setUnitId(this.mMainOfferCampaignEx.getCampaignUnitId());
            } catch (Exception e11) {
                o0.b(TAG, e11.getMessage());
                str = com.mbridge.msdk.foundation.same.net.utils.d.h().Z;
            }
        }
        str = str2;
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (this.mIsRetry) {
            eVar.a("retry", "1");
        }
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mof_initiate", this.mMainOfferCampaignEx, eVar);
        bVar.getLoadOrSetting(1, str, this.mParam, cVar, true, "more_offer", 30000L);
        doAdmfContorl();
    }

    private void initView() {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        this.viewMofferLayout = (MBridgeRelativeLayout) LayoutInflater.from(this.mContext).inflate(g0.a(context, "mbridge_reward_more_offer_view", TtmlNode.TAG_LAYOUT), (ViewGroup) null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release() {
        List<Integer> list = this.cacheImpressionReportList;
        if (list != null) {
            list.clear();
            this.cacheImpressionReportList = null;
        }
        List<Integer> list2 = this.cacheOnlyImpressionReportList;
        if (list2 != null) {
            list2.clear();
            this.cacheOnlyImpressionReportList = null;
        }
    }

    private void setCallbackForLogicVisibleView(View view, int i11) {
        if (view == null) {
            return;
        }
        try {
            Rect rect = new Rect();
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
            boolean z10 = rect.width() > view.getMeasuredWidth() / 5;
            if (globalVisibleRect && z10) {
                List<Integer> list = this.mImpressionId;
                if (list != null && this.onItemExposeListener != null) {
                    if (list.contains(Integer.valueOf(i11))) {
                        return;
                    }
                    this.mImpressionId.add(Integer.valueOf(i11));
                    this.onItemExposeListener.onItemViewVisible(true, i11);
                }
            } else if (this.admf != 0) {
                doControllableImpOnShow(i11);
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void setMoreOfferLayoutCallBack() {
        MBridgeRelativeLayout mBridgeRelativeLayout = this.viewMofferLayout;
        if (mBridgeRelativeLayout == null) {
            return;
        }
        mBridgeRelativeLayout.setMoreOfferCacheReportCallBack(new d());
        this.viewMofferLayout.setMoreOfferShowFailedCallBack(new e());
    }

    private void setOfferData(List<CampaignEx> list, int i11, RoundImageView roundImageView, TextView textView) {
        CampaignEx campaignEx;
        if (roundImageView == null || textView == null || list == null || this.mContext == null || this.mMainOfferCampaignEx == null || list.size() <= 0 || (campaignEx = list.get(i11)) == null) {
            return;
        }
        roundImageView.setImageDrawable(null);
        com.mbridge.msdk.foundation.same.image.b.a(this.mContext).a(campaignEx.getIconUrl(), new h(roundImageView));
        if (TextUtils.isEmpty(campaignEx.getAppName())) {
            return;
        }
        String strA = z0.a(this.mMainOfferCampaignEx.getendcard_url(), "mof_textmod");
        if (TextUtils.isEmpty(strA) || !strA.equals("1")) {
            textView.setVisibility(8);
        } else {
            textView.setText(campaignEx.getAppName());
        }
    }

    public void buildMofferAd(CampaignEx campaignEx) {
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        this.mContext = contextD;
        if (contextD == null) {
            return;
        }
        this.mMainOfferCampaignEx = campaignEx;
        initView();
        initData();
    }

    public void checkViewVisiableState() {
        if (this.mLinearLayout == null) {
            return;
        }
        for (int i11 = 0; i11 < this.mLinearLayout.getChildCount(); i11++) {
            try {
                setCallbackForLogicVisibleView(this.mLinearLayout.getChildAt(i11), i11);
            } catch (Exception e11) {
                o0.b(TAG, e11.getMessage());
                return;
            }
        }
    }

    public long getECParentTemplateCode() {
        try {
            com.mbridge.msdk.foundation.same.net.wrapper.e eVar = this.mParam;
            String str = eVar != null ? eVar.a().get("parent_template_id") : "";
            if (TextUtils.isEmpty(str)) {
                return 404L;
            }
            return Long.parseLong(str);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
            return 404L;
        }
    }

    public CampaignEx getmMainOfferCampaignEx() {
        return this.mMainOfferCampaignEx;
    }

    public void mofDestroy() {
        if (this.mMoreOfferLayoutListener != null) {
            this.mMoreOfferLayoutListener = null;
        }
        if (this.onItemExposeListener != null) {
            this.onItemExposeListener = null;
        }
        if (this.mMoreOfferShowCallBack != null) {
            this.mMoreOfferShowCallBack = null;
        }
        if (this.mNotifyListener != null) {
            this.mNotifyListener = null;
        }
    }

    public void setFromType(int i11) {
        this.mFromType = i11;
    }

    public void setIsRetry(boolean z10) {
        this.mIsRetry = z10;
    }

    public void setMoreOfferListener(com.mbridge.msdk.video.dynview.listener.g gVar, com.mbridge.msdk.video.module.listener.a aVar) {
        this.mMoreOfferLayoutListener = gVar;
        this.mNotifyListener = aVar;
    }

    public void showView() {
        CampaignUnit campaignUnit;
        com.mbridge.msdk.video.dynview.listener.g gVar = this.mMoreOfferLayoutListener;
        if (gVar == null) {
            return;
        }
        MBridgeRelativeLayout mBridgeRelativeLayout = this.viewMofferLayout;
        if (mBridgeRelativeLayout == null || (campaignUnit = this.mCampaignUnit) == null) {
            gVar.a(-1, "more Offer create fail");
            return;
        }
        gVar.a(mBridgeRelativeLayout, campaignUnit);
        if (!this.isOnlyImpShow) {
            com.mbridge.msdk.video.dynview.request.a.a(this.mCampaignUnit, 0, 1, "117361");
        }
        if (this.mHasReportMofScenes) {
            return;
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, this.mFromType + "");
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mof_scenes", this.mMainOfferCampaignEx, eVar);
    }
}
