package com.transsion.moviedetail.activity;

import an.j;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.FileProvider;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.b;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.toast.core.h;
import com.transsion.baselib.helper.a;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.moviedetail.activity.MoviePosterActivity;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.ninegridview.ImageInfo;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.ninegridview.preview.ImagePreviewActivity;
import com.transsion.web.R$string;
import com.transsion.web.share.ImageShareDialog;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hj.i;
import ig.d;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.y0;
import oh.c;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 .2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\u00072\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0004JI\u0010\u0018\u001a\u00020\u000728\u0010\u0017\u001a4\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00070\u0010H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010!\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0014¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0002H\u0016¢\u0006\u0004\b#\u0010$J\u0011\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0011H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0011H\u0016¢\u0006\u0004\b*\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006/"}, d2 = {"Lcom/transsion/moviedetail/activity/MoviePosterActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lcn/b;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Subject;", "info", "", "v0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "", "Lcom/transsion/moviedetailapi/bean/Staff;", "staffList", "w0", "(Ljava/util/List;)V", "o0", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "exit", "Ljava/io/File;", "imgFile", "callback", "saveToAlbum", "(Lkotlin/jvm/functions/Function2;)V", "imageShareClick", "Landroid/net/Uri;", "imageUri", "shareImage", "(Landroid/net/Uri;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "m0", "()Lcn/b;", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "isTranslucent", "()Z", "isStatusDark", "a", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MoviePosterActivity extends BaseActivity<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX WARN: Multi-variable type inference failed */
    private final void imageShareClick() {
        ((b) getMViewBinding()).f17304e.setEnabled(false);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        saveToAlbum(new Function2() { // from class: an.g
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return MoviePosterActivity.n0(this.f717a, jCurrentTimeMillis, ((Boolean) obj).booleanValue(), (File) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit n0(MoviePosterActivity moviePosterActivity, long j11, boolean z10, File file) {
        if (file != null) {
            Uri uriForFile = FileProvider.getUriForFile(moviePosterActivity, moviePosterActivity.getApplication().getPackageName() + ".download.fileprovider", file);
            Intrinsics.e(uriForFile);
            moviePosterActivity.shareImage(uriForFile);
        } else {
            h.f41479a.k(R$string.share_failed_tips);
        }
        ((b) moviePosterActivity.getMViewBinding()).f17304e.setEnabled(true);
        long jCurrentTimeMillis = System.currentTimeMillis() - j11;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("share: 耗时=");
        sb2.append(jCurrentTimeMillis);
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void o0() {
        ((b) getMViewBinding()).f17302c.setOnClickListener(new View.OnClickListener() { // from class: an.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MoviePosterActivity.q0(this.f713a, view);
            }
        });
        ((b) getMViewBinding()).f17303d.setOnClickListener(new View.OnClickListener() { // from class: an.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MoviePosterActivity.r0(this.f714a, view);
            }
        });
        ((b) getMViewBinding()).f17304e.setOnClickListener(new View.OnClickListener() { // from class: an.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MoviePosterActivity.t0(this.f715a, view);
            }
        });
        ((b) getMViewBinding()).f17301b.setOnClickListener(new View.OnClickListener() { // from class: an.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MoviePosterActivity.p0(this.f716a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(MoviePosterActivity moviePosterActivity, View view) {
        moviePosterActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(MoviePosterActivity moviePosterActivity, View view) {
        Cover cover;
        Subject subject = moviePosterActivity.mMovieDetailBean;
        if (subject == null || (cover = subject.getCover()) == null) {
            return;
        }
        a.f43262a.h("movie_poster", "preview", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        ImageInfo imageInfo = new ImageInfo();
        imageInfo.bigImageUrl = cover.getUrl();
        imageInfo.thumbnailUrl = cover.getThumbnail();
        Integer height = cover.getHeight();
        imageInfo.imageViewHeight = height != null ? height.intValue() : 0.0f;
        Integer width = cover.getWidth();
        imageInfo.imageViewWidth = width != null ? width.intValue() : 0.0f;
        ImagePreviewActivity.INSTANCE.a(moviePosterActivity, 0, CollectionsKt.q(imageInfo));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(MoviePosterActivity moviePosterActivity, View view) {
        a.f43262a.h("movie_poster", "save_picture", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        moviePosterActivity.saveToAlbum(new Function2() { // from class: an.i
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return MoviePosterActivity.s0(((Boolean) obj).booleanValue(), (File) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(boolean z10, File file) {
        if (z10) {
            uh.b.f76753a.d(com.transsion.ninegridview.R$string.has_been_saved);
        } else {
            uh.b.f76753a.d(com.transsion.ninegridview.R$string.image_save_success);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void saveToAlbum(Function2 callback) {
        Cover cover;
        FileHelper fileHelper = FileHelper.f47682a;
        c.a aVar = c.f71017a;
        AppCompatImageView ivCover = ((b) getMViewBinding()).f17302c;
        Intrinsics.g(ivCover, "ivCover");
        Bitmap bitmapA = aVar.a(ivCover);
        Subject subject = this.mMovieDetailBean;
        fileHelper.r(this, bitmapA, fileHelper.j((subject == null || (cover = subject.getCover()) == null) ? null : cover.getUrl()), callback);
    }

    private final void shareImage(Uri imageUri) {
        try {
            if (getSupportFragmentManager().k0("ImageShareDialog") != null) {
                return;
            }
            ImageShareDialog imageShareDialogA = ImageShareDialog.INSTANCE.a(imageUri);
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            imageShareDialogA.show(supportFragmentManager, "ImageShareDialog");
        } catch (Exception unused) {
            h.f41479a.k(R$string.share_failed_tips);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(MoviePosterActivity moviePosterActivity, View view) {
        a.f43262a.h("movie_poster", "share", (60 & 4) != 0 ? "" : "", (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        moviePosterActivity.imageShareClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(MoviePosterActivity moviePosterActivity, j it) {
        Intrinsics.h(it, "it");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("PostEventPlayRecord: ");
        sb2.append(it);
        moviePosterActivity.v0(it.a());
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void v0(Subject info) {
        String url;
        if (info != null) {
            this.mMovieDetailBean = info;
            ((b) getMViewBinding()).f17310k.setText(info.getTitle());
            ((b) getMViewBinding()).f17309j.setText(info.getDescription());
            AppCompatImageView ivCover = ((b) getMViewBinding()).f17302c;
            Intrinsics.g(ivCover, "ivCover");
            Cover cover = info.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            yp.a.c(ivCover, url, 0.0f, 2, null);
            w0(info.getStaffList());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void w0(final List staffList) {
        if (staffList == null) {
            return;
        }
        ((b) getMViewBinding()).f17311l.setText(getString(com.transsion.moviedetail.R$string.starring) + "(" + staffList.size() + ")");
        ((b) getMViewBinding()).f17306g.setLayoutManager(new LinearLayoutManager(this, 0, false));
        ((b) getMViewBinding()).f17306g.addItemDecoration(new d(a0.a(8.0f)));
        com.transsion.moviedetail.adapter.a aVar = new com.transsion.moviedetail.adapter.a(staffList);
        aVar.w1(new p6.d() { // from class: an.h
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                MoviePosterActivity.x0(staffList, this, baseQuickAdapter, view, i11);
            }
        });
        ((b) getMViewBinding()).f17306g.setAdapter(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(List list, MoviePosterActivity moviePosterActivity, BaseQuickAdapter adapter, View view, int i11) {
        String staffId;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        HashMap map = new HashMap();
        map.put("module_name", "staff");
        map.put(EventConstants.KEY_SOURCE, i.f64505a.i());
        Staff staff = (Staff) CollectionsKt.l0(list, i11);
        if (staff == null || (staffId = staff.getStaffId()) == null) {
            staffId = "";
        }
        map.put("related_staff_id", staffId);
        a.f43262a.i("movie_poster", map);
        Navigator navigatorC = TheRouter.c("/movie/staff");
        Object item = adapter.getItem(i11);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Staff");
        Navigator.x(navigatorC.J("staff", (Staff) item), moviePosterActivity, null, 2, null);
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public b getViewBinding() {
        b bVarC = b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public hj.b newLogViewConfig() {
        return new hj.b("movie_poster", false, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Function1 function1 = new Function1() { // from class: an.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MoviePosterActivity.u0(this.f712a, (j) obj);
            }
        };
        a2 a2VarQ = y0.c().q();
        Lifecycle.State state = Lifecycle.State.STARTED;
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = j.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, state, a2VarQ, true, function1);
        o0();
        ViewGroup.LayoutParams layoutParams = ((b) getMViewBinding()).f17301b.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = com.blankj.utilcode.util.d.c();
            ((b) getMViewBinding()).f17301b.setLayoutParams(marginLayoutParams);
        }
    }
}
