package com.transsion.postdetail.comment.ui;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public final class CommentListViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f48786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f48787c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f48788d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f48789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f48790f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f48791g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f48786b = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.comment.ui.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommentListViewModel.j();
            }
        });
        this.f48787c = new b0();
        this.f48788d = new ArrayList();
        this.f48789e = "1";
        this.f48790f = 20;
        this.f48791g = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.a j() {
        return (xo.a) zg.c.f79414e.a().h(xo.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final xo.a l() {
        return (xo.a) this.f48786b.getValue();
    }

    public final void k(boolean z10) {
        if (z10) {
            this.f48789e = "1";
            this.f48788d.clear();
            this.f48791g = true;
        }
        k.d(u0.a(this), null, null, new CommentListViewModel$getCommentList$1(this, null), 3, null);
    }

    public final b0 m() {
        return this.f48787c;
    }

    public final boolean n() {
        return this.f48791g;
    }
}
