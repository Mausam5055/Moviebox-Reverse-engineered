package com.transsion.room.sub.adapter.subscription;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.sub.bean.subscription.UserInfoFollowings;
import com.transsion.room.sub.bean.subscription.UserItemFollowings;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\r\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u001e\u001fB)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u000f\u001a\u00020\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006 "}, d2 = {"Lcom/transsion/room/sub/adapter/subscription/s;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;", "Lr6/i;", "", "data", "Lsj/b;", "exposureHelper", "", "showNumberTh", "<init>", "(Ljava/util/List;Lsj/b;Z)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/transsion/room/sub/adapter/subscription/b;", "itemClickListener", "", "Q1", "(Lcom/transsion/room/sub/adapter/subscription/b;)V", "G", "Lsj/b;", "H", "Z", "I", "Lcom/transsion/room/sub/adapter/subscription/b;", "clickListener", "J", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class s extends BaseProviderMultiAdapter<UserInfoFollowings> implements r6.i {
    private static final String K = "FollowingsFeedAdapter";
    public static final int L = 1;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final sj.b exposureHelper;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean showNumberTh;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private com.transsion.room.sub.adapter.subscription.b clickListener;

    public static final class b extends BaseItemProvider {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final sj.b f51700e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f51701f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private com.transsion.room.sub.adapter.subscription.b f51702g;

        public b(sj.b bVar, boolean z10) {
            this.f51700e = bVar;
            this.f51701f = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void B(b bVar, UserInfoFollowings userInfoFollowings, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            com.transsion.room.sub.adapter.subscription.b bVar2 = bVar.f51702g;
            if (bVar2 != null) {
                UserItemFollowings userInfo = userInfoFollowings.getUserInfo();
                bVar2.b(userInfo != null ? userInfo.getUserId() : null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void C(b bVar, UserInfoFollowings userInfoFollowings, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            com.transsion.room.sub.adapter.subscription.b bVar2 = bVar.f51702g;
            if (bVar2 != null) {
                UserItemFollowings userInfo = userInfoFollowings.getUserInfo();
                bVar2.b(userInfo != null ? userInfo.getUserId() : null);
            }
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public void b(BaseViewHolder holder, final UserInfoFollowings userItem) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(userItem, "userItem");
            ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.iv_avatar);
            if (shapeableImageView != null) {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                UserItemFollowings userInfo = userItem.getUserInfo();
                bVarM.g(userInfo != null ? userInfo.getAvatar() : null).d(shapeableImageView);
                shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.t
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        s.b.B(this.f51703a, userItem, view);
                    }
                });
            }
            lg.a.C0828a.f(lg.a.f68839a, s.K, "tv_name " + userItem, false, 4, null);
            LinearLayout linearLayout = (LinearLayout) holder.getViewOrNull(R$id.container);
            if (linearLayout != null) {
                linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.u
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        s.b.C(this.f51705a, userItem, view);
                    }
                });
            }
            int i11 = R$id.tv_name;
            UserItemFollowings userInfo2 = userItem.getUserInfo();
            holder.setText(i11, userInfo2 != null ? userInfo2.getNickname() : null);
            TextView textView = (TextView) holder.getViewOrNull(R$id.tv_name);
            if (textView != null) {
                textView.setVisibility(0);
            }
            GradientTextView gradientTextView = (GradientTextView) holder.getViewOrNull(R$id.tv_new_video);
            if (gradientTextView != null) {
                if (userItem.getHasUnread()) {
                    gradientTextView.setVisibility(0);
                } else {
                    gradientTextView.setVisibility(8);
                }
            }
        }

        public final void D(com.transsion.room.sub.adapter.subscription.b bVar) {
            this.f51702g = bVar;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int l() {
            return 1;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int m() {
            return R$layout.item_subscription_list;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(List<UserInfoFollowings> data, sj.b bVar, boolean z10) {
        super(data);
        Intrinsics.h(data, "data");
        this.exposureHelper = bVar;
        this.showNumberTh = z10;
    }

    public /* synthetic */ s(List list, sj.b bVar, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, bVar, (i11 & 4) != 0 ? false : z10);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends UserInfoFollowings> data, int position) {
        Intrinsics.h(data, "data");
        return 1;
    }

    public final void Q1(com.transsion.room.sub.adapter.subscription.b itemClickListener) {
        this.clickListener = itemClickListener;
        b bVar = new b(this.exposureHelper, this.showNumberTh);
        bVar.D(this.clickListener);
        F1(bVar);
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
