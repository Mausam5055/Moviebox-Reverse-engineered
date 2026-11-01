package com.transsion.publish.view.operation;

import ak.g;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.KeyboardUtils;
import com.blankj.utilcode.util.h;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.api.GroupBean;
import com.transsion.publish.view.operation.OperationBarView;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import op.e;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0013\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u001b¢\u0006\u0004\b\u001c\u0010\u001aJ\r\u0010\u001d\u001a\u00020\r¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010\u001d\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b\u001d\u0010!J\u0015\u0010#\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u0006¢\u0006\u0004\b#\u0010$J\r\u0010%\u001a\u00020\r¢\u0006\u0004\b%\u0010\u001eJ\r\u0010&\u001a\u00020\r¢\u0006\u0004\b&\u0010\u001eJ+\u0010)\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u00062\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010(\u001a\u00020\u001f¢\u0006\u0004\b)\u0010*J\u0015\u0010+\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u0006¢\u0006\u0004\b+\u0010$J\u0015\u0010-\u001a\u00020\r2\u0006\u0010,\u001a\u00020\u0006¢\u0006\u0004\b-\u0010$J\u0015\u0010/\u001a\u00020\r2\u0006\u0010.\u001a\u00020\u0006¢\u0006\u0004\b/\u0010$R$\u00107\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0018\u0010:\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010\u0010\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010E\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010H\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010#\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010BR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0014\u0010O\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\bN\u0010BR\u001c\u0010R\u001a\b\u0012\u0004\u0012\u00020\u00060\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u001c\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00060\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010QR\u001c\u0010V\u001a\b\u0012\u0004\u0012\u00020\u00060\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010Q¨\u0006W"}, d2 = {"Lcom/transsion/publish/view/operation/OperationBarView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "Lcom/transsion/publish/adapter/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setClickListener", "(Lcom/transsion/publish/adapter/a;)V", "publish", "Lcom/transsion/publish/api/GroupBean;", "groupBean", "Lcom/transsion/moviedetailapi/bean/Subject;", "mSubject", "init", "(ILcom/transsion/publish/api/GroupBean;Lcom/transsion/moviedetailapi/bean/Subject;)V", "", "Lcom/transsion/publish/view/operation/OperationBean;", "getData", "()Ljava/util/List;", "", "getSelectItem", "resetItem", "()V", "", "link", "(Z)V", WebConstants.FIELD_ITEM, "selectItem", "(I)V", "setPhotoStatus", "setVideoStatus", "list", "state", "setItemState", "(ILjava/util/List;Z)V", "selectItems", "inputNum", "updateInputNum", "textColor", "setInputLimitColor", "Landroidx/recyclerview/widget/RecyclerView;", "a", "Landroidx/recyclerview/widget/RecyclerView;", "getRv", "()Landroidx/recyclerview/widget/RecyclerView;", "setRv", "(Landroidx/recyclerview/widget/RecyclerView;)V", CampaignEx.JSON_KEY_REWARD_TEMPLATE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/content/Context;", "mContext", "c", "Lcom/transsion/publish/adapter/a;", "Lop/e;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lop/e;", "adapter", "e", "I", "f", "Landroid/widget/FrameLayout;", "ffPut", "g", "Z", "isLink", "h", "Landroidx/appcompat/widget/AppCompatTextView;", "i", "Landroidx/appcompat/widget/AppCompatTextView;", "tvInputNum", "j", "DESC_MAX", CampaignEx.JSON_KEY_AD_K, "Ljava/util/List;", "items", "l", "enables", "m", "disables", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class OperationBarView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private RecyclerView rv;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Context mContext;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.publish.adapter.a listener;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private e adapter;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int publish;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private FrameLayout ffPut;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean isLink;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int selectItem;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView tvInputNum;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final int DESC_MAX;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private List items;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private List enables;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private List disables;

    public static final class a implements op.a {
        a() {
        }

        @Override // op.a
        public void a(OperationBean item, int i11) {
            com.transsion.publish.adapter.a aVar;
            Intrinsics.h(item, "item");
            if (item.getStatus() || i11 == 0) {
                if (item.getStatus() || OperationBarView.this.getSelectItem().get(0).intValue() != 1) {
                    RecyclerView rv2 = OperationBarView.this.getRv();
                    if (rv2 != null) {
                        KeyboardUtils.e(rv2);
                    }
                    int type = item.getType();
                    if (type == 0) {
                        com.transsion.publish.adapter.a aVar2 = OperationBarView.this.listener;
                        if (aVar2 != null) {
                            Context context = OperationBarView.this.getContext();
                            Intrinsics.g(context, "getContext(...)");
                            aVar2.startPhoto(context);
                            return;
                        }
                        return;
                    }
                    if (type == 1) {
                        com.transsion.publish.adapter.a aVar3 = OperationBarView.this.listener;
                        if (aVar3 != null) {
                            Context context2 = OperationBarView.this.getContext();
                            Intrinsics.g(context2, "getContext(...)");
                            aVar3.startVideo(context2);
                            return;
                        }
                        return;
                    }
                    if (type == 2) {
                        com.transsion.publish.adapter.a aVar4 = OperationBarView.this.listener;
                        if (aVar4 != null) {
                            Context context3 = OperationBarView.this.getContext();
                            Intrinsics.g(context3, "getContext(...)");
                            aVar4.startAudio(context3);
                            return;
                        }
                        return;
                    }
                    if (type == 3) {
                        com.transsion.publish.adapter.a aVar5 = OperationBarView.this.listener;
                        if (aVar5 != null) {
                            Context context4 = OperationBarView.this.getContext();
                            Intrinsics.g(context4, "getContext(...)");
                            aVar5.startWork(context4);
                            return;
                        }
                        return;
                    }
                    if (type == 4) {
                        com.transsion.publish.adapter.a aVar6 = OperationBarView.this.listener;
                        if (aVar6 != null) {
                            Context context5 = OperationBarView.this.getContext();
                            Intrinsics.g(context5, "getContext(...)");
                            aVar6.startLink(context5);
                            return;
                        }
                        return;
                    }
                    if (type != 6) {
                        if (type == 8 && (aVar = OperationBarView.this.listener) != null) {
                            Context context6 = OperationBarView.this.getContext();
                            Intrinsics.g(context6, "getContext(...)");
                            aVar.startLocation(context6);
                            return;
                        }
                        return;
                    }
                    com.transsion.publish.adapter.a aVar7 = OperationBarView.this.listener;
                    if (aVar7 != null) {
                        Context context7 = OperationBarView.this.getContext();
                        Intrinsics.g(context7, "getContext(...)");
                        aVar7.startGroup(context7);
                    }
                }
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public OperationBarView(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public OperationBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public OperationBarView(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public OperationBarView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        this.selectItem = -1;
        this.DESC_MAX = 1000;
        this.items = new ArrayList();
        this.enables = new ArrayList();
        this.disables = new ArrayList();
        this.mContext = context;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.view_operation_layout, this);
        this.rv = (RecyclerView) viewInflate.findViewById(R$id.f50310rv);
        this.ffPut = (FrameLayout) viewInflate.findViewById(R$id.ff_put);
        this.tvInputNum = (AppCompatTextView) viewInflate.findViewById(R$id.tvInputNum);
    }

    public /* synthetic */ OperationBarView(Context context, AttributeSet attributeSet, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i13 & 2) != 0 ? null : attributeSet, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(OperationBarView operationBarView, View view) {
        com.transsion.publish.adapter.a aVar = operationBarView.listener;
        if (aVar != null) {
            Context context = operationBarView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.put(context);
        }
    }

    public final List<OperationBean> getData() {
        List<OperationBean> listH;
        e eVar = this.adapter;
        return (eVar == null || (listH = eVar.h()) == null) ? new ArrayList() : listH;
    }

    public final RecyclerView getRv() {
        return this.rv;
    }

    public final List<Integer> getSelectItem() {
        List<OperationBean> listH;
        ArrayList arrayList = new ArrayList();
        e eVar = this.adapter;
        if (eVar != null && (listH = eVar.h()) != null) {
            for (OperationBean operationBean : listH) {
                if (operationBean.getStatus() && operationBean.getType() != 3) {
                    arrayList.add(Integer.valueOf(operationBean.getType()));
                }
            }
        }
        return arrayList;
    }

    public final void init(int publish, GroupBean groupBean, Subject mSubject) {
        int iIndexOf;
        int iIndexOf2;
        this.publish = publish;
        this.items.clear();
        this.enables.clear();
        this.disables.clear();
        this.items.add(0);
        this.items.add(1);
        this.enables.add(Integer.valueOf(R$drawable.icon_post_select_image));
        this.enables.add(Integer.valueOf(R$drawable.icon_post_video));
        this.disables.add(Integer.valueOf(R$drawable.icon_post_select_image_unable));
        this.disables.add(Integer.valueOf(R$drawable.icon_post_video_unable));
        g gVar = g.f639a;
        if (!gVar.b()) {
            this.items.add(3);
            this.enables.add(Integer.valueOf(R$drawable.icon_post_select_subject));
            this.disables.add(Integer.valueOf(R$drawable.icon_post_select_subject));
        }
        this.items.add(6);
        this.items.add(8);
        this.enables.add(Integer.valueOf(R$drawable.icon_post_group));
        this.enables.add(Integer.valueOf(R$drawable.icon_post_location));
        this.disables.add(Integer.valueOf(R$drawable.icon_post_group));
        this.disables.add(Integer.valueOf(R$drawable.icon_post_location));
        if (groupBean != null && (iIndexOf2 = this.items.indexOf(6)) >= 0 && iIndexOf2 < this.enables.size() && iIndexOf2 < this.disables.size()) {
            this.items.remove(iIndexOf2);
            this.enables.remove(iIndexOf2);
            this.disables.remove(iIndexOf2);
        }
        if (mSubject != null && !gVar.b() && (iIndexOf = this.items.indexOf(3)) >= 0 && iIndexOf < this.enables.size() && iIndexOf < this.disables.size()) {
            this.items.remove(iIndexOf);
            this.enables.remove(iIndexOf);
            this.disables.remove(iIndexOf);
        }
        ArrayList arrayList = new ArrayList();
        List list = this.items;
        if (list != null) {
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                int iIntValue = ((Number) obj).intValue();
                if (publish != 1) {
                    if (publish == 2) {
                        arrayList.add(new OperationBean(iIntValue, ((Number) this.enables.get(i11)).intValue(), ((Number) this.disables.get(i11)).intValue()));
                    }
                } else if (iIntValue != 2 && iIntValue != 3) {
                    arrayList.add(new OperationBean(iIntValue, ((Number) this.enables.get(i11)).intValue(), ((Number) this.disables.get(i11)).intValue()));
                }
                i11 = i12;
            }
        }
        e eVar = new e();
        this.adapter = eVar;
        eVar.addData(arrayList);
        RecyclerView recyclerView = this.rv;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        }
        RecyclerView recyclerView2 = this.rv;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.adapter);
        }
        e eVar2 = this.adapter;
        if (eVar2 != null) {
            eVar2.l(new a());
        }
        FrameLayout frameLayout = this.ffPut;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: op.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OperationBarView.b(this.f71082a, view);
                }
            });
        }
    }

    public final void resetItem() {
        resetItem(false);
    }

    public final void resetItem(boolean link) {
        int i11;
        List listH;
        e eVar = this.adapter;
        if (eVar != null && (listH = eVar.h()) != null) {
            Iterator it = listH.iterator();
            while (it.hasNext()) {
                ((OperationBean) it.next()).setStatus(true);
            }
        }
        if (this.isLink && !link) {
            selectItem(4);
            return;
        }
        this.isLink = false;
        if (link && (i11 = this.selectItem) != -1 && i11 != 4) {
            selectItem(i11);
            return;
        }
        e eVar2 = this.adapter;
        if (eVar2 != null) {
            eVar2.notifyDataSetChanged();
        }
    }

    public final void selectItem(int item) {
        List listH;
        e eVar = this.adapter;
        if (eVar == null || (listH = eVar.h()) == null || item >= listH.size()) {
            return;
        }
        OperationBean operationBean = listH.get(item);
        int type = operationBean != null ? operationBean.getType() : -1;
        this.selectItem = type;
        if (type == 0) {
            setItemState(0, listH, true);
            setItemState(1, listH, false);
            setItemState(2, listH, false);
        } else if (type == 1) {
            setItemState(1, listH, true);
            setItemState(0, listH, false);
            setItemState(2, listH, false);
        } else if (type == 2) {
            setItemState(2, listH, true);
            setItemState(1, listH, false);
            setItemState(0, listH, false);
            setItemState(4, listH, false);
        } else if (type == 4) {
            this.isLink = true;
            setItemState(4, listH, true);
            setItemState(2, listH, false);
        }
        e eVar2 = this.adapter;
        if (eVar2 != null) {
            eVar2.notifyDataSetChanged();
        }
    }

    public final void selectItems(int item) {
        List<OperationBean> listH;
        e eVar = this.adapter;
        if (eVar == null || (listH = eVar.h()) == null) {
            return;
        }
        for (OperationBean operationBean : listH) {
            int type = operationBean.getType();
            boolean z10 = false;
            if (type != 0) {
                if (type != 1) {
                    if (type != 2) {
                        if (type == 4) {
                            if (item == operationBean.getType()) {
                                operationBean.setStatus(operationBean.getType() != 2);
                            } else {
                                operationBean.setStatus(item != 2);
                            }
                        }
                    } else if (item == operationBean.getType()) {
                        if (operationBean.getType() != 0 && operationBean.getType() != 1 && operationBean.getType() != 4) {
                            z10 = true;
                        }
                        operationBean.setStatus(z10);
                    } else {
                        operationBean.setStatus(false);
                    }
                } else if (item == operationBean.getType()) {
                    if (operationBean.getType() != 0 && operationBean.getType() != 2) {
                        z10 = true;
                    }
                    operationBean.setStatus(z10);
                } else {
                    operationBean.setStatus(false);
                }
            } else if (item == operationBean.getType()) {
                if (operationBean.getType() != 1 && operationBean.getType() != 2) {
                    z10 = true;
                }
                operationBean.setStatus(z10);
            } else {
                operationBean.setStatus(false);
            }
        }
        e eVar2 = this.adapter;
        if (eVar2 != null) {
            eVar2.notifyDataSetChanged();
        }
    }

    public final void setClickListener(com.transsion.publish.adapter.a listener) {
        Intrinsics.h(listener, "listener");
        this.listener = listener;
    }

    public final void setInputLimitColor(int textColor) {
        AppCompatTextView appCompatTextView = this.tvInputNum;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(h.a(textColor));
        }
    }

    public final void setItemState(int item, List<OperationBean> list, boolean state) {
        Intrinsics.h(list, "list");
        for (OperationBean operationBean : list) {
            if (item == operationBean.getType()) {
                operationBean.setStatus(state);
            }
        }
    }

    public final void setPhotoStatus() {
        List listH;
        e eVar = this.adapter;
        if (eVar == null || (listH = eVar.h()) == null) {
            return;
        }
        setItemState(0, listH, false);
        e eVar2 = this.adapter;
        if (eVar2 != null) {
            eVar2.notifyDataSetChanged();
        }
    }

    public final void setRv(RecyclerView recyclerView) {
        this.rv = recyclerView;
    }

    public final void setVideoStatus() {
        List listH;
        e eVar = this.adapter;
        if (eVar == null || (listH = eVar.h()) == null) {
            return;
        }
        setItemState(1, listH, false);
        e eVar2 = this.adapter;
        if (eVar2 != null) {
            eVar2.notifyDataSetChanged();
        }
    }

    public final void updateInputNum(int inputNum) {
        AppCompatTextView appCompatTextView = this.tvInputNum;
        if (appCompatTextView != null) {
            appCompatTextView.setText(inputNum + "/" + this.DESC_MAX);
        }
    }
}
