package vq;

import ak.k;
import android.text.SpannableStringBuilder;
import android.widget.ImageView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.fragment.result.ResultType;
import com.transsion.search.fragment.result.ResultWrapData;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return ResultType.GROUP.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_result_group;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, ResultWrapData item) {
        String url;
        List tags;
        Cover cover;
        String thumbnail;
        Cover cover2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ej.f.b bVarM = ej.f.f61882a.m(k());
        Group groups = item.getGroups();
        String str = "";
        if (groups == null || (cover2 = groups.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarG = bVarM.g(url);
        Group groups2 = item.getGroups();
        if (groups2 != null && (cover = groups2.getCover()) != null && (thumbnail = cover.getThumbnail()) != null) {
            str = thumbnail;
        }
        bVarG.l(str).m(a0.a(50.0f)).d((ImageView) helper.getView(R$id.search_result_provider_group_cover));
        int i11 = R$id.search_result_provider_group_title;
        Group groups3 = item.getGroups();
        String strD = null;
        helper.setText(i11, groups3 != null ? groups3.getName() : null);
        Group groups4 = item.getGroups();
        if ((groups4 != null ? groups4.getUserCount() : null) != null) {
            Long userCount = item.getGroups().getUserCount();
            if (userCount != null) {
                strD = k.d(userCount.longValue());
            }
        } else {
            strD = "0";
        }
        CharSequence string = k().getString(R$string.members, strD);
        Intrinsics.g(string, "getString(...)");
        helper.setText(R$id.search_result_provider_group_member, string);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Group groups5 = item.getGroups();
        if (groups5 != null && (tags = groups5.getTags()) != null) {
            int i12 = 0;
            for (Object obj : tags) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                spannableStringBuilder.append((CharSequence) obj);
                List tags2 = item.getGroups().getTags();
                if (i12 < (tags2 != null ? tags2.size() : 0) - 1) {
                    spannableStringBuilder.append((CharSequence) "￼");
                    spannableStringBuilder.setSpan(com.transsion.search.f.b(k()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                }
                i12 = i13;
            }
        }
        if (spannableStringBuilder.length() > 0) {
            helper.setText(R$id.search_result_provider_group_des, spannableStringBuilder);
            helper.setVisible(R$id.search_result_provider_group_des, true);
        } else {
            helper.setGone(R$id.search_result_provider_group_des, true);
        }
        Group groups6 = item.getGroups();
        if (groups6 != null ? Intrinsics.c(groups6.getHasJoin(), Boolean.TRUE) : false) {
            helper.setImageResource(R$id.search_result_provider_group_arrow, R$drawable.ic_result_arrow);
        } else {
            helper.setImageResource(R$id.search_result_provider_group_arrow, R$mipmap.ic_room_join_def_white);
        }
    }
}
