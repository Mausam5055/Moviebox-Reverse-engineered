package com.transsnet.downloader.adapter;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.fragment.DownloadMultiListFragment;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class l extends FragmentStateAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ny.c f58507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f58508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Subject f58509c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f58510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f58511e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f58512f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f58513g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f58514h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f58515i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Integer f58516j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f58517k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map f58518l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(FragmentActivity activity, ny.c tabControl) {
        super(activity);
        Intrinsics.h(activity, "activity");
        Intrinsics.h(tabControl, "tabControl");
        this.f58507a = tabControl;
        this.f58518l = new LinkedHashMap();
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public Fragment createFragment(int i11) {
        ResourcesSeason resourcesSeasonH = h(i11);
        DownloadMultiListFragment downloadMultiListFragmentA = DownloadMultiListFragment.INSTANCE.a(this.f58511e, this.f58512f, this.f58509c, this.f58510d, this.f58513g, this.f58514h, 0, i11, this.f58517k, false, resourcesSeasonH != null ? resourcesSeasonH.getSe() : 0, this.f58515i, i11);
        downloadMultiListFragmentA.p1(this.f58508b);
        downloadMultiListFragmentA.q1(this.f58507a);
        this.f58518l.put(Integer.valueOf(i11), new WeakReference(downloadMultiListFragmentA));
        return downloadMultiListFragmentA;
    }

    public final DownloadMultiListFragment g(int i11) {
        WeakReference weakReference = (WeakReference) this.f58518l.get(Integer.valueOf(i11));
        if (weakReference != null) {
            return (DownloadMultiListFragment) weakReference.get();
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List list = this.f58508b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final ResourcesSeason h(int i11) {
        List list = this.f58508b;
        if (list != null) {
            return (ResourcesSeason) CollectionsKt.l0(list, i11);
        }
        return null;
    }

    public final void i(String str) {
        this.f58510d = str;
    }

    public final void j(String str) {
        this.f58512f = str;
    }

    public final void k(String str) {
        this.f58513g = str;
    }

    public final void l(String str) {
        this.f58511e = str;
    }

    public final void m(Integer num) {
        this.f58516j = num;
    }

    public final void n(boolean z10) {
        this.f58517k = z10;
    }

    public final void o(Subject subject) {
        this.f58509c = subject;
    }

    public final void p(String str) {
        this.f58514h = str;
    }

    public final void q(int i11) {
        this.f58515i = i11;
    }

    public final void setData(List list) {
        this.f58508b = list;
    }
}
