package com.transsion.ninegridview.preview;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.transsion.moviedetailapi.bean.Image;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends FragmentStateAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f47714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f47715b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(FragmentActivity activity) {
        super(activity);
        Intrinsics.h(activity, "activity");
        this.f47715b = Boolean.FALSE;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public Fragment createFragment(int i11) {
        GifImagePreviewFragment.Companion aVar = GifImagePreviewFragment.INSTANCE;
        Boolean bool = this.f47715b;
        List list = this.f47714a;
        return aVar.a(bool, list != null ? (Image) list.get(i11) : null, i11);
    }

    public final void g(Boolean bool) {
        this.f47715b = bool;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List list = this.f47714a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final void h(List list) {
        this.f47714a = list;
    }
}
