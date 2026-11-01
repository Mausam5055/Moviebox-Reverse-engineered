package com.cloud.hisavana.sdk.api.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.ad.template.TemplateRenderEnum;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.util.f0;
import com.cloud.hisavana.sdk.common.util.i0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.v2;
import com.cloud.sdk.commonutil.R$id;
import com.cloud.sdk.commonutil.util.h;
import com.cloud.sdk.commonutil.util.k;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class TNativeView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MediaView f21638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f21639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdChoicesView f21640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdCloseView f21641d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView.ScaleType f21642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private StoreMarkView f21643f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f21644g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AdBadgeView f21645h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AdDisclaimerView f21646i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ViewTreeObserver.OnGlobalLayoutListener f21647j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private f7.d f21648k;

    class a extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TaNativeInfo f21649b;

        a(TaNativeInfo taNativeInfo) {
            this.f21649b = taNativeInfo;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().d("ssp", "download Image failed.");
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            TemplateRenderEnum templateRenderEnumFindStrategyByCode;
            if (!this.f21649b.isMaterialStyleValid() || (templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(this.f21649b.getMaterialStyle())) == null) {
                return;
            }
            templateRenderEnumFindStrategyByCode.renderRadius(TNativeView.this.f21638a);
        }
    }

    class b extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TaNativeInfo f21651b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView f21652c;

        b(TaNativeInfo taNativeInfo, ImageView imageView) {
            this.f21651b = taNativeInfo;
            this.f21652c = imageView;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().d("TNativeView", "download Image failed.");
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            if (adImage != null && adImage.getDrawable() != null) {
                e4.b().d("TNativeView", "download Image Success.");
                AdImage iconImage = this.f21651b.getIconImage();
                if (iconImage != null) {
                    iconImage.setDrawable(adImage.getDrawable());
                } else {
                    this.f21651b.setImage(adImage);
                }
            }
            if (this.f21651b.isMaterialStyleValid() && (this.f21652c instanceof TranCircleImageView)) {
                TemplateRenderEnum templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(this.f21651b.getMaterialStyle());
                if (templateRenderEnumFindStrategyByCode != null) {
                    templateRenderEnumFindStrategyByCode.scaleWidthOrTextSize(this.f21652c);
                }
                ((TranCircleImageView) this.f21652c).setCircle(true);
                ((TranCircleImageView) this.f21652c).setRadius(h.a(TextUtils.equals(this.f21651b.getMaterialStyle(), "L91601") ? 16.0f : 4.0f));
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f21654a;

        c(AdsDTO adsDTO) {
            this.f21654a = adsDTO;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            N0.k(com.cloud.sdk.commonutil.util.e.a(), this.f21654a);
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f21656a;

        d(AdsDTO adsDTO) {
            this.f21656a = adsDTO;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            N0.k(com.cloud.sdk.commonutil.util.e.a(), this.f21656a);
        }
    }

    class e implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TaNativeInfo f21658a;

        e(TaNativeInfo taNativeInfo) {
            this.f21658a = taNativeInfo;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (TNativeView.this.f21638a.getHeight() != 0) {
                TNativeView.this.f21638a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                TNativeView.this.f21647j = null;
                TNativeView.this.f21646i.updateHeightWith(f0.e(this.f21658a.getAdItem()), TNativeView.this.f21638a.getHeight());
            }
        }
    }

    class f extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TaNativeInfo f21660b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView.ScaleType f21661c;

        f(TaNativeInfo taNativeInfo, ImageView.ScaleType scaleType) {
            this.f21660b = taNativeInfo;
            this.f21661c = scaleType;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().d("ssp", "download Image failed.");
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            TemplateRenderEnum templateRenderEnumFindStrategyByCode;
            if (adImage == null || adImage.getDrawable() == null) {
                return;
            }
            e4.b().d("ssp", "download Image Success.");
            AdImage image = this.f21660b.getImage();
            if (image != null) {
                image.setDrawable(adImage.getDrawable());
            } else {
                this.f21660b.setImage(adImage);
            }
            TNativeView.this.f21638a.setMediaView(adImage, this.f21661c, this.f21660b.isMaterialStyleValid());
            if (!this.f21660b.isMaterialStyleValid() || (templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(this.f21660b.getMaterialStyle())) == null) {
                return;
            }
            templateRenderEnumFindStrategyByCode.renderRadius(TNativeView.this.f21638a);
        }
    }

    public TNativeView(@NonNull Context context) {
        this(context, null);
    }

    public TNativeView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TNativeView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f21642e = null;
        this.f21644g = false;
    }

    private void d(TaNativeInfo taNativeInfo) {
        AdBadgeView adBadgeView;
        if (taNativeInfo == null || (adBadgeView = this.f21645h) == null) {
            return;
        }
        adBadgeView.setDisplayStyle(taNativeInfo.getAdItem().getDisplayRule(), f0.c(taNativeInfo.getAdItem()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(String str, String str2, String str3) {
        f7.d dVarI = new f7.d(this).j(str).h(str2).i(str3, null);
        this.f21648k = dVarI;
        dVarI.k();
    }

    private void g(TaNativeInfo taNativeInfo) {
        AdsDTO adsDTOF;
        if (taNativeInfo == null || this.f21640c == null || (adsDTOF = N0.f(taNativeInfo)) == null) {
            return;
        }
        String adChoiceImageUrl = adsDTOF.getAdChoiceImageUrl();
        if (adsDTOF.getSource() == 4) {
            DownLoadRequest.n(adChoiceImageUrl, adsDTOF, null, this.f21640c);
            this.f21640c.setOnClickListener(new c(adsDTOF));
        } else {
            if (adsDTOF.getACReady() == null || !adsDTOF.getACReady().booleanValue()) {
                return;
            }
            DownLoadRequest.o(adChoiceImageUrl, adsDTOF, 3, null, this.f21640c);
            this.f21640c.setOnClickListener(new d(adsDTOF));
        }
    }

    private void h(TaNativeInfo taNativeInfo) {
        AdsDTO adsDTOF;
        if (taNativeInfo == null || (adsDTOF = N0.f(taNativeInfo)) == null || this.f21641d == null) {
            return;
        }
        AdCloseView.CloseImageType closeImageType = AdCloseView.CloseImageType.CLOSE;
        TemplateRenderEnum templateEnum = taNativeInfo.getTemplateEnum();
        if (templateEnum != null) {
            closeImageType = templateEnum.getCloseImageType();
        }
        this.f21641d.setDisplayStyle(adsDTOF.getDisplayRule(), closeImageType);
        this.f21641d.setVisibility(0);
    }

    private void i(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null || taNativeInfo.getAdItem() == null || this.f21646i == null || this.f21638a == null) {
            return;
        }
        if (taNativeInfo.getAdItem().getDisplayRule() != Constants.AdDisplayRule.RU) {
            if (this.f21646i.getParent() instanceof ViewGroup) {
                ((ViewGroup) this.f21646i.getParent()).removeView(this.f21646i);
                return;
            }
            return;
        }
        this.f21646i.setDisplayStyle(taNativeInfo.getAdItem().getDisplayRule(), f0.f(taNativeInfo.getAdItem()));
        this.f21646i.setListener(new AdDisclaimerView.b() { // from class: c7.d
            @Override // com.cloud.hisavana.sdk.api.view.AdDisclaimerView.b
            public final void a(String str, String str2, String str3) {
                this.f17018a.e(str, str2, str3);
            }
        });
        if (this.f21647j != null) {
            this.f21638a.getViewTreeObserver().removeOnGlobalLayoutListener(this.f21647j);
            this.f21647j = null;
        }
        this.f21647j = new e(taNativeInfo);
        this.f21638a.getViewTreeObserver().addOnGlobalLayoutListener(this.f21647j);
    }

    private void j(TaNativeInfo taNativeInfo) {
        if (this.f21639b == null || taNativeInfo == null) {
            return;
        }
        if (taNativeInfo.getAdItem() != null && taNativeInfo.getAdItem().getSource() == 4) {
            setDefaultLogo(taNativeInfo);
            return;
        }
        ImageView imageView = this.f21639b;
        AdImage iconImage = taNativeInfo.getIconImage();
        if (iconImage != null) {
            if (iconImage.isAdImageRecycled()) {
                if (TextUtils.isEmpty(iconImage.getImgUrl())) {
                    return;
                }
                DownLoadRequest.o(iconImage.getImgUrl(), taNativeInfo.getAdItem(), 1, new b(taNativeInfo, imageView), imageView);
                return;
            }
            imageView.setImageDrawable(l7.c.a(iconImage.getDrawable()));
            if (taNativeInfo.isMaterialStyleValid() && (imageView instanceof TranCircleImageView)) {
                TemplateRenderEnum templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(taNativeInfo.getMaterialStyle());
                if (templateRenderEnumFindStrategyByCode != null) {
                    templateRenderEnumFindStrategyByCode.scaleWidthOrTextSize(imageView);
                }
                TranCircleImageView tranCircleImageView = (TranCircleImageView) imageView;
                tranCircleImageView.setCircle(true);
                tranCircleImageView.setRadius(h.a(4.0f));
            }
        }
    }

    private void k(TaNativeInfo taNativeInfo) {
        AdsDTO adItem;
        if (this.f21638a == null || taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) {
            return;
        }
        if (adItem.isInteractiveAd()) {
            setInteractiveMedia(taNativeInfo);
            return;
        }
        int iB = com.cloud.hisavana.sdk.common.util.b.f22148a.b(taNativeInfo.getAdItem());
        if (iB == -1) {
            e4.b().e("TNativeView", "setMediaView（）----> adType = -1");
            return;
        }
        if (iB == 1) {
            setVideoMedia(taNativeInfo);
            return;
        }
        if (taNativeInfo.getAdItem() == null || taNativeInfo.getAdItem().getSource() != 4) {
            setImgMedia(taNativeInfo);
        } else if (taNativeInfo.getAdItem().getDefaultMaterialType() == 1) {
            setDefaultImgMedia(taNativeInfo);
        } else {
            setVideoMedia(taNativeInfo);
        }
    }

    private void l(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null || this.f21643f == null) {
            return;
        }
        AdsDTO adItem = taNativeInfo.getAdItem();
        this.f21643f.setVisibility(i0.a(adItem) ? 0 : 8);
        if (taNativeInfo.getSdkTypeSetStoreMark() == 0) {
            this.f21643f.setTextColor(TextUtils.equals(adItem.getMaterialStyle(), "L91601") ? -1 : -8882056);
            this.f21643f.setTextSize(6.0f);
        } else {
            try {
                this.f21643f.setTextColor(taNativeInfo.getStoreMarkTextColor());
                this.f21643f.setTextSize(taNativeInfo.getStoreMarkTextSize());
            } catch (Exception unused) {
            }
        }
        this.f21643f.attachInfo(adItem);
    }

    private void setDefaultImgMedia(TaNativeInfo taNativeInfo) {
        AdImage image = taNativeInfo.getImage();
        if (image == null) {
            return;
        }
        this.f21638a.init(image.getMime());
        ImageView.ScaleType scaleType = this.f21642e;
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        ImageView imageView = (ImageView) this.f21638a.findViewById(R$id.native_mediaview_iv_id);
        if (imageView == null) {
            return;
        }
        if (taNativeInfo.isMaterialStyleValid()) {
            imageView.setAdjustViewBounds(true);
            imageView.setMaxWidth(i7.c.k());
            imageView.setMaxHeight(i7.c.j());
        } else {
            imageView.setAdjustViewBounds(true);
            imageView.setScaleType(scaleType);
        }
        DownLoadRequest.n(image.getImgUrl(), taNativeInfo.getAdItem(), new a(taNativeInfo), imageView);
    }

    private void setDefaultLogo(TaNativeInfo taNativeInfo) {
        AdImage iconImage = taNativeInfo.getIconImage();
        if (iconImage == null) {
            return;
        }
        if (taNativeInfo.isMaterialStyleValid() && (this.f21639b instanceof TranCircleImageView)) {
            TemplateRenderEnum templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(taNativeInfo.getMaterialStyle());
            if (templateRenderEnumFindStrategyByCode != null) {
                templateRenderEnumFindStrategyByCode.scaleWidthOrTextSize(this.f21639b);
            }
            ((TranCircleImageView) this.f21639b).setCircle(true);
            ((TranCircleImageView) this.f21639b).setRadius(h.a(TextUtils.equals(taNativeInfo.getMaterialStyle(), "L91601") ? 16.0f : 4.0f));
        }
        DownLoadRequest.n(iconImage.getImgUrl(), taNativeInfo.getAdItem(), null, this.f21639b);
    }

    private void setImgMedia(TaNativeInfo taNativeInfo) {
        TemplateRenderEnum templateRenderEnumFindStrategyByCode;
        e4.b().d("TNativeView", "start to set img media");
        if (taNativeInfo == null) {
            return;
        }
        AdImage image = taNativeInfo.getImage();
        ImageView.ScaleType scaleType = this.f21642e;
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (scaleType == ImageView.ScaleType.FIT_CENTER) {
            image.setNeedBlurBackground(true);
        }
        if (image != null) {
            this.f21638a.init(image.getMime());
            if (image.isAdImageRecycled()) {
                if (TextUtils.isEmpty(image.getImgUrl())) {
                    return;
                }
                DownLoadRequest.o(image.getImgUrl(), taNativeInfo.getAdItem(), 2, new f(taNativeInfo, scaleType), (ImageView) this.f21638a.findViewById(R$id.native_mediaview_iv_id));
            } else {
                if (taNativeInfo.isMaterialStyleValid() && (templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(taNativeInfo.getMaterialStyle())) != null) {
                    templateRenderEnumFindStrategyByCode.renderRadius(this.f21638a);
                }
                this.f21638a.setMediaView(image, scaleType, taNativeInfo.isMaterialStyleValid());
            }
        }
    }

    private void setInteractiveMedia(TaNativeInfo taNativeInfo) {
        AdsDTO adItem;
        e4.b().d("TNativeView", "setVideoMedia() ----> start to set interactive media");
        if (taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) {
            return;
        }
        String indexLocation = adItem.getIndexLocation();
        if (TextUtils.isEmpty(indexLocation)) {
            return;
        }
        String scale = adItem.getScale();
        if (TextUtils.isEmpty(scale)) {
            scale = (adItem.getScales() == null || adItem.getScales().isEmpty()) ? "" : adItem.getScales().get(0);
        }
        this.f21638a.setInteractiveView(taNativeInfo, indexLocation, scale);
    }

    private void setVideoMedia(TaNativeInfo taNativeInfo) {
        e4.b().d("TNativeView", "setVideoMedia() ----> start to set video media");
        if (taNativeInfo == null) {
            return;
        }
        String strK = v2.k(taNativeInfo.getAdItem());
        e4.b().d("TNativeView", "setVideoMedia() ----> mainUrl = " + strK);
        if (TextUtils.isEmpty(strK)) {
            return;
        }
        this.f21638a.init(3);
        this.f21638a.setVideoView(strK, taNativeInfo.isMaterialStyleValid(), taNativeInfo.getMaterialStyle(), taNativeInfo.getAdItem(), this.f21644g);
    }

    public void destroy() {
        MediaView mediaView = this.f21638a;
        if (mediaView != null) {
            if (this.f21647j != null) {
                mediaView.getViewTreeObserver().removeOnGlobalLayoutListener(this.f21647j);
                this.f21647j = null;
            }
            this.f21638a.destroy();
        }
        k.a(this.f21639b);
        k.a(this.f21640c);
        f7.d dVar = this.f21648k;
        if (dVar != null) {
            dVar.f();
            this.f21648k = null;
        }
        removeAllViews();
    }

    public View getIconView() {
        return this.f21639b;
    }

    public void getMarkViews(List<View> list) {
        list.add(this.f21640c);
        list.add(this.f21641d);
        list.add(this.f21643f);
        list.add(this.f21645h);
        list.add(this.f21646i);
    }

    public MediaView getMediaView() {
        return this.f21638a;
    }

    public com.cloud.hisavana.sdk.ad.template.a getTemplateStyle() {
        return null;
    }

    public void inflateAdChoiceView(TaNativeInfo taNativeInfo) {
        g(taNativeInfo);
    }

    public void inflateIconView(TaNativeInfo taNativeInfo) {
        j(taNativeInfo);
    }

    public void inflateMediaView(TaNativeInfo taNativeInfo) {
        k(taNativeInfo);
    }

    public void setAdBagdeView(AdBadgeView adBadgeView) {
        this.f21645h = adBadgeView;
    }

    public void setAdChoiceView(AdChoicesView adChoicesView) {
        if (adChoicesView == null) {
            return;
        }
        this.f21640c = adChoicesView;
    }

    public void setAdCloseView(AdCloseView adCloseView) {
        if (adCloseView == null) {
            return;
        }
        this.f21641d = adCloseView;
    }

    public void setAdDisclaimerView(AdDisclaimerView adDisclaimerView) {
        this.f21646i = adDisclaimerView;
    }

    public final void setIconView(ImageView imageView) {
        this.f21639b = imageView;
    }

    public void setMediaView(MediaView mediaView) {
        setMediaView(mediaView, null);
    }

    public void setMediaView(MediaView mediaView, ImageView.ScaleType scaleType) {
        this.f21638a = mediaView;
        this.f21642e = scaleType;
    }

    public void setPsMarkView(StoreMarkView storeMarkView) {
        if (storeMarkView == null) {
            return;
        }
        this.f21643f = storeMarkView;
    }

    public void setTemplateStyle(com.cloud.hisavana.sdk.ad.template.a aVar) {
    }

    public void setUseListMode(boolean z10) {
        this.f21644g = z10;
    }

    public final void setupViews(TaNativeInfo taNativeInfo) {
        k(taNativeInfo);
        j(taNativeInfo);
        g(taNativeInfo);
        h(taNativeInfo);
        l(taNativeInfo);
        d(taNativeInfo);
        i(taNativeInfo);
    }
}
