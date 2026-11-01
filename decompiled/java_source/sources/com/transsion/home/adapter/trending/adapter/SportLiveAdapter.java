package com.transsion.home.adapter.trending.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$drawable;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$mipmap;
import com.transsion.home.bean.LiveListItem;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.TeamInfo;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.usercenter.R$string;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import il.b;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.TimeZone;
import jg.c;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0007\u0018\u0000 )2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002*+B)\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001d\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010!R\u0014\u0010&\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010!R\u0014\u0010(\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010!¨\u0006,"}, d2 = {"Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/LiveListItem;", "Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "tabId", "", "isTablet", "<init>", "(ILcom/transsion/home/bean/OperateItem;IZ)V", WebConstants.FIELD_ITEM, RequestParameters.POSITION, "", "G1", "(Lcom/transsion/home/bean/LiveListItem;Lcom/transsion/home/bean/OperateItem;I)V", "Landroid/view/ViewGroup;", "parent", "viewType", "C1", "(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;", "holder", "B1", "(Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;Lcom/transsion/home/bean/LiveListItem;)V", "F1", "(Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;)V", "E1", "D1", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "I", "H", "Z", "itemWidth", "J", "itemHeight", "K", "teamImageSize", "L", "a", "SportLiveViewHolder", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SportLiveAdapter extends BaseQuickAdapter {
    public static final int M = 8;
    public static final String N = "MatchNotStart";
    public static final String O = "MatchIng";
    public static final String P = "MatchEnded";

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final OperateItem operateItem;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int itemWidth;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final int itemHeight;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final int teamImageSize;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0012\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Landroid/view/View;", "rootView", "<init>", "(Landroid/view/View;)V", "", CampaignEx.JSON_KEY_TIMESTAMP, "", "g", "(J)Ljava/lang/String;", "Lcom/transsion/home/bean/LiveListItem;", WebConstants.FIELD_ITEM, "", "j", "(Lcom/transsion/home/bean/LiveListItem;)V", "i", "()V", "h", "a", "Landroid/view/View;", "getRootView", "()Landroid/view/View;", "Lkotlinx/coroutines/t1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlinx/coroutines/t1;", "job", "c", "Lcom/transsion/home/bean/LiveListItem;", "info", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class SportLiveViewHolder extends BaseViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final View rootView;

        /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
        private t1 job;

        /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
        private LiveListItem info;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SportLiveViewHolder(View rootView) {
            super(rootView);
            Intrinsics.h(rootView, "rootView");
            this.rootView = rootView;
        }

        private final String g(long timestamp) {
            int iP = TimeUtilKt.p(timestamp);
            if (iP == 0) {
                long jCurrentTimeMillis = timestamp - System.currentTimeMillis();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(" · HH:mm:ss");
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
                i();
                String str = simpleDateFormat.format(Long.valueOf(jCurrentTimeMillis));
                Intrinsics.g(str, "format(...)");
                return str;
            }
            if (iP < 0) {
                return "";
            }
            return " · " + this.rootView.getContext().getResources().getString(iP == 1 ? R$string.user_day_left : R$string.user_days_left, Integer.valueOf(iP));
        }

        public final void h() {
            t1 t1Var = this.job;
            if (t1Var != null) {
                t1.a.b(t1Var, null, 1, null);
            }
            this.job = null;
        }

        public final void i() {
            LiveListItem liveListItem = this.info;
            if (liveListItem != null) {
                if (Intrinsics.c(liveListItem != null ? liveListItem.getStatus() : null, SportLiveAdapter.O)) {
                    return;
                }
                t1 t1Var = this.job;
                if (t1Var != null) {
                    t1.a.b(t1Var, null, 1, null);
                }
                Object context = this.itemView.getContext();
                u uVar = context instanceof u ? (u) context : null;
                if (uVar == null) {
                    return;
                }
                this.job = k.d(v.a(uVar), null, null, new SportLiveAdapter$SportLiveViewHolder$startCutDown$1(uVar, this, null), 3, null);
            }
        }

        public final void j(LiveListItem item) {
            if (item == null) {
                return;
            }
            this.info = item;
            Long startTime = item.getStartTime();
            long jLongValue = startTime != null ? startTime.longValue() : 0L;
            TextView textView = (TextView) getView(R$id.main_op_sport_live_status_text);
            c.k(textView);
            long jCurrentTimeMillis = jLongValue - System.currentTimeMillis();
            if (item.getStartTime() == null || jCurrentTimeMillis > 0) {
                item.setStatus(SportLiveAdapter.N);
            } else {
                item.setStatus(SportLiveAdapter.O);
            }
            String status = item.getStatus();
            if (!Intrinsics.c(status, SportLiveAdapter.N)) {
                if (!Intrinsics.c(status, SportLiveAdapter.O)) {
                    c.h(textView);
                    return;
                } else {
                    textView.setText("");
                    textView.setBackgroundResource(R$mipmap.ic_op_sport_live_status);
                    return;
                }
            }
            textView.setText(this.rootView.getContext().getString(com.transsion.home.R$string.sport_live_upcoming) + g(jLongValue));
            textView.setBackgroundResource(R$drawable.bg_corner_tips_rectangle_2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SportLiveAdapter(int i11, OperateItem operateItem, int i12, boolean z10) {
        super(i11, null, 2, null);
        Intrinsics.h(operateItem, "operateItem");
        this.operateItem = operateItem;
        this.tabId = i12;
        this.isTablet = z10;
        this.teamImageSize = a0.a(30.0f);
        int i13 = z10 ? 3 : 2;
        int iA = a0.a(((((a0.b(RangesKt.i(y.e(), y.c())) - 12) - (i13 * 8)) - 24) * 1.0f) / i13);
        this.itemWidth = iA;
        this.itemHeight = (int) (((double) iA) * 0.56d);
    }

    public /* synthetic */ SportLiveAdapter(int i11, OperateItem operateItem, int i12, boolean z10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? R$layout.item_main_operation_sport_live : i11, operateItem, i12, z10);
    }

    private final void G1(LiveListItem item, OperateItem operateItem, int position) {
        HashMap map = new HashMap();
        map.put("event_type", "browse_sport_live_item");
        map.put("sequence", String.valueOf(position));
        map.put("tabId", String.valueOf(this.tabId));
        b.a(operateItem, map);
        String matchId = item.getMatchId();
        if (matchId == null) {
            matchId = "";
        }
        map.put("match_id", matchId);
        String status = item.getStatus();
        if (status == null) {
            status = "";
        }
        map.put("match_status", status);
        String ops = item.getOps();
        map.put("ops", ops != null ? ops : "");
        com.transsion.baselib.helper.a.f43262a.a(SubTabFragment.INSTANCE.a(this.tabId), map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(SportLiveViewHolder holder, LiveListItem item) {
        String avatar;
        String avatar2;
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        z(holder, getItemViewType(holder.getBindingAdapterPosition()));
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.main_op_sport_live_image);
        String str = "";
        if (shapeableImageView != null) {
            f.a aVar = f.f61882a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            f.b bVarM = aVar.m(context);
            Image image = item.getImage();
            if (image == null || (url = image.getUrl()) == null) {
                url = "";
            }
            f.b bVarC = bVarM.g(url).m(this.itemWidth).c(this.itemHeight);
            Image image2 = item.getImage();
            if (image2 == null || (thumbnail = image2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarC.l(thumbnail).d(shapeableImageView);
        }
        holder.j(item);
        f.a aVar2 = f.f61882a;
        f.b bVarM2 = aVar2.m(getContext());
        TeamInfo team1 = item.getTeam1();
        if (team1 == null || (avatar = team1.getAvatar()) == null) {
            avatar = "";
        }
        bVarM2.g(avatar).i(R$mipmap.ic_op_live_default).m(this.teamImageSize).c(this.teamImageSize).d((ImageView) holder.getView(R$id.main_op_sport_live_team1_image));
        f.b bVarM3 = aVar2.m(getContext());
        TeamInfo team2 = item.getTeam2();
        if (team2 != null && (avatar2 = team2.getAvatar()) != null) {
            str = avatar2;
        }
        bVarM3.g(str).i(R$mipmap.ic_op_live_default).m(this.teamImageSize).c(this.teamImageSize).d((ImageView) holder.getView(R$id.main_op_sport_live_team2_image));
        int i11 = R$id.main_op_sport_live_team1;
        TeamInfo team3 = item.getTeam1();
        holder.setText(i11, team3 != null ? team3.getName() : null);
        int i12 = R$id.main_op_sport_live_team2;
        TeamInfo team4 = item.getTeam2();
        holder.setText(i12, team4 != null ? team4.getName() : null);
        G1(item, this.operateItem, holder.getBindingAdapterPosition());
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public SportLiveViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_main_operation_sport_live, parent, false);
        Intrinsics.g(viewInflate, "inflate(...)");
        SportLiveViewHolder sportLiveViewHolder = new SportLiveViewHolder(viewInflate);
        ShapeableImageView shapeableImageView = (ShapeableImageView) sportLiveViewHolder.getViewOrNull(R$id.main_op_sport_live_image);
        if (shapeableImageView != null) {
            shapeableImageView.getLayoutParams().width = this.itemWidth;
            shapeableImageView.getLayoutParams().height = this.itemHeight;
        }
        return sportLiveViewHolder;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public void onViewAttachedToWindow(SportLiveViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        holder.i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: E1, reason: merged with bridge method [inline-methods] */
    public void onViewDetachedFromWindow(SportLiveViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        holder.h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: F1, reason: merged with bridge method [inline-methods] */
    public void onViewRecycled(SportLiveViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewRecycled(holder);
        holder.h();
    }
}
