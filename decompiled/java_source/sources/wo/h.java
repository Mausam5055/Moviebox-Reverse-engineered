package wo;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.transsion.baseui.R$string;
import com.transsion.baseui.fragment.EmptyFragment;
import com.transsion.moviedetailapi.IMovieDetailService;
import com.transsion.postdetail.comment.ui.CommentListFragment;
import com.transsion.usercenter.profile.ProfileSubjectListViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h extends FragmentStateAdapter {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f77926f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f77927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f77928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f77929c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f77930d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f77931e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Fragment fragment, String str) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f77927a = str;
        this.f77928b = LazyKt.b(new Function0() { // from class: wo.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.l();
            }
        });
    }

    private final Fragment h(int i11) {
        Fragment fragmentE;
        Bundle bundle = new Bundle();
        bundle.putInt(EventConstants.KEY_SOURCE, i11);
        bundle.putString("userId", this.f77927a);
        IMovieDetailService iMovieDetailServiceJ = j();
        return (iMovieDetailServiceJ == null || (fragmentE = iMovieDetailServiceJ.e(bundle, ProfileSubjectListViewModel.class)) == null) ? new EmptyFragment() : fragmentE;
    }

    private final IMovieDetailService j() {
        return (IMovieDetailService) this.f77928b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IMovieDetailService l() {
        return (IMovieDetailService) TheRouter.d(IMovieDetailService.class, new Object[0]);
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public boolean containsItem(long j11) {
        return j11 == getItemId(0) || j11 == getItemId(1) || j11 == getItemId(2);
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public Fragment createFragment(int i11) {
        if (i11 == 0) {
            return h(1);
        }
        if (i11 != 1) {
            return i11 != 2 ? new EmptyFragment() : CommentListFragment.INSTANCE.a(true);
        }
        return h(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 3;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i11) {
        long j11;
        long j12;
        if (i11 == 0) {
            j11 = 1000;
            j12 = this.f77929c;
        } else if (i11 == 1) {
            j11 = 2000;
            j12 = this.f77930d;
        } else {
            if (i11 != 2) {
                return i11;
            }
            j11 = 3000;
            j12 = this.f77931e;
        }
        return j11 + j12;
    }

    public final void i(String str) {
        this.f77927a = str;
        this.f77929c++;
        this.f77930d++;
        this.f77931e++;
        notifyDataSetChanged();
    }

    public final int k(int i11) {
        if (i11 != 0) {
            return i11 != 1 ? R$string.my_comments : com.tn.lib.widget.R$string.my_posts;
        }
        return com.tn.lib.widget.R$string.my_likes;
    }
}
