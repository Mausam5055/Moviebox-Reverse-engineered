package com.transsion.room.viewmodel;

import android.app.Application;
import android.os.Bundle;
import androidx.p009lifecycle.u0;
import com.transsion.moviedetailapi.AbsSubjectListViewModel;
import com.transsion.moviedetailapi.PostRankType;
import com.transsion.moviedetailapi.p006enum.PostListSource;
import com.transsnet.flow.event.sync.event.PublishEvent;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class RoomHotViewModel extends AbsSubjectListViewModel {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f51828k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Lazy f51829l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f51830m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f51831n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Lazy f51832o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomHotViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f51828k = 10;
        this.f51829l = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.transsion.room.viewmodel.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomHotViewModel.d0();
            }
        });
        this.f51831n = "0";
        this.f51832o = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomHotViewModel.b0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.usercenter.profile.b X() {
        return (com.transsion.usercenter.profile.b) this.f51832o.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final eq.a Z() {
        return (eq.a) this.f51829l.getValue();
    }

    private final void a0(String str) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomHotViewModel$loadNewSubject$1(this, str, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.usercenter.profile.b b0() {
        return (com.transsion.usercenter.profile.b) zg.c.f79414e.a().h(com.transsion.usercenter.profile.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(RoomHotViewModel roomHotViewModel, PublishEvent it) {
        Intrinsics.h(it, "it");
        roomHotViewModel.a0(it.getPostId());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final eq.a d0() {
        return (eq.a) zg.c.f79414e.a().h(eq.a.class);
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public PostListSource A() {
        return PostListSource.ROOM;
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public void E(boolean z10) {
        Y(this.f51830m, this.f51831n, W(), t().getValue(), z10);
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public void F(Bundle bundle) {
        if (bundle != null) {
            this.f51830m = bundle.getString("subject_id");
            Serializable serializable = bundle.getSerializable("rank_type");
            Intrinsics.f(serializable, "null cannot be cast to non-null type com.transsion.moviedetailapi.PostRankType");
            M((PostRankType) serializable);
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomHotViewModel$onCreate$$inlined$observeEvent$1(false, new Function1() { // from class: com.transsion.room.viewmodel.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomHotViewModel.c0(this.f51863a, (PublishEvent) obj);
            }
        }, null), 3, null);
    }

    public int W() {
        return this.f51828k;
    }

    public final void Y(String str, String page, int i11, String sortType, boolean z10) {
        Intrinsics.h(page, "page");
        Intrinsics.h(sortType, "sortType");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomHotViewModel$getPostSubject$1(this, str, page, i11, sortType, z10, null), 3, null);
    }

    public void e0(int i11) {
        this.f51828k = i11;
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public String w(int i11) {
        return i11 == PostRankType.POST_RANK_TYPE_NEW.ordinal() ? "roomdetail_new" : "roomdetail_hot";
    }
}
