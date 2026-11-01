package com.transsion.search.fragment.result;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.model.PostEntity;
import com.transsion.search.bean.SearchList;
import com.transsion.search.bean.VerticalRank;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
public final class SearchResultViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f52113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f52114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f52115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f52116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f52117f;

    public static final class a extends sg.a {
        a() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.C0828a.l(lg.a.f68839a, "search", "SearchValuesFragment --> postRequestResource --> failed to post request resources " + str2, false, 4, null);
            SearchResultViewModel.this.i().n(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(PostEntity postEntity) {
            if (postEntity != null) {
                SearchResultViewModel.this.i().n(postEntity);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f52113b = LazyKt.b(new Function0() { // from class: com.transsion.search.fragment.result.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SearchResultViewModel.q();
            }
        });
        this.f52114c = new b0();
        this.f52115d = new b0();
        this.f52116e = new b0();
        this.f52117f = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List h(List list) {
        ArrayList arrayList = new ArrayList();
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SearchList searchList = (SearchList) it.next();
                String title = searchList.getTitle();
                if (title != null && title.length() != 0) {
                    arrayList.add(new ResultWrapData(ResultType.TITLE, null, null, null, null, searchList.getTitle(), null, 94, null));
                }
                List<Subject> subjects = searchList.getSubjects();
                if (subjects != null) {
                    Iterator<T> it2 = subjects.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new ResultWrapData(ResultType.SUBJECT, (Subject) it2.next(), null, null, null, null, null, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null));
                    }
                }
                List<Staff> staffs = searchList.getStaffs();
                if (staffs != null) {
                    Iterator<T> it3 = staffs.iterator();
                    while (it3.hasNext()) {
                        arrayList.add(new ResultWrapData(ResultType.STAFF, null, (Staff) it3.next(), null, null, null, null, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, null));
                    }
                }
                List<Group> groups = searchList.getGroups();
                if (groups != null) {
                    Iterator<T> it4 = groups.iterator();
                    while (it4.hasNext()) {
                        arrayList.add(new ResultWrapData(ResultType.GROUP, null, null, (Group) it4.next(), null, null, null, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, null));
                    }
                }
                List<VerticalRank> verticalRanks = searchList.getVerticalRanks();
                if (verticalRanks != null) {
                    Iterator<T> it5 = verticalRanks.iterator();
                    while (it5.hasNext()) {
                        arrayList.add(new ResultWrapData(ResultType.VERTICAL_RANK, null, null, null, (VerticalRank) it5.next(), null, null, 110, null));
                    }
                }
                if (Intrinsics.c(searchList.getShowMore(), Boolean.TRUE)) {
                    arrayList.add(new ResultWrapData(ResultType.MORE, null, null, null, null, null, searchList.getMoreTabId(), 62, null));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final yq.g l() {
        return (yq.g) this.f52113b.getValue();
    }

    public static /* synthetic */ void n(SearchResultViewModel searchResultViewModel, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        searchResultViewModel.m(str, z10);
    }

    public static /* synthetic */ void p(SearchResultViewModel searchResultViewModel, String str, String str2, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        searchResultViewModel.o(str, str2, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final yq.g q() {
        return (yq.g) zg.c.f79414e.a().h(yq.g.class);
    }

    public final b0 i() {
        return this.f52116e;
    }

    public final b0 j() {
        return this.f52115d;
    }

    public final b0 k() {
        return this.f52114c;
    }

    public final void m(String keyword, boolean z10) {
        Intrinsics.h(keyword, "keyword");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(CampaignEx.JSON_KEY_AD_Q, keyword);
        jsonObject.addProperty("before", Boolean.valueOf(z10));
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        l().f(vg.a.f77324a.a(), companion.create(string, MediaType.INSTANCE.parse("application/json"))).E(qz.a.c()).subscribe(new a());
    }

    public final void o(String keyword, String str, boolean z10) {
        Intrinsics.h(keyword, "keyword");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new SearchResultViewModel$requestSearchResult$1(this, keyword, str, z10, null), 3, null);
    }

    public final void r(int i11) {
        this.f52117f = i11;
    }
}
