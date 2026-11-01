package com.transsion.usercenter.profile.see;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.usercenter.profile.see.bean.ProfileSeeData;
import com.transsion.usercenter.profile.see.bean.ProfileSeeItem;
import com.transsion.usercenter.profile.see.bean.ProfileSeeMultiItemData;
import com.transsion.usercenter.profile.see.bean.ProfileSeeStaffItem;
import com.transsion.usercenter.profile.see.bean.ProfileSeeSubjectItem;
import com.transsion.usercenter.profile.see.bean.ProfileSeeTimeItem;
import com.transsnet.downloader.viewmodel.a0;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f57284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f57285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f57286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList f57287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f57288f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f57289g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f57290h;

    static final class a implements lz.h {
        a() {
        }

        /* JADX WARN: Code duplicated, block: B:30:0x00bf  */
        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m apply(BaseDto it) {
            ArrayList arrayList;
            Iterable iterableEmptyList;
            Intrinsics.h(it, "it");
            ProfileSeeData profileSeeData = (ProfileSeeData) it.getData();
            if (profileSeeData != null) {
                h hVar = h.this;
                List<ProfileSeeItem> items = profileSeeData.getItems();
                if (items != null) {
                    arrayList = new ArrayList();
                    for (ProfileSeeItem profileSeeItem : items) {
                        ProfileSeeSubjectItem subject = profileSeeItem.getSubject();
                        ProfileSeeStaffItem staff = profileSeeItem.getStaff();
                        if (subject != null) {
                            String mySeeTime = subject.getMySeeTime();
                            String strJ = hVar.j(mySeeTime != null ? Long.parseLong(mySeeTime) : 0L);
                            if (hVar.f57287e.contains(strJ)) {
                                iterableEmptyList = CollectionsKt.h(subject);
                            } else {
                                hVar.f57287e.add(strJ);
                                iterableEmptyList = CollectionsKt.h(new ProfileSeeTimeItem(strJ), subject);
                            }
                        } else if (staff != null) {
                            String mySeeTime2 = staff.getMySeeTime();
                            String strJ2 = hVar.j(mySeeTime2 != null ? Long.parseLong(mySeeTime2) : 0L);
                            if (hVar.f57287e.contains(strJ2)) {
                                iterableEmptyList = CollectionsKt.h(staff);
                            } else {
                                hVar.f57287e.add(strJ2);
                                iterableEmptyList = CollectionsKt.h(new ProfileSeeTimeItem(strJ2), staff);
                            }
                        } else {
                            iterableEmptyList = Collections.emptyList();
                        }
                        Intrinsics.e(iterableEmptyList);
                        CollectionsKt.B(arrayList, iterableEmptyList);
                    }
                } else {
                    arrayList = null;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
            } else {
                arrayList = new ArrayList();
            }
            BaseDto baseDto = new BaseDto();
            ProfileSeeData profileSeeData2 = (ProfileSeeData) it.getData();
            baseDto.setData(new ProfileSeeMultiItemData(profileSeeData2 != null ? profileSeeData2.getPager() : null, arrayList));
            baseDto.setCode(it.getCode());
            baseDto.setMsg(it.getMsg());
            baseDto.setReason(it.getReason());
            return j.t(baseDto);
        }
    }

    public static final class b extends sg.a {
        b() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            h.this.f57288f.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(ProfileSeeMultiItemData profileSeeMultiItemData) {
            Pager pager;
            super.c(profileSeeMultiItemData);
            h.this.f57288f.q(profileSeeMultiItemData);
            if (profileSeeMultiItemData == null || (pager = profileSeeMultiItemData.getPager()) == null) {
                return;
            }
            h hVar = h.this;
            String nextPage = pager.getNextPage();
            hVar.f57285c = nextPage != null ? Integer.parseInt(nextPage) : 1;
            Integer perPage = pager.getPerPage();
            hVar.f57286d = perPage != null ? perPage.intValue() : 10;
            b0 b0Var = hVar.f57290h;
            int totalCount = pager.getTotalCount();
            if (totalCount == null) {
                totalCount = 0;
            }
            b0Var.q(totalCount);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f57284b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.transsion.usercenter.profile.see.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.p();
            }
        });
        this.f57285c = 1;
        this.f57286d = 10;
        this.f57287e = new ArrayList();
        this.f57288f = new b0();
        this.f57289g = new b0();
        this.f57290h = new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String j(long j11) {
        return a0.f60085a.z(j11 * ((long) 1000));
    }

    private final com.transsion.usercenter.profile.b m() {
        return (com.transsion.usercenter.profile.b) this.f57284b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.usercenter.profile.b p() {
        return (com.transsion.usercenter.profile.b) zg.c.f79414e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public final LiveData k() {
        return this.f57290h;
    }

    public final LiveData l() {
        return this.f57289g;
    }

    public final LiveData n() {
        return this.f57288f;
    }

    public final void o(String userId, int i11) {
        Intrinsics.h(userId, "userId");
        com.transsion.usercenter.profile.b.a.i(m(), userId, this.f57285c, this.f57286d, i11, null, 16, null).n(new a()).f(sg.d.f75349a.c()).subscribe(new b());
    }

    public final void q(String userId, int i11) {
        Intrinsics.h(userId, "userId");
        this.f57285c = 1;
        this.f57286d = 10;
        this.f57287e.clear();
        o(userId, i11);
    }
}
