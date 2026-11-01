package com.chad.library.adapter.base.binder;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.e;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseItemBinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f21178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f21179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f21180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f21181d;

    public BaseItemBinder() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f21178a = LazyKt.a(lazyThreadSafetyMode, new Function0<ArrayList<Integer>>() { // from class: com.chad.library.adapter.base.binder.BaseItemBinder$clickViewIds$2
            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<Integer> invoke() {
                return new ArrayList<>();
            }
        });
        this.f21179b = LazyKt.a(lazyThreadSafetyMode, new Function0<ArrayList<Integer>>() { // from class: com.chad.library.adapter.base.binder.BaseItemBinder$longClickViewIds$2
            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<Integer> invoke() {
                return new ArrayList<>();
            }
        });
    }

    private final ArrayList e() {
        return (ArrayList) this.f21178a.getValue();
    }

    private final ArrayList f() {
        return (ArrayList) this.f21179b.getValue();
    }

    public abstract void a(BaseViewHolder baseViewHolder, Object obj);

    public void b(BaseViewHolder holder, Object obj, List payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
    }

    public final ArrayList c() {
        return e();
    }

    public final ArrayList d() {
        return f();
    }

    public void g(BaseViewHolder holder, View view, Object obj, int i11) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(view, "view");
    }

    public boolean h(BaseViewHolder holder, View view, Object obj, int i11) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(view, "view");
        return false;
    }

    public void i(BaseViewHolder holder, View view, Object obj, int i11) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(view, "view");
    }

    public abstract BaseViewHolder j(ViewGroup viewGroup, int i11);

    public boolean k(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        return false;
    }

    public boolean l(BaseViewHolder holder, View view, Object obj, int i11) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(view, "view");
        return false;
    }

    public void m(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
    }

    public void n(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
    }

    public final void o(e eVar) {
        this.f21180c = eVar;
    }

    public final void p(Context context) {
        this.f21181d = context;
    }
}
