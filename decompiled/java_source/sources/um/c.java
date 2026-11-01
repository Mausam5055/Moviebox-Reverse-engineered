package um;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.member.MemberViewModel;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.R$mipmap;
import com.transsion.member.R$string;
import com.transsion.member.constants.TaskType;
import com.transsion.member.view.CheckInView;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.MemberTaskItemCheckInInfo;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f76828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MemberViewModel f76829f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f76830g;

    public static final class a implements CheckInView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MemberTaskItem f76831a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f76832b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CheckInView f76833c;

        a(MemberTaskItem memberTaskItem, c cVar, CheckInView checkInView) {
            this.f76831a = memberTaskItem;
            this.f76832b = cVar;
            this.f76833c = checkInView;
        }

        @Override // com.transsion.member.view.CheckInView.d
        public void a(CheckInView.b holder, int i11) {
            Intrinsics.h(holder, "holder");
            List<MemberTaskItemCheckInInfo> checkInList = this.f76831a.getCheckInList();
            List<MemberTaskItemCheckInInfo> list = checkInList;
            if (list == null || list.isEmpty()) {
                return;
            }
            ImageView imageView = (ImageView) holder.itemView.findViewById(R$id.tag_iv);
            TextView textView = (TextView) holder.itemView.findViewById(R$id.member_point);
            MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = checkInList.get(i11);
            if (textView != null) {
                textView.setText("+" + memberTaskItemCheckInInfo.getRewardAmount() + (memberTaskItemCheckInInfo.getRewardType() == 1 ? "days" : ""));
            }
            if (holder.f() == 2 || holder.f() == 5) {
                if (memberTaskItemCheckInInfo.isToday() && this.f76832b.f76830g) {
                    View viewFindViewById = holder.itemView.findViewById(R$id.member_check_in_tv);
                    if (viewFindViewById != null) {
                        jg.c.g(viewFindViewById);
                    }
                    View viewFindViewById2 = holder.itemView.findViewById(R$id.member_check_in_pb);
                    if (viewFindViewById2 != null) {
                        jg.c.k(viewFindViewById2);
                    }
                } else {
                    View viewFindViewById3 = holder.itemView.findViewById(R$id.member_check_in_tv);
                    if (viewFindViewById3 != null) {
                        jg.c.k(viewFindViewById3);
                    }
                    View viewFindViewById4 = holder.itemView.findViewById(R$id.member_check_in_pb);
                    if (viewFindViewById4 != null) {
                        jg.c.g(viewFindViewById4);
                    }
                }
            }
            if (imageView != null) {
                imageView.setImageResource(memberTaskItemCheckInInfo.getRewardType() == 1 ? R$mipmap.ic_member_small : R$mipmap.ic_member_points);
            }
            TextView textView2 = (TextView) holder.itemView.findViewById(R$id.member_check_in);
            if (textView2 != null) {
                textView2.setText((holder.f() == 5 || holder.f() == 2) ? this.f76833c.getContext().getString(R$string.member_claim) : this.f76833c.getContext().getString(R$string.member_task_day_tip, Integer.valueOf(i11 + 1)));
            }
        }

        @Override // com.transsion.member.view.CheckInView.d
        public int b(int i11) {
            List<MemberTaskItemCheckInInfo> checkInList = this.f76831a.getCheckInList();
            List<MemberTaskItemCheckInInfo> list = checkInList;
            if (list == null || list.isEmpty()) {
                return 2;
            }
            MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = checkInList.get(i11);
            boolean z10 = i11 == checkInList.size() - 1;
            if (memberTaskItemCheckInInfo.getHasCheckIn()) {
                return z10 ? 4 : 1;
            }
            if (memberTaskItemCheckInInfo.isToday()) {
                return z10 ? 5 : 2;
            }
            return z10 ? 6 : 3;
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f76834a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f76834a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f76834a;
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
            this.f76834a.invoke(obj);
        }
    }

    public c(u owner, MemberViewModel viewModel) {
        Intrinsics.h(owner, "owner");
        Intrinsics.h(viewModel, "viewModel");
        this.f76828e = owner;
        this.f76829f = viewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(CheckInView checkInView, MemberTaskItem memberTaskItem, c cVar, int i11, int i12) {
        if (i12 == 2 || i12 == 5) {
            if (com.transsion.baseui.util.c.f43504a.a(checkInView.getId(), 2000L)) {
                return Unit.f67061a;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
                List<MemberTaskItemCheckInInfo> list = checkInList;
                if (list != null && !list.isEmpty()) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("event_detail", "task_check_in_item");
                    linkedHashMap.put("index", String.valueOf(i11));
                    Unit unit = Unit.f67061a;
                    cVar.F(memberTaskItem, linkedHashMap);
                    MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = checkInList.get(i11);
                    if (memberTaskItemCheckInInfo.getHasCheckIn() || !memberTaskItemCheckInInfo.isToday()) {
                        checkInView.notifyItemCheckInStateChange(i11);
                    } else {
                        cVar.f76830g = true;
                        checkInView.notifyItemCheckInStateChange(i11);
                        cVar.f76829f.W(i11);
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
    public static final Unit D(c cVar, MemberTaskItem memberTaskItem, CheckInView checkInView, Pair pair) {
        Object next;
        if (!cVar.f76830g) {
            return Unit.f67061a;
        }
        cVar.f76830g = false;
        List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
        if (checkInList == null || checkInList.isEmpty()) {
            return Unit.f67061a;
        }
        int iIntValue = ((Number) pair.getFirst()).intValue();
        MemberTaskSubmitCheckInRes memberTaskSubmitCheckInRes = (MemberTaskSubmitCheckInRes) pair.getSecond();
        if (memberTaskSubmitCheckInRes != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("event_detail", "task_check_in_item_success");
            linkedHashMap.put("index", String.valueOf(iIntValue));
            Unit unit = Unit.f67061a;
            cVar.F(memberTaskItem, linkedHashMap);
            List<MemberTaskItemCheckInInfo> checkInList2 = memberTaskItem.getCheckInList();
            if (checkInList2 != null) {
                Iterator<T> it = checkInList2.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!((MemberTaskItemCheckInInfo) next).isToday());
                MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = (MemberTaskItemCheckInInfo) next;
                if (memberTaskItemCheckInInfo != null) {
                    memberTaskItemCheckInInfo.setHasCheckIn(true);
                }
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String string = checkInView.getContext().getString(memberTaskSubmitCheckInRes.getRewardType() == 1 ? R$string.member_claimed_succeed_days : R$string.member_reward_points_receive_tips);
            Intrinsics.g(string, "getString(...)");
            String str = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(memberTaskSubmitCheckInRes.getRewardAmount())}, 1));
            Intrinsics.g(str, "format(...)");
            cVar.G(str);
        } else {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("event_detail", "task_check_in_item_fail");
            linkedHashMap2.put("index", String.valueOf(iIntValue));
            Unit unit2 = Unit.f67061a;
            cVar.F(memberTaskItem, linkedHashMap2);
            String string2 = checkInView.getContext().getString(R$string.member_reward_receive_fault_tips);
            Intrinsics.g(string2, "getString(...)");
            cVar.G(string2);
        }
        checkInView.notifyItemCheckInStateChange(iIntValue);
        return Unit.f67061a;
    }

    private final void E(MemberTaskItem memberTaskItem) {
        HashMap map = new HashMap();
        map.put("event_type", "task_browse");
        map.put("taskSubType", String.valueOf(memberTaskItem.getTaskSubType()));
        map.put("rewardType", String.valueOf(memberTaskItem.getRewardType()));
        map.put("rewardAmount", String.valueOf(memberTaskItem.getRewardAmount()));
        List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
        Object obj = null;
        if (checkInList != null) {
            for (Object obj2 : checkInList) {
                MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = (MemberTaskItemCheckInInfo) obj2;
                if (memberTaskItemCheckInInfo.isToday() && !memberTaskItemCheckInInfo.getHasCheckIn()) {
                    obj = obj2;
                    break;
                }
            }
            obj = (MemberTaskItemCheckInInfo) obj;
        }
        map.put("showClaim", String.valueOf(obj == null));
        com.transsion.baselib.helper.a.f43262a.a("memberdetail", map);
    }

    private final void F(MemberTaskItem memberTaskItem, Map map) {
        HashMap map2 = new HashMap();
        map2.put("event_type", "task_click");
        map2.put("taskSubType", String.valueOf(memberTaskItem.getTaskSubType()));
        map2.put("rewardType", String.valueOf(memberTaskItem.getRewardType()));
        map2.put("rewardAmount", String.valueOf(memberTaskItem.getRewardAmount()));
        List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
        Object obj = null;
        if (checkInList != null) {
            for (Object obj2 : checkInList) {
                MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = (MemberTaskItemCheckInInfo) obj2;
                if (memberTaskItemCheckInInfo.isToday() && !memberTaskItemCheckInInfo.getHasCheckIn()) {
                    obj = obj2;
                    break;
                }
            }
            obj = (MemberTaskItemCheckInInfo) obj;
        }
        map2.put("showClaim", String.valueOf(obj == null));
        map2.putAll(map);
        com.transsion.baselib.helper.a.f43262a.b("memberdetail", map2);
    }

    private final void G(String str) {
        uh.b.f76753a.g(R$layout.claim_succeed_layout, str, (24 & 4) != 0 ? 0 : 80, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : a0.a(66.0f));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final MemberTaskItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        E(item);
        final CheckInView checkInView = (CheckInView) helper.getView(R$id.member_check_in_view);
        checkInView.setDataViewBinder(new a(item, this, checkInView));
        checkInView.setItemClicker(new Function2() { // from class: um.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return c.C(checkInView, item, this, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        });
        checkInView.notifyAllChange();
        this.f76829f.L().j(this.f76828e, new b(new Function1() { // from class: um.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c.D(this.f76825a, item, checkInView, (Pair) obj);
            }
        }));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return TaskType.CHECK_IN.getValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_task_check_in_container;
    }
}
