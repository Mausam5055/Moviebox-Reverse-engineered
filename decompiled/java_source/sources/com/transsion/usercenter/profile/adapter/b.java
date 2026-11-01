package com.transsion.usercenter.profile.adapter;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.transsion.baseui.fragment.EmptyFragment;
import com.transsion.moviedetailapi.IMovieDetailService;
import com.transsion.usercenter.profile.ProfileSubjectListViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends FragmentStateAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f57112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.collection.a f57113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f57114c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(String str, Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f57112a = str;
        this.f57113b = new androidx.collection.a();
        this.f57114c = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.adapter.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.j();
            }
        });
    }

    private final IMovieDetailService i() {
        return (IMovieDetailService) this.f57114c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IMovieDetailService j() {
        return (IMovieDetailService) TheRouter.d(IMovieDetailService.class, new Object[0]);
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public Fragment createFragment(int i11) {
        Bundle bundle = new Bundle();
        bundle.putInt(EventConstants.KEY_SOURCE, i11);
        bundle.putString("userId", this.f57112a);
        IMovieDetailService iMovieDetailServiceI = i();
        Fragment fragmentE = iMovieDetailServiceI != null ? iMovieDetailServiceI.e(bundle, ProfileSubjectListViewModel.class) : null;
        this.f57113b.put(Integer.valueOf(i11), fragmentE);
        return fragmentE == null ? new EmptyFragment() : fragmentE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 2;
    }

    public final void h(int i11) {
        Bundle bundle = new Bundle();
        bundle.putInt(EventConstants.KEY_SOURCE, i11);
        bundle.putString("userId", this.f57112a);
        Fragment fragment = (Fragment) this.f57113b.get(Integer.valueOf(i11));
        if (fragment == null || fragment.isStateSaved()) {
            return;
        }
        fragment.setArguments(bundle);
        IMovieDetailService iMovieDetailServiceI = i();
        if (iMovieDetailServiceI != null) {
            iMovieDetailServiceI.c(fragment);
        }
    }
}
