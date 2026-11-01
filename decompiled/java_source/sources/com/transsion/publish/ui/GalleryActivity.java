package com.transsion.publish.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.viewpager.widget.ViewPager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$string;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.bean.BigImageBean;
import com.transsion.publish.bean.PreviewMediaConfirmEvent;
import com.transsion.publish.view.FixedViewPager;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 >2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00010B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u001f\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\nJ\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0002¢\u0006\u0004\b \u0010\u0004J\u0019\u0010#\u001a\u00020\u00052\b\u0010\"\u001a\u0004\u0018\u00010!H\u0014¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0002H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0005H\u0014¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0010H\u0016¢\u0006\u0004\b(\u0010\u0018J\u000f\u0010)\u001a\u00020\u0010H\u0016¢\u0006\u0004\b)\u0010\u0018J\u000f\u0010*\u001a\u00020\u0010H\u0016¢\u0006\u0004\b*\u0010\u0018J\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.R\u001c\u00102\u001a\b\u0012\u0004\u0012\u00020\u00070/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u001c\u00104\u001a\b\u0012\u0004\u0012\u00020\u00070/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00101R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:¨\u0006?"}, d2 = {"Lcom/transsion/publish/ui/GalleryActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lhp/c;", "<init>", "()V", "", "initView", "Lcom/transsion/publish/api/PhotoEntity;", "photoEntity", "w0", "(Lcom/transsion/publish/api/PhotoEntity;)V", "y0", "v0", "initData", "r0", "info", "", ToolBar.REFRESH, "t0", "(Lcom/transsion/publish/api/PhotoEntity;Z)V", "l0", "x0", "z0", "u0", "()Z", "", RequestParameters.POSITION, "k0", "(I)V", "", "m0", "(Lcom/transsion/publish/api/PhotoEntity;)Ljava/lang/String;", "j0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "n0", "()Lhp/c;", "onDestroy", "isTranslucent", "isStatusDark", "isChangeStatusBar", "onBackPressed", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "", "a", "Ljava/util/List;", "photos", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "select", "Lcom/transsion/publish/adapter/o0;", "c", "Lcom/transsion/publish/adapter/o0;", "travelsGalleryAdapter", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "from", "e", "limit", "f", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class GalleryActivity extends BaseActivity<hp.c> {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.publish.adapter.o0 travelsGalleryAdapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int from;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private List photos = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private List select = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int limit = 1;

    /* JADX INFO: renamed from: com.transsion.publish.ui.GalleryActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, List select, int i11, int i12, int i13) {
            Intrinsics.h(context, "context");
            Intrinsics.h(select, "select");
            Intent intent = new Intent(context, (Class<?>) GalleryActivity.class);
            intent.setFlags(ASTNode.DEOP);
            intent.putExtra("select", (Serializable) select);
            intent.putExtra("index", i11);
            intent.putExtra("from", i12);
            intent.putExtra("key_list", i13);
            context.startActivity(intent);
        }
    }

    public static final class b implements ViewPager.h {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageScrollStateChanged(int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageScrolled(int i11, float f11, int i12) {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageSelected(int i11) {
            GalleryActivity.this.k0(i11);
        }
    }

    private final void initData() {
        r0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        ((hp.c) getMViewBinding()).f64731d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GalleryActivity.o0(this.f50572a, view);
            }
        });
        ((hp.c) getMViewBinding()).f64736i.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GalleryActivity.p0(this.f50575a, view);
            }
        });
        TextView confirmTV = ((hp.c) getMViewBinding()).f64734g;
        Intrinsics.g(confirmTV, "confirmTV");
        jg.c.c(confirmTV, 0L, new Function1() { // from class: com.transsion.publish.ui.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GalleryActivity.q0(this.f50577a, (View) obj);
            }
        }, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void j0() {
        TextView selectNumTV = ((hp.c) getMViewBinding()).f64737j;
        Intrinsics.g(selectNumTV, "selectNumTV");
        selectNumTV.setVisibility(this.select.size() > 0 ? 0 : 8);
        ((hp.c) getMViewBinding()).f64737j.setText(getString(R$string.image_select_num_tips, Integer.valueOf(this.select.size()), Integer.valueOf(this.limit)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void k0(int position) {
        try {
            int i11 = this.from;
            if (2 != i11) {
                if (3 == i11) {
                    if (((PhotoEntity) this.photos.get(position)).getEnableSelect()) {
                        ((hp.c) getMViewBinding()).f64739l.setText("1");
                        ((hp.c) getMViewBinding()).f64739l.setBackgroundResource(R$drawable.bg_linear_r16);
                        return;
                    } else {
                        ((hp.c) getMViewBinding()).f64739l.setText("");
                        ((hp.c) getMViewBinding()).f64739l.setBackgroundResource(R$drawable.ic_select_number_bro);
                        return;
                    }
                }
                PhotoEntity photoEntity = (PhotoEntity) this.photos.get(position);
                if (photoEntity.getEnableSelect()) {
                    ((hp.c) getMViewBinding()).f64739l.setText(m0(photoEntity));
                    ((hp.c) getMViewBinding()).f64739l.setBackgroundResource(R$drawable.bg_linear_r16);
                    return;
                } else {
                    ((hp.c) getMViewBinding()).f64739l.setText("");
                    ((hp.c) getMViewBinding()).f64739l.setBackgroundResource(R$drawable.ic_select_number_bro);
                    return;
                }
            }
            int i12 = position + 1;
            if (i12 > this.photos.size()) {
                ((hp.c) getMViewBinding()).f64738k.setText(position + "/" + this.photos.size());
                return;
            }
            ((hp.c) getMViewBinding()).f64738k.setText(i12 + "/" + this.photos.size());
        } catch (Exception e11) {
            String message = e11.getMessage();
            if (message != null) {
                lg.a.C0828a.f(lg.a.f68839a, "checkStatus", message, false, 4, null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void l0(PhotoEntity info) {
        if (!info.getEnableSelect()) {
            this.select.add(info);
            info.setEnableSelect(true);
        }
        ((hp.c) getMViewBinding()).f64739l.setText(m0(info));
        ((hp.c) getMViewBinding()).f64739l.setBackgroundResource(R$drawable.bg_linear_r16);
        z0();
        j0();
    }

    private final String m0(PhotoEntity info) {
        int i11 = 0;
        for (Object obj : this.select) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(info.getLocalPath(), ((PhotoEntity) obj).getLocalPath())) {
                return String.valueOf(i12);
            }
            i11 = i12;
        }
        return TmcConstants.COLD_OPEN_TYPE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(GalleryActivity galleryActivity, View view) {
        galleryActivity.z0();
        galleryActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void p0(GalleryActivity galleryActivity, View view) {
        int currentItem = ((hp.c) galleryActivity.getMViewBinding()).f64741n.getCurrentItem();
        if (!galleryActivity.photos.isEmpty() && currentItem <= galleryActivity.photos.size()) {
            PhotoEntity photoEntity = (PhotoEntity) galleryActivity.photos.get(currentItem);
            try {
                int i11 = galleryActivity.from;
                if (i11 == 1) {
                    galleryActivity.v0(photoEntity);
                } else if (i11 == 2) {
                    galleryActivity.w0(photoEntity);
                } else if (i11 == 3) {
                    galleryActivity.y0(photoEntity);
                }
            } catch (Exception e11) {
                lg.a.C0828a.g(lg.a.f68839a, "ext:" + e11.getMessage(), false, 2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(GalleryActivity galleryActivity, View it) {
        Intrinsics.h(it, "it");
        PreviewMediaConfirmEvent previewMediaConfirmEvent = new PreviewMediaConfirmEvent(0, 1, null);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PreviewMediaConfirmEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, previewMediaConfirmEvent, 0L);
        galleryActivity.finish();
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void r0() {
        List listE;
        ProgressBar clipLoading = ((hp.c) getMViewBinding()).f64733f;
        Intrinsics.g(clipLoading, "clipLoading");
        jg.c.k(clipLoading);
        if (getIntent().hasExtra("list")) {
            Serializable serializableExtra = getIntent().getSerializableExtra("list");
            Intrinsics.f(serializableExtra, "null cannot be cast to non-null type kotlin.collections.MutableList<com.transsion.publish.api.PhotoEntity>");
            listE = TypeIntrinsics.c(serializableExtra);
        } else {
            listE = com.transsion.publish.n.f50455b.a().e();
        }
        this.photos = listE;
        if (getIntent().hasExtra("select")) {
            Serializable serializableExtra2 = getIntent().getSerializableExtra("select");
            Intrinsics.f(serializableExtra2, "null cannot be cast to non-null type kotlin.collections.MutableList<com.transsion.publish.api.PhotoEntity>");
            this.select = TypeIntrinsics.c(serializableExtra2);
        }
        this.from = getIntent().getIntExtra("from", 1);
        this.limit = getIntent().getIntExtra("key_list", 1);
        int intExtra = getIntent().getIntExtra("index", 0);
        this.travelsGalleryAdapter = new com.transsion.publish.adapter.o0(this.photos);
        ((hp.c) getMViewBinding()).f64741n.setAdapter(this.travelsGalleryAdapter);
        ProgressBar clipLoading2 = ((hp.c) getMViewBinding()).f64733f;
        Intrinsics.g(clipLoading2, "clipLoading");
        jg.c.g(clipLoading2);
        ((hp.c) getMViewBinding()).f64741n.addOnPageChangeListener(new b());
        ((hp.c) getMViewBinding()).f64741n.setCurrentItem(intExtra);
        int i11 = this.from;
        if (2 == i11) {
            ((hp.c) getMViewBinding()).f64738k.getVisibility();
            ImageView ivDelete = ((hp.c) getMViewBinding()).f64735h;
            Intrinsics.g(ivDelete, "ivDelete");
            jg.c.k(ivDelete);
            LinearLayout llSelect = ((hp.c) getMViewBinding()).f64736i;
            Intrinsics.g(llSelect, "llSelect");
            jg.c.g(llSelect);
            Group bottomGroup = ((hp.c) getMViewBinding()).f64729b;
            Intrinsics.g(bottomGroup, "bottomGroup");
            jg.c.g(bottomGroup);
            ((hp.c) getMViewBinding()).f64735h.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GalleryActivity.s0(this.f50569a, view);
                }
            });
        } else if (4 == i11) {
            ((hp.c) getMViewBinding()).f64738k.getVisibility();
            ImageView ivDelete2 = ((hp.c) getMViewBinding()).f64735h;
            Intrinsics.g(ivDelete2, "ivDelete");
            jg.c.g(ivDelete2);
            LinearLayout llSelect2 = ((hp.c) getMViewBinding()).f64736i;
            Intrinsics.g(llSelect2, "llSelect");
            jg.c.g(llSelect2);
            Group bottomGroup2 = ((hp.c) getMViewBinding()).f64729b;
            Intrinsics.g(bottomGroup2, "bottomGroup");
            jg.c.g(bottomGroup2);
        } else {
            j0();
            Group bottomGroup3 = ((hp.c) getMViewBinding()).f64729b;
            Intrinsics.g(bottomGroup3, "bottomGroup");
            jg.c.k(bottomGroup3);
            TextView tvNum = ((hp.c) getMViewBinding()).f64738k;
            Intrinsics.g(tvNum, "tvNum");
            jg.c.g(tvNum);
            ImageView ivDelete3 = ((hp.c) getMViewBinding()).f64735h;
            Intrinsics.g(ivDelete3, "ivDelete");
            jg.c.g(ivDelete3);
        }
        k0(intExtra);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void s0(GalleryActivity galleryActivity, View view) {
        int currentItem = ((hp.c) galleryActivity.getMViewBinding()).f64741n.getCurrentItem();
        if (!galleryActivity.photos.isEmpty() && currentItem <= galleryActivity.photos.size()) {
            try {
                galleryActivity.w0((PhotoEntity) galleryActivity.photos.get(currentItem));
            } catch (Exception e11) {
                lg.a.C0828a.g(lg.a.f68839a, "ext:" + e11.getMessage(), false, 2, null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void t0(PhotoEntity info, boolean refresh) {
        if (info.getEnableSelect()) {
            x0(info);
            info.setEnableSelect(false);
            ((hp.c) getMViewBinding()).f64739l.setText("");
            ((hp.c) getMViewBinding()).f64739l.setBackgroundResource(R$drawable.ic_select_number_bro);
        }
    }

    private final boolean u0() {
        return this.select.size() >= this.limit;
    }

    private final void v0(PhotoEntity photoEntity) {
        if (u0()) {
            if (photoEntity.getEnableSelect()) {
                t0(photoEntity, true);
                return;
            } else {
                com.tn.lib.widget.toast.core.h.f41479a.l(getString(R$string.add_img_max_tips, Integer.valueOf(this.limit)));
                return;
            }
        }
        if (photoEntity.getEnableSelect()) {
            t0(photoEntity, false);
        } else {
            l0(photoEntity);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void w0(PhotoEntity photoEntity) {
        if (photoEntity.getEnableSelect()) {
            PhotoEntity photoEntity2 = null;
            int i11 = 0;
            int i12 = 0;
            for (Object obj : this.photos) {
                int i13 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                PhotoEntity photoEntity3 = (PhotoEntity) obj;
                if (TextUtils.equals(photoEntity3.getLocalPath(), photoEntity.getLocalPath())) {
                    i12 = i11;
                    photoEntity2 = photoEntity3;
                }
                i11 = i13;
            }
            if (photoEntity2 == null) {
                return;
            }
            this.photos.remove(photoEntity2);
            com.transsion.publish.adapter.o0 o0Var = this.travelsGalleryAdapter;
            if (o0Var != null) {
                o0Var.c(this.photos);
            }
            x0(photoEntity);
            if (this.photos.isEmpty()) {
                z0();
                finish();
                return;
            }
            FixedViewPager vp2 = ((hp.c) getMViewBinding()).f64741n;
            Intrinsics.g(vp2, "vp");
            if (i12 > vp2.getChildCount()) {
                ((hp.c) getMViewBinding()).f64741n.setCurrentItem(0, false);
            } else {
                ((hp.c) getMViewBinding()).f64741n.setCurrentItem(i12, false);
            }
            k0(i12);
        }
    }

    private final void x0(PhotoEntity info) {
        PhotoEntity photoEntity = null;
        for (PhotoEntity photoEntity2 : this.select) {
            if (TextUtils.equals(photoEntity2.getLocalPath(), info.getLocalPath())) {
                photoEntity2.setEnableSelect(false);
                photoEntity = photoEntity2;
            }
        }
        if (photoEntity != null) {
            this.select.remove(photoEntity);
        }
        z0();
        j0();
    }

    private final void y0(PhotoEntity photoEntity) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(photoEntity);
        BigImageBean bigImageBean = new BigImageBean();
        bigImageBean.setFrom(Integer.valueOf(this.from));
        bigImageBean.setSelect(arrayList);
        if (photoEntity.getEnableSelect()) {
            photoEntity.setEnableSelect(false);
            bigImageBean.setOperator(2);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = BigImageBean.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, bigImageBean, 0L);
            return;
        }
        photoEntity.setEnableSelect(true);
        bigImageBean.setOperator(1);
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = BigImageBean.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, bigImageBean, 0L);
        finish();
    }

    private final void z0() {
        BigImageBean bigImageBean = new BigImageBean();
        bigImageBean.setFrom(Integer.valueOf(this.from));
        bigImageBean.setSelect(this.select);
        bigImageBean.setOperator(1);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = BigImageBean.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bigImageBean, 0L);
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public hp.c getViewBinding() {
        hp.c cVarC = hp.c.c(getLayoutInflater());
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public hj.b newLogViewConfig() {
        return new hj.b("gallery_page", false, 2, null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        z0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ProgressBar clipLoading = ((hp.c) getMViewBinding()).f64733f;
        Intrinsics.g(clipLoading, "clipLoading");
        jg.c.g(clipLoading);
    }
}
