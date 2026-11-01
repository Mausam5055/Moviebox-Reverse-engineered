package com.cloud.tmc.ad.bean.response;

import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.R;
import com.cloud.tmc.kernel.model.BaseBean;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import qk.a;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001:\u0005$%&'(B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001e\u001a\u00020\bJ\u000e\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u0017J\u0006\u0010!\u001a\u00020\u0017J\u0006\u0010\"\u001a\u00020\bJ\b\u0010#\u001a\u00020\bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\nR\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u001b\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\nR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/NativeBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "()V", "button", "Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;", "descript", "Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;", "descriptionTxt", "", "getDescriptionTxt", "()Ljava/lang/String;", "logo", "Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;", "getLogo", "()Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;", MiniAppIpcConfig.IPC_ADDHOME_APP_LOGO, "getLogoUrl", "mainImages", "", "Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;", "getMainImages", "()Ljava/util/List;", CampaignEx.JSON_KEY_STAR, "", "Ljava/lang/Integer;", CampaignEx.JSON_KEY_TITLE, "Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;", "titleTxt", "getTitleTxt", "version", "getButtonText", "getButtonTxt", "isInstallApk", "getRating", "getVersion", "toString", "ButtonDTO", "DescriptDTO", "LogoDTO", "MainImagesDTO", "TitleDTO", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NativeBean extends BaseBean {
    private final ButtonDTO button;
    private final DescriptDTO descript;
    private final LogoDTO logo;
    private final List<MainImagesDTO> mainImages;
    private final Integer rating;
    private final TitleDTO title;
    private final String version;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u0006\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;", "Ljava/io/Serializable;", "()V", MimeTypes.BASE_TYPE_TEXT, "", "getText", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class ButtonDTO implements Serializable {
        private final String text;

        public final String getText() {
            String str = this.text;
            return str == null ? "" : str;
        }

        public String toString() {
            return "ButtonDTO{text='" + this.text + "'}";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u0006\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;", "Ljava/io/Serializable;", "()V", MimeTypes.BASE_TYPE_TEXT, "", "getText", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DescriptDTO implements Serializable {
        private final String text;

        public final String getText() {
            String str = this.text;
            return str == null ? "" : str;
        }

        public String toString() {
            return "DescriptDTO{text='" + this.text + "'}";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0004J\b\u0010\f\u001a\u00020\u0007H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;", "Ljava/io/Serializable;", "()V", "height", "", "Ljava/lang/Integer;", "url", "", "width", "getHeight", "getUrl", "getWidth", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class LogoDTO implements Serializable {
        private final Integer height;
        private final String url;
        private final Integer width;

        public final int getHeight() {
            Integer num = this.height;
            if (num != null) {
                return num.intValue();
            }
            return 0;
        }

        public final String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        public final int getWidth() {
            Integer num = this.width;
            if (num != null) {
                return num.intValue();
            }
            return 0;
        }

        public String toString() {
            return "LogoDTO{url='" + this.url + "', width=" + this.width + ", height=" + this.height + "}";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0004J\b\u0010\f\u001a\u00020\u0007H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;", "Ljava/io/Serializable;", "()V", "height", "", "Ljava/lang/Integer;", "url", "", "width", "getHeight", "getUrl", "getWidth", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class MainImagesDTO implements Serializable {
        private final Integer height;
        private final String url;
        private final Integer width;

        public final int getHeight() {
            Integer num = this.height;
            if (num != null) {
                return num.intValue();
            }
            return 0;
        }

        public final String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        public final int getWidth() {
            Integer num = this.width;
            if (num != null) {
                return num.intValue();
            }
            return 0;
        }

        public String toString() {
            return "MainImagesDTO{url='" + this.url + "', width=" + this.width + ", height=" + this.height + "}";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u0006\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;", "Ljava/io/Serializable;", "()V", MimeTypes.BASE_TYPE_TEXT, "", "getText", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class TitleDTO implements Serializable {
        private final String text;

        public final String getText() {
            String str = this.text;
            return str == null ? "" : str;
        }

        public String toString() {
            return "TitleDTO{text='" + this.text + "'}";
        }
    }

    public final String getButtonText() {
        String text;
        ButtonDTO buttonDTO = this.button;
        return (buttonDTO == null || (text = buttonDTO.getText()) == null) ? "" : text;
    }

    public final String getButtonTxt(int isInstallApk) {
        String text;
        if (isInstallApk == 2) {
            String string = a.a().getResources().getString(R.string.open);
            Intrinsics.g(string, "getContext()\n           ….getString(R.string.open)");
            return string;
        }
        if (isInstallApk != 3) {
            ButtonDTO buttonDTO = this.button;
            return (buttonDTO == null || (text = buttonDTO.getText()) == null) ? "" : text;
        }
        String string2 = a.a().getResources().getString(R.string.install);
        Intrinsics.g(string2, "getContext()\n           …tString(R.string.install)");
        return string2;
    }

    public final String getDescriptionTxt() {
        String text;
        DescriptDTO descriptDTO = this.descript;
        return (descriptDTO == null || (text = descriptDTO.getText()) == null) ? "" : text;
    }

    public final LogoDTO getLogo() {
        return this.logo;
    }

    public final String getLogoUrl() {
        String url;
        LogoDTO logoDTO = this.logo;
        return (logoDTO == null || (url = logoDTO.getUrl()) == null) ? "" : url;
    }

    public final List<MainImagesDTO> getMainImages() {
        return this.mainImages;
    }

    public final int getRating() {
        Integer num = this.rating;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final String getTitleTxt() {
        String text;
        TitleDTO titleDTO = this.title;
        return (titleDTO == null || (text = titleDTO.getText()) == null) ? "" : text;
    }

    public final String getVersion() {
        String str = this.version;
        return str == null ? "" : str;
    }

    public String toString() {
        return "NativeBean{version='" + this.version + "', rating=" + this.rating + ", title=" + this.title + ", descript=" + this.descript + ", button=" + this.button + ", logo=" + this.logo + ", mainImages=" + this.mainImages + "}";
    }
}
