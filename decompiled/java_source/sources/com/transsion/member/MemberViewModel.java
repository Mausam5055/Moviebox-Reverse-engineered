package com.transsion.member;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.member.bean.request.InviteUserShareInfoReq;
import com.transsion.member.constants.TaskType;
import com.transsion.memberapi.AllMemberRightsData;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.memberapi.MemberAdTaskInfo;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberPriceData;
import com.transsion.memberapi.MemberTaskGroup;
import com.transsion.memberapi.MemberTaskInfo;
import com.transsion.memberapi.MemberTaskInviteRewards;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.MemberTaskItemCheckInInfo;
import com.transsion.memberapi.MemberTaskItemInvite;
import com.transsion.memberapi.MemberTaskRewardInfo;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import com.transsion.memberapi.SkuData;
import com.transsion.memberapi.SkuItem;
import com.transsion.payment.lib.bean.HttpErrorBodyBean;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes5.dex */
public final class MemberViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final a f46358t = new a(null);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f46359u = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f46360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f46361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f46362d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46364f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46365g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46366h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46367i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46368j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46369k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46370l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46371m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46372n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46373o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Map f46374p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private io.reactivex.rxjava3.disposables.c f46375q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private io.reactivex.rxjava3.disposables.c f46376r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private io.reactivex.rxjava3.disposables.c f46377s;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends sg.a {
        b() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("requestInviteUserMore failed " + str + ", " + str2);
            MemberViewModel.this.f46366h.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(AllMemberRightsData allMemberRightsData) {
            super.c(allMemberRightsData);
            com.transsion.member.a.f46406a.b("requestInviteUserMore onSuccess:" + allMemberRightsData);
            MemberViewModel.this.f46366h.q(allMemberRightsData);
        }
    }

    static final class c implements lz.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f46379a = new c();

        c() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
            MemberDetail memberDetail = (MemberDetail) it.getData();
            if (memberDetail != null) {
                c0.f46429a.b().putString("MEMBER_JSON", com.blankj.utilcode.util.o.j(memberDetail));
            }
        }
    }

    public static final class d extends sg.a {
        d() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            MemberViewModel.this.f46363e.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberDetail memberDetail) {
            super.c(memberDetail);
            MemberViewModel.this.f46363e.q(memberDetail);
            IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
            if (iMemberApi != null) {
                iMemberApi.k(memberDetail);
            }
        }

        @Override // sg.a, io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
            Intrinsics.h(d11, "d");
            super.onSubscribe(d11);
            MemberViewModel.this.f46375q = d11;
        }
    }

    public static final class e implements zm.j {
        e() {
        }

        @Override // zm.j
        public void a(String str, String str2) {
            MemberViewModel.this.f46363e.q(null);
        }

        @Override // zm.j
        public void b(MemberDetail memberDetail) {
            MemberViewModel.this.f46363e.q(memberDetail);
        }
    }

    static final class f implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f46382a = new f();

        f() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(Throwable it) {
            Intrinsics.h(it, "it");
            String string = c0.f46429a.b().getString("MEMBER_GOODS_JSON", null);
            if (string == null || string.length() == 0) {
                return io.reactivex.rxjava3.core.j.l(it);
            }
            try {
                MemberPriceData memberPriceData = (MemberPriceData) com.blankj.utilcode.util.o.d(string, MemberPriceData.class);
                BaseDto baseDto = new BaseDto();
                baseDto.setCode("0");
                baseDto.setData(memberPriceData);
                return io.reactivex.rxjava3.core.j.t(baseDto);
            } catch (Exception unused) {
                return io.reactivex.rxjava3.core.j.l(it);
            }
        }
    }

    static final class g implements lz.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f46383a = new g();

        g() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
            MemberPriceData memberPriceData = (MemberPriceData) it.getData();
            if (memberPriceData != null) {
                c0.f46429a.b().putString("MEMBER_GOODS_JSON", com.blankj.utilcode.util.o.j(memberPriceData));
            }
        }
    }

    public static final class h extends sg.a {
        h() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            MemberViewModel.this.f46373o.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberPriceData memberPriceData) {
            super.c(memberPriceData);
            MemberViewModel.this.f46373o.q(memberPriceData);
        }

        @Override // sg.a, io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
            Intrinsics.h(d11, "d");
            super.onSubscribe(d11);
            MemberViewModel.this.f46377s = d11;
        }
    }

    public static final class i implements zm.c {
        i() {
        }

        @Override // zm.c
        public void a(MemberAdTaskInfo memberAdTaskInfo, boolean z10) {
            zm.c.a.a(this, memberAdTaskInfo, z10);
        }

        /* JADX WARN: Code duplicated, block: B:38:0x00d9  */
        /* JADX WARN: Code duplicated, block: B:54:0x00e2 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:56:0x00a7 A[SYNTHETIC] */
        @Override // zm.c
        public void b(MemberTaskInfo memberTaskInfo, boolean z10) {
            List<MemberTaskGroup> arrayList;
            ArrayList arrayList2 = new ArrayList();
            if (memberTaskInfo == null || (arrayList = memberTaskInfo.getList()) == null) {
                arrayList = new ArrayList<>();
            }
            for (MemberTaskGroup memberTaskGroup : arrayList) {
                List<MemberTaskItem> taskItems = memberTaskGroup.getTaskItems();
                if (!taskItems.isEmpty()) {
                    MemberTaskItem memberTaskItem = (MemberTaskItem) CollectionsKt.i0(taskItems);
                    List<MemberTaskItemInvite> inviteList = memberTaskItem.getInviteList();
                    boolean z11 = false;
                    boolean z12 = inviteList != null && (inviteList.isEmpty() ^ true);
                    List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
                    if (checkInList != null && (!checkInList.isEmpty())) {
                        z11 = true;
                    }
                    if (z12 || z11) {
                        arrayList2.add(new MemberTaskItem(null, null, Integer.valueOf(TaskType.TITLE.getValue()), null, null, memberTaskGroup.getGroupName(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, memberTaskGroup.getGroupName(), memberTaskGroup.getGroupUrl(), memberTaskGroup.getGroupInfo(), 2097115, null));
                        for (MemberTaskItem memberTaskItem2 : taskItems) {
                            Integer taskSubType = memberTaskItem2.getTaskSubType();
                            int value = TaskType.DOWNLOAD_APP.getValue();
                            if (taskSubType == null || taskSubType.intValue() != value) {
                                Integer taskSubType2 = memberTaskItem2.getTaskSubType();
                                int value2 = TaskType.OPEN_APP.getValue();
                                if (taskSubType2 != null && taskSubType2.intValue() == value2) {
                                    if (qi.b.f73634a.n()) {
                                    }
                                }
                                arrayList2.add(memberTaskItem2);
                            } else if (qi.b.f73634a.n()) {
                                arrayList2.add(memberTaskItem2);
                            }
                        }
                    }
                }
            }
            MemberViewModel.this.f46367i.q(arrayList2);
        }
    }

    static final class j implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final j f46386a = new j();

        j() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(Throwable it) {
            Intrinsics.h(it, "it");
            String string = c0.f46429a.b().getString("SKU_LIST_JSON", null);
            if (string == null || string.length() == 0) {
                return io.reactivex.rxjava3.core.j.l(it);
            }
            try {
                SkuData skuData = (SkuData) com.blankj.utilcode.util.o.e(string, com.blankj.utilcode.util.o.h(SkuData.class, new Type[0]));
                BaseDto baseDto = new BaseDto();
                baseDto.setCode("0");
                baseDto.setData(skuData);
                return io.reactivex.rxjava3.core.j.t(baseDto);
            } catch (Exception unused) {
                return io.reactivex.rxjava3.core.j.l(it);
            }
        }
    }

    static final class k implements lz.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final k f46387a = new k();

        k() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
            SkuData skuData = (SkuData) it.getData();
            if (skuData != null) {
                List<SkuItem> skuList = skuData.getSkuList();
                List<SkuItem> listK0 = skuList != null ? CollectionsKt.K0(skuList, 3) : null;
                if (listK0 == null) {
                    listK0 = CollectionsKt.l();
                }
                skuData.setSkuList(listK0);
                List<SkuItem> skuPointList = skuData.getSkuPointList();
                List<SkuItem> listK1 = skuPointList != null ? CollectionsKt.K0(skuPointList, 3) : null;
                if (listK1 == null) {
                    listK1 = CollectionsKt.l();
                }
                skuData.setSkuPointList(listK1);
                c0.f46429a.b().putString("SKU_LIST_JSON", com.blankj.utilcode.util.o.j(skuData));
            }
        }
    }

    public static final class l extends sg.a {
        l() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            MemberViewModel.this.f46364f.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(SkuData skuData) {
            super.c(skuData);
            MemberViewModel.this.f46364f.q(skuData);
        }

        @Override // sg.a, io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
            Intrinsics.h(d11, "d");
            super.onSubscribe(d11);
            MemberViewModel.this.f46376r = d11;
        }
    }

    public static final class m extends sg.a {
        m() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("requestInviteUserMore failed " + str + ", " + str2);
            MemberViewModel.this.f46370l.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberTaskInviteRewards memberTaskInviteRewards) {
            super.c(memberTaskInviteRewards);
            com.transsion.member.a.f46406a.b("requestInviteUserMore onSuccess:" + memberTaskInviteRewards);
            MemberViewModel.this.f46370l.q(memberTaskInviteRewards);
        }
    }

    static final class n implements lz.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final n f46390a = new n();

        n() {
        }

        @Override // lz.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Triple a(BaseDto response1, BaseDto response2, BaseDto response3) {
            Intrinsics.h(response1, "response1");
            Intrinsics.h(response2, "response2");
            Intrinsics.h(response3, "response3");
            return new Triple(response1.getData(), response2.getData(), response3.getData());
        }
    }

    static final class o implements lz.f {
        o() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(Triple it) {
            Intrinsics.h(it, "it");
            androidx.p009lifecycle.b0 b0Var = MemberViewModel.this.f46371m;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("WhatsApp", it.getFirst());
            linkedHashMap.put("Telegram", it.getSecond());
            linkedHashMap.put("CopyLink", it.getThird());
            b0Var.q(linkedHashMap);
        }
    }

    static final class p implements lz.f {
        p() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(Throwable it) {
            Intrinsics.h(it, "it");
            MemberViewModel.this.f46371m.q(new LinkedHashMap());
        }
    }

    public static final class q extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f46394e;

        q(int i11) {
            this.f46394e = i11;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("taskCheckInSubmit failed " + str + ", " + str2);
            MemberViewModel.this.f46368j.q(new Pair(Integer.valueOf(this.f46394e), null));
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberTaskSubmitCheckInRes memberTaskSubmitCheckInRes) {
            super.c(memberTaskSubmitCheckInRes);
            MemberViewModel.this.f46368j.q(new Pair(Integer.valueOf(this.f46394e), memberTaskSubmitCheckInRes));
        }
    }

    public static final class r extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f46396e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f46397f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f46398g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f46399h;

        r(int i11, String str, int i12, int i13) {
            this.f46396e = i11;
            this.f46397f = str;
            this.f46398g = i12;
            this.f46399h = i13;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("taskCheckInSubmit failed " + str + ", " + str2);
            MemberViewModel.this.f46369k.q(new zm.d(-this.f46396e, this.f46397f, this.f46398g, this.f46399h, null));
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberTaskRewardInfo memberTaskRewardInfo) {
            super.c(memberTaskRewardInfo);
            MemberViewModel.this.f46369k.q(new zm.d(this.f46396e, this.f46397f, this.f46398g, this.f46399h, memberTaskRewardInfo));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MemberViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f46360b = LazyKt.b(new Function0() { // from class: com.transsion.member.t0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberViewModel.P();
            }
        });
        this.f46361c = LazyKt.b(new Function0() { // from class: com.transsion.member.u0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberViewModel.R();
            }
        });
        this.f46362d = LazyKt.b(new Function0() { // from class: com.transsion.member.v0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberViewModel.Q();
            }
        });
        this.f46363e = new androidx.p009lifecycle.b0();
        this.f46364f = new androidx.p009lifecycle.b0();
        this.f46365g = new androidx.p009lifecycle.b0();
        this.f46366h = new androidx.p009lifecycle.b0();
        this.f46367i = new androidx.p009lifecycle.b0();
        this.f46368j = new androidx.p009lifecycle.b0();
        this.f46369k = new androidx.p009lifecycle.b0();
        this.f46370l = new androidx.p009lifecycle.b0();
        this.f46371m = new androidx.p009lifecycle.b0();
        this.f46372n = new androidx.p009lifecycle.b0();
        this.f46373o = new androidx.p009lifecycle.b0();
        this.f46374p = new LinkedHashMap();
    }

    private final vm.a C() {
        return (vm.a) this.f46360b.getValue();
    }

    private final IMemberApi F() {
        return (IMemberApi) this.f46362d.getValue();
    }

    private final IPremiumApi G() {
        return (IPremiumApi) this.f46361c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vm.a P() {
        return (vm.a) zg.c.f79414e.a().h(vm.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IMemberApi Q() {
        return (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IPremiumApi R() {
        return (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object S(SkuItem skuItem, Continuation continuation) throws Throwable {
        MemberViewModel$redeem$1 memberViewModel$redeem$1;
        String message;
        String code;
        String reason;
        if (continuation instanceof MemberViewModel$redeem$1) {
            memberViewModel$redeem$1 = (MemberViewModel$redeem$1) continuation;
            int i11 = memberViewModel$redeem$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                memberViewModel$redeem$1.label = i11 - Integer.MIN_VALUE;
            } else {
                memberViewModel$redeem$1 = new MemberViewModel$redeem$1(this, continuation);
            }
        } else {
            memberViewModel$redeem$1 = new MemberViewModel$redeem$1(this, continuation);
        }
        Object objA = memberViewModel$redeem$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = memberViewModel$redeem$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objA);
                Result.Companion companion = Result.INSTANCE;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("skuId", skuItem.getSkuId());
                if (this.f46374p.get(skuItem.getSkuId()) != null) {
                    jSONObject.put("clientOrderId", this.f46374p.get(skuItem.getSkuId()));
                } else {
                    jSONObject.put("clientOrderId", UUID.randomUUID().toString());
                    this.f46374p.put(skuItem.getSkuId(), jSONObject.getString("clientOrderId"));
                }
                RequestBody.Companion companion2 = RequestBody.INSTANCE;
                String string = jSONObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyCreate = companion2.create(string, MediaType.INSTANCE.parse("application/json"));
                vm.a aVarC = C();
                String strA = vg.a.f77324a.a();
                memberViewModel$redeem$1.label = 1;
                objA = aVarC.a(strA, requestBodyCreate, memberViewModel$redeem$1);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
            }
            return objA;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            if (!(thM457exceptionOrNullimpl instanceof HttpException)) {
                lg.a.C0828a.l(lg.a.f68839a, "MemberViewModel", "it = " + thM457exceptionOrNullimpl, false, 4, null);
                return null;
            }
            HttpErrorBodyBean httpErrorBodyBeanA = HttpErrorBodyBean.INSTANCE.a((HttpException) thM457exceptionOrNullimpl);
            String str = "";
            if (httpErrorBodyBeanA == null || (message = httpErrorBodyBeanA.getMessage()) == null) {
                message = "";
            }
            if (httpErrorBodyBeanA == null || (code = httpErrorBodyBeanA.getCode()) == null) {
                code = "";
            }
            if (httpErrorBodyBeanA != null && (reason = httpErrorBodyBeanA.getReason()) != null) {
                str = reason;
            }
            return new BaseDto(message, code, null, str);
        }
    }

    public final LiveData A() {
        return this.f46366h;
    }

    public final LiveData B() {
        return this.f46370l;
    }

    public final LiveData D() {
        return this.f46363e;
    }

    public final LiveData E() {
        return this.f46373o;
    }

    public final LiveData H() {
        return this.f46365g;
    }

    public final LiveData I() {
        return this.f46371m;
    }

    public final SkuData J() {
        return (SkuData) this.f46364f.f();
    }

    public final LiveData K() {
        return this.f46364f;
    }

    public final LiveData L() {
        return this.f46368j;
    }

    public final LiveData M() {
        return this.f46369k;
    }

    public final LiveData N() {
        return this.f46367i;
    }

    public final void O() {
        String string = c0.f46429a.b().getString("MEMBER_JSON", null);
        if (string != null && string.length() != 0) {
            try {
                this.f46363e.q((MemberDetail) com.blankj.utilcode.util.o.d(string, MemberDetail.class));
            } catch (Exception e11) {
                lg.a.C0828a.f(lg.a.f68839a, "MemberViewModel", "No member detail cache " + e11, false, 4, null);
            }
        }
        String string2 = c0.f46429a.b().getString("MEMBER_GOODS_JSON", null);
        if (string2 == null || string2.length() == 0) {
            return;
        }
        try {
            this.f46373o.q((MemberPriceData) com.blankj.utilcode.util.o.d(string2, MemberPriceData.class));
        } catch (Exception e12) {
            lg.a.C0828a.f(lg.a.f68839a, "MemberViewModel", "No member goods cache " + e12, false, 4, null);
        }
    }

    public final void T(SkuItem skuItem) {
        Intrinsics.h(skuItem, "skuItem");
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new MemberViewModel$redeemProduct$1(this, skuItem, null), 3, null);
    }

    public final void U(int i11, int i12) {
        vm.a.C0951a.c(C(), null, i11, i12, 1, null).f(sg.d.f75349a.c()).subscribe(new m());
    }

    public final void V() {
        io.reactivex.rxjava3.core.j.H(vm.a.C0951a.d(C(), null, new InviteUserShareInfoReq(null, "WhatsApp", null, 5, null), 1, null), vm.a.C0951a.d(C(), null, new InviteUserShareInfoReq(null, "Telegram", null, 5, null), 1, null), vm.a.C0951a.d(C(), null, new InviteUserShareInfoReq(null, "CopyLink", null, 5, null), 1, null), n.f46390a).f(sg.d.f75349a.c()).B(new o(), new p());
    }

    public final void W(int i11) {
        vm.a.C0951a.m(C(), null, null, 3, null).f(sg.d.f75349a.c()).subscribe(new q(i11));
    }

    public final void X(int i11, String rewardId, int i12, int i13) {
        Intrinsics.h(rewardId, "rewardId");
        vm.a.C0951a.k(C(), null, rewardId, 1, null).f(sg.d.f75349a.c()).subscribe(new r(i11, rewardId, i12, i13));
    }

    public final void u() {
        vm.a.C0951a.b(C(), null, 1, null).f(sg.d.f75349a.c()).subscribe(new b());
    }

    public final void v() {
        io.reactivex.rxjava3.disposables.c cVar;
        io.reactivex.rxjava3.disposables.c cVar2 = this.f46375q;
        if (cVar2 != null && !cVar2.isDisposed() && (cVar = this.f46375q) != null) {
            cVar.dispose();
        }
        vm.a.C0951a.e(C(), null, 1, null).v(qz.a.c()).h(c.f46379a).f(sg.d.f75349a.c()).subscribe(new d());
    }

    public final void w() {
        IPremiumApi iPremiumApiG = G();
        if (iPremiumApiG != null) {
            iPremiumApiG.g(new e());
        }
    }

    public final void x() {
        io.reactivex.rxjava3.disposables.c cVar;
        io.reactivex.rxjava3.disposables.c cVar2 = this.f46377s;
        if (cVar2 != null && !cVar2.isDisposed() && (cVar = this.f46377s) != null) {
            cVar.dispose();
        }
        vm.a.C0951a.f(C(), null, 1, null).v(qz.a.c()).x(f.f46382a).h(g.f46383a).f(sg.d.f75349a.c()).subscribe(new h());
    }

    public final void y() {
        IMemberApi iMemberApiF = F();
        if (iMemberApiF != null) {
            iMemberApiF.s(new i());
        }
    }

    public final void z() {
        io.reactivex.rxjava3.disposables.c cVar;
        io.reactivex.rxjava3.disposables.c cVar2 = this.f46376r;
        if (cVar2 != null && !cVar2.isDisposed() && (cVar = this.f46376r) != null) {
            cVar.dispose();
        }
        vm.a.C0951a.i(C(), null, 1, null).v(qz.a.c()).x(j.f46386a).h(k.f46387a).f(sg.d.f75349a.c()).subscribe(new l());
    }
}
