package com.transsion.rewardscenter.task.member;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.config.utils.XLogUtil;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.push.PushConstants;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0014\u001a\u00020\n2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0016\u0010\fJ\r\u0010\u0017\u001a\u00020\n¢\u0006\u0004\b\u0017\u0010\fR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/rewardscenter/task/member/MemberTaskView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "h", "()V", "Lwp/a;", XLogUtil.TAG, "setCtxConfig", "(Lwp/a;)V", "", "Lcom/transsion/rewardscenterapi/MemberTaskItem;", "tasks", "setTaskData", "(Ljava/util/List;)V", "onResume", PushConstants.PROVIDER_FIELD_DESTROY, "Lcom/transsion/rewardscenter/task/member/d;", "a", "Lcom/transsion/rewardscenter/task/member/d;", "taskAdapter", "Landroidx/recyclerview/widget/RecyclerView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/recyclerview/widget/RecyclerView;", "recyclerTaskAd", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MemberTaskView extends ConstraintLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private d taskAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private RecyclerView recyclerTaskAd;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberTaskView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberTaskView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberTaskView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        h();
    }

    public /* synthetic */ MemberTaskView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void h() {
        this.recyclerTaskAd = new RecyclerView(getContext());
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, -1);
        RecyclerView recyclerView = this.recyclerTaskAd;
        if (recyclerView == null) {
            Intrinsics.z("recyclerTaskAd");
            recyclerView = null;
        }
        addView(recyclerView, bVar);
        RecyclerView recyclerView2 = this.recyclerTaskAd;
        if (recyclerView2 == null) {
            Intrinsics.z("recyclerTaskAd");
            recyclerView2 = null;
        }
        recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext(), 1, false));
        recyclerView2.addItemDecoration(new d.a(0, 1, null));
    }

    public final void destroy() {
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void onResume() {
        d dVar = this.taskAdapter;
        if (dVar != null) {
            dVar.notifyDataSetChanged();
        }
    }

    public final void setCtxConfig(wp.a config) {
        Intrinsics.h(config, "config");
        this.taskAdapter = new d(config);
        RecyclerView recyclerView = this.recyclerTaskAd;
        if (recyclerView == null) {
            Intrinsics.z("recyclerTaskAd");
            recyclerView = null;
        }
        recyclerView.setAdapter(this.taskAdapter);
    }

    public final void setTaskData(List<MemberTaskItem> tasks) {
        Intrinsics.h(tasks, "tasks");
        d dVar = this.taskAdapter;
        if (dVar != null) {
            dVar.n1(tasks);
        }
    }
}
