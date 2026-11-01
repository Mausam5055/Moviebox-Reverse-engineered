package um;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.c0;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.transsion.member.MemberViewModel;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.R$mipmap;
import com.transsion.member.R$string;
import com.transsion.member.bean.request.MemberInviteUserShareInfo;
import com.transsion.member.constants.TaskType;
import com.transsion.member.view.InviteUserView;
import com.transsion.memberapi.MemberTaskInviteRewards;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.MemberTaskItemInvite;
import com.transsion.memberapi.MemberTaskRewardInfo;
import com.transsion.web.share.WebShareDialog;
import com.transsnet.loginapi.ILoginApi;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class l extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Fragment f76855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MemberViewModel f76856f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f76857g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ILoginApi f76858h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f76859i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Integer f76860j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.activity.result.b f76861k;

    public static final class a implements InviteUserView.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InviteUserView f76863b;

        a(InviteUserView inviteUserView) {
            this.f76863b = inviteUserView;
        }

        @Override // com.transsion.member.view.InviteUserView.c
        public void a() {
            MemberViewModel memberViewModelS = l.this.S();
            Integer num = l.this.f76860j;
            memberViewModelS.U(num != null ? num.intValue() : 0, 15);
        }

        @Override // com.transsion.member.view.InviteUserView.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void c(InviteUserView.e holder, int i11, MemberTaskItemInvite data) {
            TextView textView;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(data, "data");
            ImageView imageView = (ImageView) holder.itemView.findViewById(R$id.tag_iv);
            TextView textView2 = (TextView) holder.itemView.findViewById(R$id.member_reward);
            l lVar = l.this;
            InviteUserView inviteUserView = this.f76863b;
            textView2.setText("+" + data.getRewardAmount() + (data.getRewardType() == 1 ? "days" : "points"));
            if (data.getStatus() == 1 && lVar.f76857g) {
                View viewFindViewById = holder.itemView.findViewById(R$id.member_invite_user_tv);
                if (viewFindViewById != null) {
                    jg.c.g(viewFindViewById);
                }
                View viewFindViewById2 = holder.itemView.findViewById(R$id.member_invite_user_pb);
                if (viewFindViewById2 != null) {
                    jg.c.k(viewFindViewById2);
                }
            } else {
                View viewFindViewById3 = holder.itemView.findViewById(R$id.member_invite_user_tv);
                if (viewFindViewById3 != null) {
                    jg.c.k(viewFindViewById3);
                }
                View viewFindViewById4 = holder.itemView.findViewById(R$id.member_invite_user_pb);
                if (viewFindViewById4 != null) {
                    jg.c.g(viewFindViewById4);
                }
            }
            if (data.getStatus() == 0 && (textView = (TextView) holder.itemView.findViewById(R$id.member_invite_user_tv)) != null) {
                textView.setText(inviteUserView.getContext().getString(R$string.member_reward_friend_tips, Integer.valueOf(data.getFriendSeq())));
            }
            imageView.setImageResource(data.getRewardType() == 1 ? R$mipmap.ic_member_small : R$mipmap.ic_member_points);
        }

        @Override // com.transsion.member.view.InviteUserView.c
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public int b(int i11, MemberTaskItemInvite data) {
            Intrinsics.h(data, "data");
            int status = data.getStatus();
            if (status != 0) {
                return status != 1 ? 1 : 2;
            }
            return 3;
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f76864a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f76864a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f76864a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f76864a.invoke(obj);
        }
    }

    public l(Fragment fragment, MemberViewModel viewModel) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(viewModel, "viewModel");
        this.f76855e = fragment;
        this.f76856f = viewModel;
        this.f76858h = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
        androidx.activity.result.b bVarRegisterForActivityResult = fragment.registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: um.d
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                l.V(this.f76835a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.f76861k = bVarRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(TextView textView, l lVar, MemberTaskItem memberTaskItem, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(textView.getId(), 2000L)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("event_detail", "task_invite_user_share_dialog");
        ILoginApi iLoginApi = lVar.f76858h;
        boolean z10 = false;
        if (iLoginApi != null && iLoginApi.a()) {
            z10 = true;
        }
        linkedHashMap.put("is_login", String.valueOf(z10));
        Unit unit = Unit.f67061a;
        lVar.U(memberTaskItem, linkedHashMap);
        ILoginApi iLoginApi2 = lVar.f76858h;
        if (iLoginApi2 != null && iLoginApi2.a()) {
            lVar.f76859i = true;
            lVar.f76856f.V();
            return;
        }
        ILoginApi iLoginApi3 = lVar.f76858h;
        if (iLoginApi3 != null) {
            Context context = textView.getContext();
            Intrinsics.g(context, "getContext(...)");
            iLoginApi3.j(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:71:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:72:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:75:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:76:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:79:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:80:0x0200  */
    public static final Unit K(l lVar, MemberTaskItem memberTaskItem, InviteUserView inviteUserView, TextView textView, zm.d dVar) {
        boolean z10;
        boolean z11;
        Object objM454constructorimpl;
        Object obj;
        String str;
        String description;
        boolean z12;
        Object next;
        if (!lVar.f76857g) {
            return Unit.f67061a;
        }
        lVar.f76857g = false;
        List<MemberTaskItemInvite> inviteList = memberTaskItem.getInviteList();
        if (inviteList == null || inviteList.isEmpty()) {
            return Unit.f67061a;
        }
        int iA = dVar.a();
        String strD = dVar.d();
        int iC = dVar.c();
        int iE = dVar.e();
        MemberTaskRewardInfo memberTaskRewardInfoB = dVar.b();
        int iAbs = Math.abs(iA);
        if (!Intrinsics.c(strD, "0")) {
            if (iA < 0 || memberTaskRewardInfoB == null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("event_detail", "task_invite_user_claim_item_fail");
                linkedHashMap.put("index", String.valueOf(iA));
                linkedHashMap.put("rewardId", strD.toString());
                Unit unit = Unit.f67061a;
                lVar.U(memberTaskItem, linkedHashMap);
                String string = lVar.k().getString(R$string.member_reward_receive_fault_tips);
                Intrinsics.g(string, "getString(...)");
                lVar.W(string);
            } else {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("event_detail", "task_invite_user_claim_item_success");
                linkedHashMap2.put("index", String.valueOf(iA));
                linkedHashMap2.put("rewardId", strD.toString());
                linkedHashMap2.put("rewardRes", memberTaskRewardInfoB.toString());
                Unit unit2 = Unit.f67061a;
                lVar.U(memberTaskItem, linkedHashMap2);
                List<MemberTaskItemInvite> inviteList2 = memberTaskItem.getInviteList();
                if (inviteList2 != null) {
                    Iterator<T> it = inviteList2.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((MemberTaskItemInvite) next).getRewardId(), strD));
                    MemberTaskItemInvite memberTaskItemInvite = (MemberTaskItemInvite) next;
                    if (memberTaskItemInvite != null) {
                        memberTaskItemInvite.setStatus(2);
                        List<MemberTaskItemInvite> inviteList3 = memberTaskItem.getInviteList();
                        iAbs = inviteList3 != null ? inviteList3.indexOf(memberTaskItemInvite) : 0;
                    }
                }
                String string2 = lVar.k().getString(iE == 1 ? R$string.member_claimed_succeed_days : R$string.member_reward_points_receive_tips, Integer.valueOf(iC));
                Intrinsics.g(string2, "getString(...)");
                lVar.W(string2);
            }
            inviteUserView.notifyItemInviteUserStateChange(iAbs);
        } else if (memberTaskRewardInfoB == null) {
            String string3 = lVar.k().getString(R$string.member_reward_receive_fault_tips);
            Intrinsics.g(string3, "getString(...)");
            lVar.W(string3);
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            linkedHashMap3.put("event_detail", "task_invite_user_claim_all_fail");
            linkedHashMap3.put("index", String.valueOf(iA));
            linkedHashMap3.put("rewardId", strD.toString());
            Unit unit3 = Unit.f67061a;
            lVar.U(memberTaskItem, linkedHashMap3);
        } else {
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            linkedHashMap4.put("event_detail", "task_invite_user_claim_all_success");
            linkedHashMap4.put("index", String.valueOf(iA));
            linkedHashMap4.put("rewardId", strD.toString());
            linkedHashMap4.put("rewardRes", memberTaskRewardInfoB.toString());
            Unit unit4 = Unit.f67061a;
            lVar.U(memberTaskItem, linkedHashMap4);
            List<MemberTaskItemInvite> inviteList4 = memberTaskItem.getInviteList();
            if (inviteList4 != null) {
                for (MemberTaskItemInvite memberTaskItemInvite2 : inviteList4) {
                    if (memberTaskItemInvite2.getStatus() == 1) {
                        memberTaskItemInvite2.setStatus(2);
                    }
                }
            }
            String string4 = lVar.k().getString(R$string.member_claimed_succeed_days, Integer.valueOf(iC));
            Intrinsics.g(string4, "getString(...)");
            lVar.W(string4);
            inviteUserView.notifyAllItemInviteUserStateChange();
        }
        if (memberTaskRewardInfoB != null) {
            memberTaskItem.setRewardInfo(memberTaskRewardInfoB);
            if (memberTaskRewardInfoB.getDuration() == 0) {
                description = lVar.k().getString(R$string.member_claim_all);
                z10 = true;
                z11 = false;
            } else {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Context contextK = lVar.k();
                    int i11 = R$string.task_invite_user_view_get_premium_text;
                    z10 = true;
                    try {
                        Object[] objArr = new Object[1];
                        z11 = false;
                        try {
                            objArr[0] = Integer.valueOf(memberTaskRewardInfoB.getDuration());
                            objM454constructorimpl = Result.m454constructorimpl(contextK.getString(i11, objArr));
                        } catch (Throwable th2) {
                            th = th2;
                            Result.Companion companion2 = Result.INSTANCE;
                            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        z11 = false;
                        Result.Companion companion3 = Result.INSTANCE;
                        objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                        if (Result.m460isFailureimpl(objM454constructorimpl)) {
                            obj = null;
                        } else {
                            obj = objM454constructorimpl;
                        }
                        str = (String) obj;
                        if (str == null) {
                            description = memberTaskRewardInfoB.getDescription();
                        } else {
                            description = str;
                        }
                        textView.setText(description);
                        if (memberTaskRewardInfoB.getDuration() > 0) {
                            z12 = z10;
                        } else {
                            z12 = z11;
                        }
                        textView.setEnabled(z12);
                        return Unit.f67061a;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    z10 = true;
                }
                if (Result.m460isFailureimpl(objM454constructorimpl)) {
                    obj = null;
                } else {
                    obj = objM454constructorimpl;
                }
                str = (String) obj;
                if (str == null) {
                    description = memberTaskRewardInfoB.getDescription();
                } else {
                    description = str;
                }
            }
            textView.setText(description);
            if (memberTaskRewardInfoB.getDuration() > 0) {
                z12 = z10;
            } else {
                z12 = z11;
            }
            textView.setEnabled(z12);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(InviteUserView inviteUserView, l lVar, MemberTaskItem memberTaskItem, MemberTaskInviteRewards memberTaskInviteRewards) {
        List<MemberTaskItemInvite> list;
        if (!inviteUserView.getIsLoadMoreLoading()) {
            return Unit.f67061a;
        }
        if (memberTaskInviteRewards == null || (list = memberTaskInviteRewards.getList()) == null || list.isEmpty()) {
            inviteUserView.onLoadMoreCompleted(new ArrayList());
            inviteUserView.setLoadMoreEnable(false);
        } else {
            lVar.f76860j = Integer.valueOf(memberTaskInviteRewards.getLastId());
            List<MemberTaskItemInvite> list2 = memberTaskInviteRewards.getList();
            if (list2 == null || list2.isEmpty()) {
                inviteUserView.onLoadMoreCompleted(new ArrayList());
            } else {
                List<MemberTaskItemInvite> list3 = memberTaskInviteRewards.getList();
                if (list3 != null) {
                    List<MemberTaskItemInvite> list4 = list3;
                    if (list4.isEmpty()) {
                        inviteUserView.onLoadMoreCompleted(new ArrayList());
                    } else {
                        List<MemberTaskItemInvite> inviteList = memberTaskItem.getInviteList();
                        if (inviteList != null) {
                            inviteList.addAll(list4);
                        }
                        inviteUserView.onLoadMoreCompleted(list3);
                    }
                }
            }
            if (memberTaskInviteRewards.getLastId() == 0) {
                inviteUserView.setLoadMoreEnable(false);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M(final l lVar, Map map) throws JSONException {
        String string;
        MemberInviteUserShareInfo memberInviteUserShareInfo;
        if (lVar.f76859i) {
            if (map.isEmpty()) {
                String string2 = lVar.k().getString(com.tn.lib.widget.R$string.load_failed);
                Intrinsics.g(string2, "getString(...)");
                lVar.W(string2);
                return Unit.f67061a;
            }
            JSONObject jSONObject = new JSONObject();
            Intrinsics.e(map);
            loop0: while (true) {
                string = "";
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    MemberInviteUserShareInfo memberInviteUserShareInfo2 = (MemberInviteUserShareInfo) entry.getValue();
                    String desc = memberInviteUserShareInfo2 != null ? memberInviteUserShareInfo2.getDesc() : null;
                    MemberInviteUserShareInfo memberInviteUserShareInfo3 = (MemberInviteUserShareInfo) entry.getValue();
                    jSONObject.put(str, desc + ", " + (memberInviteUserShareInfo3 != null ? memberInviteUserShareInfo3.getUrl() : null));
                    if (string.length() != 0 || ((memberInviteUserShareInfo = (MemberInviteUserShareInfo) entry.getValue()) != null && (string = memberInviteUserShareInfo.getTitle()) != null)) {
                    }
                }
                break loop0;
            }
            jSONObject.put("H5Source", "fissionNative");
            if (string.length() == 0) {
                string = lVar.k().getString(R$string.member_invite_user_share_title);
                Intrinsics.g(string, "getString(...)");
            }
            jSONObject.put(CampaignEx.JSON_KEY_TITLE, string);
            WebShareDialog.Companion companion = WebShareDialog.INSTANCE;
            String string3 = jSONObject.toString();
            Intrinsics.g(string3, "toString(...)");
            final WebShareDialog webShareDialogA = companion.a(string3);
            webShareDialogA.r0(new Function3() { // from class: um.k
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return l.N(webShareDialogA, lVar, (String) obj, (String) obj2, (String) obj3);
                }
            });
            webShareDialogA.k0(lVar.k(), "WebShareDialog");
            lVar.f76859i = !lVar.f76859i;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(WebShareDialog webShareDialog, l lVar, String packageName, String str, String txt) {
        Object objM454constructorimpl;
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(txt, "txt");
        if (packageName.length() == 0) {
            ClipData clipDataNewPlainText = ClipData.newPlainText("MovieBox", txt);
            Context context = webShareDialog.getContext();
            ClipboardManager clipboardManager = (ClipboardManager) (context != null ? context.getSystemService("clipboard") : null);
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(clipDataNewPlainText);
            }
            com.tn.lib.widget.toast.core.h.f41479a.k(com.transsion.web.R$string.web_copied);
        } else {
            Intent intentQ = lVar.Q(webShareDialog.getContext(), txt, packageName, str);
            if (intentQ == null) {
                com.tn.lib.widget.toast.core.h.f41479a.k(com.transsion.web.R$string.web_app_not_exist);
            } else {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    lVar.f76861k.a(intentQ);
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                Result.m453boximpl(objM454constructorimpl);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O(InviteUserView inviteUserView, MemberTaskItem memberTaskItem, l lVar, int i11, int i12) {
        if (i12 == 2) {
            if (com.transsion.baseui.util.c.f43504a.a(inviteUserView.getId(), 2000L)) {
                return Unit.f67061a;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                List<MemberTaskItemInvite> inviteList = memberTaskItem.getInviteList();
                List<MemberTaskItemInvite> list = inviteList;
                if (list != null && !list.isEmpty()) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("event_detail", "task_invite_user_claim_item");
                    linkedHashMap.put("index", String.valueOf(i11));
                    Unit unit = Unit.f67061a;
                    lVar.U(memberTaskItem, linkedHashMap);
                    MemberTaskItemInvite memberTaskItemInvite = inviteList.get(i11);
                    if (memberTaskItemInvite.getStatus() == 1) {
                        lVar.f76857g = true;
                        inviteUserView.notifyItemInviteUserStateChange(i11);
                        lVar.f76856f.X(i11, memberTaskItemInvite.getRewardId(), memberTaskItemInvite.getRewardAmount(), memberTaskItemInvite.getRewardType());
                    }
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(TextView textView, l lVar, MemberTaskItem memberTaskItem, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(textView.getId(), 2000L)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("event_detail", "task_invite_user_claim_all");
        linkedHashMap.put("index", TmcConstants.COLD_OPEN_TYPE);
        Unit unit = Unit.f67061a;
        lVar.U(memberTaskItem, linkedHashMap);
        lVar.f76857g = true;
        MemberViewModel memberViewModel = lVar.f76856f;
        MemberTaskRewardInfo rewardInfo = memberTaskItem.getRewardInfo();
        memberViewModel.X(-1, "0", rewardInfo != null ? rewardInfo.getDuration() : 0, 1);
    }

    private final Intent Q(Context context, String str, String str2, String str3) {
        String strR = R(str2, str3);
        if (strR == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(ShareConstant.SHARE_TYPE_TEXT);
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setPackage(strR);
        return intent;
    }

    private final String R(String str, String str2) {
        if (str != null && com.transsion.baseui.util.a.f43502a.c(k(), str)) {
            return str;
        }
        if (str2 == null || !com.transsion.baseui.util.a.f43502a.c(k(), str2)) {
            return null;
        }
        return str2;
    }

    private final void T(MemberTaskItem memberTaskItem) {
        HashMap map = new HashMap();
        map.put("event_type", "task_browse");
        map.put("taskSubType", String.valueOf(memberTaskItem.getTaskSubType()));
        map.put("rewardType", String.valueOf(memberTaskItem.getRewardType()));
        map.put("rewardAmount", String.valueOf(memberTaskItem.getRewardAmount()));
        List<MemberTaskItemInvite> inviteList = memberTaskItem.getInviteList();
        Object obj = null;
        if (inviteList != null) {
            for (Object obj2 : inviteList) {
                if (((MemberTaskItemInvite) obj2).getStatus() == 1) {
                    obj = obj2;
                    break;
                }
            }
            obj = (MemberTaskItemInvite) obj;
        }
        map.put("showClaim", String.valueOf(obj == null));
        com.transsion.baselib.helper.a.f43262a.a("rewards_center", map);
    }

    private final void U(MemberTaskItem memberTaskItem, Map map) {
        HashMap map2 = new HashMap();
        map2.put("event_type", "task_click");
        map2.put("taskSubType", String.valueOf(memberTaskItem.getTaskSubType()));
        map2.put("rewardType", String.valueOf(memberTaskItem.getRewardType()));
        map2.put("rewardAmount", String.valueOf(memberTaskItem.getRewardAmount()));
        List<MemberTaskItemInvite> inviteList = memberTaskItem.getInviteList();
        Object obj = null;
        if (inviteList != null) {
            for (Object obj2 : inviteList) {
                if (((MemberTaskItemInvite) obj2).getStatus() == 1) {
                    obj = obj2;
                    break;
                }
            }
            obj = (MemberTaskItemInvite) obj;
        }
        map2.put("showClaim", String.valueOf(obj == null));
        map2.putAll(map);
        com.transsion.baselib.helper.a.f43262a.b("rewards_center", map2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(l lVar, ActivityResult activityResult) {
        Intrinsics.h(activityResult, "activityResult");
        try {
            int resultCode = activityResult.getResultCode();
            if (resultCode == -1) {
                com.tn.lib.widget.toast.core.h.f41479a.l(lVar.k().getString(R$string.share_success_tips));
            } else if (resultCode != 0) {
                com.tn.lib.widget.toast.core.h.f41479a.l(lVar.k().getString(R$string.share_failed_tips));
            } else {
                com.tn.lib.widget.toast.core.h.f41479a.l(lVar.k().getString(R$string.share_canceled_tips));
            }
        } catch (Exception unused) {
        }
    }

    private final void W(String str) {
        uh.b.f76753a.g(R$layout.claim_succeed_layout, str, (24 & 4) != 0 ? 0 : 80, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : a0.a(66.0f));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final MemberTaskItem item) {
        Object objM454constructorimpl;
        String description;
        List arrayList;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        T(item);
        final InviteUserView inviteUserView = (InviteUserView) helper.getView(R$id.task_invite_user_view);
        List data = inviteUserView.getData();
        List<MemberTaskItemInvite> inviteList = item.getInviteList();
        if (data.containsAll(inviteList != null ? inviteList : new ArrayList<>())) {
            Integer num = this.f76860j;
            inviteUserView.setLoadMoreEnable(num == null || num.intValue() != 0);
        } else {
            List<MemberTaskItemInvite> inviteList2 = item.getInviteList();
            if (inviteList2 == null || (arrayList = CollectionsKt.R0(inviteList2)) == null) {
                arrayList = new ArrayList();
            }
            inviteUserView.setData(arrayList);
            this.f76860j = null;
            inviteUserView.setLoadMoreEnable(true);
        }
        inviteUserView.setDataViewBinder(new a(inviteUserView));
        inviteUserView.setItemClicker(new Function2() { // from class: um.e
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return l.O(inviteUserView, item, this, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        });
        final TextView textView = (TextView) helper.getView(R$id.claim_all_bt);
        MemberTaskRewardInfo rewardInfo = item.getRewardInfo();
        if ((rewardInfo != null ? rewardInfo.getDuration() : 0) == 0) {
            description = textView.getContext().getString(R$string.member_claim_all);
        } else {
            try {
                Result.Companion companion = Result.INSTANCE;
                Context context = textView.getContext();
                int i11 = R$string.task_invite_user_view_get_premium_text;
                MemberTaskRewardInfo rewardInfo2 = item.getRewardInfo();
                objM454constructorimpl = Result.m454constructorimpl(context.getString(i11, rewardInfo2 != null ? Integer.valueOf(rewardInfo2.getDuration()) : null));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl)) {
                objM454constructorimpl = null;
            }
            String str = (String) objM454constructorimpl;
            if (str == null) {
                MemberTaskRewardInfo rewardInfo3 = item.getRewardInfo();
                description = rewardInfo3 != null ? rewardInfo3.getDescription() : null;
                if (description == null) {
                    description = "";
                }
            } else {
                description = str;
            }
        }
        textView.setText(description);
        MemberTaskRewardInfo rewardInfo4 = item.getRewardInfo();
        textView.setEnabled((rewardInfo4 != null ? rewardInfo4.getDuration() : 0) > 0);
        textView.setOnClickListener(new View.OnClickListener() { // from class: um.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l.P(textView, this, item, view);
            }
        });
        final TextView textView2 = (TextView) helper.getView(R$id.invite_tips_bt);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: um.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l.J(textView2, this, item, view);
            }
        });
        this.f76856f.M().j(this.f76855e.getViewLifecycleOwner(), new b(new Function1() { // from class: um.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l.K(this.f76845a, item, inviteUserView, textView, (zm.d) obj);
            }
        }));
        this.f76856f.B().j(this.f76855e.getViewLifecycleOwner(), new b(new Function1() { // from class: um.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l.L(inviteUserView, this, item, (MemberTaskInviteRewards) obj);
            }
        }));
        this.f76856f.I().j(this.f76855e.getViewLifecycleOwner(), new b(new Function1() { // from class: um.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l.M(this.f76852a, (Map) obj);
            }
        }));
    }

    public final MemberViewModel S() {
        return this.f76856f;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return TaskType.INVITE_USER.getValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_task_invite_user_container;
    }
}
