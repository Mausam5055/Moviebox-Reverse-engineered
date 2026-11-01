package com.transsion.room.sub.adapter.likes;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.moviedetail.fragment.SubjectListFragment;
import com.transsion.room.R$string;
import com.transsion.room.sub.fragment.likes.UgcLikesFragment;
import com.transsion.usercenter.profile.ProfileSubjectListViewModel;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends FragmentStateAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f51638a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f51639a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Fragment f51640b;

        public a(String title, Fragment fragment) {
            Intrinsics.h(title, "title");
            Intrinsics.h(fragment, "fragment");
            this.f51639a = title;
            this.f51640b = fragment;
        }

        public final Fragment a() {
            return this.f51640b;
        }

        public final String b() {
            return this.f51639a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f51639a, aVar.f51639a) && Intrinsics.c(this.f51640b, aVar.f51640b);
        }

        public int hashCode() {
            return (this.f51639a.hashCode() * 31) + this.f51640b.hashCode();
        }

        public String toString() {
            return "TabInfo(title=" + this.f51639a + ", fragment=" + this.f51640b + ")";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(FragmentActivity activity) {
        super(activity);
        Intrinsics.h(activity, "activity");
        String string = activity.getString(R$string.play_hub);
        Intrinsics.g(string, "getString(...)");
        a aVar = new a(string, new UgcLikesFragment());
        String string2 = activity.getString(R$string.buzz_box);
        Intrinsics.g(string2, "getString(...)");
        this.f51638a = CollectionsKt.o(aVar, new a(string2, SubjectListFragment.INSTANCE.a(g(), ProfileSubjectListViewModel.class)));
    }

    private final Bundle g() {
        Bundle bundle = new Bundle();
        bundle.putInt(EventConstants.KEY_SOURCE, 1);
        return bundle;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public Fragment createFragment(int i11) {
        return ((a) this.f51638a.get(i11)).a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f51638a.size();
    }

    public final String h(int i11) {
        return ((a) this.f51638a.get(i11)).b();
    }
}
