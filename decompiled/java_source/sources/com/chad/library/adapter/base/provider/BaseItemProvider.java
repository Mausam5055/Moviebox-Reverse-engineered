package com.chad.library.adapter.base.provider;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseItemProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f21204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference f21205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f21206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f21207d;

    public BaseItemProvider() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f21206c = LazyKt.a(lazyThreadSafetyMode, new Function0<ArrayList<Integer>>() { // from class: com.chad.library.adapter.base.provider.BaseItemProvider$clickViewIds$2
            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<Integer> invoke() {
                return new ArrayList<>();
            }
        });
        this.f21207d = LazyKt.a(lazyThreadSafetyMode, new Function0<ArrayList<Integer>>() { // from class: com.chad.library.adapter.base.provider.BaseItemProvider$longClickViewIds$2
            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<Integer> invoke() {
                return new ArrayList<>();
            }
        });
    }

    private final ArrayList j() {
        return (ArrayList) this.f21206c.getValue();
    }

    private final ArrayList n() {
        return (ArrayList) this.f21207d.getValue();
    }

    public abstract void b(BaseViewHolder baseViewHolder, Object obj);

    public void f(BaseViewHolder helper, Object obj, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(payloads, "payloads");
    }

    public BaseProviderMultiAdapter g() {
        WeakReference weakReference = this.f21205b;
        if (weakReference != null) {
            return (BaseProviderMultiAdapter) weakReference.get();
        }
        return null;
    }

    public final ArrayList h() {
        return j();
    }

    public final ArrayList i() {
        return n();
    }

    public final Context k() {
        Context context = this.f21204a;
        if (context != null) {
            return context;
        }
        Intrinsics.z("context");
        return null;
    }

    public abstract int l();

    public abstract int m();

    public void o(BaseViewHolder helper, View view, Object obj, int i11) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(view, "view");
    }

    public boolean p(BaseViewHolder helper, View view, Object obj, int i11) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(view, "view");
        return false;
    }

    public void q(BaseViewHolder helper, View view, Object obj, int i11) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(view, "view");
    }

    public BaseViewHolder r(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        return new BaseViewHolder(s6.a.a(parent, m()));
    }

    public boolean s(BaseViewHolder helper, View view, Object obj, int i11) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(view, "view");
        return false;
    }

    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
    }

    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
    }

    public void v(BaseViewHolder viewHolder, int i11) {
        Intrinsics.h(viewHolder, "viewHolder");
    }

    public final void w(BaseProviderMultiAdapter adapter) {
        Intrinsics.h(adapter, "adapter");
        this.f21205b = new WeakReference(adapter);
    }

    public final void x(Context context) {
        Intrinsics.h(context, "<set-?>");
        this.f21204a = context;
    }
}
