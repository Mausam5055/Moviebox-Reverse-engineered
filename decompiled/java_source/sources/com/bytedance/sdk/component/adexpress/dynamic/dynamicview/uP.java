package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.TextView;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.text.DecimalFormat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class uP extends vS {
    public uP(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.Dq += 6;
        if (this.f20889aa.xD()) {
            com.bytedance.sdk.component.adexpress.vS.Sj sj2 = new com.bytedance.sdk.component.adexpress.vS.Sj(context, this.f20889aa.Jcg(), this.f20889aa.HiB(), 1, this.f20889aa.Dq());
            this.Zq = sj2;
            sj2.setMaxLines(1);
        } else {
            TextView textView = new TextView(context);
            this.Zq = textView;
            textView.setIncludeFontPadding(false);
        }
        this.Zq.setTag(Integer.valueOf(getClickArea()));
        addView(this.Zq, getWidgetLayoutParams());
    }

    private boolean Sj() {
        DynamicRootView dynamicRootView = this.sef;
        return (dynamicRootView == null || dynamicRootView.getRenderRequest() == null || this.sef.getRenderRequest().TEQ() == 4) ? false : true;
    }

    private void TEQ() {
        int iSj;
        if (TextUtils.equals(this.Fmk.TEQ().sP(), EventConstants.KEY_SOURCE) || TextUtils.equals(this.Fmk.TEQ().sP(), CampaignEx.JSON_KEY_TITLE) || TextUtils.equals(this.Fmk.TEQ().sP(), "text_star")) {
            int[] iArrSP = com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym.sP(this.f20889aa.vS(), this.f20889aa.HiB(), true);
            int iSj2 = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), this.f20889aa.sP());
            int iSj3 = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), this.f20889aa.TKC());
            int iSj4 = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), this.f20889aa.EjP());
            int iSj5 = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), this.f20889aa.Sj());
            int iMin = Math.min(iSj2, iSj5);
            if (TextUtils.equals(this.Fmk.TEQ().sP(), EventConstants.KEY_SOURCE) && (iSj = ((this.Dq - ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), this.f20889aa.HiB()))) - iSj2) - iSj5) > 1 && iSj <= iMin * 2) {
                int i11 = iSj / 2;
                this.Zq.setPadding(iSj3, iSj2 - i11, iSj4, iSj5 - (iSj - i11));
                return;
            }
            int i12 = (((iArrSP[1] + iSj2) + iSj5) - this.Dq) - 2;
            if (i12 <= 1) {
                return;
            }
            if (i12 <= iMin * 2) {
                int i13 = i12 / 2;
                this.Zq.setPadding(iSj3, iSj2 - i13, iSj4, iSj5 - (i12 - i13));
            } else if (i12 > iSj2 + iSj5) {
                final int i14 = (i12 - iSj2) - iSj5;
                this.Zq.setPadding(iSj3, 0, iSj4, 0);
                if (i14 <= ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), 1.0f)) + 1) {
                    ((TextView) this.Zq).setTextSize(this.f20889aa.HiB() - 1.0f);
                } else if (i14 <= (((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), 1.0f)) + 1) * 2) {
                    ((TextView) this.Zq).setTextSize(this.f20889aa.HiB() - 2.0f);
                } else {
                    post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.uP.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ViewGroup.LayoutParams layoutParams = uP.this.Zq.getLayoutParams();
                                uP uPVar = uP.this;
                                layoutParams.height = uPVar.Dq + i14;
                                uPVar.Zq.setLayoutParams(layoutParams);
                                uP.this.Zq.setTranslationY(-i14);
                                ((ViewGroup) uP.this.Zq.getParent()).setClipChildren(false);
                                ((ViewGroup) uP.this.Zq.getParent().getParent()).setClipChildren(false);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            } else if (iSj2 > iSj5) {
                this.Zq.setPadding(iSj3, iSj2 - (i12 - iMin), iSj4, iSj5 - iMin);
            } else {
                this.Zq.setPadding(iSj3, iSj2 - iMin, iSj4, iSj5 - (i12 - iMin));
            }
        }
        if (TextUtils.equals(this.Fmk.TEQ().sP(), "fillButton")) {
            this.Zq.setTextAlignment(2);
            ((TextView) this.Zq).setGravity(17);
        }
    }

    private void Ym() {
        if (this.Zq instanceof com.bytedance.sdk.component.adexpress.vS.Sj) {
            String text = getText();
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(text);
                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                    arrayList.add(jSONArray.optString(i11));
                }
            } catch (JSONException unused) {
                arrayList.add(text);
            }
            ((com.bytedance.sdk.component.adexpress.vS.Sj) this.Zq).setMaxLines(1);
            ((com.bytedance.sdk.component.adexpress.vS.Sj) this.Zq).setTextColor(this.f20889aa.Jcg());
            ((com.bytedance.sdk.component.adexpress.vS.Sj) this.Zq).setTextSize(this.f20889aa.HiB());
            ((com.bytedance.sdk.component.adexpress.vS.Sj) this.Zq).setAnimationText(arrayList);
            ((com.bytedance.sdk.component.adexpress.vS.Sj) this.Zq).setAnimationType(this.f20889aa.jb());
            ((com.bytedance.sdk.component.adexpress.vS.Sj) this.Zq).setAnimationDuration(this.f20889aa.Fm() * 1000);
            ((com.bytedance.sdk.component.adexpress.vS.Sj) this.Zq).Sj();
        }
    }

    public void Sj(TextView textView, int i11, Context context, String str) {
        textView.setText("(" + String.format(com.bytedance.sdk.component.utils.ib.Sj(context, str), Integer.valueOf(i11)) + ")");
        if (i11 == -1) {
            textView.setVisibility(8);
        }
    }

    public String getText() {
        String strVS = this.f20889aa.vS();
        if (TextUtils.isEmpty(strVS)) {
            if (!com.bytedance.sdk.component.adexpress.EjP.sP() && TextUtils.equals(this.Fmk.TEQ().sP(), "text_star")) {
                strVS = "5";
            }
            if (!com.bytedance.sdk.component.adexpress.EjP.sP() && TextUtils.equals(this.Fmk.TEQ().sP(), "score-count")) {
                strVS = "6870";
            }
        }
        return (TextUtils.equals(this.Fmk.TEQ().sP(), CampaignEx.JSON_KEY_TITLE) || TextUtils.equals(this.Fmk.TEQ().sP(), "subtitle")) ? strVS.replace("\n", "") : strVS;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        int i11;
        double d11;
        super.uA();
        if (TextUtils.isEmpty(getText())) {
            this.Zq.setVisibility(4);
            return true;
        }
        if (this.f20889aa.xD()) {
            Ym();
            return true;
        }
        ((TextView) this.Zq).setText(this.f20889aa.vS());
        ((TextView) this.Zq).setTextDirection(5);
        this.Zq.setTextAlignment(this.f20889aa.Dq());
        ((TextView) this.Zq).setTextColor(this.f20889aa.Jcg());
        ((TextView) this.Zq).setTextSize(this.f20889aa.HiB());
        if (this.f20889aa.zR()) {
            int iIb = this.f20889aa.ib();
            if (iIb > 0) {
                ((TextView) this.Zq).setLines(iIb);
                ((TextView) this.Zq).setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            ((TextView) this.Zq).setMaxLines(1);
            ((TextView) this.Zq).setGravity(17);
            ((TextView) this.Zq).setEllipsize(TextUtils.TruncateAt.END);
        }
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 = this.Fmk;
        if (dq2 != null && dq2.TEQ() != null) {
            if (com.bytedance.sdk.component.adexpress.EjP.sP() && Sj() && (TextUtils.equals(this.Fmk.TEQ().sP(), "text_star") || TextUtils.equals(this.Fmk.TEQ().sP(), "score-count") || TextUtils.equals(this.Fmk.TEQ().sP(), "score-count-type-1") || TextUtils.equals(this.Fmk.TEQ().sP(), "score-count-type-2"))) {
                setVisibility(8);
                return true;
            }
            if (TextUtils.equals(this.Fmk.TEQ().sP(), "score-count") || TextUtils.equals(this.Fmk.TEQ().sP(), "score-count-type-2")) {
                try {
                    try {
                        i11 = Integer.parseInt(getText());
                    } catch (NumberFormatException unused) {
                        i11 = -1;
                    }
                    if (i11 < 0) {
                        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                            setVisibility(8);
                            return true;
                        }
                        this.Zq.setVisibility(0);
                    }
                    if (TextUtils.equals(this.Fmk.TEQ().sP(), "score-count-type-2")) {
                        ((TextView) this.Zq).setText(String.format(new DecimalFormat("(###,###,###)").format(i11), Integer.valueOf(i11)));
                        ((TextView) this.Zq).setGravity(17);
                        return true;
                    }
                    Sj((TextView) this.Zq, i11, getContext(), "tt_comment_num");
                } catch (Exception unused2) {
                }
            } else if (TextUtils.equals(this.Fmk.TEQ().sP(), "text_star")) {
                try {
                    d11 = Double.parseDouble(getText());
                } catch (Exception unused3) {
                    d11 = -1.0d;
                }
                if (d11 < 0.0d || d11 > 5.0d) {
                    if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                        setVisibility(8);
                        return true;
                    }
                    this.Zq.setVisibility(0);
                }
                ((TextView) this.Zq).setIncludeFontPadding(false);
                ((TextView) this.Zq).setText(String.format("%.1f", Double.valueOf(d11)));
            } else if (TextUtils.equals("privacy-detail", this.Fmk.TEQ().sP())) {
                ((TextView) this.Zq).setText("Permission list | Privacy policy");
            } else if (TextUtils.equals(this.Fmk.TEQ().sP(), "development-name")) {
                ((TextView) this.Zq).setText(com.bytedance.sdk.component.utils.ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_text_privacy_development") + getText());
            } else if (TextUtils.equals(this.Fmk.TEQ().sP(), "app-version")) {
                ((TextView) this.Zq).setText(com.bytedance.sdk.component.utils.ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_text_privacy_app_version") + getText());
            } else {
                ((TextView) this.Zq).setText(getText());
            }
            this.Zq.setTextAlignment(this.f20889aa.Dq());
            ((TextView) this.Zq).setGravity(this.f20889aa.uA());
            if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                TEQ();
            }
        }
        return true;
    }
}
