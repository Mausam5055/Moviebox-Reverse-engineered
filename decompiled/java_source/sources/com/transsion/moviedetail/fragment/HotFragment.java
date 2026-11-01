package com.transsion.moviedetail.fragment;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.transsion.moviedetail.viewmodel.HotViewModel;
import com.transsion.moviedetailapi.PostRankType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/transsion/moviedetail/fragment/HotFragment;", "Lcom/transsion/moviedetail/fragment/SubjectListFragment;", "<init>", "()V", "Companion", "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HotFragment extends SubjectListFragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String TAG = "HotFragment";

    /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.HotFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Fragment a(String str, String str2, String str3, PostRankType rankType) {
            Intrinsics.h(rankType, "rankType");
            Bundle bundle = new Bundle();
            bundle.putString("subject_id", str);
            bundle.putString("ops", str2);
            bundle.putString("page_name", str3);
            bundle.putSerializable("rank_type", rankType);
            return SubjectListFragment.INSTANCE.a(bundle, HotViewModel.class);
        }
    }

    @JvmStatic
    public static final Fragment newInstance(String str, String str2, String str3, PostRankType postRankType) {
        return INSTANCE.a(str, str2, str3, postRankType);
    }
}
