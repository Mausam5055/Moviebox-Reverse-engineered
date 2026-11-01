package com.transsion.audio.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.transsion.audio.R$id;
import com.transsion.audio.R$layout;
import com.transsion.audio.fragment.SubjectListFragment;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.j;
import r6.f;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001&B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\rJ-\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0015\u0010\rJ\u0015\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019R$\u0010\u001f\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u0019R\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lcom/transsion/audio/adapter/SubjectListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/DownloadItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "dataList", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "L1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;)V", "download", "I1", "", "", "payloads", "F1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;Ljava/util/List;)V", "E1", "Lcom/transsion/audio/adapter/SubjectListAdapter$a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "J1", "(Lcom/transsion/audio/adapter/SubjectListAdapter$a;)V", "F", "Lcom/transsion/audio/adapter/SubjectListAdapter$a;", "H1", "()Lcom/transsion/audio/adapter/SubjectListAdapter$a;", "K1", "optionClickListener", "Ljj/a;", "G", "Lkotlin/Lazy;", "G1", "()Ljj/a;", "audioDao", "a", "Audio_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectListAdapter extends BaseQuickAdapter implements i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private a optionClickListener;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final Lazy audioDao;

    public interface a {
        void a(DownloadItem downloadItem);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubjectListAdapter(List<DownloadItem> dataList) {
        super(R$layout.adapter_item_audio_list, dataList);
        Intrinsics.h(dataList, "dataList");
        this.audioDao = LazyKt.b(new Function0() { // from class: com.transsion.audio.adapter.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubjectListAdapter.D1(this.f42821a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jj.a D1(SubjectListAdapter subjectListAdapter) {
        return AppDatabase.INSTANCE.b(subjectListAdapter.getContext()).o1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final jj.a G1() {
        return (jj.a) this.audioDao.getValue();
    }

    private final void I1(BaseViewHolder holder, DownloadItem download) {
        j.b(null, new SubjectListAdapter$refresh$1(download, holder, this, null), 1, null);
    }

    private final void L1(BaseViewHolder holder, DownloadItem item) {
        holder.setText(R$id.tv_name, item.getName());
        int i11 = R$id.tv_size;
        Long size = item.getSize();
        holder.setText(i11, size != null ? oh.b.a(size.longValue(), 1) : null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: E1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, DownloadItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        lg.a.C0828a.f(lg.a.f68839a, SubjectListFragment.INSTANCE.a(), "convert 22 item " + item.getUrl(), false, 4, null);
        L1(holder, item);
        I1(holder, item);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: F1, reason: merged with bridge method [inline-methods] */
    public void G(BaseViewHolder holder, DownloadItem item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        lg.a.C0828a.f(lg.a.f68839a, SubjectListFragment.INSTANCE.a(), "convert 11 item " + item.getUrl(), false, 4, null);
        I1(holder, item);
    }

    /* JADX INFO: renamed from: H1, reason: from getter */
    public final a getOptionClickListener() {
        return this.optionClickListener;
    }

    public final void J1(a listener) {
        Intrinsics.h(listener, "listener");
        this.optionClickListener = listener;
    }

    public final void K1(a aVar) {
        this.optionClickListener = aVar;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
