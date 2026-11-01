package com.bytedance.sdk.openadsdk.component.uA;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.Zq;
import com.bytedance.sdk.openadsdk.core.widget.uvD;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TKC extends com.bytedance.sdk.openadsdk.core.HiB.Jcg {
    final Jcg Dq;
    PAGLogoView EjP;
    com.bytedance.sdk.openadsdk.core.HiB.Dq HiB;
    com.bytedance.sdk.openadsdk.core.HiB.Dq Jcg;
    com.bytedance.sdk.openadsdk.core.HiB.EjP Sj;
    com.bytedance.sdk.openadsdk.core.HiB.Dq TEQ;
    com.bytedance.sdk.openadsdk.core.HiB.EjP TKC;
    com.bytedance.sdk.openadsdk.core.HiB.Dq Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    com.bytedance.sdk.openadsdk.core.widget.TKC f21012aa;
    com.bytedance.sdk.openadsdk.core.HiB.TKC sP;
    uvD uA;
    uvD vS;

    public TKC(Context context) {
        super(context);
        this.Dq = new Jcg(context);
    }

    public abstract com.bytedance.sdk.openadsdk.core.HiB.EjP getAdIconView();

    public PAGLogoView getAdLogo() {
        return this.EjP;
    }

    public abstract com.bytedance.sdk.openadsdk.core.HiB.Dq getAdTitleTextView();

    public com.bytedance.sdk.openadsdk.core.HiB.EjP getBackImage() {
        return this.Sj;
    }

    public com.bytedance.sdk.openadsdk.core.HiB.Dq getClickButton() {
        return this.HiB;
    }

    public com.bytedance.sdk.openadsdk.core.HiB.Dq getContent() {
        return this.Ym;
    }

    public com.bytedance.sdk.openadsdk.core.widget.TKC getDspAdChoice() {
        return this.f21012aa;
    }

    public uvD getHostAppIcon() {
        return this.vS;
    }

    public com.bytedance.sdk.openadsdk.core.HiB.Dq getHostAppName() {
        return this.Jcg;
    }

    public uvD getIconOnlyView() {
        return this.uA;
    }

    public com.bytedance.sdk.openadsdk.core.HiB.EjP getImageView() {
        return this.TKC;
    }

    public com.bytedance.sdk.openadsdk.core.HiB.HiB getOverlayLayout() {
        return null;
    }

    public abstract Zq getScoreBar();

    public com.bytedance.sdk.openadsdk.core.HiB.Dq getTitle() {
        return this.TEQ;
    }

    public com.bytedance.sdk.openadsdk.core.HiB.Dq getTopCountDown() {
        Jcg jcg = this.Dq;
        if (jcg != null) {
            return jcg.getTopCountDown();
        }
        return null;
    }

    public View getTopDisLike() {
        Jcg jcg = this.Dq;
        if (jcg != null) {
            return jcg.getTopDislike();
        }
        return null;
    }

    public com.bytedance.sdk.openadsdk.core.HiB.EjP getTopSkip() {
        Jcg jcg = this.Dq;
        if (jcg != null) {
            return jcg.getTopSkip();
        }
        return null;
    }

    public abstract View getUserInfo();

    public com.bytedance.sdk.openadsdk.core.HiB.TKC getVideoContainer() {
        return this.sP;
    }
}
