package com.mbridge.msdk.dycreator.wrapper;

import com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DyOption {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<String> f34922a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private File f34923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CampaignEx f34924c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DyAdType f34925d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f34926e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f34927f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f34928g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f34929h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f34930i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f34931j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f34932k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f34933l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f34934m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f34935n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f34936o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f34937p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f34938q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private DyCountDownListenerWrapper f34939r;

    public static class Builder implements IViewOptionBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<String> f34940a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private File f34941b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CampaignEx f34942c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private DyAdType f34943d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f34944e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f34945f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f34946g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f34947h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f34948i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f34949j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f34950k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f34951l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f34952m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f34953n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f34954o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f34955p;

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder adChoiceLink(String str) {
            this.f34945f = str;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public DyOption build() {
            return new DyOption(this);
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder campaignEx(CampaignEx campaignEx) {
            this.f34942c = campaignEx;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder canSkip(boolean z10) {
            this.f34944e = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder countDownTime(int i11) {
            this.f34954o = i11;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder dyAdType(DyAdType dyAdType) {
            this.f34943d = dyAdType;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder file(File file) {
            this.f34941b = file;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder fileDirs(List<String> list) {
            this.f34940a = list;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isApkInfoVisible(boolean z10) {
            this.f34949j = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isClickButtonVisible(boolean z10) {
            this.f34947h = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isLogoVisible(boolean z10) {
            this.f34950k = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isScreenClick(boolean z10) {
            this.f34946g = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isShakeVisible(boolean z10) {
            this.f34948i = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder orientation(int i11) {
            this.f34953n = i11;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder shakeStrenght(int i11) {
            this.f34951l = i11;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder shakeTime(int i11) {
            this.f34952m = i11;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder templateType(int i11) {
            this.f34955p = i11;
            return this;
        }
    }

    public interface IViewOptionBuilder {
        IViewOptionBuilder adChoiceLink(String str);

        DyOption build();

        IViewOptionBuilder campaignEx(CampaignEx campaignEx);

        IViewOptionBuilder canSkip(boolean z10);

        IViewOptionBuilder countDownTime(int i11);

        IViewOptionBuilder dyAdType(DyAdType dyAdType);

        IViewOptionBuilder file(File file);

        IViewOptionBuilder fileDirs(List<String> list);

        IViewOptionBuilder isApkInfoVisible(boolean z10);

        IViewOptionBuilder isClickButtonVisible(boolean z10);

        IViewOptionBuilder isLogoVisible(boolean z10);

        IViewOptionBuilder isScreenClick(boolean z10);

        IViewOptionBuilder isShakeVisible(boolean z10);

        IViewOptionBuilder orientation(int i11);

        IViewOptionBuilder shakeStrenght(int i11);

        IViewOptionBuilder shakeTime(int i11);

        IViewOptionBuilder templateType(int i11);
    }

    public DyOption(Builder builder) {
        this.f34922a = builder.f34940a;
        this.f34923b = builder.f34941b;
        this.f34924c = builder.f34942c;
        this.f34925d = builder.f34943d;
        this.f34928g = builder.f34944e;
        this.f34926e = builder.f34945f;
        this.f34927f = builder.f34946g;
        this.f34929h = builder.f34947h;
        this.f34931j = builder.f34949j;
        this.f34930i = builder.f34948i;
        this.f34932k = builder.f34950k;
        this.f34933l = builder.f34951l;
        this.f34934m = builder.f34952m;
        this.f34935n = builder.f34953n;
        this.f34936o = builder.f34954o;
        this.f34938q = builder.f34955p;
    }

    public String getAdChoiceLink() {
        return this.f34926e;
    }

    public CampaignEx getCampaignEx() {
        return this.f34924c;
    }

    public int getCountDownTime() {
        return this.f34936o;
    }

    public int getCurrentCountDown() {
        return this.f34937p;
    }

    public DyAdType getDyAdType() {
        return this.f34925d;
    }

    public File getFile() {
        return this.f34923b;
    }

    public List<String> getFileDirs() {
        return this.f34922a;
    }

    public int getOrientation() {
        return this.f34935n;
    }

    public int getShakeStrenght() {
        return this.f34933l;
    }

    public int getShakeTime() {
        return this.f34934m;
    }

    public int getTemplateType() {
        return this.f34938q;
    }

    public boolean isApkInfoVisible() {
        return this.f34931j;
    }

    public boolean isCanSkip() {
        return this.f34928g;
    }

    public boolean isClickButtonVisible() {
        return this.f34929h;
    }

    public boolean isClickScreen() {
        return this.f34927f;
    }

    public boolean isLogoVisible() {
        return this.f34932k;
    }

    public boolean isShakeVisible() {
        return this.f34930i;
    }

    public void setDyCountDownListener(int i11) {
        DyCountDownListenerWrapper dyCountDownListenerWrapper = this.f34939r;
        if (dyCountDownListenerWrapper != null) {
            dyCountDownListenerWrapper.getCountDownValue(i11);
        }
        this.f34937p = i11;
    }

    public void setDyCountDownListenerWrapper(DyCountDownListenerWrapper dyCountDownListenerWrapper) {
        this.f34939r = dyCountDownListenerWrapper;
    }
}
