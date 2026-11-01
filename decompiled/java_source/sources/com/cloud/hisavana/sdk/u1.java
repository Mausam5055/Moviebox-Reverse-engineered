package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class u1 extends o0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u1(Activity activity, View rootView, g4 helper) {
        super(activity, rootView, helper);
        Intrinsics.h(activity, "activity");
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(helper, "helper");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(u1 this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        try {
            this$0.f().a(2);
            this$0.f().b(false, null);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(u1 this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        g4 g4VarF = this$0.f();
        if (g4VarF != null) {
            g4VarF.b(false, null);
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
            hSChronometer.setTickStringFormat(hSChronometer.getResources().getString(R$string.reward_before_tip));
            hSChronometer.setFinishedString(hSChronometer.getResources().getString(R$string.reward_after_tip));
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    /* JADX WARN: Code duplicated, block: B:22:0x006b  */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x0054, please report this as an issue */
    @Override // com.cloud.hisavana.sdk.o0
    public void d(AdsDTO adsDTO) {
        String descriptionTxt;
        NativeBean nativeObject;
        TextView textView = (TextView) g().findViewById(R$id.ad_description);
        TextView textView2 = (TextView) g().findViewById(R$id.source_size);
        String strK = com.cloud.hisavana.sdk.common.util.r.f22193a.k(adsDTO);
        String buttonTxt = null;
        if (f().c()) {
            if (!Intrinsics.c(adsDTO != null ? adsDTO.getScale() : null, "9:16")) {
                if (adsDTO != null) {
                    descriptionTxt = null;
                } else {
                    descriptionTxt = null;
                }
                if (!TextUtils.isEmpty(strK)) {
                    descriptionTxt = strK + " · " + descriptionTxt;
                }
                if (textView != null) {
                    textView.setText(descriptionTxt);
                }
            } else if (textView2 != null) {
                textView2.setText(strK);
            }
        } else {
            if (adsDTO != null || (nativeObject = adsDTO.getNativeObject()) == null) {
                descriptionTxt = null;
            } else {
                descriptionTxt = nativeObject.getDescriptionTxt();
            }
            if (!TextUtils.isEmpty(strK)) {
                descriptionTxt = strK + " · " + descriptionTxt;
            }
            if (textView != null) {
                textView.setText(descriptionTxt);
            }
        }
        TextView textView3 = (TextView) g().findViewById(R$id.ad_btn);
        if (textView3 != null) {
            if (adsDTO != null) {
                int installApk = adsDTO.getInstallApk();
                NativeBean nativeObject2 = adsDTO.getNativeObject();
                if (nativeObject2 != null) {
                    buttonTxt = nativeObject2.getButtonTxt(installApk);
                }
            }
            textView3.setText(buttonTxt);
        }
        if (textView3 != null) {
            CharSequence text = textView3.getText();
            textView3.setVisibility((text == null || text.length() <= 0) ? 8 : 0);
        }
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.s1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u1.o(this.f22933a, view);
                }
            });
        }
        View viewFindViewById = g().findViewById(R$id.ad_float_container);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.t1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u1.p(this.f22942a, view);
                }
            });
        }
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void e(boolean z10, DownUpPointBean downUpPointBean, View view) {
        f().a(1);
        f().b(z10, downUpPointBean);
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void h() {
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void i() {
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void j() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0076, code lost:
    
        if (r1.length() > 0) goto L26;
     */
    @Override // com.cloud.hisavana.sdk.o0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void k() {
        Unit unit;
        if (!f().c()) {
            a().setContentView(R$layout.activity_rewarded_r01);
            return;
        }
        AdsDTO adsDTOF = f().f();
        if (adsDTOF != null) {
            String scale = adsDTOF.getScale();
            if (scale == null || scale.length() == 0) {
                a().setContentView(R$layout.activity_rewarded_r01);
                return;
            }
            int installApk = adsDTOF.getInstallApk();
            NativeBean nativeObject = adsDTOF.getNativeObject();
            if (nativeObject != null) {
                Intrinsics.e(nativeObject);
                String logoUrl = nativeObject.getLogoUrl();
                Intrinsics.g(logoUrl, "getLogoUrl(...)");
                if (logoUrl.length() <= 0) {
                    String titleTxt = nativeObject.getTitleTxt();
                    Intrinsics.g(titleTxt, "getTitleTxt(...)");
                    if (titleTxt.length() <= 0) {
                        String descriptionTxt = nativeObject.getDescriptionTxt();
                        Intrinsics.g(descriptionTxt, "getDescriptionTxt(...)");
                        if (descriptionTxt.length() <= 0) {
                            String buttonTxt = nativeObject.getButtonTxt(installApk);
                            Intrinsics.g(buttonTxt, "getButtonTxt(...)");
                        }
                    }
                }
                if (Intrinsics.c(adsDTOF.getScale(), "9:16")) {
                    f().a(true);
                    a().setContentView(R$layout.activity_rewarded_r01_916);
                } else {
                    a().setContentView(R$layout.activity_rewarded_r01);
                }
                unit = Unit.f67061a;
            }
            a().setContentView(R$layout.activity_rewarded_r01_expose);
            return;
        }
        unit = null;
        if (unit == null) {
            a().setContentView(R$layout.activity_rewarded_r01);
        }
    }

    @Override // com.cloud.hisavana.sdk.o0
    public void l() {
    }
}
