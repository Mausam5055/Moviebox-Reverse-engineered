package com.transsnet.downloader.ugc.adapter;

import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownload;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadResource;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 '2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\r\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\r\u0010\u000bJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J-\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0014¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR2\u0010&\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006)"}, d2 = {"Lcom/transsnet/downloader/ugc/adapter/a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "", "", "newSelectedIds", "", "H1", "(Ljava/util/Set;)V", "newDisabledIds", "G1", WebConstants.FIELD_ITEM, "", "E1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;)Z", "holder", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;)V", "", "", "payloads", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;Ljava/util/List;)V", "F", "Ljava/util/Set;", "selected", "G", "disabledIds", "Lkotlin/Function1;", "H", "Lkotlin/jvm/functions/Function1;", "D1", "()Lkotlin/jvm/functions/Function1;", "F1", "(Lkotlin/jvm/functions/Function1;)V", "getItemUniqueId", "I", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class a extends BaseQuickAdapter {
    private static final String J = "payload_select";
    private static final String K = "payload_disabled";

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private Set<String> selected;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private Set<String> disabledIds;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private Function1<? super UGCVideoDownload, String> getItemUniqueId;

    public a() {
        super(R$layout.ugc_item_download, null, 2, null);
        this.selected = SetsKt.f();
        this.disabledIds = SetsKt.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:21:0x0059  */
    /* JADX WARN: Code duplicated, block: B:24:0x0060  */
    /* JADX WARN: Code duplicated, block: B:26:0x0066  */
    /* JADX WARN: Code duplicated, block: B:28:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x006e  */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, UGCVideoDownload item) {
        String ugcVideoId;
        String id2;
        String url;
        String thumbnail;
        Long size;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Function1<? super UGCVideoDownload, String> function1 = this.getItemUniqueId;
        if (function1 == null || (ugcVideoId = (String) function1.invoke(item)) == null) {
            ugcVideoId = item.getUgcVideoId();
        }
        boolean z10 = ugcVideoId != null && this.selected.contains(ugcVideoId);
        boolean zE1 = E1(item);
        ImageView imageView = (ImageView) holder.getView(R$id.ivCheck);
        imageView.setSelected(z10);
        imageView.setEnabled(!zE1);
        TextView textView = (TextView) holder.getView(R$id.tvTitle);
        String epTitle = item.getEpTitle();
        if (epTitle == null) {
            epTitle = item.getTitle();
            if (epTitle == null) {
                UGCVideoDownloadResource resource = item.getResource();
                id2 = resource != null ? resource.getId() : null;
                if (id2 != null) {
                    epTitle = id2;
                } else {
                    epTitle = "";
                }
            }
        } else {
            if (StringsKt.q0(epTitle)) {
                epTitle = null;
            }
            if (epTitle == null) {
                epTitle = item.getTitle();
                if (epTitle == null) {
                    UGCVideoDownloadResource resource2 = item.getResource();
                    if (resource2 != null) {
                    }
                    if (id2 != null) {
                        epTitle = id2;
                    } else {
                        epTitle = "";
                    }
                }
            }
        }
        textView.setText(epTitle);
        TextView textView2 = (TextView) holder.getView(R$id.tvSize);
        UGCVideoDownloadResource resource3 = item.getResource();
        textView2.setText(oh.b.a((resource3 == null || (size = resource3.getSize()) == null) ? 0L : size.longValue(), 1));
        TextView textView3 = (TextView) holder.getView(R$id.tvDurationTag);
        UGCVideoDownloadResource resource4 = item.getResource();
        textView3.setText(TimeUtilKt.q(resource4 != null ? resource4.getDuration() : 0L));
        f.b bVarM = f.f61882a.m(getContext());
        Cover cover = item.getCover();
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        f.b bVarG = bVarM.g(url);
        Cover cover2 = item.getCover();
        if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
            thumbnail = "";
        }
        bVarG.l(thumbnail).d((ImageView) holder.getView(R$id.ivCover));
        String corner = item.getCorner();
        TextView textView4 = (TextView) holder.getView(R$id.tvLanguageTag);
        textView4.setText(corner != null ? corner : "");
        textView4.setVisibility((corner == null || StringsKt.q0(corner)) ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void G(BaseViewHolder holder, UGCVideoDownload item, List<? extends Object> payloads) {
        String ugcVideoId;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        ImageView imageView = (ImageView) holder.getView(R$id.ivCheck);
        if (!payloads.isEmpty()) {
            if (payloads.contains(J)) {
                Function1<? super UGCVideoDownload, String> function1 = this.getItemUniqueId;
                if (function1 == null || (ugcVideoId = (String) function1.invoke(item)) == null) {
                    ugcVideoId = item.getUgcVideoId();
                }
                imageView.setSelected(ugcVideoId != null && this.selected.contains(ugcVideoId));
            }
            if (payloads.contains(K)) {
                imageView.setEnabled(true ^ E1(item));
            }
            if (payloads.contains(J) || payloads.contains(K)) {
                return;
            }
        }
        super.G(holder, item, payloads);
    }

    public final Function1<UGCVideoDownload, String> D1() {
        return this.getItemUniqueId;
    }

    public final boolean E1(UGCVideoDownload item) {
        String ugcVideoId;
        Intrinsics.h(item, "item");
        Function1<? super UGCVideoDownload, String> function1 = this.getItemUniqueId;
        if (function1 == null || (ugcVideoId = (String) function1.invoke(item)) == null) {
            ugcVideoId = item.getUgcVideoId();
        }
        return ugcVideoId != null && this.disabledIds.contains(ugcVideoId);
    }

    public final void F1(Function1<? super UGCVideoDownload, String> function1) {
        this.getItemUniqueId = function1;
    }

    public final void G1(Set<String> newDisabledIds) {
        String ugcVideoId;
        Intrinsics.h(newDisabledIds, "newDisabledIds");
        Set<String> set = this.disabledIds;
        if (set == newDisabledIds) {
            return;
        }
        Set<String> set2 = set;
        Set<String> set3 = newDisabledIds;
        Set<String> setJ0 = CollectionsKt.J0(CollectionsKt.X0(set2, set3), CollectionsKt.o0(set2, set3));
        this.disabledIds = newDisabledIds;
        if (setJ0.isEmpty()) {
            return;
        }
        for (String str : setJ0) {
            Iterator<Object> it = getData().iterator();
            int i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                }
                UGCVideoDownload uGCVideoDownload = (UGCVideoDownload) it.next();
                Function1<? super UGCVideoDownload, String> function1 = this.getItemUniqueId;
                if (function1 == null || (ugcVideoId = (String) function1.invoke(uGCVideoDownload)) == null) {
                    ugcVideoId = uGCVideoDownload.getUgcVideoId();
                }
                if (Intrinsics.c(ugcVideoId, str)) {
                    break;
                } else {
                    i11++;
                }
            }
            if (i11 >= 0) {
                notifyItemChanged(i11, K);
            }
        }
    }

    public final void H1(Set<String> newSelectedIds) {
        String ugcVideoId;
        Intrinsics.h(newSelectedIds, "newSelectedIds");
        Set<String> set = this.selected;
        if (set == newSelectedIds) {
            return;
        }
        Set<String> set2 = set;
        Set<String> set3 = newSelectedIds;
        Set<String> setJ0 = CollectionsKt.J0(CollectionsKt.X0(set2, set3), CollectionsKt.o0(set2, set3));
        this.selected = newSelectedIds;
        if (setJ0.isEmpty()) {
            return;
        }
        for (String str : setJ0) {
            Iterator<Object> it = getData().iterator();
            int i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                }
                UGCVideoDownload uGCVideoDownload = (UGCVideoDownload) it.next();
                Function1<? super UGCVideoDownload, String> function1 = this.getItemUniqueId;
                if (function1 == null || (ugcVideoId = (String) function1.invoke(uGCVideoDownload)) == null) {
                    ugcVideoId = uGCVideoDownload.getUgcVideoId();
                }
                if (Intrinsics.c(ugcVideoId, str)) {
                    break;
                } else {
                    i11++;
                }
            }
            if (i11 >= 0) {
                notifyItemChanged(i11, J);
            }
        }
    }
}
