package com.transsion.edcation.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.dialog.BaseDialogFragment;
import com.transsion.edcation.CourseManager;
import com.transsion.edcation.R$id;
import com.transsion.edcation.R$layout;
import com.transsion.edcation.bean.EducationInterestResp;
import com.transsion.edcation.bean.InterestBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;
import lz.h;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001d\u0010\n\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010'\u001a\u00020!8\u0002X\u0082D¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006("}, d2 = {"Lcom/transsion/edcation/dialog/InterestSelectDialog;", "Lcom/transsion/baseui/dialog/BaseDialogFragment;", "Lvk/a;", "<init>", "()V", "", "v0", "", "Lcom/transsion/edcation/bean/InterestBean;", "options", "s0", "(Ljava/util/List;)V", "initView", "c0", "Landroid/view/Window;", "window", "d0", "(Landroid/view/Window;)V", "", "Z", "()Z", "Landroid/content/Context;", "context", "Landroid/view/View;", "u0", "(Landroid/content/Context;)Landroid/view/View;", "Lcom/transsion/edcation/c;", "e", "Lkotlin/Lazy;", "w0", "()Lcom/transsion/edcation/c;", "mApi", "", "", "f", "Ljava/util/List;", "selectIds", "g", "Ljava/lang/String;", "TAG", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class InterestSelectDialog extends BaseDialogFragment<vk.a> {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy mApi;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final List selectIds;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: com.transsion.edcation.dialog.InterestSelectDialog$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function3<LayoutInflater, ViewGroup, Boolean, vk.a> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(3, vk.a.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/edcation/databinding/DialogInterestSelectBinding;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            return invoke((LayoutInflater) obj, (ViewGroup) obj2, ((Boolean) obj3).booleanValue());
        }

        public final vk.a invoke(LayoutInflater p11, ViewGroup viewGroup, boolean z10) {
            Intrinsics.h(p11, "p0");
            return vk.a.c(p11, viewGroup, z10);
        }
    }

    static final class a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f44110a = new a();

        a() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m apply(Throwable it) {
            Intrinsics.h(it, "it");
            return j.l(it);
        }
    }

    public InterestSelectDialog() {
        super(AnonymousClass1.INSTANCE);
        this.mApi = LazyKt.b(new Function0() { // from class: com.transsion.edcation.dialog.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return InterestSelectDialog.A0();
            }
        });
        this.selectIds = new ArrayList();
        this.TAG = "InterestSelectDialog";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.edcation.c A0() {
        return (com.transsion.edcation.c) zg.c.f79414e.a().h(com.transsion.edcation.c.class);
    }

    public static final /* synthetic */ vk.a p0(InterestSelectDialog interestSelectDialog) {
        return (vk.a) interestSelectDialog.getMViewBinding();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s0(List options) {
        Context context = getContext();
        if (context == null) {
            a0();
            return;
        }
        ((vk.a) getMViewBinding()).f77336b.removeAllViews();
        Iterator it = options.iterator();
        while (it.hasNext()) {
            final InterestBean interestBean = (InterestBean) it.next();
            final View viewU0 = u0(context);
            ((TextView) viewU0.findViewById(R$id.tvContent)).setText(interestBean.getName());
            viewU0.setMinimumHeight(a0.a(40.0f));
            viewU0.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.edcation.dialog.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    InterestSelectDialog.t0(viewU0, this, interestBean, view);
                }
            });
            ((vk.a) getMViewBinding()).f77336b.addView(viewU0);
        }
        CourseManager.f44085a.t(false);
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("edu_interest_dialog", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(View view, InterestSelectDialog interestSelectDialog, InterestBean interestBean, View view2) {
        view.setSelected(!view.isSelected());
        if (view.isSelected()) {
            interestSelectDialog.selectIds.add(interestBean.getId());
        } else {
            interestSelectDialog.selectIds.remove(interestBean.getId());
        }
    }

    private final void v0() {
        com.transsion.edcation.c.a.a(w0(), null, 1, null).v(qz.a.c()).x(a.f44110a).f(sg.d.f75349a.c()).subscribe(new sg.a() { // from class: com.transsion.edcation.dialog.InterestSelectDialog$getInterestList$2
            @Override // sg.a
            public void a(String str, String str2) {
                String unused = this.f44111d.TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("error: ");
                sb2.append(str);
                sb2.append(", msg:");
                sb2.append(str2);
                if (!this.f44111d.isAdded() || this.f44111d.isDetached() || this.f44111d.isRemoving()) {
                    return;
                }
                com.tn.lib.widget.toast.core.h.f41479a.l(Utils.a().getString(R$string.error_load_failed));
                this.f44111d.a0();
            }

            @Override // sg.a
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public void c(EducationInterestResp educationInterestResp) {
                List<InterestBean> options;
                List<InterestBean> options2;
                super.c(educationInterestResp);
                String unused = this.f44111d.TAG;
                Integer numValueOf = (educationInterestResp == null || (options2 = educationInterestResp.getOptions()) == null) ? null : Integer.valueOf(options2.size());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("list is empty: ");
                sb2.append(numValueOf);
                if (this.f44111d.getContext() == null || educationInterestResp == null || (options = educationInterestResp.getOptions()) == null || options.isEmpty()) {
                    return;
                }
                k.d(v.a(this.f44111d), y0.c(), null, new InterestSelectDialog$getInterestList$2$onSuccess$1(this.f44111d, options, null), 2, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.edcation.c w0() {
        return (com.transsion.edcation.c) this.mApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(final InterestSelectDialog interestSelectDialog, View view) {
        com.transsion.baseui.util.d.b(0L, new Function0() { // from class: com.transsion.edcation.dialog.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return InterestSelectDialog.y0(this.f44114a);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(InterestSelectDialog interestSelectDialog) {
        if (!interestSelectDialog.selectIds.isEmpty()) {
            k.d(v.a(interestSelectDialog), y0.b(), null, new InterestSelectDialog$initView$1$1$1(interestSelectDialog, null), 2, null);
            return Unit.f67061a;
        }
        if (!interestSelectDialog.isAdded() || interestSelectDialog.isDetached() || interestSelectDialog.isRemoving()) {
            return Unit.f67061a;
        }
        com.tn.lib.widget.toast.core.h.f41479a.l(Utils.a().getString(com.transsion.edcation.R$string.course_interest_select_tips));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(InterestSelectDialog interestSelectDialog, View view) {
        interestSelectDialog.dismiss();
    }

    @Override // com.transsion.baseui.dialog.BaseDialogFragment
    protected boolean Z() {
        return false;
    }

    @Override // com.transsion.baseui.dialog.BaseDialogFragment
    public void c0() {
    }

    @Override // com.transsion.baseui.dialog.BaseDialogFragment
    protected void d0(Window window) {
        Intrinsics.h(window, "window");
        super.d0(window);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = -2;
        attributes.width = y.e() - dk.a.b(40);
        window.setAttributes(attributes);
    }

    @Override // com.transsion.baseui.dialog.BaseDialogFragment
    public void initView() {
        ((vk.a) getMViewBinding()).f77338d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.edcation.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InterestSelectDialog.x0(this.f44112a, view);
            }
        });
        ((vk.a) getMViewBinding()).f77339e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.edcation.dialog.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InterestSelectDialog.z0(this.f44113a, view);
            }
        });
        v0();
    }

    public final View u0(Context context) {
        Intrinsics.h(context, "context");
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.item_select_interest, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        return viewInflate;
    }
}
