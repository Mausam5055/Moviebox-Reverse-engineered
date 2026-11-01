package com.transsion.moviedetail.staff;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.moviedetail.p005enum.SeenStatus;
import com.transsion.moviedetail.staff.bean.MovieStaffList;
import com.transsion.moviedetail.staff.bean.MovieStaffSubject;
import com.transsion.moviedetail.staff.bean.MovieStaffSubjectList;
import com.transsion.moviedetail.view.InfoExtendView;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.StaffType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.ninegridview.ImageInfo;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.ninegridview.preview.ImagePreviewActivity;
import com.transsion.postdetail.bean.Pager;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.usercenter.R$string;
import com.transsion.usercenterapi.ReportType;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u0019\u0010\u0012\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0002¢\u0006\u0004\b#\u0010\u0004J+\u0010*\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(0&H\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020$H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0005H\u0002¢\u0006\u0004\b.\u0010\u0004J\u000f\u0010/\u001a\u00020\u0005H\u0002¢\u0006\u0004\b/\u0010\u0004J\u0019\u00101\u001a\u00020\u00052\b\u00100\u001a\u0004\u0018\u00010$H\u0002¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0002H\u0016¢\u0006\u0004\b3\u00104J\u0019\u00105\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b5\u0010\nJ\u000f\u00106\u001a\u00020\u0005H\u0014¢\u0006\u0004\b6\u0010\u0004J\u000f\u00107\u001a\u00020\u0015H\u0016¢\u0006\u0004\b7\u0010 J\u000f\u00108\u001a\u00020\u0015H\u0016¢\u0006\u0004\b8\u0010 J\u0011\u0010:\u001a\u0004\u0018\u000109H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0005H\u0016¢\u0006\u0004\b<\u0010\u0004J\u001f\u0010A\u001a\u00020\u00052\u0006\u0010>\u001a\u00020=2\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u0017\u0010D\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u0007H\u0014¢\u0006\u0004\bD\u0010\nJ\u000f\u0010E\u001a\u00020\u0005H\u0016¢\u0006\u0004\bE\u0010\u0004J\u000f\u0010F\u001a\u00020\u0005H\u0016¢\u0006\u0004\bF\u0010\u0004R\u0018\u0010I\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u001b\u0010O\u001a\u00020J8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\bM\u0010NR\u0016\u0010S\u001a\u00020P8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bQ\u0010RR\u0018\u0010V\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010Y\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0016\u0010\\\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0018\u0010`\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0018\u0010d\u001a\u0004\u0018\u00010a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0016\u0010k\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010m\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010jR\u0016\u0010o\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010jR\u0018\u0010s\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR*\u0010x\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u001b0tj\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b`u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010w¨\u0006y"}, d2 = {"Lcom/transsion/moviedetail/staff/MovieStaffActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lcn/c;", "<init>", "()V", "", "initData", "Landroid/os/Bundle;", "savedInstanceState", "Q0", "(Landroid/os/Bundle;)V", "Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;", "it", "B0", "(Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;)V", "x0", "Lcom/transsion/moviedetailapi/bean/Staff;", "info", "b1", "(Lcom/transsion/moviedetailapi/bean/Staff;)V", "C0", "", "isExpanded", "Y0", "(Z)V", "I0", "L0", "", "module", "X0", "(Ljava/lang/String;)V", "V0", "()Z", "g1", "Z0", "w0", "", RequestParameters.POSITION, "Lkotlin/Pair;", "", "", "data", "W0", "(ILkotlin/Pair;)V", "z0", "()I", "e1", "f1", "itemCount", "a1", "(Ljava/lang/Integer;)V", "A0", "()Lcn/c;", "onCreate", "onDestroy", "isTranslucent", "isStatusDark", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onDisconnected", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "outState", "onSaveInstanceState", "onPause", "onResume", "a", "Ljava/lang/String;", "id", "Lcom/transsion/moviedetail/staff/y;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "y0", "()Lcom/transsion/moviedetail/staff/y;", "mMovieStaffViewModel", "Lcom/transsion/moviedetail/staff/s;", "c", "Lcom/transsion/moviedetail/staff/s;", "mMovieStaffAdapter", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/moviedetailapi/bean/Staff;", "staff", "e", "Ljava/lang/Integer;", "staffType", "f", "I", "showCount", "Lcom/transsion/moviedetail/staff/w;", "g", "Lcom/transsion/moviedetail/staff/w;", "mMovieStaffSubRecyclerVIewScrollListener", "Lcom/transsion/moviedetail/staff/v;", "h", "Lcom/transsion/moviedetail/staff/v;", "mMovieStaffScrollListener", "Lhn/a;", "i", "Lhn/a;", "mMovieStaffItemMore", "j", "Z", "mIsLoadFinish", CampaignEx.JSON_KEY_AD_K, "dealWith80", "l", "dealWithElse", "Lcom/transsion/share/share/ShareDialogFragment;", "m", "Lcom/transsion/share/share/ShareDialogFragment;", "mShareDialog", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "n", "Ljava/util/HashSet;", "subjectIdSet", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MovieStaffActivity extends BaseActivity<cn.c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public String id;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mMovieStaffViewModel;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private s mMovieStaffAdapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Staff staff;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Integer staffType;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private w mMovieStaffSubRecyclerVIewScrollListener;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private v mMovieStaffScrollListener;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private hn.a mMovieStaffItemMore;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean mIsLoadFinish;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean dealWith80;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean dealWithElse;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private ShareDialogFragment mShareDialog;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int showCount = 9;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private HashSet subjectIdSet = new HashSet();

    public static final class a extends GridLayoutManager.c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f47306f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f47307g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f47308h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ int f47309i;

        a(int i11, int i12, int i13, int i14) {
            this.f47306f = i11;
            this.f47307g = i12;
            this.f47308h = i13;
            this.f47309i = i14;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i11) {
            if (i11 < 0) {
                return this.f47309i;
            }
            s sVar = MovieStaffActivity.this.mMovieStaffAdapter;
            if (sVar == null) {
                Intrinsics.z("mMovieStaffAdapter");
                sVar = null;
            }
            if (!(sVar.getItem(i11) instanceof Subject)) {
                return this.f47309i;
            }
            int i12 = this.f47306f;
            int i13 = i11 % i12;
            return (i13 == 0 || i13 == i12 + (-1)) ? this.f47307g + this.f47308h : this.f47307g;
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f47310a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47310a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f47310a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f47310a.invoke(obj);
        }
    }

    public static final class c implements com.transsion.share.share.a {
        c() {
        }

        @Override // com.transsion.share.share.a
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
        }

        @Override // com.transsion.share.share.a
        public void b(String str) {
            com.transsion.share.share.a.C0656a.b(this, str);
        }

        @Override // com.transsion.share.share.a
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
        }

        @Override // com.transsion.share.share.a
        public void d(String id2) {
            Intrinsics.h(id2, "id");
        }

        @Override // com.transsion.share.share.a
        public void e(String str) {
            com.transsion.share.share.a.C0656a.c(this, str);
        }
    }

    public MovieStaffActivity() {
        final Function0 function0 = null;
        this.mMovieStaffViewModel = new ViewModelLazy(Reflection.b(y.class), new Function0<x0>() { // from class: com.transsion.moviedetail.staff.MovieStaffActivity$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() { // from class: com.transsion.moviedetail.staff.MovieStaffActivity$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<p1.a>() { // from class: com.transsion.moviedetail.staff.MovieStaffActivity$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final p1.a invoke() {
                p1.a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    private final void B0(MovieStaffSubjectList it) {
        Integer totalCount;
        if (it == null) {
            return;
        }
        w0();
        Pager pager = it.getPager();
        this.mIsLoadFinish = pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.FALSE) : false;
        List<MovieStaffSubject> items = it.getItems();
        Pager pager2 = it.getPager();
        s sVar = null;
        a1(pager2 != null ? pager2.getTotalCount() : null);
        List<MovieStaffSubject> list = items;
        if (list == null || list.isEmpty()) {
            return;
        }
        hn.a aVar = this.mMovieStaffItemMore;
        if (aVar == null) {
            Pager pager3 = it.getPager();
            aVar = new hn.a((pager3 == null || (totalCount = pager3.getTotalCount()) == null) ? 0 : totalCount.intValue(), 0, 2, null);
        }
        this.mMovieStaffItemMore = aVar;
        s sVar2 = this.mMovieStaffAdapter;
        if (sVar2 == null) {
            Intrinsics.z("mMovieStaffAdapter");
            sVar2 = null;
        }
        int iIndexOf = sVar2.getData().indexOf(aVar);
        if (iIndexOf < 0) {
            s sVar3 = this.mMovieStaffAdapter;
            if (sVar3 == null) {
                Intrinsics.z("mMovieStaffAdapter");
                sVar3 = null;
            }
            List<Object> listU0 = CollectionsKt.U0(sVar3.getData());
            Pager pager4 = it.getPager();
            if ((pager4 != null ? Intrinsics.c(pager4.getHasMore(), Boolean.TRUE) : false) || items.size() >= this.showCount) {
                int i11 = RangesKt.i(this.showCount, items.size());
                listU0.addAll(0, items.subList(0, i11));
                listU0.add(i11, aVar);
                aVar.e(i11);
            } else {
                listU0.addAll(0, items);
            }
            s sVar4 = this.mMovieStaffAdapter;
            if (sVar4 == null) {
                Intrinsics.z("mMovieStaffAdapter");
            } else {
                sVar = sVar4;
            }
            sVar.q1(listU0);
            return;
        }
        aVar.e(aVar.a() + items.size());
        Pager pager5 = it.getPager();
        if (pager5 != null ? Intrinsics.c(pager5.getHasMore(), Boolean.TRUE) : false) {
            s sVar5 = this.mMovieStaffAdapter;
            if (sVar5 == null) {
                Intrinsics.z("mMovieStaffAdapter");
            } else {
                sVar = sVar5;
            }
            sVar.o(iIndexOf, items);
            return;
        }
        s sVar6 = this.mMovieStaffAdapter;
        if (sVar6 == null) {
            Intrinsics.z("mMovieStaffAdapter");
            sVar6 = null;
        }
        sVar6.getData().addAll(iIndexOf, items);
        s sVar7 = this.mMovieStaffAdapter;
        if (sVar7 == null) {
            Intrinsics.z("mMovieStaffAdapter");
        } else {
            sVar = sVar7;
        }
        sVar.notifyItemRangeChanged(iIndexOf, items.size() + 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void C0() {
        ((cn.c) getMViewBinding()).f17313b.addOnOffsetChangedListener(new AppBarLayout.g() { // from class: com.transsion.moviedetail.staff.q
            @Override // com.google.android.material.appbar.AppBarLayout.b
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i11) {
                MovieStaffActivity.D0(this.f47325a, appBarLayout, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void D0(MovieStaffActivity movieStaffActivity, AppBarLayout appBarLayout, int i11) {
        v vVar = movieStaffActivity.mMovieStaffScrollListener;
        if (vVar != null) {
            Intrinsics.e(appBarLayout);
            vVar.d(appBarLayout, i11);
        }
        if (Math.abs(i11) <= a0.a(260.0f)) {
            if (movieStaffActivity.dealWithElse) {
                return;
            }
            movieStaffActivity.dealWithElse = true;
            movieStaffActivity.dealWith80 = false;
            movieStaffActivity.Y0(true);
            cn.c cVar = (cn.c) movieStaffActivity.getMViewBinding();
            ShapeableImageView ivCoverSmall = cVar.f17317f;
            Intrinsics.g(ivCoverSmall, "ivCoverSmall");
            jg.c.g(ivCoverSmall);
            AppCompatTextView tvTitle = cVar.f17329r;
            Intrinsics.g(tvTitle, "tvTitle");
            jg.c.g(tvTitle);
            cVar.f17318g.setSelected(false);
            cVar.f17324m.setBackgroundResource(R$color.transparent);
            cVar.f17316e.setImageResource(R$mipmap.icon_white_back);
            Log.e("zxb_log_download", "initAppBar: setDownloadIcon  333333");
            cVar.f17319h.setImageResource(com.transsion.moviedetail.R$mipmap.movie_share_night);
            ImmersionBar immersionBarWith = ImmersionBar.with(movieStaffActivity);
            immersionBarWith.statusBarDarkFont(false);
            immersionBarWith.init();
            return;
        }
        if (movieStaffActivity.dealWith80) {
            return;
        }
        movieStaffActivity.dealWith80 = true;
        movieStaffActivity.dealWithElse = false;
        movieStaffActivity.Y0(false);
        cn.c cVar2 = (cn.c) movieStaffActivity.getMViewBinding();
        ShapeableImageView ivCoverSmall2 = cVar2.f17317f;
        Intrinsics.g(ivCoverSmall2, "ivCoverSmall");
        jg.c.k(ivCoverSmall2);
        AppCompatTextView tvTitle2 = cVar2.f17329r;
        Intrinsics.g(tvTitle2, "tvTitle");
        jg.c.k(tvTitle2);
        cVar2.f17318g.setSelected(true);
        if (ak.x.f658a.a()) {
            cVar2.f17324m.setBackgroundResource(R$color.gray_0);
            cVar2.f17316e.setImageResource(R$mipmap.icon_white_back);
            AppCompatTextView appCompatTextView = cVar2.f17329r;
            appCompatTextView.setTextColor(androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.white));
            Log.e("zxb_log_download", "initAppBar: setDownloadIcon  11111");
            cVar2.f17319h.setImageResource(com.transsion.moviedetail.R$mipmap.movie_share_night);
            ImmersionBar immersionBarWith2 = ImmersionBar.with(movieStaffActivity);
            immersionBarWith2.statusBarDarkFont(false);
            immersionBarWith2.init();
            return;
        }
        cVar2.f17324m.setBackgroundResource(R$color.white);
        cVar2.f17316e.setImageResource(com.transsion.baseui.R$mipmap.movie_detail_icon_black_back);
        AppCompatTextView appCompatTextView2 = cVar2.f17329r;
        appCompatTextView2.setTextColor(androidx.core.content.b.getColor(appCompatTextView2.getContext(), R$color.text_01));
        Log.e("zxb_log_download", "initAppBar: setDownloadIcon   22222");
        cVar2.f17319h.setImageResource(com.transsion.moviedetail.R$mipmap.movie_share_light);
        ImmersionBar immersionBarWith3 = ImmersionBar.with(movieStaffActivity);
        immersionBarWith3.statusBarDarkFont(true);
        immersionBarWith3.init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(MovieStaffActivity movieStaffActivity, int i11, int i12) {
        w wVar = movieStaffActivity.mMovieStaffSubRecyclerVIewScrollListener;
        if (wVar != null) {
            wVar.d(i11, i12);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F0(MovieStaffActivity movieStaffActivity, int i11, Pair data) {
        Intrinsics.h(data, "data");
        movieStaffActivity.W0(i11, data);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void G0(final MovieStaffActivity movieStaffActivity, BaseQuickAdapter adapter, View view, int i11) {
        String staffId;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        s sVar = movieStaffActivity.mMovieStaffAdapter;
        s sVar2 = null;
        s sVar3 = null;
        if (sVar == null) {
            Intrinsics.z("mMovieStaffAdapter");
            sVar = null;
        }
        Object item = sVar.getItem(i11);
        if (!(item instanceof hn.a)) {
            if (item instanceof Subject) {
                HashMap map = new HashMap();
                map.put("module_name", "subject");
                Subject subject = (Subject) item;
                String subjectId = subject.getSubjectId();
                String str = "";
                if (subjectId == null) {
                    subjectId = "";
                }
                map.put("subject_id", subjectId);
                String ops = subject.getOps();
                if (ops == null) {
                    ops = "";
                }
                map.put("ops", ops);
                Staff staff = movieStaffActivity.staff;
                if (staff != null && (staffId = staff.getStaffId()) != null) {
                    str = staffId;
                }
                map.put("staff_id", str);
                com.transsion.baselib.helper.a.f43262a.i("staff_info", map);
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    DownloadManagerApi.f58398j.a().d0(movieStaffActivity, movieStaffActivity.getPageName(), (384 & 4) != 0 ? "" : "", subject.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : subject, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                    return;
                }
                Navigator navigatorC = TheRouter.c("/movie/detail");
                Integer subjectType2 = subject.getSubjectType();
                Navigator.x(navigatorC.F("subject_type", subjectType2 != null ? subjectType2.intValue() : SubjectType.MOVIE.getValue()).K("id", subject.getSubjectId()).K("ops", subject.getOps()), movieStaffActivity, null, 2, null);
                return;
            }
            return;
        }
        if (!nh.m.f70474a.e()) {
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.network_fail);
            return;
        }
        if (!movieStaffActivity.mIsLoadFinish) {
            y yVarY0 = movieStaffActivity.y0();
            Staff staff2 = movieStaffActivity.staff;
            yVarY0.q(staff2 != null ? staff2.getStaffId() : null, movieStaffActivity.showCount);
            return;
        }
        hn.a aVar = movieStaffActivity.mMovieStaffItemMore;
        if (aVar != null) {
            s sVar4 = movieStaffActivity.mMovieStaffAdapter;
            if (sVar4 == null) {
                Intrinsics.z("mMovieStaffAdapter");
                sVar4 = null;
            }
            int iIndexOf = sVar4.getData().indexOf(aVar);
            if (aVar.d()) {
                List listB = aVar.b();
                if (listB == null) {
                    listB = Collections.emptyList();
                }
                aVar.e(aVar.a() + listB.size());
                s sVar5 = movieStaffActivity.mMovieStaffAdapter;
                if (sVar5 == null) {
                    Intrinsics.z("mMovieStaffAdapter");
                    sVar5 = null;
                }
                List<Object> data = sVar5.getData();
                Intrinsics.e(listB);
                data.addAll(iIndexOf, listB);
                s sVar6 = movieStaffActivity.mMovieStaffAdapter;
                if (sVar6 == null) {
                    Intrinsics.z("mMovieStaffAdapter");
                } else {
                    sVar2 = sVar6;
                }
                sVar2.notifyItemRangeChanged(iIndexOf, listB.size() + 1);
                ((cn.c) movieStaffActivity.getMViewBinding()).f17322k.postDelayed(new Runnable() { // from class: com.transsion.moviedetail.staff.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        MovieStaffActivity.H0(this.f47317a);
                    }
                }, 200L);
                return;
            }
            v vVar = movieStaffActivity.mMovieStaffScrollListener;
            if (vVar != null) {
                vVar.e(movieStaffActivity.showCount, iIndexOf);
            }
            ArrayList arrayList = new ArrayList();
            s sVar7 = movieStaffActivity.mMovieStaffAdapter;
            if (sVar7 == null) {
                Intrinsics.z("mMovieStaffAdapter");
                sVar7 = null;
            }
            arrayList.addAll(sVar7.getData().subList(0, movieStaffActivity.showCount));
            s sVar8 = movieStaffActivity.mMovieStaffAdapter;
            if (sVar8 == null) {
                Intrinsics.z("mMovieStaffAdapter");
                sVar8 = null;
            }
            List<Object> data2 = sVar8.getData();
            s sVar9 = movieStaffActivity.mMovieStaffAdapter;
            if (sVar9 == null) {
                Intrinsics.z("mMovieStaffAdapter");
                sVar9 = null;
            }
            arrayList.addAll(data2.subList(iIndexOf, sVar9.getData().size()));
            int iA = aVar.a();
            s sVar10 = movieStaffActivity.mMovieStaffAdapter;
            if (sVar10 == null) {
                Intrinsics.z("mMovieStaffAdapter");
                sVar10 = null;
            }
            aVar.e(iA - (sVar10.getData().size() - arrayList.size()));
            s sVar11 = movieStaffActivity.mMovieStaffAdapter;
            if (sVar11 == null) {
                Intrinsics.z("mMovieStaffAdapter");
                sVar11 = null;
            }
            aVar.f(CollectionsKt.U0(sVar11.getData().subList(movieStaffActivity.showCount, iIndexOf)));
            s sVar12 = movieStaffActivity.mMovieStaffAdapter;
            if (sVar12 == null) {
                Intrinsics.z("mMovieStaffAdapter");
                sVar12 = null;
            }
            sVar12.getData().clear();
            s sVar13 = movieStaffActivity.mMovieStaffAdapter;
            if (sVar13 == null) {
                Intrinsics.z("mMovieStaffAdapter");
                sVar13 = null;
            }
            sVar13.getData().addAll(arrayList);
            s sVar14 = movieStaffActivity.mMovieStaffAdapter;
            if (sVar14 == null) {
                Intrinsics.z("mMovieStaffAdapter");
            } else {
                sVar3 = sVar14;
            }
            sVar3.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void H0(MovieStaffActivity movieStaffActivity) {
        v vVar = movieStaffActivity.mMovieStaffScrollListener;
        if (vVar != null) {
            RecyclerView rv2 = ((cn.c) movieStaffActivity.getMViewBinding()).f17322k;
            Intrinsics.g(rv2, "rv");
            vVar.onScrolled(rv2, 0, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void I0() {
        ((cn.c) getMViewBinding()).f17318g.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.staff.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MovieStaffActivity.J0(this.f47324a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void J0(MovieStaffActivity movieStaffActivity, View view) {
        movieStaffActivity.X0("save_picture");
        FileHelper fileHelper = FileHelper.f47682a;
        oh.c.a aVar = oh.c.f71017a;
        AppCompatImageView ivStaff = ((cn.c) movieStaffActivity.getMViewBinding()).f17320i;
        Intrinsics.g(ivStaff, "ivStaff");
        Bitmap bitmapA = aVar.a(ivStaff);
        Staff staff = movieStaffActivity.staff;
        fileHelper.r(movieStaffActivity, bitmapA, fileHelper.j(staff != null ? staff.getAvatarUrl() : null), new Function2() { // from class: com.transsion.moviedetail.staff.i
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return MovieStaffActivity.K0(((Boolean) obj).booleanValue(), (File) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K0(boolean z10, File file) {
        Intrinsics.h(file, "<unused var>");
        if (z10) {
            uh.b.f76753a.d(com.transsion.ninegridview.R$string.has_been_saved);
        } else {
            uh.b.f76753a.d(com.transsion.ninegridview.R$string.image_save_success);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void L0() {
        cn.c cVar = (cn.c) getMViewBinding();
        cVar.f17316e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.staff.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MovieStaffActivity.M0(this.f47326a, view);
            }
        });
        cVar.f17319h.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.staff.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MovieStaffActivity.N0(this.f47312a, view);
            }
        });
        cVar.f17321j.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.staff.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MovieStaffActivity.O0(this.f47313a, view);
            }
        });
        cVar.f17320i.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.staff.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MovieStaffActivity.P0(this.f47314a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(MovieStaffActivity movieStaffActivity, View view) {
        movieStaffActivity.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(MovieStaffActivity movieStaffActivity, View view) {
        movieStaffActivity.Z0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(MovieStaffActivity movieStaffActivity, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            return;
        }
        movieStaffActivity.g1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(MovieStaffActivity movieStaffActivity, View view) {
        Staff staff = movieStaffActivity.staff;
        if (staff != null) {
            movieStaffActivity.X0("preview");
            ImageInfo imageInfo = new ImageInfo();
            imageInfo.bigImageUrl = staff.getAvatarUrl();
            ImagePreviewActivity.INSTANCE.a(movieStaffActivity, 0, CollectionsKt.q(imageInfo));
        }
    }

    private final void Q0(Bundle savedInstanceState) {
        if (savedInstanceState != null) {
            y0().n();
            List list = (List) y0().u().f();
            if (list != null && !list.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    List<MovieStaffSubject> items = ((MovieStaffSubjectList) it.next()).getItems();
                    if (items != null) {
                        arrayList.addAll(items);
                    }
                }
                B0(new MovieStaffSubjectList(arrayList, ((MovieStaffSubjectList) list.get(list.size() - 1)).getPager()));
            }
        }
        y0().t().j(this, new b(new Function1() { // from class: com.transsion.moviedetail.staff.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieStaffActivity.R0(this.f47320a, (Staff) obj);
            }
        }));
        y0().v().j(this, new b(new Function1() { // from class: com.transsion.moviedetail.staff.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieStaffActivity.S0(this.f47321a, (MovieStaffSubjectList) obj);
            }
        }));
        y0().w().j(this, new b(new Function1() { // from class: com.transsion.moviedetail.staff.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieStaffActivity.T0(this.f47322a, (Integer) obj);
            }
        }));
        y0().s().j(this, new b(new Function1() { // from class: com.transsion.moviedetail.staff.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieStaffActivity.U0(this.f47323a, (MovieStaffList) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R0(MovieStaffActivity movieStaffActivity, Staff staff) {
        movieStaffActivity.b1(staff);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S0(MovieStaffActivity movieStaffActivity, MovieStaffSubjectList movieStaffSubjectList) {
        movieStaffActivity.B0(movieStaffSubjectList);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit T0(MovieStaffActivity movieStaffActivity, Integer num) {
        if (num == null) {
            return Unit.f67061a;
        }
        Staff staff = movieStaffActivity.staff;
        if (staff != null) {
            staff.setSeenStatus(num.intValue());
        }
        ((cn.c) movieStaffActivity.getMViewBinding()).f17321j.setImageResource(num.intValue() == 0 ? com.transsion.moviedetail.R$mipmap.movie_staff_icon_want_to_see_white : com.transsion.moviedetail.R$mipmap.movie_detail_icon_want_to_see_selected);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U0(MovieStaffActivity movieStaffActivity, MovieStaffList movieStaffList) {
        if (movieStaffList != null) {
            List<Staff> items = movieStaffList.getItems();
            if (items != null && !items.isEmpty()) {
                s sVar = movieStaffActivity.mMovieStaffAdapter;
                s sVar2 = null;
                if (sVar == null) {
                    Intrinsics.z("mMovieStaffAdapter");
                    sVar = null;
                }
                List<Object> data = sVar.getData();
                w wVar = movieStaffActivity.mMovieStaffSubRecyclerVIewScrollListener;
                if (wVar != null) {
                    wVar.e(movieStaffList.getItems());
                }
                if (data.isEmpty() || !(data.get(data.size() - 1) instanceof MovieStaffList)) {
                    s sVar3 = movieStaffActivity.mMovieStaffAdapter;
                    if (sVar3 == null) {
                        Intrinsics.z("mMovieStaffAdapter");
                    } else {
                        sVar2 = sVar3;
                    }
                    sVar2.p(movieStaffList);
                }
            }
            movieStaffActivity.w0();
        }
        return Unit.f67061a;
    }

    private final boolean V0() {
        Staff staff = this.staff;
        return staff != null && staff.getSeenStatus() == SeenStatus.WANT_TO_SEE.ordinal();
    }

    private final void W0(int position, Pair data) {
        w wVar;
        String strF;
        Object first = data.getFirst();
        long jLongValue = ((Number) data.getSecond()).longValue();
        lg.a.C0828a.f(lg.a.f68839a, "staff_info", "reportBrowseEvent  position:" + position + "  duration:" + jLongValue, false, 4, null);
        if (first instanceof MovieStaffSubject) {
            MovieStaffSubject movieStaffSubject = (MovieStaffSubject) first;
            if (this.subjectIdSet.add(movieStaffSubject.getSubjectId())) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("item_type", "subject");
                String subjectId = movieStaffSubject.getSubjectId();
                String str = "";
                if (subjectId == null) {
                    subjectId = "";
                }
                linkedHashMap.put("subject_id", subjectId);
                String ops = movieStaffSubject.getOps();
                if (ops == null) {
                    ops = "";
                }
                linkedHashMap.put("ops", ops);
                Boolean hasResource = movieStaffSubject.getHasResource();
                linkedHashMap.put("has_resource", String.valueOf(hasResource != null ? hasResource.booleanValue() : false));
                linkedHashMap.put(RequestParameters.POSITION, String.valueOf(position));
                linkedHashMap.put("browse_duration", String.valueOf(jLongValue));
                com.transsion.baselib.helper.a aVar = com.transsion.baselib.helper.a.f43262a;
                hj.b logViewConfig = getLogViewConfig();
                if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
                    str = strF;
                }
                aVar.e(str, linkedHashMap);
                return;
            }
            return;
        }
        if (!(first instanceof MovieStaffList) || (wVar = this.mMovieStaffSubRecyclerVIewScrollListener) == null) {
            return;
        }
        int iA = wVar.a();
        int iB = wVar.b();
        if (iA < 0 || iB < 0 || iB < iA || iA > iB) {
            return;
        }
        while (true) {
            wVar.c(iA, jLongValue);
            if (iA == iB) {
                return;
            } else {
                iA++;
            }
        }
    }

    private final void X0(String module) {
        String staffId;
        HashMap map = new HashMap();
        map.put("module_name", module);
        Staff staff = this.staff;
        if (staff == null || (staffId = staff.getStaffId()) == null) {
            staffId = "";
        }
        map.put("staff_id", staffId);
        com.transsion.baselib.helper.a.f43262a.i("staff_info", map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Y0(boolean isExpanded) {
        if (!isExpanded) {
            ((cn.c) getMViewBinding()).f17324m.getLayoutParams().height = a0.a(44.0f) + com.blankj.utilcode.util.d.c();
            ((cn.c) getMViewBinding()).f17324m.setPadding(0, com.blankj.utilcode.util.d.c(), 0, 0);
            ViewGroup.LayoutParams layoutParams = ((cn.c) getMViewBinding()).f17324m.getLayoutParams();
            if (layoutParams instanceof CollapsingToolbarLayout.c) {
                ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.c) layoutParams)).topMargin = 0;
                return;
            }
            return;
        }
        ((cn.c) getMViewBinding()).f17324m.getLayoutParams().height = a0.a(44.0f);
        ((cn.c) getMViewBinding()).f17324m.setPadding(0, 0, 0, 0);
        ViewGroup.LayoutParams layoutParams2 = ((cn.c) getMViewBinding()).f17324m.getLayoutParams();
        if (layoutParams2 instanceof CollapsingToolbarLayout.c) {
            ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.c) layoutParams2)).topMargin = com.blankj.utilcode.util.d.c();
        }
    }

    private final void Z0() {
        String staffId;
        ShareDialogFragment shareDialogFragment;
        if (this.staff == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("module_name", "share");
        Staff staff = this.staff;
        if (staff == null || (staffId = staff.getStaffId()) == null) {
            staffId = "";
        }
        map.put("staff_id", staffId);
        com.transsion.baselib.helper.a.f43262a.i("staff_info", map);
        if (this.mShareDialog == null) {
            ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
            PostType postType = PostType.STAFF_TYPE;
            Staff staff2 = this.staff;
            String staffId2 = staff2 != null ? staff2.getStaffId() : null;
            String value = ReportType.STAFF.getValue();
            Staff staff3 = this.staff;
            String name = staff3 != null ? staff3.getName() : null;
            Staff staff4 = this.staff;
            ShareDialogFragment shareDialogFragmentA = companion.a(postType, staffId2, "", value, (3328 & 16) != 0 ? "" : name, (3328 & 32) != 0 ? "" : staff4 != null ? staff4.getDescription() : null, (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : false, (3328 & 256) != 0 ? false : false, "staff_info", (3328 & 1024) != 0 ? "" : null, (3328 & 2048) != 0 ? "" : null);
            this.mShareDialog = shareDialogFragmentA;
            if (shareDialogFragmentA != null) {
                shareDialogFragmentA.G0(new c());
            }
        }
        try {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.g0();
            ShareDialogFragment shareDialogFragment2 = this.mShareDialog;
            if ((shareDialogFragment2 == null || !shareDialogFragment2.isAdded()) && supportFragmentManager.k0("share") == null && (shareDialogFragment = this.mShareDialog) != null) {
                shareDialogFragment.show(supportFragmentManager, "share");
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a1(Integer itemCount) {
        TextView textView = ((cn.c) getMViewBinding()).f17326o;
        Integer num = this.staffType;
        textView.setText(getString((num != null && num.intValue() == 6) ? com.transsion.moviedetail.R$string.staff_music_title : com.transsion.moviedetail.R$string.movie_staff_filmography, Integer.valueOf(itemCount != null ? itemCount.intValue() : 0)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void b1(Staff info) {
        if (info == null) {
            return;
        }
        w0();
        this.staff = info;
        f1();
        ((cn.c) getMViewBinding()).f17328q.setText(info.getName());
        ((cn.c) getMViewBinding()).f17329r.setText(info.getName());
        List<StaffType> staffTypes = info.getStaffTypes();
        String str = "";
        if (staffTypes != null) {
            for (StaffType staffType : staffTypes) {
                if (str.length() > 0) {
                    str = ((Object) str) + "/";
                }
                str = ((Object) str) + staffType.getName();
            }
        }
        ViewGroup.LayoutParams layoutParams = ((cn.c) getMViewBinding()).f17326o.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        ((cn.c) getMViewBinding()).f17327p.setText(str);
        String description = info.getDescription();
        if (description == null || description.length() == 0) {
            InfoExtendView infoExtendView = ((cn.c) getMViewBinding()).f17315d;
            Intrinsics.g(infoExtendView, "infoExtendView");
            jg.c.g(infoExtendView);
            ((cn.c) getMViewBinding()).f17326o.setPadding(((cn.c) getMViewBinding()).f17326o.getPaddingLeft(), 0, ((cn.c) getMViewBinding()).f17326o.getPaddingRight(), ((cn.c) getMViewBinding()).f17326o.getPaddingBottom());
        } else {
            ((cn.c) getMViewBinding()).f17315d.showData(info.getDescription());
            InfoExtendView infoExtendView2 = ((cn.c) getMViewBinding()).f17315d;
            Intrinsics.g(infoExtendView2, "infoExtendView");
            jg.c.k(infoExtendView2);
            layoutParams2.topMargin = 0;
        }
        String avatarUrl = info.getAvatarUrl();
        if (((cn.c) getMViewBinding()).f17320i.getTag() == null || !Intrinsics.c(((cn.c) getMViewBinding()).f17320i.getTag(), avatarUrl)) {
            ((cn.c) getMViewBinding()).f17320i.setTag(avatarUrl);
            if (avatarUrl == null || avatarUrl.length() == 0) {
                AppCompatImageView appCompatImageView = ((cn.c) getMViewBinding()).f17320i;
                ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                appCompatImageView.setScaleType(scaleType);
                ((cn.c) getMViewBinding()).f17320i.setImageResource(com.transsion.moviedetail.R$mipmap.movie_staff_empty);
                ((cn.c) getMViewBinding()).f17317f.setScaleType(scaleType);
                ((cn.c) getMViewBinding()).f17317f.setImageResource(com.transsion.moviedetail.R$mipmap.movie_staff_empty);
            } else {
                AppCompatImageView appCompatImageView2 = ((cn.c) getMViewBinding()).f17320i;
                ImageView.ScaleType scaleType2 = ImageView.ScaleType.CENTER_CROP;
                appCompatImageView2.setScaleType(scaleType2);
                ((cn.c) getMViewBinding()).f17317f.setScaleType(scaleType2);
                int iE = com.blankj.utilcode.util.y.e();
                ej.f.a aVar = ej.f.f61882a;
                ej.f.b bVarB = aVar.m(this).g(avatarUrl).m(iE).c((iE * 480) / 360).b(new Function3() { // from class: com.transsion.moviedetail.staff.f
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return MovieStaffActivity.c1(this.f47315a, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue(), ((Long) obj3).longValue());
                    }
                });
                AppCompatImageView ivStaff = ((cn.c) getMViewBinding()).f17320i;
                Intrinsics.g(ivStaff, "ivStaff");
                bVarB.d(ivStaff);
                ej.f.b bVarB2 = aVar.m(this).g(avatarUrl).m(com.blankj.utilcode.util.i.e(24.0f)).c(com.blankj.utilcode.util.i.e(32.0f)).b(new Function3() { // from class: com.transsion.moviedetail.staff.g
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return MovieStaffActivity.d1(this.f47316a, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue(), ((Long) obj3).longValue());
                    }
                });
                ShapeableImageView ivCoverSmall = ((cn.c) getMViewBinding()).f17317f;
                Intrinsics.g(ivCoverSmall, "ivCoverSmall");
                bVarB2.d(ivCoverSmall);
            }
        }
        ((cn.c) getMViewBinding()).f17321j.setImageResource(info.getSeenStatus() == 0 ? com.transsion.moviedetail.R$mipmap.movie_staff_icon_want_to_see_white : com.transsion.moviedetail.R$mipmap.movie_detail_icon_want_to_see_selected);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit c1(MovieStaffActivity movieStaffActivity, boolean z10, boolean z11, long j11) {
        if (!z10) {
            ((cn.c) movieStaffActivity.getMViewBinding()).f17320i.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            ((cn.c) movieStaffActivity.getMViewBinding()).f17320i.setImageResource(com.transsion.moviedetail.R$mipmap.movie_staff_empty);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit d1(MovieStaffActivity movieStaffActivity, boolean z10, boolean z11, long j11) {
        if (!z10) {
            ((cn.c) movieStaffActivity.getMViewBinding()).f17317f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            ((cn.c) movieStaffActivity.getMViewBinding()).f17317f.setImageResource(com.transsion.moviedetail.R$mipmap.movie_staff_empty);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x000d  */
    private final void e1() {
        int i11;
        Integer num = this.staffType;
        if (num != null) {
            i11 = num.intValue() != 6 ? 9 : 6;
        }
        this.showCount = i11;
    }

    private final void f1() {
        Staff staff;
        Integer staffType;
        StaffType staffType2;
        if (this.staffType == null && (staff = this.staff) != null) {
            if (staff.getStaffType() == null) {
                List<StaffType> staffTypes = staff.getStaffTypes();
                staffType = (staffTypes == null || (staffType2 = (StaffType) CollectionsKt.v0(staffTypes)) == null) ? null : Integer.valueOf(staffType2.getId());
            } else {
                staffType = staff.getStaffType();
            }
            this.staffType = staffType;
            e1();
        }
    }

    private final void g1() {
        String staffId;
        String staffId2;
        String str = "";
        if (V0()) {
            y yVarY0 = y0();
            Staff staff = this.staff;
            yVarY0.y(staff != null ? staff.getStaffId() : null, 0);
            HashMap map = new HashMap();
            map.put("module_name", "want_to_see_cancel");
            Staff staff2 = this.staff;
            if (staff2 != null && (staffId2 = staff2.getStaffId()) != null) {
                str = staffId2;
            }
            map.put("staff_id", str);
            com.transsion.baselib.helper.a.f43262a.i("staff_info", map);
            return;
        }
        y yVarY1 = y0();
        Staff staff3 = this.staff;
        yVarY1.y(staff3 != null ? staff3.getStaffId() : null, 1);
        HashMap map2 = new HashMap();
        map2.put("module_name", "want_to_see");
        Staff staff4 = this.staff;
        if (staff4 != null && (staffId = staff4.getStaffId()) != null) {
            str = staffId;
        }
        map2.put("staff_id", str);
        com.transsion.baselib.helper.a.f43262a.i("staff_info", map2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        Staff staff = this.staff;
        s sVar = null;
        this.mMovieStaffAdapter = new s(staff != null ? staff.getStaffId() : null, this.staffType, new Function2() { // from class: com.transsion.moviedetail.staff.b
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return MovieStaffActivity.E0(this.f47311a, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        });
        this.mMovieStaffSubRecyclerVIewScrollListener = new w();
        s sVar2 = this.mMovieStaffAdapter;
        if (sVar2 == null) {
            Intrinsics.z("mMovieStaffAdapter");
            sVar2 = null;
        }
        v vVar = new v(sVar2, new Function2() { // from class: com.transsion.moviedetail.staff.j
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return MovieStaffActivity.F0(this.f47318a, ((Integer) obj).intValue(), (Pair) obj2);
            }
        });
        ((cn.c) getMViewBinding()).f17322k.addOnScrollListener(vVar);
        this.mMovieStaffScrollListener = vVar;
        s sVar3 = this.mMovieStaffAdapter;
        if (sVar3 == null) {
            Intrinsics.z("mMovieStaffAdapter");
            sVar3 = null;
        }
        sVar3.M0(false);
        s sVar4 = this.mMovieStaffAdapter;
        if (sVar4 == null) {
            Intrinsics.z("mMovieStaffAdapter");
            sVar4 = null;
        }
        sVar4.w1(new p6.d() { // from class: com.transsion.moviedetail.staff.k
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                MovieStaffActivity.G0(this.f47319a, baseQuickAdapter, view, i11);
            }
        });
        ((cn.c) getMViewBinding()).f17322k.setAnimation(null);
        RecyclerView recyclerView = ((cn.c) getMViewBinding()).f17322k;
        s sVar5 = this.mMovieStaffAdapter;
        if (sVar5 == null) {
            Intrinsics.z("mMovieStaffAdapter");
        } else {
            sVar = sVar5;
        }
        recyclerView.setAdapter(sVar);
        int iE = com.blankj.utilcode.util.y.e();
        int iE2 = com.blankj.utilcode.util.i.e(8.0f);
        int iZ0 = z0() + (com.transsion.baseui.util.b.a(this) ? 1 : 0);
        ((cn.c) getMViewBinding()).f17322k.addItemDecoration(new u(com.blankj.utilcode.util.i.e(12.0f), com.blankj.utilcode.util.i.e(4.0f), 0, com.blankj.utilcode.util.i.e(12.0f), iZ0));
        RecyclerView recyclerView2 = ((cn.c) getMViewBinding()).f17322k;
        GridLayoutManager gridLayoutManager = new GridLayoutManager((Context) this, iE, 1, false);
        gridLayoutManager.d0(new a(iZ0, (iE - (iE2 * 2)) / iZ0, iE2, iE));
        recyclerView2.setLayoutManager(gridLayoutManager);
        a1(0);
        b1(this.staff);
    }

    private final void w0() {
        hj.b logViewConfig;
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 == null || !logViewConfig2.i()) {
            Staff staff = this.staff;
            String mySeeTime = staff != null ? staff.getMySeeTime() : null;
            if (mySeeTime == null || mySeeTime.length() == 0 || y0().s().f() == null || y0().v().f() == null || (logViewConfig = getLogViewConfig()) == null) {
                return;
            }
            logViewConfig.k(true);
        }
    }

    private final void x0() {
        if (y0().t().f() == null) {
            y yVarY0 = y0();
            Staff staff = this.staff;
            yVarY0.p(staff != null ? staff.getStaffId() : null);
        }
        if (y0().u().f() == null) {
            y yVarY1 = y0();
            Staff staff2 = this.staff;
            yVarY1.q(staff2 != null ? staff2.getStaffId() : null, this.showCount);
        }
        if (y0().s().f() == null) {
            y yVarY2 = y0();
            Staff staff3 = this.staff;
            yVarY2.o(staff3 != null ? staff3.getStaffId() : null);
        }
    }

    private final y y0() {
        return (y) this.mMovieStaffViewModel.getValue();
    }

    private final int z0() {
        Integer num = this.staffType;
        return (num != null && num.intValue() == 6) ? 2 : 3;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: A0, reason: merged with bridge method [inline-methods] */
    public cn.c getViewBinding() {
        cn.c cVarC = cn.c.c(getLayoutInflater());
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public hj.b newLogViewConfig() {
        return new hj.b("staff_info", false, 2, null);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onConnected(network, networkCapabilities);
        x0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        HashMap mapG;
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        com.transsion.baselib.report.l.f43359a.x(3, this);
        Staff staff = (Staff) getIntent().getSerializableExtra("staff");
        this.staff = staff;
        if (staff == null) {
            Staff staff2 = new Staff();
            staff2.setStaffId(this.id);
            this.staff = staff2;
        }
        f1();
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            Staff staff3 = this.staff;
        }
        ViewGroup.LayoutParams layoutParams = ((cn.c) getMViewBinding()).f17324m.getLayoutParams();
        if (layoutParams instanceof CollapsingToolbarLayout.c) {
            ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.c) layoutParams)).topMargin = com.blankj.utilcode.util.d.c();
        }
        ((cn.c) getMViewBinding()).f17319h.init(this);
        C0();
        initData();
        Q0(savedInstanceState);
        L0();
        I0();
        x0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        nh.m.f70474a.m(this);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, nh.n
    public void onDisconnected() {
        super.onDisconnected();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        v vVar = this.mMovieStaffScrollListener;
        if (vVar != null) {
            vVar.f();
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        v vVar = this.mMovieStaffScrollListener;
        if (vVar != null) {
            vVar.g();
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
    }
}
