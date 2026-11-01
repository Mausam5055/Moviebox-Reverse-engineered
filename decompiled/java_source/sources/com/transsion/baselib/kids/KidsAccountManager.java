package com.transsion.baselib.kids;

import ak.o;
import com.google.gson.Gson;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.transsion.baselib.report.launch.b;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.RequestBody;
import sm.f;
import zg.c;

/* JADX INFO: loaded from: classes5.dex */
public final class KidsAccountManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final KidsAccountManager f43286a = new KidsAccountManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Gson f43287b = new Gson();

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final C0610a f43288b = new C0610a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f43289a;

        /* JADX INFO: renamed from: com.transsion.baselib.kids.KidsAccountManager$a$a, reason: collision with other inner class name */
        public static final class C0610a {
            private C0610a() {
            }

            public /* synthetic */ C0610a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public a(int i11) {
            this.f43289a = i11;
        }
    }

    private KidsAccountManager() {
    }

    private final String a() {
        UserInfo userInfoI;
        ILoginApi iLoginApi = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
        String userId = (iLoginApi == null || (userInfoI = iLoginApi.i()) == null) ? null : userInfoI.getUserId();
        return (userId == null || userId.length() == 0) ? "visitor" : userId;
    }

    private final boolean h(String str) {
        String value;
        Long lX;
        long jH = b.f43370a.b().h(str, 0L);
        if (jH == 0) {
            return false;
        }
        ConfigBean configBeanC = f.f75407c.a().c("pk_kids_dialog_suppress_duration", false);
        return System.currentTimeMillis() - jH < ((configBeanC == null || (value = configBeanC.getValue()) == null || (lX = StringsKt.x(value)) == null) ? 604800000L : lX.longValue());
    }

    public static /* synthetic */ void n(KidsAccountManager kidsAccountManager, KidsProfile kidsProfile, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        kidsAccountManager.m(kidsProfile, z10);
    }

    public final void b() {
        b.f43370a.b().M("kids_profile");
        MMKV mmkvI = MMKV.I("kv_search_list");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        mmkvI.M("kv_kids_search_work");
        mmkvI.M("kv_kids_search_group");
        lg.a.C0828a.f(lg.a.f68839a, "KidsAccountManager", "deleteKidsProfile: profile and search history cleared", false, 4, null);
        a aVar = new a(2);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
    }

    public final void c(KidsProfile profile) {
        Intrinsics.h(profile, "profile");
        lg.a.C0828a.f(lg.a.f68839a, "KidsAccountManager", "enter kids mode.", false, 4, null);
        o.f646a.a(profile.getKidsId());
    }

    public final void d() {
        lg.a.C0828a.f(lg.a.f68839a, "KidsAccountManager", "exit kids mode.", false, 4, null);
        o.f646a.b();
    }

    public final String e() {
        String strD = o.f646a.d();
        if (strD != null) {
            return strD;
        }
        KidsProfile kidsProfileF = f();
        if (kidsProfileF != null) {
            return kidsProfileF.getKidsId();
        }
        return null;
    }

    public final KidsProfile f() {
        String strK = b.f43370a.b().k("kids_profile");
        if (strK == null) {
            return null;
        }
        return (KidsProfile) f43287b.fromJson(strK, KidsProfile.class);
    }

    public final boolean g() {
        return h("kids_create_dialog_dismiss_" + a());
    }

    public final boolean i() {
        KidsProfile kidsProfileF = f();
        if (kidsProfileF == null) {
            return false;
        }
        String pinHash = kidsProfileF.getPinHash();
        return !(pinHash == null || pinHash.length() == 0);
    }

    public final boolean j() {
        return h("kids_switch_dialog_dismiss_" + a());
    }

    public final void k() {
        b.f43370a.b().t("kids_create_dialog_dismiss_" + a(), System.currentTimeMillis());
    }

    public final void l() {
        b.f43370a.b().t("kids_switch_dialog_dismiss_" + a(), System.currentTimeMillis());
    }

    public final void m(KidsProfile profile, boolean z10) {
        Intrinsics.h(profile, "profile");
        b.f43370a.b().v("kids_profile", f43287b.toJson(profile));
        if (z10) {
            a aVar = new a(1);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = a.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, aVar, 0L);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object o(Continuation continuation) throws Throwable {
        KidsAccountManager$shouldShowAutoPopup$1 kidsAccountManager$shouldShowAutoPopup$1;
        boolean zBooleanValue;
        Object next;
        Boolean boolIsConsume;
        if (continuation instanceof KidsAccountManager$shouldShowAutoPopup$1) {
            kidsAccountManager$shouldShowAutoPopup$1 = (KidsAccountManager$shouldShowAutoPopup$1) continuation;
            int i11 = kidsAccountManager$shouldShowAutoPopup$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                kidsAccountManager$shouldShowAutoPopup$1.label = i11 - Integer.MIN_VALUE;
            } else {
                kidsAccountManager$shouldShowAutoPopup$1 = new KidsAccountManager$shouldShowAutoPopup$1(this, continuation);
            }
        } else {
            kidsAccountManager$shouldShowAutoPopup$1 = new KidsAccountManager$shouldShowAutoPopup$1(this, continuation);
        }
        KidsAccountManager$shouldShowAutoPopup$1 kidsAccountManager$shouldShowAutoPopup$2 = kidsAccountManager$shouldShowAutoPopup$1;
        Object objA = kidsAccountManager$shouldShowAutoPopup$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = kidsAccountManager$shouldShowAutoPopup$2.label;
        boolean z10 = false;
        try {
            if (i12 == 0) {
                ResultKt.b(objA);
                bh.b.a aVar = bh.b.f16471a;
                String json = new Gson().toJson(new ConsumeJudgeRequest(CollectionsKt.e("USER_CONSUME_EDUCATION")));
                Intrinsics.g(json, "toJson(...)");
                RequestBody requestBodyA = aVar.a(json);
                if (requestBodyA == null) {
                    return Boxing.a(false);
                }
                com.transsion.baselib.kids.a aVar2 = (com.transsion.baselib.kids.a) c.f79414e.a().h(com.transsion.baselib.kids.a.class);
                kidsAccountManager$shouldShowAutoPopup$2.label = 1;
                objA = com.transsion.baselib.kids.a.C0611a.a(aVar2, null, requestBodyA, kidsAccountManager$shouldShowAutoPopup$2, 1, null);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
            }
            List<ConsumeJudgeItem> list = ((ConsumeJudgeResponse) objA).getList();
            if (list != null) {
                Iterator<T> it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((ConsumeJudgeItem) next).getConsumeType(), "USER_CONSUME_EDUCATION"));
                ConsumeJudgeItem consumeJudgeItem = (ConsumeJudgeItem) next;
                if (consumeJudgeItem == null || (boolIsConsume = consumeJudgeItem.isConsume()) == null) {
                    zBooleanValue = false;
                } else {
                    zBooleanValue = boolIsConsume.booleanValue();
                }
            } else {
                zBooleanValue = false;
            }
            lg.a.C0828a.f(lg.a.f68839a, "KidsAccountManager", "shouldShowAutoPopup response result: " + zBooleanValue, false, 4, null);
            z10 = zBooleanValue;
        } catch (Exception e11) {
            lg.a.f68839a.i("KidsAccountManager", "shouldShowAutoPopup error: " + e11.getMessage(), true);
        }
        return Boxing.a(z10);
    }

    public final void p(String pinHash) {
        Intrinsics.h(pinHash, "pinHash");
        KidsProfile kidsProfileF = f();
        if (kidsProfileF == null) {
            return;
        }
        b.f43370a.b().v("kids_profile", f43287b.toJson(kidsProfileF.copy((479 & 1) != 0 ? kidsProfileF.kidsId : null, (479 & 2) != 0 ? kidsProfileF.name : null, (479 & 4) != 0 ? kidsProfileF.avatarResId : 0, (479 & 8) != 0 ? kidsProfileF.gender : null, (479 & 16) != 0 ? kidsProfileF.birthday : null, (479 & 32) != 0 ? kidsProfileF.pinHash : pinHash, (479 & 64) != 0 ? kidsProfileF.avatarLocalPath : null, (479 & 128) != 0 ? kidsProfileF.favorites : null, (479 & 256) != 0 ? kidsProfileF.age : null)));
    }

    public final boolean q(String inputPin) {
        Intrinsics.h(inputPin, "inputPin");
        KidsProfile kidsProfileF = f();
        if (kidsProfileF == null) {
            return false;
        }
        return Intrinsics.c(kidsProfileF.getPinHash(), inputPin);
    }
}
