package com.transsion.room.adapter;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.therouter.TheRouter;
import com.transsion.baseui.fragment.EmptyFragment;
import com.transsion.moviedetailapi.IMovieDetailService;
import com.transsion.moviedetailapi.PostRankType;
import com.transsion.room.viewmodel.RoomHotViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends FragmentStateAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f51382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f51383b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String str, Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f51382a = str;
        this.f51383b = LazyKt.b(new Function0() { // from class: com.transsion.room.adapter.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.i();
            }
        });
    }

    private final IMovieDetailService h() {
        return (IMovieDetailService) this.f51383b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IMovieDetailService i() {
        return (IMovieDetailService) TheRouter.d(IMovieDetailService.class, new Object[0]);
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public Fragment createFragment(int i11) {
        Bundle bundle = new Bundle();
        PostRankType postRankType = i11 == 0 ? PostRankType.POST_RANK_TYPE_HOT : PostRankType.POST_RANK_TYPE_NEW;
        bundle.putString("subject_id", this.f51382a);
        bundle.putSerializable("rank_type", postRankType);
        IMovieDetailService iMovieDetailServiceH = h();
        Fragment fragmentE = iMovieDetailServiceH != null ? iMovieDetailServiceH.e(bundle, RoomHotViewModel.class) : null;
        return fragmentE == null ? new EmptyFragment() : fragmentE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 2;
    }
}
