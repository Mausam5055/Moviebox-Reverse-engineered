package com.transsion.ninegridview.preview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.ninegridview.R$string;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¹\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0004\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0006*\u0001g\u0018\u0000 j2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001kB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0005J#\u0010\u000f\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0011\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0005J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b!\u0010 J\u0019\u0010$\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010\"H\u0014¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0002H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\r\u0010+\u001a\u00020\u0006¢\u0006\u0004\b+\u0010\u0005J/\u00102\u001a\u00020\u00062\u0006\u0010-\u001a\u00020,2\u000e\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0.2\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020(H\u0016¢\u0006\u0004\b4\u0010*J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\u0005J\u000f\u00108\u001a\u00020\u0006H\u0014¢\u0006\u0004\b8\u0010\u0005J\u0017\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010=\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b=\u0010<J%\u0010B\u001a\u00020,2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020,¢\u0006\u0004\bB\u0010CJ%\u0010E\u001a\u00020>2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020D2\u0006\u0010A\u001a\u00020D¢\u0006\u0004\bE\u0010FJ%\u0010G\u001a\u00020,2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020,¢\u0006\u0004\bG\u0010CJ\u000f\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bI\u0010JR\u0014\u0010K\u001a\u00020,8\u0002X\u0082D¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u001e\u0010R\u001a\n\u0012\u0004\u0012\u00020Q\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0018\u0010T\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010V\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010LR\u0016\u0010W\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010LR\u0016\u0010X\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010LR\u0016\u0010Y\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010LR\u0016\u0010Z\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010LR\u0018\u0010\\\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0018\u0010_\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0014\u0010b\u001a\u00020a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010cR\u0018\u0010d\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010f\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010eR\u0014\u0010h\u001a\u00020g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010i¨\u0006l"}, d2 = {"Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lon/a;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "initView", "startEnterTheAnimation", "downloadImage", "showPageIndex", "Ljava/io/File;", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "", "url", "saveToAlbum", "(Ljava/io/File;Ljava/lang/String;)V", "getNameFromUrl", "(Ljava/lang/String;)Ljava/lang/String;", "requestPermission", "showSettingDialog", "initPlayer", "Landroid/view/View;", "getItemView", "()Landroid/view/View;", "Landroid/widget/ImageView;", "imageView", "computeImageWidthAndHeight", "(Landroid/widget/ImageView;)V", "Landroid/animation/ValueAnimator;", "valueAnimator", "addIntoListener", "(Landroid/animation/ValueAnimator;)V", "addOutListener", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "getViewBinding", "()Lon/a;", "", "isTranslucent", "()Z", "finishActivityAnim", "", "requestCode", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "isAttach", "onBackPressed", "onResume", "onPause", "onDestroy", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "", "fraction", "startValue", "endValue", "evaluateInt", "(FII)I", "", "evaluateFloat", "(FLjava/lang/Number;Ljava/lang/Number;)F", "evaluateArgb", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "REQUEST_PERMISSION_STORAGE", "I", "Lcom/transsion/ninegridview/preview/c;", "imagePreviewAdapter", "Lcom/transsion/ninegridview/preview/c;", "", "Lcom/transsion/moviedetailapi/bean/Image;", "imageList", "Ljava/util/List;", "isBuiltInApp", "Ljava/lang/Boolean;", "currentItemIndex", "imageHeight", "imageWidth", "screenWidth", "screenHeight", "Lcom/transsion/player/orplayer/g;", "mPlayer", "Lcom/transsion/player/orplayer/g;", "Lcom/transsion/ninegridview/preview/r;", "mPageChange", "Lcom/transsion/ninegridview/preview/r;", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "pageFrom", "Ljava/lang/String;", "postId", "com/transsion/ninegridview/preview/GifImagePreviewActivity$g", "mOnPageChangeCallback", "Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;", "Companion", "a", "NineGridView_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class GifImagePreviewActivity extends BaseActivity<on.a> implements TRDialogListener {
    public static final int ANIMATE_DURATION = 200;
    public static final String CURRENT_ITEM = "CURRENT_ITEM";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String IMAGE_LIST = "image_list";
    public static final String IS_BUILTIN = "IS_BUILTIN";
    private static final String PAGE_NAME = "gif_image_preview";
    public static final String PICTURE_SAVE = "oneroom";
    public static final int PLAY_GIF_AGAIN = 102;
    public static final String POST_ID = "POST_ID";
    public static final int REQUEST_PERMISSION_SETTING = 101;
    private int currentItemIndex;
    private int imageHeight;
    private List<Image> imageList;
    private com.transsion.ninegridview.preview.c imagePreviewAdapter;
    private int imageWidth;
    private r mPageChange;
    private com.transsion.player.orplayer.g mPlayer;
    private String pageFrom;
    private String postId;
    private int screenHeight;
    private int screenWidth;
    private final int REQUEST_PERMISSION_STORAGE = 100;
    private Boolean isBuiltInApp = Boolean.FALSE;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final g mOnPageChangeCallback = new g();

    /* JADX INFO: renamed from: com.transsion.ninegridview.preview.GifImagePreviewActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, int i11, List list) {
            Intrinsics.h(context, "context");
            Intent intent = new Intent(context, (Class<?>) GifImagePreviewActivity.class);
            Bundle bundle = new Bundle();
            Intrinsics.f(list, "null cannot be cast to non-null type java.io.Serializable");
            bundle.putSerializable(GifImagePreviewActivity.IMAGE_LIST, (Serializable) list);
            bundle.putInt("CURRENT_ITEM", i11);
            intent.putExtras(bundle);
            context.startActivity(intent);
        }
    }

    public static final class b implements Animator.AnimatorListener {
        b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            Intrinsics.h(animation, "animation");
            ((on.a) GifImagePreviewActivity.this.getMViewBinding()).f71043d.setBackgroundColor(0);
        }
    }

    public static final class c implements Animator.AnimatorListener {
        c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            GifImagePreviewActivity.this.finish();
            GifImagePreviewActivity.this.overridePendingTransition(0, 0);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            Intrinsics.h(animation, "animation");
            ((on.a) GifImagePreviewActivity.this.getMViewBinding()).f71043d.setBackgroundColor(0);
        }
    }

    public static final class d implements RequestListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Image f47695b;

        d(Image image) {
            this.f47695b = image;
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean onResourceReady(File resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(target, "target");
            Intrinsics.h(dataSource, "dataSource");
            GifImagePreviewActivity gifImagePreviewActivity = GifImagePreviewActivity.this;
            Image image = this.f47695b;
            gifImagePreviewActivity.saveToAlbum(resource, image != null ? image.getUrl() : null);
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            uh.b.f76753a.d(R$string.download_failed);
            return false;
        }
    }

    public static final class e implements Animation.AnimationListener {
        e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Intrinsics.h(animation, "animation");
            GifImagePreviewActivity.this.finish();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            Intrinsics.h(animation, "animation");
        }
    }

    public static final class f implements com.transsion.player.orplayer.f {
        f() {
        }

        @Override // com.transsion.player.orplayer.f
        public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
            com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
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
        public void onCompletion(ao.e eVar) {
            com.transsion.player.orplayer.f.a.e(this, eVar);
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
        public void onProgress(long j11, ao.e eVar) {
            com.transsion.player.orplayer.f.a.y(this, j11, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onRenderFirstFrame() {
            com.transsion.player.orplayer.f.a.A(this);
            r rVar = GifImagePreviewActivity.this.mPageChange;
            if (rVar != null) {
                rVar.g();
            }
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
        public void onVideoPause(ao.e eVar) {
            com.transsion.player.orplayer.f.a.F(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoSizeChanged(int i11, int i12) {
            com.transsion.player.orplayer.f.a.H(this, i11, i12);
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoStart(ao.e eVar) {
            com.transsion.player.orplayer.f.a.I(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void setOnSeekCompleteListener() {
            com.transsion.player.orplayer.f.a.K(this);
        }
    }

    public static final class g extends ViewPager2.OnPageChangeCallback {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [T, android.view.View] */
        public static final void b(Ref.ObjectRef objectRef, GifImagePreviewActivity gifImagePreviewActivity, int i11) {
            objectRef.element = gifImagePreviewActivity.getItemView();
            r rVar = gifImagePreviewActivity.mPageChange;
            if (rVar != null) {
                List list = gifImagePreviewActivity.imageList;
                rVar.f(i11, list != null ? (Image) list.get(i11) : null, (View) objectRef.element);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [T, android.view.View] */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(final int i11) {
            GifBean gifBean;
            String videoUrl;
            GifImagePreviewActivity.this.currentItemIndex = i11;
            GifImagePreviewActivity.this.showPageIndex();
            List list = GifImagePreviewActivity.this.imageList;
            Image image = list != null ? (Image) list.get(i11) : null;
            if (image == null || (gifBean = image.getGifBean()) == null || (videoUrl = gifBean.getVideoUrl()) == null || videoUrl.length() <= 0) {
                return;
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? itemView = GifImagePreviewActivity.this.getItemView();
            objectRef.element = itemView;
            if (itemView == 0) {
                Handler handler = GifImagePreviewActivity.this.handler;
                final GifImagePreviewActivity gifImagePreviewActivity = GifImagePreviewActivity.this;
                handler.postDelayed(new Runnable() { // from class: com.transsion.ninegridview.preview.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        GifImagePreviewActivity.g.b(objectRef, gifImagePreviewActivity, i11);
                    }
                }, 200L);
            } else {
                r rVar = GifImagePreviewActivity.this.mPageChange;
                if (rVar != null) {
                    List list2 = GifImagePreviewActivity.this.imageList;
                    rVar.f(i11, list2 != null ? (Image) list2.get(i11) : null, (View) objectRef.element);
                }
            }
        }
    }

    public static final class h implements Animation.AnimationListener {
        h() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Intrinsics.h(animation, "animation");
            ConstraintLayout rootView = ((on.a) GifImagePreviewActivity.this.getMViewBinding()).f71043d;
            Intrinsics.g(rootView, "rootView");
            jg.c.k(rootView);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            Intrinsics.h(animation, "animation");
        }
    }

    private final void addIntoListener(ValueAnimator valueAnimator) {
        valueAnimator.addListener(new b());
    }

    private final void addOutListener(ValueAnimator valueAnimator) {
        valueAnimator.addListener(new c());
    }

    private final void computeImageWidthAndHeight(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        int height = imageView.getHeight();
        int width = imageView.getWidth();
        if (drawable != null) {
            height = drawable.getIntrinsicHeight();
            width = drawable.getIntrinsicWidth();
        }
        float f11 = height;
        float f12 = (this.screenHeight * 1.0f) / f11;
        float f13 = width;
        float f14 = (this.screenWidth * 1.0f) / f13;
        if (f12 > f14) {
            f12 = f14;
        }
        this.imageHeight = (int) (f11 * f12);
        this.imageWidth = (int) (f13 * f12);
    }

    private final void downloadImage() {
        List<Image> list = this.imageList;
        int size = list != null ? list.size() : 0;
        int i11 = this.currentItemIndex;
        if (i11 < 0 || i11 >= size) {
            return;
        }
        List<Image> list2 = this.imageList;
        Image image = list2 != null ? list2.get(i11) : null;
        Glide.with((FragmentActivity) this).downloadOnly().load2(image != null ? image.getUrl() : null).listener(new d(image)).preload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final View getItemView() {
        View childAt = ((on.a) getMViewBinding()).f71046g.getChildAt(0);
        Intrinsics.f(childAt, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
        RecyclerView.m layoutManager = ((RecyclerView) childAt).getLayoutManager();
        if (layoutManager != null) {
            return layoutManager.findViewByPosition(this.currentItemIndex);
        }
        return null;
    }

    private final String getNameFromUrl(String url) {
        if (url == null) {
            return null;
        }
        String[] strArr = (String[]) StringsKt.S0(url, new String[]{"[?]"}, false, 0, 6, null).toArray(new String[0]);
        if (!(strArr.length == 0)) {
            String[] strArr2 = (String[]) StringsKt.S0(strArr[0], new String[]{"/"}, false, 0, 6, null).toArray(new String[0]);
            if (!(strArr2.length == 0)) {
                return strArr2[strArr2.length - 1];
            }
        }
        return null;
    }

    private final void initPlayer() {
        ORPlayerView oRPlayerView = new ORPlayerView(this, RenderType.TEXTURE_VIEW);
        com.transsion.player.orplayer.g gVarA = new com.transsion.player.orplayer.g.a(this).a();
        gVarA.setTextureView(oRPlayerView.getTextureView());
        gVarA.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
        this.mPageChange = new r(gVarA, oRPlayerView);
        gVarA.setPlayerListener(new f());
        this.mPlayer = gVarA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        HashMap mapG;
        String str;
        this.screenWidth = y.e();
        this.screenHeight = y.c();
        Serializable serializableExtra = getIntent().getSerializableExtra(IMAGE_LIST);
        List<Image> list = serializableExtra instanceof List ? (List) serializableExtra : null;
        this.imageList = list;
        if (list == null) {
            this.imageList = new ArrayList();
        }
        this.isBuiltInApp = Boolean.valueOf(getIntent().getBooleanExtra(IS_BUILTIN, false));
        this.postId = getIntent().getStringExtra(POST_ID);
        this.currentItemIndex = getIntent().getIntExtra("CURRENT_ITEM", 0);
        com.transsion.ninegridview.preview.c cVar = new com.transsion.ninegridview.preview.c(this);
        cVar.h(this.imageList);
        cVar.g(this.isBuiltInApp);
        this.imagePreviewAdapter = cVar;
        ViewPager2 viewPager2 = ((on.a) getMViewBinding()).f71046g;
        viewPager2.setAdapter(this.imagePreviewAdapter);
        viewPager2.registerOnPageChangeCallback(this.mOnPageChangeCallback);
        viewPager2.setCurrentItem(this.currentItemIndex, false);
        startEnterTheAnimation();
        showPageIndex();
        ((on.a) getMViewBinding()).f71041b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ninegridview.preview.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GifImagePreviewActivity.initView$lambda$3(this.f47710a, view);
            }
        });
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null && (str = this.postId) != null) {
            mapG.put("post_id", str);
        }
        initPlayer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$3(GifImagePreviewActivity gifImagePreviewActivity, View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            gifImagePreviewActivity.downloadImage();
        } else if (androidx.core.content.b.checkSelfPermission(gifImagePreviewActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0 && androidx.core.content.b.checkSelfPermission(gifImagePreviewActivity, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
            gifImagePreviewActivity.downloadImage();
        } else {
            gifImagePreviewActivity.requestPermission();
        }
        Map mapM = MapsKt.m(TuplesKt.a("module_name", "save_picture"), TuplesKt.a(WebConstants.PAGE_FROM, gifImagePreviewActivity.pageFrom));
        String str = gifImagePreviewActivity.postId;
        if (str != null) {
            mapM.put("post_id", str);
        }
        hj.i.f64505a.p(PAGE_NAME, mapM);
    }

    private final void requestPermission() {
        ActivityCompat.g(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, this.REQUEST_PERMISSION_STORAGE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveToAlbum(File file, String url) {
        String nameFromUrl = getNameFromUrl(url);
        if (new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), PICTURE_SAVE + File.separator + nameFromUrl).exists()) {
            uh.b.f76753a.d(R$string.has_been_saved);
        } else {
            if (file == null || nameFromUrl == null) {
                return;
            }
            FileHelper.g(FileHelper.f47682a, file, this, nameFromUrl, PICTURE_SAVE, false, 16, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void showPageIndex() {
        TextView textView = ((on.a) getMViewBinding()).f71044e;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        Integer numValueOf = Integer.valueOf(this.currentItemIndex + 1);
        List<Image> list = this.imageList;
        String str = String.format("%d/%d", Arrays.copyOf(new Object[]{numValueOf, list != null ? Integer.valueOf(list.size()) : null}, 2));
        Intrinsics.g(str, "format(...)");
        textView.setText(str);
    }

    private final void showSettingDialog() {
        String string = Utils.a().getString(R$string.permission_deny_down_tip, "\"" + Utils.a().getString(com.transsion.baseui.R$string.base_app_name) + "\"", "\"" + Utils.a().getString(R$string.system_settings) + "\"");
        Intrinsics.g(string, "getString(...)");
        TRDialog.a aVarG = new TRDialog.a().g(string);
        String string2 = Utils.a().getString(R$string.cancel);
        Intrinsics.g(string2, "getString(...)");
        TRDialog.a aVarE = aVarG.e(string2);
        String string3 = Utils.a().getString(R$string.system_settings);
        Intrinsics.g(string3, "getString(...)");
        aVarE.j(string3).f(this).a().show(getSupportFragmentManager(), "settings");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void startEnterTheAnimation() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setAnimationListener(new h());
        alphaAnimation.setFillAfter(true);
        ((on.a) getMViewBinding()).f71043d.startAnimation(alphaAnimation);
    }

    public final int evaluateArgb(float fraction, int startValue, int endValue) {
        int i11 = (startValue >> 24) & 255;
        int i12 = (startValue >> 16) & 255;
        int i13 = (startValue >> 8) & 255;
        int i14 = startValue & 255;
        return ((i11 + ((int) ((((endValue >> 24) & 255) - i11) * fraction))) << 24) | ((i12 + ((int) ((((endValue >> 16) & 255) - i12) * fraction))) << 16) | ((i13 + ((int) ((((endValue >> 8) & 255) - i13) * fraction))) << 8) | (i14 + ((int) (fraction * ((endValue & 255) - i14))));
    }

    public final float evaluateFloat(float fraction, Number startValue, Number endValue) {
        Intrinsics.h(startValue, "startValue");
        Intrinsics.h(endValue, "endValue");
        float fFloatValue = startValue.floatValue();
        return fFloatValue + (fraction * (endValue.floatValue() - fFloatValue));
    }

    public final int evaluateInt(float fraction, int startValue, int endValue) {
        return (int) (startValue + (fraction * (endValue - startValue)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void finishActivityAnim() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setAnimationListener(new e());
        alphaAnimation.setFillAfter(true);
        ((on.a) getMViewBinding()).f71043d.startAnimation(alphaAnimation);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public on.a getViewBinding() {
        on.a aVarC = on.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isAttach() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public hj.b newLogViewConfig() {
        return new hj.b(PAGE_NAME, false, 2, null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        finishActivityAnim();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT != 26) {
            setRequestedOrientation(1);
        }
        this.pageFrom = hj.i.f64505a.i();
        initView();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ((on.a) getMViewBinding()).f71046g.unregisterOnPageChangeCallback(this.mOnPageChangeCallback);
        com.transsion.player.orplayer.g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.release();
        }
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.transsion.player.orplayer.g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.pause();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == this.REQUEST_PERMISSION_STORAGE) {
            if (grantResults.length > 1 && grantResults[0] == 0 && grantResults[1] == 0) {
                downloadImage();
            } else {
                if (ActivityCompat.j(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                    return;
                }
                showSettingDialog();
            }
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.transsion.player.orplayer.g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.play();
        }
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onRightButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        com.transsion.ninegridview.helper.b.f47691a.a(this, 101);
    }
}
