package com.transsion.audio.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.integration.webp.decoder.WebpDrawableTransformation;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.google.android.material.card.MaterialCardView;
import com.therouter.TheRouter;
import com.transsion.audio.R$id;
import com.transsion.audio.R$layout;
import com.transsion.audio.R$mipmap;
import com.transsion.audio.player.AudioPlayer;
import com.transsion.audio.viewmodel.HistoryListManager;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.report.l;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.room.api.IAudioApi;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.manager.p;
import java.util.ArrayList;
import java.util.List;
import oh.h;

/* JADX INFO: loaded from: classes5.dex */
public class EnFloatingView extends FloatingMagnetView implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final bj.d f42929h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List f42930i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f42931j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private f f42932k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f42933l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Boolean f42934m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    DownloadListBean f42935n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final lj.a f42936o;

    class a extends lj.a {
        a() {
        }

        @Override // lj.a, lj.m0
        public void e(DownloadBean downloadBean, String str) {
            if (downloadBean.isVideo()) {
                return;
            }
            AudioBean audioBeanM = com.transsion.audio.view.d.k().m();
            if (TextUtils.equals(audioBeanM.getResourceId(), downloadBean.getResourceId()) && audioBeanM.getUrl() != null && downloadBean.getPath() != null && audioBeanM.getUrl().startsWith("http")) {
                audioBeanM.setUrl(downloadBean.getPath());
                audioBeanM.setChangeToLocalPath(true);
                HistoryListManager.f42961e.b().k(audioBeanM);
            }
        }
    }

    class b implements Animation.AnimationListener {
        b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            EnFloatingView.this.f42929h.f16566c.setVisibility(8);
            EnFloatingView.this.f42934m = Boolean.FALSE;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            EnFloatingView.this.f42934m = Boolean.TRUE;
        }
    }

    class c implements Animation.AnimationListener {
        c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            EnFloatingView.this.f42929h.f16565b.setVisibility(0);
            EnFloatingView enFloatingView = EnFloatingView.this;
            enFloatingView.setLayoutParams(enFloatingView.q(true));
        }
    }

    class d implements Animation.AnimationListener {
        d() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            EnFloatingView.this.f42929h.f16566c.setVisibility(0);
        }
    }

    class e implements Animation.AnimationListener {
        e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            EnFloatingView.this.f42929h.f16565b.setVisibility(8);
            EnFloatingView enFloatingView = EnFloatingView.this;
            enFloatingView.setLayoutParams(enFloatingView.q(false));
            EnFloatingView.this.f42934m = Boolean.FALSE;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            EnFloatingView.this.f42934m = Boolean.TRUE;
        }
    }

    interface f {
        void a(ViewGroup viewGroup);

        void b(ViewGroup viewGroup);
    }

    public EnFloatingView(@NonNull Context context) {
        this(context, R$layout.new_en_floating_view);
    }

    public EnFloatingView(@NonNull Context context, int i11) {
        super(context, null);
        this.f42930i = new ArrayList();
        this.f42931j = 0;
        this.f42934m = Boolean.FALSE;
        this.f42935n = null;
        this.f42936o = new a();
        View.inflate(context, i11, this);
        this.f42929h = bj.d.a((ConstraintLayout) findViewById(R$id.clRoot));
        r();
        s();
        setLayoutParams(q(true));
    }

    private void A() {
        if (this.f42929h == null) {
            return;
        }
        CenterInside centerInside = new CenterInside();
        Glide.with(getContext().getApplicationContext()).load(Integer.valueOf(R$mipmap.libui_audio_playing_2)).optionalTransform(centerInside).optionalTransform(WebpDrawable.class, new WebpDrawableTransformation(centerInside)).into(this.f42929h.f16570g);
        this.f42929h.f16571h.setImageResource(R$mipmap.ic_audio_ctl_play);
    }

    private void o() {
        if (this.f42929h == null) {
            return;
        }
        AudioPlayer.a aVar = AudioPlayer.f42889i;
        if (aVar.a().J()) {
            aVar.a().T();
            this.f42929h.f16571h.setImageResource(R$mipmap.ic_audio_ctl_pause);
            return;
        }
        AudioBean audioBeanM = com.transsion.audio.view.d.k().m();
        if (audioBeanM.getIsChangeToLocalPath()) {
            audioBeanM.setChangeToLocalPath(false);
            aVar.a().L(audioBeanM);
        } else {
            aVar.a().K();
        }
        this.f42929h.f16571h.setImageResource(R$mipmap.ic_audio_ctl_play);
    }

    private int p() {
        return (int) TypedValue.applyDimension(1, 80.0f, Resources.getSystem().getDisplayMetrics());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FrameLayout.LayoutParams q(boolean z10) {
        FrameLayout.LayoutParams layoutParams = z10 ? new FrameLayout.LayoutParams(-1, -2) : new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
        layoutParams.setMargins(0, layoutParams.topMargin, layoutParams.rightMargin, p());
        return layoutParams;
    }

    private void r() {
        HistoryListManager.f42961e.b().r();
    }

    private void s() {
        bj.d dVar = this.f42929h;
        if (dVar != null) {
            dVar.f16571h.setOnClickListener(this);
            this.f42929h.f16569f.setOnClickListener(this);
            this.f42929h.f16568e.setOnClickListener(this);
            this.f42929h.f16572i.setOnClickListener(this);
            this.f42929h.f16566c.setOnClickListener(this);
        }
        p.f59500a.a(Utils.a()).e(this.f42936o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(List list) {
        if (list.isEmpty()) {
            return;
        }
        this.f42930i = list;
        this.f42931j = 0;
        this.f42929h.f16569f.setImageResource(list.size() + (-1) > this.f42931j ? R$mipmap.ic_audio_next_enable : R$mipmap.ic_audio_next_disable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(DownloadListBean downloadListBean) {
        if (downloadListBean == null || downloadListBean.getItems() == null || downloadListBean.getItems().size() <= 0) {
            return;
        }
        this.f42935n = downloadListBean;
    }

    private void v() {
        bj.d dVar = this.f42929h;
        if (dVar == null) {
            return;
        }
        dVar.f16571h.setImageResource(R$mipmap.ic_audio_ctl_pause);
        this.f42929h.f16570g.setImageResource(R$mipmap.ic_audio_right);
    }

    private void w() {
        DownloadListBean downloadListBean;
        AudioPlayer.f42889i.a().T();
        AudioBean audioBeanM = com.transsion.audio.view.d.k().m();
        if (audioBeanM == null || TextUtils.isEmpty(audioBeanM.getSubjectId()) || (downloadListBean = this.f42935n) == null || downloadListBean.getItems().isEmpty()) {
            int size = this.f42930i.size() - 1;
            int i11 = this.f42931j;
            if (size > i11) {
                List list = this.f42930i;
                int i12 = i11 + 1;
                this.f42931j = i12;
                AudioBean audioBean = (AudioBean) list.get(i12);
                if (audioBean != null) {
                    ((IAudioApi) TheRouter.d(IAudioApi.class, new Object[0])).d(audioBean, true);
                    return;
                }
                return;
            }
            return;
        }
        List<DownloadItem> items = this.f42935n.getItems();
        int i13 = 0;
        while (true) {
            if (i13 >= items.size()) {
                i13 = -1;
                break;
            } else if (TextUtils.equals(audioBeanM.getPostId(), items.get(i13).getPostId())) {
                break;
            } else {
                i13++;
            }
        }
        if (i13 == -1 || i13 >= items.size() - 2) {
            return;
        }
        DownloadItem downloadItem = items.get(i13 + 1);
        String url = downloadItem.getUrl();
        String url2 = this.f42935n.getCover().getUrl();
        if (TextUtils.isEmpty(url)) {
            url = "";
        }
        ((IAudioApi) TheRouter.d(IAudioApi.class, new Object[0])).d(new AudioBean(url, url2, 0L, downloadItem.getSize(), downloadItem.getUrl(), downloadItem.getName(), "", 0, 0L, 0L, "", "", downloadItem.getResourceId(), downloadItem.getPostId(), this.f42935n.getSubjectId(), this.f42935n.getGroupId(), 0, "", downloadItem.getSe(), downloadItem.getEp()), true);
    }

    private void x() {
        f fVar = this.f42932k;
        if (fVar != null) {
            fVar.a(this);
        }
        AudioPlayer.f42889i.a().q();
        p.f59500a.a(Utils.a()).x(this.f42936o);
    }

    private void y(boolean z10) {
        String str;
        AudioBean audioBeanM = com.transsion.audio.view.d.k().m();
        if (audioBeanM == null || this.f42929h == null) {
            return;
        }
        try {
            String title = audioBeanM.getTitle();
            if (TextUtils.isEmpty(title)) {
                title = audioBeanM.getDesc();
            }
            this.f42929h.f16574k.setText(title);
            Long readProcess = audioBeanM.getReadProcess();
            Long duration = audioBeanM.getDuration();
            if (readProcess != null && duration != null) {
                if (z10) {
                    str = "00:00/00:00";
                } else {
                    str = dj.a.a(readProcess.longValue()) + "/" + dj.a.a(duration.longValue());
                }
                this.f42929h.f16575l.setText(str);
            }
        } catch (Exception unused) {
        }
    }

    private void z() {
        f fVar = this.f42932k;
        if (fVar != null) {
            fVar.b(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.audio.view.FloatingMagnetView
    public void attach(Context context) {
        if (this.f42929h == null) {
            return;
        }
        HistoryListManager.a aVar = HistoryListManager.f42961e;
        aVar.b().p().j((u) context, new c0() { // from class: com.transsion.audio.view.a
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                this.f42949a.t((List) obj);
            }
        });
        aVar.b().v().j((u) getContext(), new c0() { // from class: com.transsion.audio.view.b
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                this.f42950a.u((DownloadListBean) obj);
            }
        });
        aVar.b().r();
    }

    @Override // com.transsion.audio.view.FloatingMagnetView
    public void expanded() {
        bj.d dVar = this.f42929h;
        if (dVar == null) {
            return;
        }
        dVar.f16566c.setVisibility(8);
        this.f42929h.f16565b.setVisibility(0);
        setLayoutParams(q(true));
    }

    public void expandedAnimation() {
        if (this.f42929h == null || this.f42934m.booleanValue()) {
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setAnimationListener(new b());
        this.f42929h.f16566c.setAnimation(alphaAnimation);
        TranslateAnimation translateAnimation = new TranslateAnimation(-h.f71021a.e(getContext()), 0.0f, 0.0f, 0.0f);
        translateAnimation.setAnimationListener(new c());
        translateAnimation.setDuration(300L);
        this.f42929h.f16565b.startAnimation(translateAnimation);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(translateAnimation);
        animationSet.startNow();
    }

    @Override // com.transsion.audio.view.FloatingMagnetView
    public boolean isPackUp() {
        bj.d dVar = this.f42929h;
        return dVar != null && dVar.f16565b.getVisibility() == 8;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R$id.iv_play) {
            o();
            return;
        }
        if (view.getId() == R$id.iv_next) {
            w();
            return;
        }
        if (view.getId() == R$id.iv_history) {
            z();
        } else if (view.getId() == R$id.iv_remove) {
            x();
        } else if (view.getId() == R$id.clPackUp) {
            expandedAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.transsion.audio.view.FloatingMagnetView
    public void onProgress(int i11) {
        bj.d dVar = this.f42929h;
        if (dVar == null) {
            return;
        }
        dVar.f16573j.setProgress(i11);
        y(false);
    }

    @Override // com.transsion.audio.view.FloatingMagnetView
    public void onSlideTheLeft() {
        packUpAnimation();
    }

    @Override // com.transsion.audio.view.FloatingMagnetView
    public void onStateChanged(int i11) {
        if (i11 == 3) {
            A();
            return;
        }
        if (i11 == 4 || i11 == 5) {
            v();
        } else {
            if (i11 != 6) {
                return;
            }
            v();
            w();
        }
    }

    @Override // com.transsion.audio.view.FloatingMagnetView
    public void onViewClick() {
        AudioBean audioBeanM;
        Activity activityO = l.f43359a.o();
        if (activityO == null || activityO.getClass().getSimpleName().contains("PostDetailActivity") || (audioBeanM = com.transsion.audio.view.d.k().m()) == null) {
            return;
        }
        if (TextUtils.isEmpty(audioBeanM.getPostId())) {
            uh.b.f76753a.e("This page is unavailable");
        } else {
            TheRouter.c("/post/detail").K(WebConstants.PAGE_FROM, "audio_list").K("id", audioBeanM.getPostId()).K("media_type", MediaType.AUDIO.getValue()).z("from_comment", false).r(getContext());
        }
    }

    @Override // com.transsion.audio.view.FloatingMagnetView
    public void packUp() {
        bj.d dVar = this.f42929h;
        if (dVar == null) {
            return;
        }
        dVar.f16566c.setVisibility(0);
        this.f42929h.f16565b.setVisibility(8);
        setLayoutParams(q(false));
    }

    @Override // com.transsion.audio.view.FloatingMagnetView
    public void packUpAnimation() {
        bj.d dVar = this.f42929h;
        if (dVar == null || dVar.f16565b.getVisibility() == 8 || this.f42934m.booleanValue() || com.transsion.audio.view.d.k().o().booleanValue()) {
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setAnimationListener(new d());
        this.f42929h.f16566c.setAnimation(alphaAnimation);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, -h.f71021a.e(getContext()), 0.0f, 0.0f);
        translateAnimation.setAnimationListener(new e());
        translateAnimation.setDuration(300L);
        this.f42929h.f16565b.startAnimation(translateAnimation);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(translateAnimation);
        animationSet.startNow();
    }

    @Override // com.transsion.audio.view.FloatingMagnetView
    public void prepare() {
        AudioBean audioBeanM = com.transsion.audio.view.d.k().m();
        if (audioBeanM == null || this.f42929h == null) {
            return;
        }
        this.f42933l = audioBeanM.getCover();
        Long readProcess = audioBeanM.getReadProcess();
        Long duration = audioBeanM.getDuration();
        if (readProcess == null || duration == null) {
            return;
        }
        if (duration.longValue() <= 0) {
            duration = 1L;
        }
        this.f42929h.f16573j.setProgress(com.cloud.hisavana.sdk.common.util.l.a((readProcess.longValue() / duration.longValue()) * 100));
        this.f42929h.f16569f.setImageResource(this.f42930i.size() - 1 > this.f42931j ? R$mipmap.ic_audio_next_enable : R$mipmap.ic_audio_next_disable);
        y(true);
    }

    @Override // com.transsion.audio.view.FloatingMagnetView
    public void setOnOptionListener(f fVar) {
        this.f42932k = fVar;
    }
}
