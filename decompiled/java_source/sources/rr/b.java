package rr;

import android.content.Context;
import android.view.View;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.bean.Staff;
import com.transsion.shorttv.bean.StaffType;
import ej.f;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.short_tv_item_cast;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, Staff item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView != null) {
            int i11 = R$mipmap.short_tv_movie_staff_default_avatar;
            String avatarUrl = item.getAvatarUrl();
            if (avatarUrl == null || avatarUrl.length() == 0) {
                shapeableImageView.setImageResource(i11);
            } else {
                f.a aVar = f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                f.b bVarM = aVar.m(context);
                String avatarUrl2 = item.getAvatarUrl();
                if (avatarUrl2 == null) {
                    avatarUrl2 = "";
                }
                bVarM.g(avatarUrl2).i(i11).d(shapeableImageView);
            }
        }
        helper.setText(R$id.tv_title, item.getName());
        int i12 = R$id.tv_subject_num;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String string = k().getString(R$string.short_tv_subject_num);
        Intrinsics.g(string, "getString(...)");
        String str = String.format(string, Arrays.copyOf(new Object[]{item.getSubjectNum()}, 1));
        Intrinsics.g(str, "format(...)");
        helper.setText(i12, str);
        StringBuilder sb2 = new StringBuilder();
        List<StaffType> staffTypes = item.getStaffTypes();
        if (staffTypes != null) {
            Iterator<T> it = staffTypes.iterator();
            while (it.hasNext()) {
                sb2.append(((StaffType) it.next()).getName());
                sb2.append("•");
            }
        }
        helper.setText(R$id.tv_desc, StringsKt.q1(sb2, 8226));
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        Integer numValueOf = baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            View viewOrNull = helper.getViewOrNull(R$id.divider);
            if (viewOrNull != null) {
                yr.b.e(viewOrNull);
            }
            View viewOrNull2 = helper.getViewOrNull(R$id.bg_gradient);
            if (viewOrNull2 != null) {
                yr.b.e(viewOrNull2);
            }
            View viewOrNull3 = helper.getViewOrNull(R$id.item_root);
            if (viewOrNull3 != null) {
                viewOrNull3.setBackgroundResource(R$drawable.short_tv_bg_category_first_item);
                return;
            }
            return;
        }
        View viewOrNull4 = helper.getViewOrNull(R$id.divider);
        if (viewOrNull4 != null) {
            yr.b.b(viewOrNull4);
        }
        View viewOrNull5 = helper.getViewOrNull(R$id.bg_gradient);
        if (viewOrNull5 != null) {
            yr.b.b(viewOrNull5);
        }
        View viewOrNull6 = helper.getViewOrNull(R$id.item_root);
        if (viewOrNull6 != null) {
            viewOrNull6.setBackgroundColor(androidx.core.content.b.getColor(k(), R$color.short_tv_white));
        }
    }
}
