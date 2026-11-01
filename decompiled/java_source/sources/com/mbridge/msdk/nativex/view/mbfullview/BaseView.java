package com.mbridge.msdk.nativex.view.mbfullview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public class BaseView extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected RelativeLayout f36697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected RelativeLayout f36698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected RelativeLayout f36699c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ImageView f36700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected TextView f36701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected ProgressBar f36702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected FrameLayout f36703g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected LinearLayout f36704h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected RelativeLayout f36705i;
    public a style;

    public enum a {
        FULL_TOP_VIEW,
        FULL_MIDDLE_VIEW
    }

    public BaseView(Context context) {
        super(context);
        View viewInflate = LayoutInflater.from(getContext()).inflate(g0.a(getContext(), "mbridge_nativex_fullbasescreen", TtmlNode.TAG_LAYOUT), this);
        this.f36705i = (RelativeLayout) viewInflate;
        if (viewInflate != null) {
            this.f36697a = (RelativeLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_rl_playcontainer", "id"));
            this.f36698b = (RelativeLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_player_parent", "id"));
            this.f36699c = (RelativeLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_rl_close", "id"));
            this.f36700d = (ImageView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_iv_close", "id"));
            this.f36701e = (TextView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_tv_install", "id"));
            this.f36702f = (ProgressBar) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_pb_loading", "id"));
            this.f36703g = (FrameLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_animation_content", "id"));
            this.f36704h = (LinearLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_animation_player", "id"));
            viewInflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        }
    }

    public RelativeLayout getMBridgeFullClose() {
        return this.f36699c;
    }

    public ImageView getMBridgeFullIvClose() {
        return this.f36700d;
    }

    public ProgressBar getMBridgeFullPb() {
        return this.f36702f;
    }

    public RelativeLayout getMBridgeFullPlayContainer() {
        return this.f36697a;
    }

    public RelativeLayout getMBridgeFullPlayerParent() {
        return this.f36698b;
    }

    public TextView getMBridgeFullTvInstall() {
        return this.f36701e;
    }

    public a getStytle() {
        return this.style;
    }

    public FrameLayout getmAnimationContent() {
        return this.f36703g;
    }

    public LinearLayout getmAnimationPlayer() {
        return this.f36704h;
    }

    public void setStytle(a aVar) {
        this.style = aVar;
    }
}
