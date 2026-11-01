package com.transsion.postdetail.ui.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.noober.background.view.BLView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.R$style;
import com.transsion.postdetail.util.PostSaveHelper;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.DownloadUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000M\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0005*\u0001-\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020\u000e2\b\u0010\u0017\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0018\u0010\u0010J\u000f\u0010\u0019\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0019\u0010\u0012J\u0017\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u001a\u0010\u0016J\u0017\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u001b\u0010\u0016J\u0017\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001c\u0010\u0010J\u0017\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001d\u0010\u0010J\u000f\u0010\u001e\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u001e\u0010\u0012J\u000f\u0010\u001f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u001f\u0010\u0012R\u0018\u0010\"\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u001b\u0010,\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/¨\u00061"}, d2 = {"Lcom/transsion/postdetail/ui/view/PostExploreItemView;", "Lcom/transsion/postdetail/ui/view/PostBaseItemView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "", "r0", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "y0", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "s0", "(Landroid/view/View;)V", "postItem", "t0", "u0", "w0", "x0", "setHeaderData", "setSubjectAndRoomContent", "onAttachedToWindow", "onDetachedFromWindow", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "mItem", "Landroid/animation/ObjectAnimator;", CampaignEx.JSON_KEY_AD_R, "Landroid/animation/ObjectAnimator;", "rotateAnimator", "Lcom/transsnet/downloader/manager/g;", "s", "Lkotlin/Lazy;", "getDownloadManager", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "com/transsion/postdetail/ui/view/PostExploreItemView$a", "t", "Lcom/transsion/postdetail/ui/view/PostExploreItemView$a;", "downloadListener", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PostExploreItemView extends PostBaseItemView {

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private PostSubjectItem mItem;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private ObjectAnimator rotateAnimator;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadManager;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final a downloadListener;

    public static final class a implements lj.m0 {
        a() {
        }

        @Override // lj.m0
        public void a(DownloadBean bean, DownloadException downloadException) {
            Intrinsics.h(bean, "bean");
            PostExploreItemView.this.y0();
        }

        @Override // lj.m0
        public void b(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            PostExploreItemView.this.y0();
        }

        @Override // lj.m0
        public void c(DownloadBean bean, long j11, long j12) {
            Intrinsics.h(bean, "bean");
            PostExploreItemView.this.y0();
        }

        @Override // lj.m0
        public void d(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            PostExploreItemView.this.y0();
        }

        @Override // lj.m0
        public void e(DownloadBean bean, String str) {
            Intrinsics.h(bean, "bean");
            PostExploreItemView.this.y0();
        }

        @Override // lj.m0
        public void f(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            PostExploreItemView.this.y0();
        }

        @Override // lj.m0
        public void g(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            PostExploreItemView.this.y0();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PostExploreItemView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PostExploreItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostExploreItemView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.downloadManager = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.view.o1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostExploreItemView.q0();
            }
        });
        this.downloadListener = new a();
    }

    private final com.transsnet.downloader.manager.g getDownloadManager() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g q0() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    private final void r0(PostSubjectItem item) {
        String avatar;
        String nickname;
        ShapeableImageView ivRoomCover = getViewBinding().f75744l;
        Intrinsics.g(ivRoomCover, "ivRoomCover");
        jg.c.g(ivRoomCover);
        ShapeableImageView ivUserAvatar = getViewBinding().f75745m;
        Intrinsics.g(ivUserAvatar, "ivUserAvatar");
        jg.c.g(ivUserAvatar);
        AppCompatTextView tvUserNameOrLocation = getViewBinding().A;
        Intrinsics.g(tvUserNameOrLocation, "tvUserNameOrLocation");
        jg.c.g(tvUserNameOrLocation);
        BLView bLView = getViewBinding().I;
        if (bLView != null) {
            jg.c.g(bLView);
        }
        ShapeableImageView ivUserAvatar2 = getViewBinding().f75746n;
        Intrinsics.g(ivUserAvatar2, "ivUserAvatar2");
        jg.c.k(ivUserAvatar2);
        BLView bLView2 = getViewBinding().J;
        if (bLView2 != null) {
            jg.c.k(bLView2);
        }
        String str = "";
        if (item.getBuiltIn()) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new PostExploreItemView$hideGroup$1(item, this, null), 3, null);
        } else {
            ej.f.a aVar = ej.f.f61882a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            User user = item.getUser();
            if (user == null || (avatar = user.getAvatar()) == null) {
                avatar = "";
            }
            ej.f.b bVarC = bVarM.g(avatar).m(getDp16()).c(getDp16());
            ShapeableImageView ivUserAvatar3 = getViewBinding().f75746n;
            Intrinsics.g(ivUserAvatar3, "ivUserAvatar2");
            bVarC.d(ivUserAvatar3);
        }
        AppCompatTextView appCompatTextView = getViewBinding().f75758z;
        User user2 = item.getUser();
        if (user2 != null && (nickname = user2.getNickname()) != null) {
            str = nickname;
        }
        appCompatTextView.setText(str);
        if (Build.VERSION.SDK_INT >= 28) {
            getViewBinding().f75758z.setTextAppearance(R$style.newRoomPostTitleTextStyle);
            getViewBinding().f75754v.setTextAppearance(R$style.newRoomPostContentTextStyle);
        } else {
            getViewBinding().f75758z.setTypeface(getViewBinding().f75758z.getTypeface(), 0);
            getViewBinding().f75758z.setTextSize(dk.a.b(12));
            getViewBinding().f75754v.setTypeface(getViewBinding().f75758z.getTypeface(), 1);
        }
        ViewGroup.LayoutParams layoutParams = getViewBinding().f75754v.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = dk.a.b(4);
        }
    }

    private final void s0(View view) {
        PostSubjectItem postSubjectItem;
        if ((view == null || !com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) && (postSubjectItem = this.mItem) != null) {
            String value = MediaType.VIDEO.getValue();
            Media media = postSubjectItem.getMedia();
            if (!TextUtils.equals(value, media != null ? media.getMediaType() : null)) {
                t0(postSubjectItem);
                return;
            }
            DownloadBean downloadBeanG = DownloadUtil.f59900a.G(postSubjectItem);
            if (downloadBeanG == null) {
                return;
            }
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            String resourceId = downloadBeanG.getResourceId();
            if (resourceId == null) {
                resourceId = "";
            }
            DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
            if (downloadBeanQ != null && downloadBeanQ.getStatus() == 5) {
                Navigator.x(TheRouter.c("/download/panel_activity").F("extra_page_index", 0).K("extra_target_resource_id", postSubjectItem.getPostId()), getContext(), null, 2, null);
                return;
            }
            com.transsion.baseui.util.m.c(R$string.shorts_click_download);
            getDownloadManager().p(downloadBeanG);
            y0();
        }
    }

    private final void t0(PostSubjectItem postItem) {
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f48866a;
        String pageName = getPageName();
        if (pageName == null) {
            pageName = "";
        }
        aVar.i(postItem, pageName, getPageFrom());
        if (Build.VERSION.SDK_INT >= 29) {
            PostSaveHelper.f50145a.b(postItem);
            return;
        }
        Context context = getContext();
        if (context == null) {
            context = Utils.a();
        }
        if (androidx.core.content.b.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            Context context2 = getContext();
            if (context2 == null) {
                context2 = Utils.a();
            }
            if (androidx.core.content.b.checkSelfPermission(context2, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
                PostSaveHelper.f50145a.b(postItem);
                return;
            }
        }
        u0();
    }

    private final void u0() {
        FragmentActivity fragmentActivityE = E();
        if (fragmentActivityE != null) {
            ActivityCompat.g(fragmentActivityE, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, FileHelper.f47682a.l());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(PostExploreItemView postExploreItemView) {
        postExploreItemView.s0(postExploreItemView.getViewBinding().F);
        return Unit.f67061a;
    }

    private final void w0(View view) {
        ObjectAnimator objectAnimator = this.rotateAnimator;
        if (objectAnimator != null) {
            Intrinsics.e(objectAnimator);
            if (objectAnimator.isRunning()) {
                return;
            }
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "rotation", 0.0f, 360.0f);
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.start();
        this.rotateAnimator = objectAnimatorOfFloat;
    }

    private final void x0(View view) {
        ObjectAnimator objectAnimator = this.rotateAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.rotateAnimator = null;
        view.setRotation(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y0() {
        String postId;
        AppCompatImageView appCompatImageView;
        PostSubjectItem postSubjectItem = this.mItem;
        if (postSubjectItem == null) {
            return;
        }
        String value = MediaType.VIDEO.getValue();
        Media media = postSubjectItem.getMedia();
        if (!TextUtils.equals(value, media != null ? media.getMediaType() : null) || (postId = postSubjectItem.getPostId()) == null || (appCompatImageView = getViewBinding().f75743k) == null) {
            return;
        }
        DownloadBean downloadBeanQ = DownloadEsHelper.f59419m.a().q(postId);
        if (downloadBeanQ == null) {
            x0(appCompatImageView);
            appCompatImageView.setImageResource(R$drawable.ic_post_download_new);
            appCompatImageView.setEnabled(true);
            return;
        }
        int status = downloadBeanQ.getStatus();
        if (status == 1 || status == 2 || status == 3) {
            appCompatImageView.setImageResource(R$drawable.ic_post_downloading);
            appCompatImageView.setEnabled(false);
            w0(appCompatImageView);
        } else if (status != 5) {
            x0(appCompatImageView);
            appCompatImageView.setImageResource(R$drawable.ic_post_download_new);
            appCompatImageView.setEnabled(true);
        } else {
            x0(appCompatImageView);
            appCompatImageView.setImageResource(R$drawable.ic_post_downloaded);
            appCompatImageView.setEnabled(true);
        }
    }

    @Override // com.transsion.postdetail.ui.view.PostBaseItemView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getDownloadManager().e(this.downloadListener);
        y0();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getDownloadManager().x(this.downloadListener);
    }

    @Override // com.transsion.postdetail.ui.view.PostBaseItemView
    public void setHeaderData(PostSubjectItem item) {
        Intrinsics.h(item, "item");
        if (item.isRoomCache()) {
            getViewBinding().getRoot().setBackgroundColor(androidx.core.content.b.getColor(getContext(), R$color.room_cache_item_bg_color));
        } else {
            getViewBinding().getRoot().setBackground(null);
        }
        r0(item);
    }

    @Override // com.transsion.postdetail.ui.view.PostBaseItemView
    public void setSubjectAndRoomContent(PostSubjectItem item) {
        Intrinsics.h(item, "item");
        this.mItem = item;
        y0();
        a0(new Function0() { // from class: com.transsion.postdetail.ui.view.p1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostExploreItemView.v0(this.f50106a);
            }
        }, item);
        if (item.getSubject() == null) {
            setBottomSubjectAndRoomVisibility(false, false);
        } else {
            setBottomSubjectAndRoomVisibility(true, false);
            setBottomSubjectModuleData(item);
        }
    }
}
