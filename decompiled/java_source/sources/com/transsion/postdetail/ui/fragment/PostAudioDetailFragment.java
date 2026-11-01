package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.appbar.AppBarLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.moviedetailapi.bean.Audio;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.orplayer.PlayError;
import com.transsion.postdetail.R$dimen;
import com.transsion.postdetail.R$drawable;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u0000 <2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001=B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u0005J\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001a\u0010\u0005J!\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010!\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b!\u0010 J\u0019\u0010\"\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\"\u0010 J\u000f\u0010#\u001a\u00020\nH\u0016¢\u0006\u0004\b#\u0010\u0005J\r\u0010$\u001a\u00020\n¢\u0006\u0004\b$\u0010\u0005R\u0018\u0010'\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u001d\u00100\u001a\u0004\u0018\u00010+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u001d\u00105\u001a\u0004\u0018\u0001018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010-\u001a\u0004\b3\u00104R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010;\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00108¨\u0006>"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;", "Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;", "Lcom/transsion/player/orplayer/f;", "Lcom/transsion/room/api/IFloatingApi$a;", "<init>", "()V", "", "id", "Lcom/transsion/baselib/db/audio/AudioBean;", "audioBean", "", "q1", "(Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;)V", "r1", "", NotificationCompat.CATEGORY_PROGRESS, "s1", "(J)V", "l1", "n1", "m1", "getPageName", "()Ljava/lang/String;", "G0", "initAudioListener", "F0", "onDestroy", "Lao/e;", "mediaSource", "onProgress", "(JLao/e;)V", "onVideoStart", "(Lao/e;)V", "onVideoPause", "onCompletion", "onRemove", "p1", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/baselib/db/audio/AudioBean;", "mAudioBean", "l", "J", "realDuration", "Lcom/transsion/room/api/IAudioApi;", "m", "Lkotlin/Lazy;", "getMAudioApi", "()Lcom/transsion/room/api/IAudioApi;", "mAudioApi", "Lcom/transsion/room/api/IFloatingApi;", "n", "getMFloatApi", "()Lcom/transsion/room/api/IFloatingApi;", "mFloatApi", "", "o", "Z", "dealWith80", TtmlNode.TAG_P, "dealWithElse", CampaignEx.JSON_KEY_AD_Q, "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PostAudioDetailFragment extends PostDetailCommonFragment implements com.transsion.player.orplayer.f, IFloatingApi.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private AudioBean mAudioBean;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private long realDuration;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy mAudioApi = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.f1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostAudioDetailFragment.mAudioApi_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Lazy mFloatApi = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.g1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostAudioDetailFragment.o1();
        }
    });

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean dealWith80;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean dealWithElse;

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.PostAudioDetailFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PostAudioDetailFragment a(String str, boolean z10, String str2, PostSubjectItem postSubjectItem) {
            PostAudioDetailFragment postAudioDetailFragment = new PostAudioDetailFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            bundle.putBoolean("from_comment", z10);
            bundle.putString("rec_ops", str2);
            postAudioDetailFragment.setArguments(bundle);
            return postAudioDetailFragment;
        }
    }

    public static final class b implements SeekBar.OnSeekBarChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.LongRef f49556a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PostAudioDetailFragment f49557b;

        b(Ref.LongRef longRef, PostAudioDetailFragment postAudioDetailFragment) {
            this.f49556a = longRef;
            this.f49557b = postAudioDetailFragment;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i11, boolean z10) {
            if (z10) {
                this.f49556a.element = (long) (this.f49557b.realDuration * ((long) 1000) * (i11 / 100));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            IAudioApi mAudioApi = this.f49557b.getMAudioApi();
            if (mAudioApi != null) {
                mAudioApi.seekTo(this.f49556a.element);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IAudioApi getMAudioApi() {
        return (IAudioApi) this.mAudioApi.getValue();
    }

    private final IFloatingApi getMFloatApi() {
        return (IFloatingApi) this.mFloatApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j1(float f11, PostAudioDetailFragment postAudioDetailFragment, AppBarLayout appBarLayout, int i11) {
        if (i11 == 0 || Math.abs(i11) >= appBarLayout.getTotalScrollRange()) {
            return;
        }
        if (Math.abs(i11) <= f11) {
            if (postAudioDetailFragment.dealWithElse) {
                return;
            }
            postAudioDetailFragment.dealWithElse = true;
            postAudioDetailFragment.dealWith80 = false;
            postAudioDetailFragment.r1();
            return;
        }
        if (postAudioDetailFragment.dealWith80) {
            return;
        }
        postAudioDetailFragment.dealWith80 = true;
        postAudioDetailFragment.dealWithElse = false;
        so.p mViewBinding = postAudioDetailFragment.getMViewBinding();
        if (mViewBinding != null) {
            if (ak.x.f658a.a()) {
                mViewBinding.f75666u.setBackgroundResource(R$color.bg_01);
                mViewBinding.f75660o.setImageResource(R$mipmap.icon_white_back);
                mViewBinding.A.setTextColor(androidx.core.content.b.getColor(postAudioDetailFragment.requireActivity(), R$color.cl38));
            } else {
                mViewBinding.f75666u.setBackgroundResource(R$color.bg_01);
                mViewBinding.f75660o.setImageResource(R$mipmap.libui_ic_back_black);
                mViewBinding.A.setTextColor(androidx.core.content.b.getColor(postAudioDetailFragment.requireActivity(), R$color.text_01));
                mViewBinding.f75666u.setBackgroundResource(R$color.white);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k1(PostAudioDetailFragment postAudioDetailFragment, AppCompatImageView appCompatImageView, View view) {
        IAudioApi mAudioApi;
        IAudioApi mAudioApi2;
        IAudioApi mAudioApi3;
        AudioBean audioBean = postAudioDetailFragment.mAudioBean;
        if (audioBean == null) {
            IAudioApi mAudioApi4 = postAudioDetailFragment.getMAudioApi();
            if (mAudioApi4 != null && mAudioApi4.f()) {
                IAudioApi mAudioApi5 = postAudioDetailFragment.getMAudioApi();
                if (mAudioApi5 != null) {
                    mAudioApi5.pause();
                }
                appCompatImageView.setImageResource(R$drawable.post_icon_pro_play);
                com.transsion.postdetail.helper.a.t(com.transsion.postdetail.helper.a.f48866a, postAudioDetailFragment.getMPostDetailBean(), postAudioDetailFragment.getPageName(), null, 4, null);
                return;
            }
            IAudioApi mAudioApi6 = postAudioDetailFragment.getMAudioApi();
            if (mAudioApi6 == null || !mAudioApi6.c()) {
                IAudioApi mAudioApi7 = postAudioDetailFragment.getMAudioApi();
                if (mAudioApi7 != null) {
                    mAudioApi7.prepare();
                }
            } else {
                AudioBean audioBean2 = postAudioDetailFragment.mAudioBean;
                if (audioBean2 != null && (mAudioApi = postAudioDetailFragment.getMAudioApi()) != null) {
                    IAudioApi.a.a(mAudioApi, audioBean2, false, 2, null);
                }
            }
            appCompatImageView.setImageResource(R$drawable.post_icon_pro_pause);
            com.transsion.postdetail.helper.a.v(com.transsion.postdetail.helper.a.f48866a, postAudioDetailFragment.getMPostDetailBean(), postAudioDetailFragment.getPageName(), null, 4, null);
            return;
        }
        IAudioApi mAudioApi8 = postAudioDetailFragment.getMAudioApi();
        boolean zB = mAudioApi8 != null ? mAudioApi8.b(audioBean) : false;
        IFloatingApi mFloatApi = postAudioDetailFragment.getMFloatApi();
        if (mFloatApi != null) {
            mFloatApi.a(new WeakReference(postAudioDetailFragment.getActivity()), audioBean);
        }
        if (!zB) {
            AudioBean audioBean3 = postAudioDetailFragment.mAudioBean;
            if (audioBean3 != null && (mAudioApi2 = postAudioDetailFragment.getMAudioApi()) != null) {
                IAudioApi.a.a(mAudioApi2, audioBean3, false, 2, null);
            }
            appCompatImageView.setImageResource(R$drawable.post_icon_pro_pause);
            com.transsion.postdetail.helper.a.v(com.transsion.postdetail.helper.a.f48866a, postAudioDetailFragment.getMPostDetailBean(), postAudioDetailFragment.getPageName(), null, 4, null);
            return;
        }
        IAudioApi mAudioApi9 = postAudioDetailFragment.getMAudioApi();
        if (mAudioApi9 != null && mAudioApi9.f()) {
            IAudioApi mAudioApi10 = postAudioDetailFragment.getMAudioApi();
            if (mAudioApi10 != null) {
                mAudioApi10.pause();
            }
            appCompatImageView.setImageResource(R$drawable.post_icon_pro_play);
            com.transsion.postdetail.helper.a.t(com.transsion.postdetail.helper.a.f48866a, postAudioDetailFragment.getMPostDetailBean(), postAudioDetailFragment.getPageName(), null, 4, null);
            return;
        }
        IAudioApi mAudioApi11 = postAudioDetailFragment.getMAudioApi();
        if (mAudioApi11 == null || !mAudioApi11.c()) {
            IAudioApi mAudioApi12 = postAudioDetailFragment.getMAudioApi();
            if (mAudioApi12 != null) {
                mAudioApi12.prepare();
            }
        } else {
            AudioBean audioBean4 = postAudioDetailFragment.mAudioBean;
            if (audioBean4 != null && (mAudioApi3 = postAudioDetailFragment.getMAudioApi()) != null) {
                IAudioApi.a.a(mAudioApi3, audioBean4, false, 2, null);
            }
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_pro_pause);
        com.transsion.postdetail.helper.a.v(com.transsion.postdetail.helper.a.f48866a, postAudioDetailFragment.getMPostDetailBean(), postAudioDetailFragment.getPageName(), null, 4, null);
    }

    private final void l1() {
        Media media;
        List<Audio> audio;
        Group group;
        Subject subject;
        Subject subject2;
        PostSubjectItem mPostDetailBean = getMPostDetailBean();
        if (mPostDetailBean == null || (media = mPostDetailBean.getMedia()) == null || (audio = media.getAudio()) == null || audio.size() <= 0) {
            return;
        }
        Audio audio2 = audio.get(0);
        Long duration = audio2.getDuration();
        this.realDuration = duration != null ? duration.longValue() : 0L;
        String url = audio2.getUrl();
        if (url == null) {
            url = "";
        }
        String str = url;
        PostSubjectItem mPostDetailBean2 = getMPostDetailBean();
        String coverUrl$default = mPostDetailBean2 != null ? PostSubjectItem.getCoverUrl$default(mPostDetailBean2, false, 1, null) : null;
        Long duration2 = audio2.getDuration();
        Integer size = audio2.getSize();
        Long lValueOf = size != null ? Long.valueOf(size.intValue()) : null;
        String url2 = audio2.getUrl();
        PostSubjectItem mPostDetailBean3 = getMPostDetailBean();
        String title = mPostDetailBean3 != null ? mPostDetailBean3.getTitle() : null;
        PostSubjectItem mPostDetailBean4 = getMPostDetailBean();
        String content = mPostDetailBean4 != null ? mPostDetailBean4.getContent() : null;
        Integer bitrate = audio2.getBitrate();
        PostSubjectItem mPostDetailBean5 = getMPostDetailBean();
        String rec_ops = mPostDetailBean5 != null ? mPostDetailBean5.getRec_ops() : null;
        PostSubjectItem mPostDetailBean6 = getMPostDetailBean();
        String postId = mPostDetailBean6 != null ? mPostDetailBean6.getPostId() : null;
        PostSubjectItem mPostDetailBean7 = getMPostDetailBean();
        String subjectId = (mPostDetailBean7 == null || (subject2 = mPostDetailBean7.getSubject()) == null) ? null : subject2.getSubjectId();
        PostSubjectItem mPostDetailBean8 = getMPostDetailBean();
        String title2 = (mPostDetailBean8 == null || (subject = mPostDetailBean8.getSubject()) == null) ? null : subject.getTitle();
        PostSubjectItem mPostDetailBean9 = getMPostDetailBean();
        AudioBean audioBean = new AudioBean(str, coverUrl$default, duration2, lValueOf, url2, title, content, bitrate, null, null, null, rec_ops, null, postId, subjectId, (mPostDetailBean9 == null || (group = mPostDetailBean9.getGroup()) == null) ? null : group.getGroupId(), 0, title2, 0, 0, 857856, null);
        this.mAudioBean = audioBean;
        IFloatingApi mFloatApi = getMFloatApi();
        if (mFloatApi != null) {
            mFloatApi.a(new WeakReference(getActivity()), audioBean);
        }
        IFloatingApi mFloatApi2 = getMFloatApi();
        if (mFloatApi2 != null) {
            mFloatApi2.h();
        }
        IFloatingApi mFloatApi3 = getMFloatApi();
        if (mFloatApi3 != null) {
            mFloatApi3.d(this);
        }
        IAudioApi mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            IAudioApi.a.a(mAudioApi, audioBean, false, 2, null);
        }
        com.transsion.postdetail.helper.a.b(com.transsion.postdetail.helper.a.f48866a, getMPostDetailBean(), getPageName(), null, 4, null);
    }

    private final void m1() {
        AppCompatSeekBar appCompatSeekBar;
        Ref.LongRef longRef = new Ref.LongRef();
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatSeekBar = mViewBinding.f75650e) == null) {
            return;
        }
        appCompatSeekBar.setOnSeekBarChangeListener(new b(longRef, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi mAudioApi_delegate$lambda$0() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    private final void n1() {
        String thumbnail;
        Integer width;
        String url;
        AppCompatImageView appCompatImageView;
        Media media;
        Subject subject;
        Cover cover;
        Subject subject2;
        Cover cover2;
        Subject subject3;
        Cover cover3;
        Subject subject4;
        Cover cover4;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        PostSubjectItem mPostDetailBean = getMPostDetailBean();
        Integer height = null;
        if (TextUtils.isEmpty(mPostDetailBean != null ? PostSubjectItem.getCoverUrl$default(mPostDetailBean, false, 1, null) : null)) {
            so.p mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatImageView3 = mViewBinding.f75661p) != null) {
                appCompatImageView3.setImageResource(com.transsion.baseui.R$mipmap.default_audio_ic_9_16);
            }
            so.p mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (appCompatImageView2 = mViewBinding2.f75658m) == null) {
                return;
            }
            jg.c.g(appCompatImageView2);
            return;
        }
        PostSubjectItem mPostDetailBean2 = getMPostDetailBean();
        if (mPostDetailBean2 == null || (media = mPostDetailBean2.getMedia()) == null) {
            thumbnail = "";
            width = 0;
            height = null;
            url = thumbnail;
        } else {
            Cover cover5 = media.getCover();
            url = cover5 != null ? cover5.getUrl() : null;
            Cover cover6 = media.getCover();
            thumbnail = cover6 != null ? cover6.getThumbnail() : null;
            Cover cover7 = media.getCover();
            Integer width2 = cover7 != null ? cover7.getWidth() : null;
            Cover cover8 = media.getCover();
            Integer height2 = cover8 != null ? cover8.getHeight() : null;
            if (TextUtils.isEmpty(url)) {
                PostSubjectItem mPostDetailBean3 = getMPostDetailBean();
                url = (mPostDetailBean3 == null || (subject4 = mPostDetailBean3.getSubject()) == null || (cover4 = subject4.getCover()) == null) ? null : cover4.getUrl();
                PostSubjectItem mPostDetailBean4 = getMPostDetailBean();
                thumbnail = (mPostDetailBean4 == null || (subject3 = mPostDetailBean4.getSubject()) == null || (cover3 = subject3.getCover()) == null) ? null : cover3.getThumbnail();
                PostSubjectItem mPostDetailBean5 = getMPostDetailBean();
                width = (mPostDetailBean5 == null || (subject2 = mPostDetailBean5.getSubject()) == null || (cover2 = subject2.getCover()) == null) ? null : cover2.getWidth();
                PostSubjectItem mPostDetailBean6 = getMPostDetailBean();
                if (mPostDetailBean6 != null && (subject = mPostDetailBean6.getSubject()) != null && (cover = subject.getCover()) != null) {
                    height = cover.getHeight();
                }
            } else {
                height = height2;
                width = width2;
            }
        }
        so.p mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (appCompatImageView = mViewBinding3.f75661p) == null) {
            return;
        }
        ej.f.a aVar = ej.f.f61882a;
        Context context = appCompatImageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        ej.f.b bVarM = aVar.m(context);
        if (url == null) {
            url = "";
        }
        bVarM.g(url).i(R$color.cl37).m(width != null ? width.intValue() : aVar.c()).c(height != null ? height.intValue() : aVar.c()).l(thumbnail != null ? thumbnail : "").d(appCompatImageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFloatingApi o1() {
        return (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
    }

    private final void q1(String id2, AudioBean audioBean) {
        Intent intent = new Intent();
        intent.putExtra(MimeTypes.BASE_TYPE_AUDIO, audioBean);
        intent.putExtra("id", id2);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.setResult(-1, intent);
        }
    }

    private final void r1() {
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f75660o.setImageResource(R$mipmap.icon_white_back);
            mViewBinding.A.setTextColor(androidx.core.content.b.getColor(requireActivity(), R$color.cl38));
            mViewBinding.f75666u.setBackgroundResource(com.tn.lib.widget.R$drawable.libui_mask_cl45_0p_to_30p);
        }
    }

    private final void s1(long progress) {
        AppCompatImageView appCompatImageView;
        TextView textView;
        AppCompatSeekBar appCompatSeekBar;
        AppCompatSeekBar appCompatSeekBar2;
        long j11 = this.realDuration * ((long) 1000);
        int i11 = (int) ((progress / j11) * 100);
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatSeekBar2 = mViewBinding.f75650e) != null) {
            appCompatSeekBar2.setProgress(i11);
        }
        so.p mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatSeekBar = mViewBinding2.f75650e) != null) {
            appCompatSeekBar.setProgress(i11);
        }
        String str = com.transsion.postdetail.util.n.d(progress) + "/" + com.transsion.postdetail.util.n.d(j11);
        so.p mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (textView = mViewBinding3.f75647b) != null) {
            textView.setText(str);
        }
        so.p mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (appCompatImageView = mViewBinding4.f75649d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_pro_pause);
    }

    @Override // com.transsion.postdetail.ui.fragment.PostDetailCommonFragment
    public void F0() {
        View view;
        Media media;
        List<Audio> audio;
        AppCompatImageView appCompatImageView;
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView = mViewBinding.f75661p) != null) {
            jg.c.k(appCompatImageView);
        }
        PostSubjectItem mPostDetailBean = getMPostDetailBean();
        if (mPostDetailBean != null && (media = mPostDetailBean.getMedia()) != null && (audio = media.getAudio()) != null && (!audio.isEmpty())) {
            l1();
            n1();
        }
        so.p mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (view = mViewBinding2.C) == null) {
            return;
        }
        view.setVisibility(8);
    }

    @Override // com.transsion.postdetail.ui.fragment.PostDetailCommonFragment
    public void G0() {
        AppBarLayout appBarLayout;
        androidx.constraintlayout.widget.Group group;
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f75657l) != null) {
            group.setVisibility(0);
        }
        r1();
        final float dimension = getResources().getDimension(R$dimen.post_surface_height);
        so.p mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appBarLayout = mViewBinding2.f75651f) == null) {
            return;
        }
        appBarLayout.addOnOffsetChangedListener(new AppBarLayout.g() { // from class: com.transsion.postdetail.ui.fragment.d1
            @Override // com.google.android.material.appbar.AppBarLayout.b
            public final void onOffsetChanged(AppBarLayout appBarLayout2, int i11) {
                PostAudioDetailFragment.j1(dimension, this, appBarLayout2, i11);
            }
        });
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    @Override // com.transsion.postdetail.ui.fragment.PostDetailCommonFragment
    public String getPageName() {
        return "postdetail_audio";
    }

    @Override // com.transsion.postdetail.ui.fragment.PostDetailCommonFragment
    public void initAudioListener() {
        final AppCompatImageView appCompatImageView;
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView = mViewBinding.f75649d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.e1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PostAudioDetailFragment.k1(this.f49677a, appCompatImageView, view);
                }
            });
        }
        IAudioApi mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.addPlayerListener(this);
        }
        m1();
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f.a.c(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.d(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e mediaSource) {
        boolean zC;
        so.p mViewBinding;
        AppCompatImageView appCompatImageView;
        com.transsion.player.orplayer.f.a.e(this, mediaSource);
        AudioBean audioBean = this.mAudioBean;
        if (audioBean != null) {
            IAudioApi mAudioApi = getMAudioApi();
            zC = Intrinsics.c(mAudioApi != null ? Boolean.valueOf(mAudioApi.b(audioBean)) : null, Boolean.TRUE);
        } else {
            zC = false;
        }
        if (!zC || (mViewBinding = getMViewBinding()) == null || (appCompatImageView = mViewBinding.f75649d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_play);
    }

    @Override // com.transsion.postdetail.ui.fragment.PostDetailCommonFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        IAudioApi mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.removePlayerListener(this);
        }
        IFloatingApi mFloatApi = getMFloatApi();
        if (mFloatApi != null) {
            mFloatApi.j(this);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f.a.g(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.f.a.h(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(ao.e eVar) {
        com.transsion.player.orplayer.f.a.i(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e eVar) {
        com.transsion.player.orplayer.f.a.k(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        com.transsion.player.orplayer.f.a.o(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.f.a.p(this, str);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError playError, ao.e eVar) {
        com.transsion.player.orplayer.f.a.q(this, playError, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e eVar) {
        com.transsion.player.orplayer.f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        com.transsion.player.orplayer.f.a.v(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e eVar) {
        com.transsion.player.orplayer.f.a.w(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long progress, ao.e mediaSource) {
        boolean zC;
        AppCompatImageView appCompatImageView;
        com.transsion.player.orplayer.f.a.y(this, progress, mediaSource);
        AudioBean audioBean = this.mAudioBean;
        if (audioBean != null) {
            IAudioApi mAudioApi = getMAudioApi();
            zC = Intrinsics.c(mAudioApi != null ? Boolean.valueOf(mAudioApi.b(audioBean)) : null, Boolean.TRUE);
        } else {
            zC = false;
        }
        if (zC) {
            s1(progress);
            return;
        }
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f75649d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_play);
    }

    @Override // com.transsion.room.api.IFloatingApi.a
    public void onRemove() {
        AppCompatImageView appCompatImageView;
        so.p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f75649d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_pro_play);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.C(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c cVar) {
        com.transsion.player.orplayer.f.a.D(this, cVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.E(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(ao.e mediaSource) {
        boolean zC;
        so.p mViewBinding;
        AppCompatImageView appCompatImageView;
        com.transsion.player.orplayer.f.a.F(this, mediaSource);
        AudioBean audioBean = this.mAudioBean;
        if (audioBean != null) {
            IAudioApi mAudioApi = getMAudioApi();
            zC = Intrinsics.c(mAudioApi != null ? Boolean.valueOf(mAudioApi.b(audioBean)) : null, Boolean.TRUE);
        } else {
            zC = false;
        }
        if (!zC || (mViewBinding = getMViewBinding()) == null || (appCompatImageView = mViewBinding.f75649d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_play);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e mediaSource) {
        boolean zC;
        so.p mViewBinding;
        AppCompatImageView appCompatImageView;
        com.transsion.player.orplayer.f.a.I(this, mediaSource);
        AudioBean audioBean = this.mAudioBean;
        if (audioBean != null) {
            IAudioApi mAudioApi = getMAudioApi();
            zC = Intrinsics.c(mAudioApi != null ? Boolean.valueOf(mAudioApi.b(audioBean)) : null, Boolean.TRUE);
        } else {
            zC = false;
        }
        if (!zC || (mViewBinding = getMViewBinding()) == null || (appCompatImageView = mViewBinding.f75649d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_pro_pause);
    }

    public final void p1() {
        IAudioApi mAudioApi = getMAudioApi();
        if (mAudioApi == null || !mAudioApi.f()) {
            return;
        }
        q1(null, this.mAudioBean);
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }
}
