package com.transsion.home.viewmodel;

import android.app.Application;
import android.net.Uri;
import android.os.Bundle;
import androidx.p009lifecycle.u0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.bean.RoomEntranceResponse;
import com.transsion.home.bean.TrendingRequestEntity;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.AbsSubjectListViewModel;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.p006enum.PostListSource;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class TrendingViewModel extends AbsSubjectListViewModel {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final a f45848p = new a(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f45849q = 8;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f45850k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Lazy f45851l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Lazy f45852m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f45853n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ol.e f45854o;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrendingViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45850k = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.v
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingViewModel.c0();
            }
        });
        this.f45851l = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingViewModel.Z();
            }
        });
        this.f45852m = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingViewModel.b0();
            }
        });
        this.f45853n = 12;
        this.f45854o = (ol.e) zg.c.f79414e.a().h(ol.e.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U(TrendingViewModel trendingViewModel) {
        String string = rl.e.f74553a.b().getString("trending_room_entrance_cache_v2", "");
        if (string == null || string.length() == 0) {
            lg.a.f68839a.c("TrendingViewModel", "fetchGroupInfo failed without cache", true);
        } else {
            trendingViewModel.W().n((RoomEntranceResponse) com.blankj.utilcode.util.o.d(string, RoomEntranceResponse.class));
            lg.a.f68839a.c("TrendingViewModel", "fetchGroupInfo use cache", true);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 Z() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 b0() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 c0() {
        return new androidx.p009lifecycle.b0();
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public PostListSource A() {
        return PostListSource.POSTLIST;
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public void E(boolean z10) {
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public void F(Bundle bundle) {
    }

    public final void T(boolean z10) {
        Function0 function0 = new Function0() { // from class: com.transsion.home.viewmodel.y
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingViewModel.U(this.f45903a);
            }
        };
        if (z10) {
            function0.invoke();
        } else {
            kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new TrendingViewModel$fetchGroupInfo$1(this, function0, null), 2, null);
        }
    }

    public final androidx.p009lifecycle.b0 V() {
        return (androidx.p009lifecycle.b0) this.f45851l.getValue();
    }

    public final androidx.p009lifecycle.b0 W() {
        return (androidx.p009lifecycle.b0) this.f45852m.getValue();
    }

    public final androidx.p009lifecycle.b0 X() {
        return (androidx.p009lifecycle.b0) this.f45850k.getValue();
    }

    public final void Y(String nextPage, int i11, boolean z10) {
        String string;
        Intrinsics.h(nextPage, "nextPage");
        TrendingRequestEntity trendingRequestEntity = new TrendingRequestEntity();
        trendingRequestEntity.setPage(nextPage);
        trendingRequestEntity.setPerPage(i11);
        trendingRequestEntity.setSessionId(yg.b.f79009a.h());
        Uri uriC = com.transsion.baselib.report.h.f43348a.c();
        if (uriC == null || (string = uriC.toString()) == null) {
            string = "";
        }
        trendingRequestEntity.setDeepLink(string);
        trendingRequestEntity.setLatest_events(new wj.a(wj.b.f77693a.e()));
        trendingRequestEntity.setTabId(String.valueOf(HomeTabId.Trending.getValue()));
        trendingRequestEntity.setDisablePlaylist(Boolean.valueOf(z10));
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new TrendingViewModel$getTrendingList$1(trendingRequestEntity, this, nextPage, null), 2, null);
    }

    public final void a0(Subject subject, int i11, String moduleName) {
        Intrinsics.h(subject, "subject");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        String subjectId = subject.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("has_resource", String.valueOf(subject.getHasResource()));
        map.put("item_type", "rec");
        String title = subject.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        String ops = subject.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        map.put(WebConstants.PAGE_FROM, v());
        map.put("sequence", String.valueOf(i11));
        Map mapU = u(t().ordinal());
        if (mapU != null) {
            for (Map.Entry entry : mapU.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (str2 == null) {
                    str2 = "";
                }
                map.put(str, str2);
            }
        }
        com.transsion.baselib.helper.a.f43262a.g(w(t().ordinal()), map);
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public String w(int i11) {
        return "Trending";
    }
}
