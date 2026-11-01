package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.tn.lib.widget.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b \u0018\u00002\u00020\u0001:\u00019B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0011\u0010\fJ\u000f\u0010\u0012\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0012\u0010\fJ\u000f\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\fJ\u001f\u0010\u0017\u001a\u00020\b2\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\fJ\u0017\u0010\u001c\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010#\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\u0015\u0010'\u001a\u00020\b2\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J\r\u0010)\u001a\u00020\b¢\u0006\u0004\b)\u0010\fJ\u000f\u0010+\u001a\u0004\u0018\u00010*¢\u0006\u0004\b+\u0010,J\r\u0010-\u001a\u00020\b¢\u0006\u0004\b-\u0010\fJ\r\u0010.\u001a\u00020\b¢\u0006\u0004\b.\u0010\fJ\u0015\u00101\u001a\u00020\b2\u0006\u00100\u001a\u00020/¢\u0006\u0004\b1\u00102J\r\u00103\u001a\u00020\r¢\u0006\u0004\b3\u00104J\u0015\u00107\u001a\u00020\b2\u0006\u00106\u001a\u000205¢\u0006\u0004\b7\u00108R\u0018\u0010;\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010=\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010:R\u0018\u0010B\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010H\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010J\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010IR\u0016\u0010K\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010IR\u0016\u0010L\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010IR\u0018\u00106\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR$\u0010T\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u00102¨\u0006U"}, d2 = {"Lcom/tn/lib/view/AdvRecyclerView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "g", "(Landroid/util/AttributeSet;)V", "h", "()V", "", "isShow", "i", "(Z)V", "getProgressView", "getEmptyView", "getErrorView", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$b0;", "adapter", "setAdapter", "(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V", "showData", "Landroidx/recyclerview/widget/RecyclerView$m;", "layoutManager", "setLayoutManager", "(Landroidx/recyclerview/widget/RecyclerView$m;)V", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "Landroidx/recyclerview/widget/RecyclerView$r;", "onScrollListener", "addOnScrollListener", "(Landroidx/recyclerview/widget/RecyclerView$r;)V", "", "resId", "resetEmptyView", "(I)V", "showEmpty", "Landroid/view/View;", "obtainEmptyView", "()Landroid/view/View;", "showError", "showProgress", "Lcom/tn/lib/view/AdvRecyclerView$a;", "listenr", "setOnStateClickListener", "(Lcom/tn/lib/view/AdvRecyclerView$a;)V", "isShowEmpty", "()Z", "", "pageName", "setPageName", "(Ljava/lang/String;)V", "a", "Landroid/view/View;", "mVewProgress", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mViewEmpty", "c", "mViewError", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/FrameLayout;", "stateContent", "e", "Landroidx/recyclerview/widget/RecyclerView$r;", "mOnScrollListener", "f", "Landroidx/recyclerview/widget/RecyclerView;", "mRecyclerView", "I", "mErrorId", "mEmptyId", "mProgressId", "j", "Ljava/lang/String;", CampaignEx.JSON_KEY_AD_K, "Lcom/tn/lib/view/AdvRecyclerView$a;", "getOnClickListener", "()Lcom/tn/lib/view/AdvRecyclerView$a;", "setOnClickListener", "onClickListener", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdvRecyclerView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private View mVewProgress;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private View mViewEmpty;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private View mViewError;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private FrameLayout stateContent;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private RecyclerView.r mOnScrollListener;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private RecyclerView mRecyclerView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int mErrorId;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int mEmptyId;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int mProgressId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private a onClickListener;

    public interface a {
        void a();

        void b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdvRecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.mErrorId = -1;
        this.mEmptyId = -1;
        this.mProgressId = -1;
        g(attrs);
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(AdvRecyclerView advRecyclerView) {
        a aVar = advRecyclerView.onClickListener;
        if (aVar != null) {
            aVar.b();
        }
        String str = advRecyclerView.pageName;
        if (str != null) {
            r.b(str);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(AdvRecyclerView advRecyclerView) {
        String str = advRecyclerView.pageName;
        if (str != null) {
            r.c(str);
        }
        return Unit.f67061a;
    }

    private final void g(AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R$styleable.advrecyclerview);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        try {
            try {
                this.mProgressId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.advrecyclerview_adv_layout_progress, R$layout.adv_layout_progress);
                this.mEmptyId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.advrecyclerview_adv_layout_empty, R$layout.adv_layout_empty);
                this.mErrorId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.advrecyclerview_adv_layout_error, R$layout.adv_layout_error);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private final void getEmptyView() {
        if (this.stateContent == null) {
            this.stateContent = (FrameLayout) ((ViewStub) findViewById(R$id.vs_state)).inflate();
        }
        if (this.mViewEmpty == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.mEmptyId, (ViewGroup) null);
            this.mViewEmpty = viewInflate;
            FrameLayout frameLayout = this.stateContent;
            if (frameLayout != null) {
                frameLayout.addView(viewInflate, layoutParams);
            }
        }
    }

    private final void getErrorView() {
        if (this.stateContent == null) {
            this.stateContent = (FrameLayout) ((ViewStub) findViewById(R$id.vs_state)).inflate();
        }
        if (this.mViewError == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.mErrorId, (ViewGroup) null);
            if (viewInflate instanceof NoNetworkBigView) {
                NoNetworkBigView noNetworkBigView = (NoNetworkBigView) viewInflate;
                NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
                noNetworkBigView.retry(new Function0() { // from class: com.tn.lib.view.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AdvRecyclerView.e(this.f41265a);
                    }
                });
                noNetworkBigView.goToSetting(new Function0() { // from class: com.tn.lib.view.d
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AdvRecyclerView.f(this.f41267a);
                    }
                });
                String str = this.pageName;
                if (str != null) {
                    r.a(str);
                }
            }
            this.mViewError = viewInflate;
            FrameLayout frameLayout = this.stateContent;
            if (frameLayout != null) {
                frameLayout.addView(viewInflate, layoutParams);
            }
        }
    }

    private final void getProgressView() {
        if (this.stateContent == null) {
            this.stateContent = (FrameLayout) ((ViewStub) findViewById(R$id.vs_state)).inflate();
        }
        if (this.mVewProgress == null) {
            this.mVewProgress = LayoutInflater.from(getContext()).inflate(this.mProgressId, (ViewGroup) null);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            FrameLayout frameLayout = this.stateContent;
            if (frameLayout != null) {
                frameLayout.addView(this.mVewProgress, layoutParams);
            }
        }
    }

    private final void h() {
        LayoutInflater.from(getContext()).inflate(R$layout.adv_layout_advanced_recyclerview, this);
        this.mRecyclerView = (RecyclerView) findViewById(R$id.recycler_view);
    }

    private final void i(boolean isShow) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            Intrinsics.z("mRecyclerView");
            recyclerView = null;
        }
        recyclerView.setVisibility(isShow ? 0 : 4);
        FrameLayout frameLayout = this.stateContent;
        if (frameLayout == null || frameLayout == null) {
            return;
        }
        frameLayout.setVisibility(isShow ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(AdvRecyclerView advRecyclerView, View view) {
        a aVar = advRecyclerView.onClickListener;
        if (aVar != null) {
            aVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(AdvRecyclerView advRecyclerView, View view) {
        a aVar = advRecyclerView.onClickListener;
        if (aVar != null) {
            aVar.a();
        }
    }

    private final void setAdapter(RecyclerView.Adapter adapter) {
        RecyclerView recyclerView = this.mRecyclerView;
        RecyclerView recyclerView2 = null;
        if (recyclerView == null) {
            Intrinsics.z("mRecyclerView");
            recyclerView = null;
        }
        recyclerView.setAdapter(adapter);
        RecyclerView recyclerView3 = this.mRecyclerView;
        if (recyclerView3 == null) {
            Intrinsics.z("mRecyclerView");
        } else {
            recyclerView2 = recyclerView3;
        }
        recyclerView2.setVisibility(0);
        FrameLayout frameLayout = this.stateContent;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    public final void addOnScrollListener(RecyclerView.r onScrollListener) {
        Intrinsics.h(onScrollListener, "onScrollListener");
        this.mOnScrollListener = onScrollListener;
        if (this.mRecyclerView == null) {
            Intrinsics.z("mRecyclerView");
        }
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            Intrinsics.z("mRecyclerView");
            recyclerView = null;
        }
        recyclerView.addOnScrollListener(onScrollListener);
    }

    public final a getOnClickListener() {
        return this.onClickListener;
    }

    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView;
        }
        Intrinsics.z("mRecyclerView");
        return null;
    }

    public final boolean isShowEmpty() {
        View view = this.mViewEmpty;
        if (view != null) {
            return jg.c.i(view);
        }
        return false;
    }

    /* JADX INFO: renamed from: obtainEmptyView, reason: from getter */
    public final View getMViewEmpty() {
        return this.mViewEmpty;
    }

    public final void resetEmptyView(int resId) {
        this.mEmptyId = resId;
    }

    public final void setLayoutManager(RecyclerView.m layoutManager) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            Intrinsics.z("mRecyclerView");
            recyclerView = null;
        }
        recyclerView.setLayoutManager(layoutManager);
    }

    public final void setOnClickListener(a aVar) {
        this.onClickListener = aVar;
    }

    public final void setOnStateClickListener(a listenr) {
        Intrinsics.h(listenr, "listenr");
        this.onClickListener = listenr;
    }

    public final void setPageName(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.pageName = pageName;
    }

    public final void showData() {
        i(true);
    }

    public final void showEmpty() {
        getEmptyView();
        i(false);
        View view = this.mViewError;
        if (view != null) {
            view.setVisibility(4);
        }
        View view2 = this.mViewEmpty;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        View view3 = this.mVewProgress;
        if (view3 != null) {
            view3.setVisibility(4);
        }
        FrameLayout frameLayout = this.stateContent;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    AdvRecyclerView.j(this.f41110a, view4);
                }
            });
        }
    }

    public final void showError() {
        getErrorView();
        i(false);
        View view = this.mViewError;
        if (view != null) {
            view.setVisibility(0);
        }
        View view2 = this.mViewEmpty;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        View view3 = this.mVewProgress;
        if (view3 != null) {
            view3.setVisibility(4);
        }
        FrameLayout frameLayout = this.stateContent;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    AdvRecyclerView.k(this.f41112a, view4);
                }
            });
        }
    }

    public final void showProgress() {
        getProgressView();
        i(false);
        View view = this.mViewError;
        if (view != null) {
            view.setVisibility(4);
        }
        View view2 = this.mViewEmpty;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        View view3 = this.mVewProgress;
        if (view3 != null) {
            view3.setVisibility(0);
        }
    }
}
