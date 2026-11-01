package com.mbridge.msdk.nativex.view.mbfullview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeTopFullView extends BaseView {
    public static final String INTERFACE_RESULT = MBridgeTopFullView.class.getName() + "WithResault";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected ImageView f36709j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected TextView f36710k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected TextView f36711l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected StarLevelLayoutView f36712m;

    public MBridgeTopFullView(Context context) {
        super(context);
        View viewInflate = LayoutInflater.from(getContext()).inflate(g0.a(getContext(), "mbridge_nativex_fullscreen_top", TtmlNode.TAG_LAYOUT), this.f36705i);
        if (viewInflate != null) {
            this.f36709j = (ImageView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_tv_display_icon", "id"));
            this.f36710k = (TextView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_tv_display_title", "id"));
            this.f36711l = (TextView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_tv_display_description", "id"));
            this.f36712m = (StarLevelLayoutView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_tv_feeds_star", "id"));
            this.f36711l.setTextColor(-7829368);
            viewInflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            updateLayoutParams();
        }
    }

    public TextView getMBridgeFullViewDisplayDscription() {
        return this.f36711l;
    }

    public ImageView getMBridgeFullViewDisplayIcon() {
        return this.f36709j;
    }

    public TextView getMBridgeFullViewDisplayTitle() {
        return this.f36710k;
    }

    public StarLevelLayoutView getStarLevelLayoutView() {
        return this.f36712m;
    }

    public void updateLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(10);
        this.f36697a.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(10);
        this.f36698b.setLayoutParams(layoutParams2);
    }
}
