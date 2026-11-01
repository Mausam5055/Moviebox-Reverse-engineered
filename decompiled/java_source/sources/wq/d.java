package wq;

import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.R$mipmap;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.StaffType;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search.bean.SuggestEntity;
import ej.f;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 3;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.fragment_search_suggest_staff_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, SuggestEntity item) {
        String avatarUrl;
        List<StaffType> staffTypes;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        f.b bVarM = f.f61882a.m(k());
        Staff staff = item.getStaff();
        if (staff == null || (avatarUrl = staff.getAvatarUrl()) == null) {
            avatarUrl = "";
        }
        bVarM.g(avatarUrl).i(R$mipmap.movie_staff_default_avatar).d((ImageView) helper.getView(R$id.ivCover));
        int i11 = R$id.tvTitle;
        Staff staff2 = item.getStaff();
        helper.setText(i11, staff2 != null ? staff2.getName() : null);
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvDes);
        if (appCompatTextView != null) {
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
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) "  ");
            spannableStringBuilder2.append((CharSequence) spannableStringBuilder.toString());
            int i14 = R$drawable.search_suggest_staff;
            spannableStringBuilder2.setSpan(Build.VERSION.SDK_INT >= 29 ? new ImageSpan(appCompatTextView.getContext(), i14, 2) : new ImageSpan(appCompatTextView.getContext(), i14, 1), 0, 1, 34);
            appCompatTextView.setText(spannableStringBuilder2);
        }
        int i15 = R$id.tvWorks;
        Staff staff4 = item.getStaff();
        Integer subjectNum = staff4 != null ? staff4.getSubjectNum() : null;
        helper.setText(i15, subjectNum + " " + k().getString(R$string.search_works));
    }
}
