package com.transsion.search.fragment.hot.adapter;

import ak.k;
import android.app.Activity;
import android.content.Context;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.KeyboardUtils;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$string;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.GroupInfo;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0015R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/transsion/search/fragment/hot/adapter/c;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/search/bean/GroupInfo;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "parentCategory", "", "parentIndex", "sugSource", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "groupInfo", "", "E1", "(Lcom/transsion/search/bean/GroupInfo;)V", "holder", WebConstants.FIELD_ITEM, "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/GroupInfo;)V", "F", "Ljava/lang/String;", "G", "I", "H", "", "Z", "mIsLowDevice", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class c extends BaseQuickAdapter implements i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final String parentCategory;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int parentIndex;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final String sugSource;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final boolean mIsLowDevice;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String parentCategory, int i11, String sugSource) {
        super(R$layout.provider_result_group, null, 2, null);
        Intrinsics.h(parentCategory, "parentCategory");
        Intrinsics.h(sugSource, "sugSource");
        this.parentCategory = parentCategory;
        this.parentIndex = i11;
        this.sugSource = sugSource;
        this.mIsLowDevice = ak.h.f641a.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(c cVar, GroupInfo groupInfo, View view) {
        cVar.E1(groupInfo);
    }

    private final void E1(GroupInfo groupInfo) {
        com.transsion.search.widget.d.f52270a.m(groupInfo, g0(groupInfo), this.parentCategory, this.parentIndex, this.mIsLowDevice, this.sugSource);
        if (getContext() instanceof Activity) {
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            if (KeyboardUtils.g((Activity) context)) {
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
                KeyboardUtils.d((Activity) context2);
            }
        }
        Navigator.x(TheRouter.c("/room/detail").K("id", groupInfo.getGroupId()), getContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final GroupInfo item) {
        int i11;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ImageView imageView = (ShapeableImageView) holder.getView(R$id.search_result_provider_group_cover);
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        oh.h hVar = oh.h.f71021a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        bVar.setMarginStart(hVar.a(context, 12.0f));
        imageView.setLayoutParams(bVar);
        ej.f.b bVarM = ej.f.f61882a.m(getContext());
        String url = item.getCover().getUrl();
        if (url == null) {
            url = "";
        }
        ej.f.b bVarG = bVarM.g(url);
        String thumbnail = item.getCover().getThumbnail();
        bVarG.l(thumbnail != null ? thumbnail : "").m(a0.a(50.0f)).d(imageView);
        int iG0 = g0(item);
        if (iG0 == 0) {
            i11 = R$drawable.bg_hot_subject_no1;
        } else if (iG0 != 1) {
            i11 = iG0 != 2 ? R$drawable.bg_hot_subject_no4 : R$drawable.bg_hot_subject_no3;
        } else {
            i11 = R$drawable.bg_hot_subject_no2;
        }
        holder.setVisible(R$id.search_result_provider_group_index_text, true);
        holder.setBackgroundResource(R$id.search_result_provider_group_index_text, i11);
        holder.setText(R$id.search_result_provider_group_index_text, String.valueOf(iG0 + 1));
        holder.setText(R$id.search_result_provider_group_title, item.getName());
        Long userCount = item.getUserCount();
        String strD = userCount != null ? k.d(userCount.longValue()) : null;
        Context context2 = getContext();
        int i12 = R$string.members;
        if (strD == null) {
            strD = "0";
        }
        CharSequence string = context2.getString(i12, strD);
        Intrinsics.g(string, "getString(...)");
        holder.setText(R$id.search_result_provider_group_member, string);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        List<String> tags = item.getTags();
        if (tags != null) {
            int i13 = 0;
            for (Object obj : tags) {
                int i14 = i13 + 1;
                if (i13 < 0) {
                    CollectionsKt.u();
                }
                spannableStringBuilder.append((CharSequence) obj);
                List<String> tags2 = item.getTags();
                if (i13 < (tags2 != null ? tags2.size() : 0) - 1) {
                    spannableStringBuilder.append((CharSequence) "￼");
                    spannableStringBuilder.setSpan(com.transsion.search.f.b(getContext()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                }
                i13 = i14;
            }
        }
        if (spannableStringBuilder.length() > 0) {
            holder.setText(R$id.search_result_provider_group_des, spannableStringBuilder);
            holder.setVisible(R$id.search_result_provider_group_des, true);
        } else {
            holder.setGone(R$id.search_result_provider_group_des, true);
        }
        holder.setVisible(R$id.search_result_provider_group_arrow, false);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.hot.adapter.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.D1(this.f52070a, item, view);
            }
        });
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
