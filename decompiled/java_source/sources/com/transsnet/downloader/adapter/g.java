package com.transsnet.downloader.adapter;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.blankj.utilcode.util.ToastUtils;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.therouter.TheRouter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$mipmap;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004BS\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\t¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010!\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0002H\u0014¢\u0006\u0004\b!\u0010\"J\u001d\u0010$\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\r¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\u0016¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00020\u0016¢\u0006\u0004\b(\u0010'JE\u00100\u001a\u00020\u001626\u0010/\u001a2\u0012\u0013\u0012\u00110*¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(-\u0012\u0013\u0012\u00110\r¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(.\u0012\u0004\u0012\u00020\u00160)¢\u0006\u0004\b0\u00101R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00108R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010<\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00105R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010\u001bR\u001d\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00020F8\u0006¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JRH\u0010N\u001a4\u0012\u0013\u0012\u00110*¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(-\u0012\u0013\u0012\u00110\r¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(.\u0012\u0004\u0012\u00020\u0016\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010M¨\u0006O"}, d2 = {"Lcom/transsnet/downloader/adapter/g;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/baselib/db/download/DownloadBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "season", "", "dataList", "", WebConstants.PAGE_FROM, "subjectId", "subjectType", "", "showPremiumIfNeed", "Lkotlin/Function0;", "hasMore", "<init>", "(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)V", "Landroidx/appcompat/widget/AppCompatImageView;", "checkView", WebConstants.FIELD_ITEM, "", "M1", "(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/baselib/db/download/DownloadBean;)V", "O1", "I1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "J1", "newSubjectId", "P1", "(Ljava/lang/String;)V", "holder", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V", "add", "C1", "(Lcom/transsion/baselib/db/download/DownloadBean;Z)V", "K1", "()V", "H1", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "totalSize", "isSelectAll", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "N1", "(Lkotlin/jvm/functions/Function2;)V", "F", "I", "G", "Ljava/lang/String;", "H", "Ljava/lang/Integer;", "Ljava/lang/Boolean;", "J", "Lkotlin/jvm/functions/Function0;", "K", "pageFrom", "Lcom/transsnet/downloader/manager/g;", "L", "Lcom/transsnet/downloader/manager/g;", "downloadManager", "M", "Lcom/transsion/baselib/db/download/DownloadBean;", "G1", "()Lcom/transsion/baselib/db/download/DownloadBean;", "L1", "Ljava/util/concurrent/CopyOnWriteArrayList;", "N", "Ljava/util/concurrent/CopyOnWriteArrayList;", "F1", "()Ljava/util/concurrent/CopyOnWriteArrayList;", "checkedList", "O", "Lkotlin/jvm/functions/Function2;", "itemSelectListener", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class g extends BaseQuickAdapter implements r6.i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int season;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private Integer subjectType;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private Boolean showPremiumIfNeed;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final Function0<Boolean> hasMore;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private String pageFrom;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private com.transsnet.downloader.manager.g downloadManager;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private DownloadBean item;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private final CopyOnWriteArrayList<DownloadBean> checkedList;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    private Function2<? super Long, ? super Boolean, Unit> itemSelectListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(int i11, List<DownloadBean> dataList, String page_from, String str, Integer num, Boolean bool, Function0<Boolean> hasMore) {
        super(R$layout.item_bottom_dialog_download_ana_group, dataList);
        Intrinsics.h(dataList, "dataList");
        Intrinsics.h(page_from, "page_from");
        Intrinsics.h(hasMore, "hasMore");
        this.season = i11;
        this.subjectId = str;
        this.subjectType = num;
        this.showPremiumIfNeed = bool;
        this.hasMore = hasMore;
        this.pageFrom = "";
        this.checkedList = new CopyOnWriteArrayList<>();
        this.downloadManager = com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
        this.pageFrom = page_from;
    }

    public /* synthetic */ g(int i11, List list, String str, String str2, Integer num, Boolean bool, Function0 function0, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, list, str, str2, num, (i12 & 32) != 0 ? Boolean.FALSE : bool, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(g gVar, AppCompatImageView appCompatImageView, DownloadBean downloadBean, View view) {
        Integer num;
        if (gVar.h0().r()) {
            return;
        }
        if (appCompatImageView.isSelected()) {
            gVar.M1(appCompatImageView, downloadBean);
            return;
        }
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        boolean zC = iPremiumApi != null ? iPremiumApi.c() : false;
        Integer num2 = gVar.subjectType;
        if ((num2 != null && num2.intValue() == 5) || ((num = gVar.subjectType) != null && num.intValue() == 6)) {
            zC = true;
        }
        IPremiumApi iPremiumApi2 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        int i11 = iPremiumApi2 != null ? iPremiumApi2.i() : 3;
        Iterator<T> it = gVar.getData().iterator();
        int i12 = 0;
        while (it.hasNext()) {
            DownloadBean downloadBean2 = (DownloadBean) it.next();
            if (downloadBean2.getIsCheck() && !downloadBean2.isUnable()) {
                i12++;
            }
        }
        if (zC || i12 < i11) {
            gVar.M1(appCompatImageView, downloadBean);
            return;
        }
        ToastUtils.s("Select up to " + i11 + " episodes at a time", new Object[0]);
    }

    private final void I1(DownloadBean item) {
        HashMap map = new HashMap();
        map.put("url", item.getUrl());
        String postId = item.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        map.put(WebConstants.PAGE_FROM, this.pageFrom);
        map.put("sequence", String.valueOf(g0(item)));
        map.put("item_type", String.valueOf(item.getType()));
        String name = item.getName();
        if (name == null) {
            name = "";
        }
        map.put("item_title", name);
        String str = this.subjectId;
        map.put("subject_id", str != null ? str : "");
        map.put("subject_type", String.valueOf(this.subjectType));
    }

    private final void J1(DownloadBean item) {
        HashMap map = new HashMap();
        map.put("url", item.getUrl());
        String postId = item.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        map.put(WebConstants.PAGE_FROM, this.pageFrom);
        map.put("sequence", String.valueOf(g0(item)));
        map.put("item_type", String.valueOf(item.getType()));
        String name = item.getName();
        if (name == null) {
            name = "";
        }
        map.put("item_title", name);
        String str = this.subjectId;
        map.put("subject_id", str != null ? str : "");
        map.put("subject_type", String.valueOf(this.subjectType));
    }

    private final void M1(AppCompatImageView checkView, DownloadBean item) {
        if (checkView.isSelected()) {
            C1(item, false);
            checkView.setSelected(false);
        } else {
            C1(item, true);
            checkView.setSelected(true);
        }
        item.setCheck(checkView.isSelected());
        O1(checkView, item);
        H1();
        J1(item);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0048  */
    private final void O1(AppCompatImageView checkView, DownloadBean item) {
        Integer freeEpisodeCount;
        Integer requireMemberType;
        VipInfo vipInfo = item.getVipInfo();
        boolean z10 = false;
        boolean z11 = (vipInfo == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) ? false : true;
        if (item.getSubjectType() == 5 || item.getSubjectType() == 6) {
            z11 = false;
        }
        if (!z11) {
            IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            z10 = com.transsnet.downloader.util.b0.f59921a.a(String.valueOf(item.getResolution())) >= (iPremiumApi != null ? iPremiumApi.t() : 720);
        } else if (item.getEp() <= 0) {
            z10 = z11;
        } else {
            VipInfo vipInfo2 = item.getVipInfo();
            if (((vipInfo2 == null || (freeEpisodeCount = vipInfo2.getFreeEpisodeCount()) == null) ? 0 : freeEpisodeCount.intValue()) < item.getEp()) {
                z10 = z11;
            }
        }
        if (item.getIsCheck() && z10) {
            checkView.setImageResource(R$mipmap.p_v2_ic_download_group_selected);
        } else {
            checkView.setImageResource(R$drawable.selector_download_group_check);
        }
    }

    public final void C1(DownloadBean item, boolean add) {
        Intrinsics.h(item, "item");
        if (!add) {
            lg.a.C0828a.f(lg.a.f68839a, "DownloadReDete ", "==remove, epName:" + item.getEpName(), false, 4, null);
            this.checkedList.remove(item);
            return;
        }
        if (this.checkedList.contains(item)) {
            lg.a.C0828a.f(lg.a.f68839a, "DownloadReDete ", "==add contains, epName:" + item.getEpName(), false, 4, null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "DownloadReDete ", "==add, epName:" + item.getEpName(), false, 4, null);
        this.checkedList.add(item);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:13:0x0050  */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final DownloadBean item) {
        String sizeFormat;
        Integer requireMemberType;
        Integer freeEpisodeCount;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Integer num = this.subjectType;
        int value = SubjectType.TV.getValue();
        if (num != null && num.intValue() == value) {
            holder.setText(R$id.tv_title, item.getEpTitleName(((Boolean) this.hasMore.invoke()).booleanValue()));
        } else {
            Integer num2 = this.subjectType;
            int value2 = SubjectType.EDUCATION.getValue();
            if (num2 != null && num2.intValue() == value2) {
                holder.setText(R$id.tv_title, item.getEpTitleName(((Boolean) this.hasMore.invoke()).booleanValue()));
            } else {
                holder.setText(R$id.tv_title, item.getTitleName());
                holder.setText(R$id.tv_ep, " " + item.getEpName());
            }
        }
        if (TextUtils.isEmpty(item.getSizeFormat())) {
            Long size = item.getSize();
            sizeFormat = size != null ? oh.b.a(size.longValue(), 1) : null;
        } else {
            sizeFormat = item.getSizeFormat();
        }
        holder.setText(R$id.tv_size, sizeFormat);
        long jLongValue = 0;
        if (item.getCanPlay()) {
            Long duration = item.getDuration();
            if (duration != null) {
                jLongValue = duration.longValue();
            }
        } else {
            Long duration2 = item.getDuration();
            jLongValue = (duration2 != null ? duration2.longValue() : 0L) * ((long) 1000);
        }
        holder.setText(R$id.tv_time, TimeUtilKt.n(jLongValue));
        final AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getView(R$id.iv_check);
        int iIntValue = 0;
        if (item.isUnable()) {
            appCompatImageView.setImageResource(R$drawable.selector_download_group_check);
            holder.itemView.setClickable(false);
            appCompatImageView.setSelected(false);
            appCompatImageView.setEnabled(false);
        } else {
            appCompatImageView.setEnabled(true);
            appCompatImageView.setSelected(item.getIsCheck());
            O1(appCompatImageView, item);
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.adapter.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.E1(this.f58498a, appCompatImageView, item, view);
                }
            });
        }
        ImageView imageView = (ImageView) holder.getView(R$id.ivPremium);
        VipInfo vipInfo = item.getVipInfo();
        if (vipInfo == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
            jg.c.g(imageView);
        } else {
            int ep2 = item.getEp();
            VipInfo vipInfo2 = item.getVipInfo();
            if (vipInfo2 != null && (freeEpisodeCount = vipInfo2.getFreeEpisodeCount()) != null) {
                iIntValue = freeEpisodeCount.intValue();
            }
            if (ep2 > iIntValue) {
                jg.c.k(imageView);
            } else {
                jg.c.g(imageView);
            }
        }
        I1(item);
    }

    public final CopyOnWriteArrayList<DownloadBean> F1() {
        return this.checkedList;
    }

    /* JADX INFO: renamed from: G1, reason: from getter */
    public final DownloadBean getItem() {
        return this.item;
    }

    public final void H1() {
        long jLongValue = 0;
        for (DownloadBean downloadBean : this.checkedList) {
            if (!downloadBean.isUnable()) {
                Long size = downloadBean.getSize();
                jLongValue += size != null ? size.longValue() : 0L;
            }
        }
        Function2<? super Long, ? super Boolean, Unit> function2 = this.itemSelectListener;
        if (function2 != null) {
            function2.invoke(Long.valueOf(jLongValue), Boolean.FALSE);
        }
        lg.a.C0828a.f(lg.a.f68839a, "downloadAna", "onItemSelect, totalSize = " + jLongValue + ", checkList.size = " + this.checkedList.size() + ", itemCount = " + getData().size(), false, 4, null);
    }

    public final void K1() {
        this.checkedList.clear();
    }

    public final void L1(DownloadBean downloadBean) {
        this.item = downloadBean;
    }

    public final void N1(Function2<? super Long, ? super Boolean, Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.itemSelectListener = listener;
    }

    public final void P1(String newSubjectId) {
        Intrinsics.h(newSubjectId, "newSubjectId");
        this.subjectId = newSubjectId;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
