package com.transsion.usercenter.setting.adapter;

import androidx.recyclerview.widget.DiffUtil;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0017\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J%\u0010\n\u001a\u00020\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/transsion/usercenter/setting/adapter/d;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lvw/b;", "", "data", "<init>", "(Ljava/util/List;)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "G", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class d extends BaseProviderMultiAdapter<vw.b> {
    public static final int H = 1;
    public static final int I = 2;
    public static final int J = 3;

    public static final class a extends DiffUtil.e {
        a() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(vw.b oldItem, vw.b newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.b(), newItem.b());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(vw.b oldItem, vw.b newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return oldItem.i() == newItem.i();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(List<vw.b> data) {
        super(data);
        Intrinsics.h(data, "data");
        F1(new e());
        F1(new h());
        F1(new g());
        R0(new a());
    }

    public /* synthetic */ d(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new ArrayList() : list);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends vw.b> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).k();
    }
}
