package com.cloud.hisavana.sdk.api.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R$mipmap;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.util.e0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.h;
import l7.c;

/* JADX INFO: loaded from: classes3.dex */
public class StoreMarkView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f21635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f21636b;

    class a extends DrawableResponseListener {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            StoreMarkView.this.setVisibility(8);
            e4.b().e("PsMarkView", "attachStoreIcon download store icon error," + taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            e4.b().d("PsMarkView", "attachInfo onRequestSuccess");
            if (adImage != null) {
                StoreMarkView.this.f21636b.setImageDrawable(c.a(adImage.getDrawable()));
            }
        }
    }

    public StoreMarkView(Context context) {
        this(context, null);
    }

    public StoreMarkView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StoreMarkView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        if (isInEditMode()) {
            return;
        }
        c();
    }

    private String b(AdsDTO adsDTO) {
        try {
            e0 e0Var = e0.f22156a;
            return TextUtils.isEmpty(e0Var.a()) ? adsDTO.getExt().getStoreTitle() : e.a().getString(R$string.hs_ps_download_name, e0Var.a());
        } catch (Exception unused) {
            return "Download by PalmStore";
        }
    }

    private void c() {
        setOrientation(0);
        this.f21636b = new ImageView(getContext());
        this.f21635a = new TextView(getContext());
        addView(this.f21636b, new LinearLayout.LayoutParams(h.a(10.0f), h.a(10.0f)));
        this.f21635a.setTextSize(8.0f);
        this.f21635a.setTextColor(-1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMarginStart(6);
        addView(this.f21635a, layoutParams);
        setGravity(16);
        setVisibility(8);
    }

    public void attachInfo(AdsDTO adsDTO) {
        if (adsDTO == null || this.f21636b == null) {
            e4.b().e("PsMarkView", "attachInfo,ads or view is null");
            return;
        }
        if (adsDTO.getExt() == null || (adsDTO.getSource() != 4 && TextUtils.isEmpty(adsDTO.getExt().getStoreImageurl()))) {
            e4.b().e("PsMarkView", "attachInfo,ext or imageUrl is null");
            setVisibility(8);
        } else if (adsDTO.getSource() == 4) {
            setText(b(adsDTO));
            this.f21636b.setImageResource(R$mipmap.hs_ad_ps_icon);
        } else {
            setText(b(adsDTO));
            DownLoadRequest.o(adsDTO.getExt().getStoreImageurl(), adsDTO, 6, new a(), this.f21636b);
        }
    }

    public ImageView getLogo() {
        return this.f21636b;
    }

    public void setDrawable(Drawable drawable) {
        ImageView imageView = this.f21636b;
        if (imageView == null || drawable == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
    }

    public void setLogoSize(int i11) {
        if (this.f21636b == null || i11 <= 0) {
            return;
        }
        int iA = h.a(i11);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f21636b.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new LinearLayout.LayoutParams(iA, iA);
        } else {
            layoutParams.width = iA;
            layoutParams.height = iA;
        }
        this.f21636b.setLayoutParams(layoutParams);
    }

    public void setText(String str) {
        if (this.f21635a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f21635a.setText(str);
    }

    public void setTextColor(int i11) {
        TextView textView = this.f21635a;
        if (textView == null) {
            return;
        }
        textView.setTextColor(i11);
    }

    public void setTextSize(float f11) {
        TextView textView = this.f21635a;
        if (textView == null) {
            return;
        }
        textView.setTextSize(f11);
    }
}
