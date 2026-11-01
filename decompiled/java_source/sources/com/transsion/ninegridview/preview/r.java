package com.transsion.ninegridview.preview;

import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.y;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.ninegridview.R$id;
import com.transsion.photoview.PhotoView;
import com.transsion.player.ui.ORPlayerView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class r extends ch.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.transsion.player.orplayer.g f47740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ORPlayerView f47741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f47742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f47743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Image f47744e;

    public r(com.transsion.player.orplayer.g player, ORPlayerView playerView) {
        Intrinsics.h(player, "player");
        Intrinsics.h(playerView, "playerView");
        this.f47740a = player;
        this.f47741b = playerView;
        this.f47742c = -1;
    }

    private final void e(View view) {
        PhotoView photoView = view != null ? (PhotoView) view.findViewById(R$id.video_cover) : null;
        if (photoView != null) {
            jg.c.g(photoView);
        }
    }

    private final void h(GifBean gifBean, View view, boolean z10) {
        i(view);
        com.transsion.player.orplayer.g gVar = this.f47740a;
        String videoUrl = gifBean.getVideoUrl();
        String str = videoUrl == null ? "" : videoUrl;
        String videoUrl2 = gifBean.getVideoUrl();
        if (videoUrl2 == null) {
            videoUrl2 = "";
        }
        gVar.setDataSource(new ao.e(str, videoUrl2, 0, null, null, 28, null));
        this.f47740a.prepare();
        this.f47740a.play();
        this.f47740a.setLooping(z10);
    }

    private final void i(View view) {
        Integer height;
        Integer width;
        PhotoView photoView;
        FrameLayout frameLayout = view != null ? (FrameLayout) view.findViewById(R$id.video_container) : null;
        ViewParent parent = this.f47741b.getParent();
        if (parent instanceof FrameLayout) {
            FrameLayout frameLayout2 = (FrameLayout) parent;
            frameLayout2.removeView(this.f47741b);
            ViewParent parent2 = frameLayout2.getParent();
            if ((parent2 instanceof FrameLayout) && (photoView = (PhotoView) ((FrameLayout) parent2).findViewById(R$id.video_cover)) != null) {
                jg.c.k(photoView);
            }
        }
        this.f47741b.setId(R$id.player_view);
        Image image = this.f47744e;
        float fE = (image == null || (width = image.getWidth()) == null) ? y.e() : width.intValue();
        Image image2 = this.f47744e;
        float fC = (image2 == null || (height = image2.getHeight()) == null) ? y.c() : height.intValue();
        float fE2 = y.e();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) fE2, (int) ((fC / fE) * fE2));
        layoutParams.gravity = 17;
        this.f47741b.setLayoutParams(layoutParams);
        if (frameLayout != null) {
            frameLayout.addView(this.f47741b);
        }
    }

    @Override // ch.a
    public void c(boolean z10, int i11, View view) {
    }

    public final void f(int i11, Image image, View view) {
        String videoUrl;
        this.f47742c = i11;
        this.f47743d = view;
        this.f47744e = image;
        GifBean gifBean = image != null ? image.getGifBean() : null;
        if (gifBean == null || (videoUrl = gifBean.getVideoUrl()) == null || videoUrl.length() <= 0) {
            return;
        }
        h(gifBean, view, true);
    }

    public void g() {
        e(this.f47743d);
    }
}
