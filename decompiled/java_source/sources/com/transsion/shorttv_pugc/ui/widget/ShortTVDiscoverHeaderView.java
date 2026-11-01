package com.transsion.shorttv_pugc.ui.widget;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.base.widget.NpaLinearLayoutManager;
import com.transsion.shorttv_pugc.bean.AppointSubject;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.PlayListItem;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity;
import com.transsion.shorttv_pugc.ui.adapter.ShortTVHeaderViewAdapter;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010B1\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0011B;\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0013¢\u0006\u0004\b\u001f\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010$R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010(\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010&R\u0014\u0010)\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010$R\u0014\u0010,\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u00069"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/widget/ShortTVDiscoverHeaderView;", "Landroid/widget/LinearLayout;", "", "pageName", "Lcom/transsion/shorttv_pugc/bean/OperateItem;", WebConstants.FIELD_ITEM, "", "tabId", "", "isTablet", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/OperateItem;IZLandroid/content/Context;Landroid/util/AttributeSet;I)V", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/OperateItem;IZLandroid/content/Context;)V", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/OperateItem;IZLandroid/content/Context;Landroid/util/AttributeSet;)V", "", "c", "()V", "f", "Lcom/transsion/shorttv_pugc/bean/Subject;", "subject", "g", "(Lcom/transsion/shorttv_pugc/bean/Subject;)V", "getItemOptType", "()Ljava/lang/String;", "updateData", "(Lcom/transsion/shorttv_pugc/bean/OperateItem;)V", "clearExposureCache", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/shorttv_pugc/bean/OperateItem;", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "e", "isRTL", "dp8", "Lms/f;", "Lms/f;", "viewBinding", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVHeaderViewAdapter;", "h", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVHeaderViewAdapter;", "headerAdapter", "Lbt/b;", "i", "Lbt/b;", "exposureHelper", "Lut/b;", "j", "Lut/b;", "recReport", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTVDiscoverHeaderView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String pageName;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final OperateItem item;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final boolean isRTL;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final int dp8;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final ms.f viewBinding;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private ShortTVHeaderViewAdapter headerAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private bt.b exposureHelper;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final ut.b recReport;

    public static final class a implements bt.a {
        a() {
        }

        @Override // bt.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            List<Object> data2;
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = ShortTVDiscoverHeaderView.this.headerAdapter;
            if (((shortTVHeaderViewAdapter == null || (data2 = shortTVHeaderViewAdapter.getData()) == null) ? 0 : data2.size()) <= i11) {
                return;
            }
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter2 = ShortTVDiscoverHeaderView.this.headerAdapter;
            Subject subject = (shortTVHeaderViewAdapter2 == null || (data = shortTVHeaderViewAdapter2.getData()) == null) ? null : (Subject) data.get(i11);
            if (subject != null) {
                ShortTVDiscoverHeaderView.this.recReport.a("minitv_explore", subject, i11, j11, ShortTVDiscoverHeaderView.this.getItemOptType());
            }
        }
    }

    public static final class b extends RecyclerView.l {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            if (adapter != null) {
                if (childAdapterPosition == 0) {
                    if (ShortTVDiscoverHeaderView.this.isRTL) {
                        outRect.right = ShortTVDiscoverHeaderView.this.dp8 * 2;
                        return;
                    } else {
                        outRect.left = ShortTVDiscoverHeaderView.this.dp8 * 2;
                        return;
                    }
                }
                if (childAdapterPosition == adapter.getItemCount() - 1) {
                    outRect.right = ShortTVDiscoverHeaderView.this.dp8;
                    outRect.left = ShortTVDiscoverHeaderView.this.dp8;
                } else if (ShortTVDiscoverHeaderView.this.isRTL) {
                    outRect.right = ShortTVDiscoverHeaderView.this.dp8;
                } else {
                    outRect.left = ShortTVDiscoverHeaderView.this.dp8;
                }
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVDiscoverHeaderView(String pageName, OperateItem item, int i11, boolean z10, Context context) {
        this(pageName, item, i11, z10, context, null);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVDiscoverHeaderView(String pageName, OperateItem item, int i11, boolean z10, Context context, AttributeSet attributeSet) {
        this(pageName, item, i11, z10, context, attributeSet, 0);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTVDiscoverHeaderView(String pageName, OperateItem item, int i11, boolean z10, Context context, AttributeSet attributeSet, int i12) {
        super(context, attributeSet, i12);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
        this.pageName = pageName;
        this.item = item;
        this.tabId = i11;
        this.isTablet = z10;
        this.isRTL = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        this.dp8 = com.blankj.utilcode.util.a0.a(8.0f);
        this.recReport = new ut.b();
        View.inflate(context, R$layout.pugc_short_tv_layout_discover_header, this);
        ms.f fVarA = ms.f.a(this);
        Intrinsics.g(fVarA, "bind(...)");
        this.viewBinding = fVarA;
        setOrientation(1);
        c();
        f();
    }

    private final void c() {
        this.exposureHelper = new bt.b(0.6f, new a(), false, 4, null);
        this.viewBinding.f69770d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.widget.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVDiscoverHeaderView.d(this.f54381a, view);
            }
        });
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = new ShortTVHeaderViewAdapter(this.exposureHelper);
        shortTVHeaderViewAdapter.w1(new p6.d() { // from class: com.transsion.shorttv_pugc.ui.widget.c
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                ShortTVDiscoverHeaderView.e(this.f54383a, baseQuickAdapter, view, i11);
            }
        });
        this.headerAdapter = shortTVHeaderViewAdapter;
        RecyclerView recyclerView = this.viewBinding.f69768b;
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new b());
        recyclerView.setAdapter(this.headerAdapter);
        bt.b bVar = this.exposureHelper;
        Intrinsics.e(bVar);
        recyclerView.addOnScrollListener(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(ShortTVDiscoverHeaderView shortTVDiscoverHeaderView, View view) {
        lg.a.C0828a.g(lg.a.f68839a, "Click view all", false, 2, null);
        String deepLink = shortTVDiscoverHeaderView.item.getDeepLink();
        if (deepLink == null) {
            PlayListItem playListData = shortTVDiscoverHeaderView.item.getPlayListData();
            deepLink = playListData != null ? playListData.getDeepLink() : null;
        }
        if (deepLink != null) {
            ht.b.d(deepLink, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ShortTVDiscoverHeaderView shortTVDiscoverHeaderView, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVDiscoverHeaderView.recReport.b("minitv_explore", subject, i11, shortTVDiscoverHeaderView.getItemOptType());
            shortTVDiscoverHeaderView.g(subject);
        }
    }

    private final void f() {
        this.viewBinding.f69769c.setText(this.item.getTitle());
        updateData(this.item);
    }

    private final void g(Subject subject) {
        Context context = getContext();
        if (context != null) {
            String itemOptType = getItemOptType();
            if (Intrinsics.c(itemOptType, "new_release") || Intrinsics.c(itemOptType, "playlist")) {
                qt.a.f73700a.a((FragmentActivity) context, "minitv_explore", subject.getOps(), (PsExtractor.AUDIO_STREAM & 8) != 0 ? null : "download_subject", (PsExtractor.AUDIO_STREAM & 16) != 0 ? false : false, (PsExtractor.AUDIO_STREAM & 32) != 0 ? null : subject, (PsExtractor.AUDIO_STREAM & 64) != 0 ? null : null, (PsExtractor.AUDIO_STREAM & 128) != 0 ? Boolean.FALSE : null);
                return;
            }
            String subjectId = subject.getSubjectId();
            if (subjectId != null) {
                ShortTvListActivity.Companion.b(ShortTvListActivity.INSTANCE, context, subjectId, null, 0L, false, 28, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getItemOptType() {
        return "playlist";
    }

    public final void clearExposureCache() {
        bt.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    public final void updateData(OperateItem item) {
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter;
        Intrinsics.h(item, "item");
        List<AppointSubject> subjects = item.getSubjects();
        if (subjects != null && (shortTVHeaderViewAdapter = this.headerAdapter) != null) {
            shortTVHeaderViewAdapter.n1(subjects);
        }
        this.viewBinding.f69769c.setText(item.getTitle());
    }
}
