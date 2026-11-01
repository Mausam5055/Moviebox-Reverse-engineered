package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
public final class x1 extends o0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f23076d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f23077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f23078f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f23079g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f23080h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f23081i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f23082j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x1(Activity activity, View rootView, g4 helper) {
        super(activity, rootView, helper);
        Intrinsics.h(activity, "activity");
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(helper, "helper");
        this.f23081i = -1;
        this.f23082j = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(x1 this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.p(null, true);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0023  */
    private final void q(AdsDTO adsDTO) {
        String buttonTxt;
        StoreMarkView storeMarkView;
        NativeBean nativeObject;
        PslinkInfo pslinkInfo;
        NativeBean nativeObject2;
        AdsProtocolBean.Ext ext;
        NativeBean nativeObject3;
        try {
            TextView textView = (TextView) g().findViewById(R$id.ad_btn);
            String descriptionTxt = null;
            descriptionTxt = null;
            String descriptionTxt2 = null;
            dwellTime = null;
            Integer dwellTime = null;
            descriptionTxt = null;
            if (textView != null) {
                if (adsDTO != null) {
                    int installApk = adsDTO.getInstallApk();
                    NativeBean nativeObject4 = adsDTO.getNativeObject();
                    if (nativeObject4 != null) {
                        buttonTxt = nativeObject4.getButtonTxt(installApk);
                    } else {
                        buttonTxt = null;
                    }
                } else {
                    buttonTxt = null;
                }
                textView.setText(buttonTxt);
            }
            if (textView != null) {
                CharSequence text = textView.getText();
                textView.setVisibility((text == null || text.length() <= 0) ? 8 : 0);
            }
            TextView textView2 = (TextView) g().findViewById(R$id.tv_reward_tips);
            ImageView imageView = (ImageView) g().findViewById(R$id.iv_download_app_score);
            TextView textView3 = (TextView) g().findViewById(R$id.ad_description);
            ConstraintLayout constraintLayout = (ConstraintLayout) g().findViewById(R$id.ad_float_container);
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.w1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        x1.n(this.f23045a, view);
                    }
                });
            }
            try {
                storeMarkView = (StoreMarkView) g().findViewById(R$id.ps_mark_view);
            } catch (Throwable unused) {
                storeMarkView = null;
            }
            int i11 = this.f23077e;
            if (i11 == 2) {
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
                if (textView3 != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(com.cloud.hisavana.sdk.common.util.r.f22193a.i((adsDTO == null || (pslinkInfo = adsDTO.getPslinkInfo()) == null) ? null : pslinkInfo.getSourceSize()));
                    sb2.append(" · ");
                    if (adsDTO != null && (nativeObject = adsDTO.getNativeObject()) != null) {
                        descriptionTxt = nativeObject.getDescriptionTxt();
                    }
                    sb2.append(descriptionTxt);
                    textView3.setText(sb2.toString());
                }
                if (textView2 == null) {
                    return;
                }
                textView2.setText(com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.hs_download_reward_pull_new));
                return;
            }
            if (i11 != 3) {
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
                if (textView3 != null) {
                    StringBuilder sb3 = new StringBuilder();
                    v2.a aVar = v2.f23027a;
                    sb3.append(aVar.b(aVar.j(adsDTO)));
                    sb3.append(" · ");
                    if (adsDTO != null && (nativeObject3 = adsDTO.getNativeObject()) != null) {
                        descriptionTxt2 = nativeObject3.getDescriptionTxt();
                    }
                    sb3.append(descriptionTxt2);
                    textView3.setText(sb3.toString());
                }
                if (textView2 == null) {
                    return;
                }
                textView2.setText(com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.hs_download_reward_pull_new));
                return;
            }
            if (storeMarkView != null) {
                storeMarkView.setVisibility(8);
            }
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            if (!f().getIsLandscape()) {
                androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                bVar.q(constraintLayout);
                bVar.o(R$id.ad_btn, 4);
                bVar.t(R$id.ad_btn, 4, R$id.iv_reward_download_bg, 4);
                bVar.Z(R$id.ad_btn, 0.5f);
                bVar.X(R$id.ad_btn, 3, 0);
                bVar.i(constraintLayout);
            }
            if (textView3 != null) {
                StringBuilder sb4 = new StringBuilder();
                v2.a aVar2 = v2.f23027a;
                sb4.append(aVar2.b(aVar2.j(adsDTO)));
                sb4.append(" · ");
                sb4.append((adsDTO == null || (nativeObject2 = adsDTO.getNativeObject()) == null) ? null : nativeObject2.getDescriptionTxt());
                textView3.setText(sb4.toString());
            }
            if (adsDTO != null && (ext = adsDTO.getExt()) != null) {
                dwellTime = ext.getDwellTime();
            }
            int iIntValue = dwellTime == null ? 0 : dwellTime.intValue();
            this.f23079g = iIntValue;
            if (iIntValue <= 0) {
                if (textView2 == null) {
                    return;
                }
                textView2.setText(com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.hs_download_reward_pull_live_no_time));
            } else {
                if (textView2 == null) {
                    return;
                }
                StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                Locale locale = Locale.getDefault();
                String string = com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.hs_download_reward_pull_live);
                Intrinsics.g(string, "getString(...)");
                String str = String.format(locale, string, Arrays.copyOf(new Object[]{Integer.valueOf(this.f23079g)}, 1));
                Intrinsics.g(str, "format(...)");
                textView2.setText(str);
            }
        } catch (Throwable unused2) {
        }
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void b(ImageView imageView, float f11) {
        if (imageView != null) {
            imageView.setImageResource(0.0f == f11 ? R$drawable.hisavana_volume_close : R$drawable.hisavana_volume_open);
        }
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void c(HSChronometer hSChronometer) {
        if (hSChronometer != null) {
            hSChronometer.setTickStringFormat(hSChronometer.getResources().getString(R$string.reward_before_tip_r02));
            hSChronometer.setFinishedString(hSChronometer.getResources().getString(R$string.reward_after_tip_r02));
        }
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void d(AdsDTO adsDTO) {
        com.cloud.hisavana.sdk.common.util.r rVar = com.cloud.hisavana.sdk.common.util.r.f22193a;
        this.f23077e = rVar.d(adsDTO);
        this.f23076d = rVar.c(adsDTO);
        q(adsDTO);
        f().b();
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void e(boolean z10, DownUpPointBean downUpPointBean, View view) {
        if (view != null) {
            o(downUpPointBean, view);
        }
        p(downUpPointBean, false);
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void h() {
        this.f23080h = System.currentTimeMillis();
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void i() {
        if (this.f23078f) {
            this.f23078f = false;
            long jCurrentTimeMillis = ((long) this.f23079g) - ((System.currentTimeMillis() - this.f23080h) / ((long) 1000));
            if (jCurrentTimeMillis <= 0) {
                f().a();
                return;
            }
            this.f23079g = (int) jCurrentTimeMillis;
            TextView textView = (TextView) g().findViewById(R$id.tv_reward_tips);
            if (textView == null) {
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            Locale locale = Locale.getDefault();
            String string = com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.hs_download_reward_pull_live);
            Intrinsics.g(string, "getString(...)");
            String str = String.format(locale, string, Arrays.copyOf(new Object[]{Integer.valueOf(this.f23079g)}, 1));
            Intrinsics.g(str, "format(...)");
            textView.setText(str);
        }
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void j() {
        try {
            View viewFindViewById = g().findViewById(R$id.iv_reward_gift);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            ((ImageView) viewFindViewById).setImageResource(R$drawable.ad_reward_time_gift_done);
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void k() {
        Unit unit;
        if (!f().getIsLandscape()) {
            a().setContentView(R$layout.activity_rewarded_r02);
            return;
        }
        AdsDTO adsDTOF = f().getAdBean();
        if (adsDTOF != null) {
            if (Intrinsics.c(adsDTOF.getScale(), "9:16")) {
                a().setContentView(R$layout.activity_rewarded_r02_916);
            } else {
                a().setContentView(R$layout.activity_rewarded_r02);
            }
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            a().setContentView(R$layout.activity_rewarded_r02);
        }
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void l() {
        Object objM454constructorimpl;
        Object obj;
        Object objM454constructorimpl2;
        if (a7.c.j()) {
            int i11 = this.f23077e;
            if (i11 == 2) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(com.cloud.sdk.commonutil.util.e.a().getString(R$string.hs_reward_claimed_download));
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                obj = Result.m460isFailureimpl(objM454constructorimpl) ? "" : objM454constructorimpl;
                Intrinsics.g(obj, "getOrDefault(...)");
                HSToastUtil.f((String) obj);
                return;
            }
            if (i11 != 3) {
                return;
            }
            try {
                Result.Companion companion3 = Result.INSTANCE;
                objM454constructorimpl2 = Result.m454constructorimpl(com.cloud.sdk.commonutil.util.e.a().getString(R$string.hs_reward_claimed_toast));
            } catch (Throwable th3) {
                Result.Companion companion4 = Result.INSTANCE;
                objM454constructorimpl2 = Result.m454constructorimpl(ResultKt.a(th3));
            }
            obj = Result.m460isFailureimpl(objM454constructorimpl2) ? "" : objM454constructorimpl2;
            Intrinsics.g(obj, "getOrDefault(...)");
            HSToastUtil.f((String) obj);
        }
    }

    public final void o(DownUpPointBean downUpPointBean, View view) {
        Intrinsics.h(view, "view");
        if (downUpPointBean != null) {
            try {
                if (this.f23081i == -1 || this.f23082j == -1) {
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    this.f23081i = iArr[0];
                    this.f23082j = iArr[1];
                }
                if (this.f23081i == -1 || this.f23082j == -1) {
                    return;
                }
                downUpPointBean.setDownX(downUpPointBean.getDownX() + this.f23081i);
                downUpPointBean.setDownY(downUpPointBean.getDownY() + this.f23082j);
            } catch (Throwable th2) {
                e4.b().w("RewardR02SytleImpl", "calculateLocation error: " + th2.getMessage());
            }
        }
    }

    public final void p(DownUpPointBean downUpPointBean, boolean z10) {
        int i11 = this.f23077e;
        if (i11 != 2) {
            if (i11 != 3) {
                f().b(false, downUpPointBean);
                return;
            } else {
                this.f23078f = true;
                f().b(false, downUpPointBean);
                return;
            }
        }
        if (!this.f23076d && !z10) {
            f().a(downUpPointBean);
            return;
        }
        f().d();
        if (z10) {
            f().a(2);
        } else {
            f().a(1);
        }
        f().b(false, downUpPointBean);
        f().e();
    }
}
