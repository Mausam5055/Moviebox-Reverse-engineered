package com.transsnet.downloader.adapter;

import android.annotation.SuppressLint;
import android.app.Application;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.therouter.TheRouter;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.downloader.fragment.DownloadPanelFragment;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001cB¤\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012w\u0010\u0019\u001as\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0016¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00180\r¢\u0006\u0004\b\u001a\u0010\u001bJ%\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00020\u001e2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001cH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010)\u001a\u00020\u00032\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010*J\u001f\u0010+\u001a\u00020\u00182\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001cH\u0007¢\u0006\u0004\b+\u0010,J\u001f\u0010/\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0002H\u0014¢\u0006\u0004\b/\u00100J-\u00103\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00022\f\u00102\u001a\b\u0012\u0004\u0012\u0002010\u001cH\u0014¢\u0006\u0004\b3\u00104J\u0017\u00105\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u0003H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u0003H\u0016¢\u0006\u0004\b7\u00106J\u0015\u00108\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b8\u00109J\r\u0010:\u001a\u00020\u0018¢\u0006\u0004\b:\u0010;R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010\n\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010@R\u0016\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0085\u0001\u0010\u0019\u001as\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0016¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00180\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u001d\u0010R\u001a\u0004\u0018\u00010M8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010O\u001a\u0004\bP\u0010QR\u001d\u0010W\u001a\u0004\u0018\u00010S8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010O\u001a\u0004\bU\u0010VR\u001d\u0010\\\u001a\u0004\u0018\u00010X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010O\u001a\u0004\bZ\u0010[R$\u0010b\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u00109¨\u0006d"}, d2 = {"Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;", "Ln6/a;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "pageType", "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;", "fragment", "Landroid/widget/FrameLayout;", "fragmentRootView", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", RequestParameters.POSITION, "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsion/baselib/db/download/DownloadBean;", "bean", NativeComponentConstants.KEY_COMPONENT_TYPE, "Lcom/transsnet/downloader/adapter/u0$b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "popSaveListener", "<init>", "(ILcom/transsnet/downloader/fragment/DownloadPanelFragment;Landroid/widget/FrameLayout;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lkotlin/jvm/functions/Function5;)V", "", "list", "", "O1", "(Ljava/util/List;)Ljava/util/List;", "it", "P1", "(Lcom/transsion/baselib/db/download/DownloadBean;)I", "Z1", "(I)V", "Landroid/view/ViewGroup;", "parent", "viewType", "z0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "X1", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "L1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/a;)V", "", "payloads", "M1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ln6/a;Ljava/util/List;)V", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "V1", "W1", "(Lcom/transsnet/downloader/adapter/u0$b;)V", "K1", "()V", "G", "I", "H", "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;", "Landroid/widget/FrameLayout;", "J", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "K", "Lkotlin/jvm/functions/Function5;", "Lcom/transsnet/downloader/manager/u;", "L", "Lcom/transsnet/downloader/manager/u;", "guideHelper", "", "M", "Z", "isSmallScreen", "Lcom/transsion/room/api/IAudioApi;", "N", "Lkotlin/Lazy;", "Q1", "()Lcom/transsion/room/api/IAudioApi;", "mAudioApi", "Lcom/transsion/room/api/IFloatingApi;", "O", "R1", "()Lcom/transsion/room/api/IFloatingApi;", "mFloatApi", "Ljj/a;", "P", "N1", "()Ljj/a;", "audioDao", "Q", "Lcom/transsnet/downloader/adapter/u0$b;", "S1", "()Lcom/transsnet/downloader/adapter/u0$b;", "Y1", "onItemChangeListener", "LayoutType", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Deprecated
@SourceDebugExtension
public final class DownloadExpandAdapter extends BaseMultiItemQuickAdapter<n6.a, BaseViewHolder> implements r6.i {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int pageType;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final DownloadPanelFragment fragment;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final FrameLayout fragmentRootView;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final BiddingNativeManager wrapperNativeManager;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final Function5<Integer, View, DownloadBean, Integer, u0.b, Unit> popSaveListener;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private com.transsnet.downloader.manager.u guideHelper;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private final boolean isSmallScreen;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private final Lazy mAudioApi;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    private final Lazy mFloatApi;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    private final Lazy audioDao;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    private u0.b onItemChangeListener;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;II)V", "NO_DONE_LAYOUT", "DONE_LAYOUT", "TITLE_LAYOUT", "HIDE_MORE_LAYOUT", "AD_LAYOUT", "ALL_EP_BTN", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private enum LayoutType {
        NO_DONE_LAYOUT(1),
        DONE_LAYOUT(2),
        TITLE_LAYOUT(3),
        HIDE_MORE_LAYOUT(4),
        AD_LAYOUT(5),
        ALL_EP_BTN(6);

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        LayoutType(int i11) {
        }

        public static EnumEntries<LayoutType> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class a implements u0.b {
        a() {
        }

        @Override // com.transsnet.downloader.adapter.u0.b
        public void a(int i11, int i12) {
            DownloadListManager downloadListManagerA;
            u0.b onItemChangeListener = DownloadExpandAdapter.this.getOnItemChangeListener();
            if (onItemChangeListener != null) {
                onItemChangeListener.a(i11, i12);
            }
            if (i12 == 3) {
                DownloadExpandAdapter.this.notifyItemChanged(i11);
                DownloadExpandAdapter.this.Z1(i11);
                return;
            }
            if (i12 != 4) {
                return;
            }
            if (DownloadExpandAdapter.this.pageType == DownloadPageType.SERIES.ordinal()) {
                DownloadListManager.a aVar = DownloadListManager.f59994m;
                DownloadBean downloadBean = (DownloadBean) aVar.a().K().f();
                if (downloadBean != null) {
                    try {
                        try {
                            List<DownloadBean> seriesList = downloadBean.getSeriesList();
                            if (seriesList != null) {
                                seriesList.remove(i11);
                            }
                        } catch (Throwable th2) {
                            DownloadListManager.f59994m.a().K().q(downloadBean);
                            throw th2;
                        }
                    } catch (Throwable unused) {
                        Unit unit = Unit.f67061a;
                        downloadListManagerA = DownloadListManager.f59994m.a();
                    }
                }
                downloadListManagerA = aVar.a();
                downloadListManagerA.K().q(downloadBean);
            }
            DownloadListManager.a aVar2 = DownloadListManager.f59994m;
            DownloadListManager.I(aVar2.a(), aVar2.a().V(), false, null, 6, null);
        }

        @Override // com.transsnet.downloader.adapter.u0.b
        public void b(int i11, int i12, int i13, boolean z10) {
            u0.b.a.a(this, i11, i12, i13, z10);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DownloadExpandAdapter(int i11, DownloadPanelFragment fragment, FrameLayout frameLayout, BiddingNativeManager biddingNativeManager, Function5<? super Integer, ? super View, ? super DownloadBean, ? super Integer, ? super u0.b, Unit> popSaveListener) {
        super(null, 1, null);
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(popSaveListener, "popSaveListener");
        this.pageType = i11;
        this.fragment = fragment;
        this.fragmentRootView = frameLayout;
        this.wrapperNativeManager = biddingNativeManager;
        this.popSaveListener = popSaveListener;
        this.isSmallScreen = ((double) (((float) com.blankj.utilcode.util.a0.a(120.0f)) / ((float) com.blankj.utilcode.util.y.e()))) >= 0.35d;
        this.mAudioApi = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.adapter.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadExpandAdapter.T1();
            }
        });
        this.mFloatApi = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.adapter.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadExpandAdapter.U1();
            }
        });
        this.audioDao = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.adapter.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadExpandAdapter.J1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jj.a J1() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).o1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final jj.a N1() {
        return (jj.a) this.audioDao.getValue();
    }

    private final List<n6.a> O1(List<? extends DownloadBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (DownloadBean downloadBean : list) {
                downloadBean.setItemType(P1(downloadBean));
                arrayList.add(downloadBean);
            }
        }
        return arrayList;
    }

    private final int P1(DownloadBean it) {
        LayoutType layoutType = LayoutType.NO_DONE_LAYOUT;
        int iOrdinal = layoutType.ordinal();
        switch (it.getStatus()) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
                return layoutType.ordinal();
            case 5:
            case 10:
                return LayoutType.DONE_LAYOUT.ordinal();
            case 8:
            case 9:
            default:
                return iOrdinal;
            case 11:
                return LayoutType.TITLE_LAYOUT.ordinal();
            case 12:
                return LayoutType.HIDE_MORE_LAYOUT.ordinal();
            case 13:
                return LayoutType.AD_LAYOUT.ordinal();
            case 14:
                return LayoutType.ALL_EP_BTN.ordinal();
        }
    }

    private final IAudioApi Q1() {
        return (IAudioApi) this.mAudioApi.getValue();
    }

    private final IFloatingApi R1() {
        return (IFloatingApi) this.mFloatApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi T1() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFloatingApi U1() {
        return (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z1(int position) {
        IFloatingApi iFloatingApiR1;
        n6.a aVar = (n6.a) getItem(position);
        if (aVar instanceof DownloadBean) {
            IAudioApi iAudioApiQ1 = Q1();
            if (iAudioApiQ1 != null && iAudioApiQ1.a(((DownloadBean) aVar).getUrl()) && (iFloatingApiR1 = R1()) != null) {
                String name = ((DownloadBean) aVar).getName();
                if (name == null) {
                    name = "";
                }
                iFloatingApiR1.f(name);
            }
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.c()), null, null, new DownloadExpandAdapter$upDateAudioName$1(aVar, this, null), 3, null);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        if (this.fragmentRootView != null && this.pageType == DownloadPageType.DOWNLOAD.ordinal() && (holder instanceof DownloadingHolder)) {
            if (this.guideHelper == null) {
                this.guideHelper = new com.transsnet.downloader.manager.u();
            }
            com.transsnet.downloader.manager.u uVar = this.guideHelper;
            if (uVar != null) {
                uVar.d(this.fragmentRootView, holder, 3000L);
            }
        }
    }

    public final void K1() {
        Iterator<T> it = getData().iterator();
        while (it.hasNext()) {
            n6.a aVar = (n6.a) it.next();
            if (aVar instanceof DownloadBean) {
                ((DownloadBean) aVar).setWrapNativeManager(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: L1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, n6.a item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (holder instanceof u0) {
            u0 u0Var = (u0) holder;
            u0Var.c(holder.getBindingAdapterPosition(), item);
            u0Var.b(holder.getBindingAdapterPosition(), item);
            u0Var.a(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: M1, reason: merged with bridge method [inline-methods] */
    public void G(BaseViewHolder holder, n6.a item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if ((obj instanceof DownloadBean) && (holder instanceof u0)) {
            ((u0) holder).b(holder.getBindingAdapterPosition(), (n6.a) obj);
        }
    }

    /* JADX INFO: renamed from: S1, reason: from getter */
    public final u0.b getOnItemChangeListener() {
        return this.onItemChangeListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: V1, reason: merged with bridge method [inline-methods] */
    public void onViewRecycled(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewRecycled(holder);
    }

    public final void W1(u0.b listener) {
        Intrinsics.h(listener, "listener");
        this.onItemChangeListener = listener;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void X1(List<? extends DownloadBean> list) {
        q1(O1(list));
    }

    public final void Y1(u0.b bVar) {
        this.onItemChangeListener = bVar;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: z0 */
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        if (viewType == LayoutType.NO_DONE_LAYOUT.ordinal()) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.adapter_downloading_item, parent, false);
            Intrinsics.e(viewInflate);
            int i11 = this.pageType;
            DownloadPageType downloadPageType = DownloadPageType.SERIES;
            return new DownloadingHolder(viewInflate, i11 == downloadPageType.ordinal() ? downloadPageType.getPageName() : DownloadPageType.DOWNLOAD.getPageName(), this.isSmallScreen ? 11.0f : 12.0f);
        }
        if (viewType == LayoutType.DONE_LAYOUT.ordinal()) {
            View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R$layout.adapter_downloaded_item, parent, false);
            Intrinsics.e(viewInflate2);
            int i12 = this.pageType;
            DownloadPageType downloadPageType2 = DownloadPageType.SERIES;
            return new DownloadedHolder(viewInflate2, i12 == downloadPageType2.ordinal() ? downloadPageType2.getPageName() : DownloadPageType.DOWNLOAD.getPageName(), this.isSmallScreen ? 11.0f : 12.0f, this.popSaveListener);
        }
        if (viewType == LayoutType.TITLE_LAYOUT.ordinal()) {
            View viewInflate3 = LayoutInflater.from(parent.getContext()).inflate(R$layout.adapter_download_item_header, parent, false);
            Intrinsics.e(viewInflate3);
            return new DownTitleHolder(viewInflate3, this.fragment);
        }
        if (viewType == LayoutType.HIDE_MORE_LAYOUT.ordinal()) {
            View viewInflate4 = LayoutInflater.from(parent.getContext()).inflate(R$layout.adapter_download_item_hide_more, parent, false);
            Intrinsics.e(viewInflate4);
            return new DownHideMoreHolder(viewInflate4, this.wrapperNativeManager);
        }
        if (viewType == LayoutType.AD_LAYOUT.ordinal()) {
            View viewInflate5 = LayoutInflater.from(parent.getContext()).inflate(R$layout.adapter_download_item_ad, parent, false);
            Intrinsics.e(viewInflate5);
            return new DownloadAdHolder(viewInflate5);
        }
        if (viewType != LayoutType.ALL_EP_BTN.ordinal()) {
            return super.onCreateViewHolder(parent, viewType);
        }
        View viewInflate6 = LayoutInflater.from(parent.getContext()).inflate(R$layout.adapter_download_item_all_ep, parent, false);
        Intrinsics.e(viewInflate6);
        DownloadAllEpBtnHolder downloadAllEpBtnHolder = new DownloadAllEpBtnHolder(viewInflate6);
        z(downloadAllEpBtnHolder, viewType);
        return downloadAllEpBtnHolder;
    }
}
