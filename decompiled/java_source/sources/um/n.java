package um;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.constants.TaskType;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.web.api.WebPageIdentity;
import java.util.HashMap;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class n extends BaseItemProvider {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(MemberTaskItem memberTaskItem, View view) {
        String groupUrl = memberTaskItem.getGroupUrl();
        if (groupUrl != null) {
            com.transsion.baselib.helper.a aVar = com.transsion.baselib.helper.a.f43262a;
            HashMap map = new HashMap();
            map.put("event_detail", "task_title_right");
            map.put("group_name", String.valueOf(memberTaskItem.getGroupName()));
            map.put("group_title", String.valueOf(memberTaskItem.getTitle()));
            Unit unit = Unit.f67061a;
            aVar.b("memberdetail", map);
            if (StringsKt.W(groupUrl, "http://", false, 2, null) || StringsKt.W(groupUrl, "https://", false, 2, null)) {
                ak.k.p(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", groupUrl));
            } else {
                ak.k.h(groupUrl, null, 1, null);
            }
        }
    }

    private final int B() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? GravityCompat.END : GravityCompat.START;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return TaskType.TITLE.getValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_task_title;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final MemberTaskItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) helper.getView(R$id.member_item_task_title);
        textView.setText(item.getTitle());
        textView.setGravity(B());
        String groupUrl = item.getGroupUrl();
        if (groupUrl == null || groupUrl.length() == 0) {
            helper.setGone(R$id.member_item_task_title_right, true);
        } else {
            helper.setGone(R$id.member_item_task_title_right, false);
            helper.getView(R$id.member_item_task_title_right).setOnClickListener(new View.OnClickListener() { // from class: um.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    n.A(item, view);
                }
            });
        }
    }
}
