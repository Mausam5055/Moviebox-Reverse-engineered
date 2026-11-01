package vq;

import android.text.SpannableStringBuilder;
import android.widget.ImageView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.R$mipmap;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.StaffType;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search.fragment.result.ResultType;
import com.transsion.search.fragment.result.ResultWrapData;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return ResultType.STAFF.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_result_staff;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, ResultWrapData item) {
        String avatarUrl;
        String description;
        List<StaffType> staffTypes;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ej.f.b bVarM = ej.f.f61882a.m(k());
        Staff staff = item.getStaff();
        if (staff == null || (avatarUrl = staff.getAvatarUrl()) == null) {
            avatarUrl = "";
        }
        bVarM.g(avatarUrl).m(a0.a(50.0f)).i(R$mipmap.movie_staff_default_avatar).d((ImageView) helper.getView(R$id.search_result_provider_staff_cover));
        int i11 = R$id.search_result_provider_staff_title;
        Staff staff2 = item.getStaff();
        helper.setText(i11, staff2 != null ? staff2.getName() : null);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Staff staff3 = item.getStaff();
        if (staff3 != null && (staffTypes = staff3.getStaffTypes()) != null) {
            int i12 = 0;
            for (Object obj : staffTypes) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                spannableStringBuilder.append((CharSequence) String.valueOf(((StaffType) obj).getName()));
                if (i12 < staffTypes.size() - 1) {
                    spannableStringBuilder.append((CharSequence) " · ");
                }
                i12 = i13;
            }
        }
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) " ");
        Staff staff4 = item.getStaff();
        Integer subjectNum = staff4 != null ? staff4.getSubjectNum() : null;
        spannableStringBuilder.append((CharSequence) (subjectNum + " " + k().getString(R$string.search_works)));
        spannableStringBuilder.setSpan(com.transsion.search.f.b(k()), length, length + 1, 34);
        helper.setText(R$id.search_result_provider_staff_brief, spannableStringBuilder);
        Staff staff5 = item.getStaff();
        if (staff5 == null || (description = staff5.getDescription()) == null || description.length() <= 0) {
            helper.setGone(R$id.search_result_provider_staff_des, true);
            return;
        }
        helper.setVisible(R$id.search_result_provider_staff_des, true);
        int i14 = R$id.search_result_provider_staff_des;
        Staff staff6 = item.getStaff();
        helper.setText(i14, staff6 != null ? staff6.getDescription() : null);
    }
}
