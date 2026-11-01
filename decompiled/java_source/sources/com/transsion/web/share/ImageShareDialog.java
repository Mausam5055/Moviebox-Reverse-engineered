package com.transsion.web.share;

import android.app.Dialog;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialogFragment;
import com.transsion.web.R$id;
import com.transsion.web.R$layout;
import com.transsion.web.R$string;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kr.p;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003&'(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000e\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006)"}, d2 = {"Lcom/transsion/web/share/ImageShareDialog;", "Lcom/transsion/baseui/dialog/BaseDialogFragment;", "Lux/b;", "<init>", "()V", "", "packageName", "backUpName", "", "q0", "(Ljava/lang/String;Ljava/lang/String;)V", "", "result", "pageName", "t0", "(ZLjava/lang/String;)V", "backUpPackageName", "m0", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "Lcom/transsion/web/share/ImageShareDialog$c;", "n0", "()Ljava/util/List;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", TmcConstants.NAVIGATION_ON_START, "initView", "c0", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Landroid/net/Uri;", "e", "Landroid/net/Uri;", "imageUri", "f", "a", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ImageShareDialog extends BaseDialogFragment<ux.b> {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Uri imageUri;

    /* JADX INFO: renamed from: com.transsion.web.share.ImageShareDialog$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function3<LayoutInflater, ViewGroup, Boolean, ux.b> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(3, ux.b.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/web/databinding/DialogImgeShareBinding;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            return invoke((LayoutInflater) obj, (ViewGroup) obj2, ((Boolean) obj3).booleanValue());
        }

        public final ux.b invoke(LayoutInflater p11, ViewGroup viewGroup, boolean z10) {
            Intrinsics.h(p11, "p0");
            return ux.b.c(p11, viewGroup, z10);
        }
    }

    /* JADX INFO: renamed from: com.transsion.web.share.ImageShareDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ImageShareDialog a(Uri imageUrl) {
            Intrinsics.h(imageUrl, "imageUrl");
            ImageShareDialog imageShareDialog = new ImageShareDialog();
            Bundle bundle = new Bundle();
            bundle.putParcelable("imageUrl", imageUrl);
            imageShareDialog.setArguments(bundle);
            return imageShareDialog;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/web/share/ImageShareDialog$b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/web/share/ImageShareDialog$c;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/web/share/ImageShareDialog$c;)V", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class b extends BaseQuickAdapter {
        public b() {
            super(R$layout.item_share, null, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
        public void F(BaseViewHolder holder, c item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            TextView textView = (TextView) holder.getView(R$id.tv_share);
            textView.setText(item.a());
            textView.setCompoundDrawablesWithIntrinsicBounds(0, item.c(), 0, 0);
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f58095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f58096b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f58097c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f58098d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f58099e;

        public c(int i11, int i12, String txt, String packageName, String str) {
            Intrinsics.h(txt, "txt");
            Intrinsics.h(packageName, "packageName");
            this.f58095a = i11;
            this.f58096b = i12;
            this.f58097c = txt;
            this.f58098d = packageName;
            this.f58099e = str;
        }

        public /* synthetic */ c(int i11, int i12, String str, String str2, String str3, int i13, DefaultConstructorMarker defaultConstructorMarker) {
            this(i11, i12, str, str2, (i13 & 16) != 0 ? null : str3);
        }

        public final int a() {
            return this.f58096b;
        }

        public final String b() {
            return this.f58099e;
        }

        public final int c() {
            return this.f58095a;
        }

        public final String d() {
            return this.f58098d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f58095a == cVar.f58095a && this.f58096b == cVar.f58096b && Intrinsics.c(this.f58097c, cVar.f58097c) && Intrinsics.c(this.f58098d, cVar.f58098d) && Intrinsics.c(this.f58099e, cVar.f58099e);
        }

        public int hashCode() {
            int iHashCode = ((((((this.f58095a * 31) + this.f58096b) * 31) + this.f58097c.hashCode()) * 31) + this.f58098d.hashCode()) * 31;
            String str = this.f58099e;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "ShareItem(iconRes=" + this.f58095a + ", appNameRes=" + this.f58096b + ", txt=" + this.f58097c + ", packageName=" + this.f58098d + ", backPackageName=" + this.f58099e + ")";
        }
    }

    public ImageShareDialog() {
        super(AnonymousClass1.INSTANCE);
    }

    private final String m0(String packageName, String backUpPackageName) {
        if (packageName != null && com.transsion.baseui.util.a.f43502a.c(getContext(), packageName)) {
            return packageName;
        }
        if (backUpPackageName == null || !com.transsion.baseui.util.a.f43502a.c(getContext(), backUpPackageName)) {
            return null;
        }
        return backUpPackageName;
    }

    private final List n0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c(R$mipmap.player_ic_whatsapp, R$string.whatsapp, "whatsup", "com.whatsapp", null, 16, null));
        arrayList.add(new c(R$mipmap.player_ic_telegram, R$string.telegram, "Telegram", "org.telegram.messenger", "org.telegram.messenger.web"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(ImageShareDialog imageShareDialog, View view) {
        imageShareDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(List list, ImageShareDialog imageShareDialog, b bVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        c cVar = (c) list.get(i11);
        imageShareDialog.q0(cVar.d(), cVar.b());
        HashMap map = new HashMap();
        map.put("module_name", bVar.getContext().getString(cVar.a()));
        hj.i iVar = hj.i.f64505a;
        map.put(EventConstants.KEY_SOURCE, iVar.i());
        iVar.p("web_share_panel", map);
        imageShareDialog.dismiss();
    }

    private final void q0(String packageName, String backUpName) {
        final String strM0 = m0(packageName, backUpName);
        if (Intrinsics.c(packageName, "org.telegram.messenger")) {
            p pVar = p.f68388a;
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            pVar.b(fragmentActivityRequireActivity, this.imageUri, new Function1() { // from class: com.transsion.web.share.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ImageShareDialog.r0(this.f58114a, strM0, ((Boolean) obj).booleanValue());
                }
            });
            return;
        }
        if (Intrinsics.c(packageName, "com.whatsapp")) {
            p pVar2 = p.f68388a;
            FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
            pVar2.a(fragmentActivityRequireActivity2, strM0, this.imageUri, new Function1() { // from class: com.transsion.web.share.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ImageShareDialog.s0(this.f58116a, strM0, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r0(ImageShareDialog imageShareDialog, String str, boolean z10) {
        imageShareDialog.t0(z10, str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(ImageShareDialog imageShareDialog, String str, boolean z10) {
        imageShareDialog.t0(z10, str);
        return Unit.f67061a;
    }

    private final void t0(boolean result, String pageName) {
        if (result) {
            return;
        }
        if (pageName == null || pageName.length() == 0) {
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.web_app_not_exist);
        } else {
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.share_failed_tips);
        }
    }

    @Override // com.transsion.baseui.dialog.BaseDialogFragment
    public void c0() {
    }

    @Override // com.transsion.baseui.dialog.BaseDialogFragment
    public void initView() {
        Bundle arguments = getArguments();
        this.imageUri = arguments != null ? (Uri) arguments.getParcelable("imageUrl") : null;
        ShapeableImageView ivShare = ((ux.b) getMViewBinding()).f76947c;
        Intrinsics.g(ivShare, "ivShare");
        yp.a.a(ivShare, this.imageUri, 4.0f);
        ((ux.b) getMViewBinding()).f76946b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.web.share.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImageShareDialog.o0(this.f58110a, view);
            }
        });
        RecyclerView recyclerView = ((ux.b) getMViewBinding()).f76948d;
        recyclerView.addItemDecoration(new ig.d(a0.a(16.0f)));
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        final List<Object> listN0 = n0();
        final b bVar = new b();
        bVar.q1(listN0);
        bVar.w1(new p6.d() { // from class: com.transsion.web.share.b
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                ImageShareDialog.p0(listN0, this, bVar, baseQuickAdapter, view, i11);
            }
        });
        recyclerView.setAdapter(bVar);
    }

    @Override // com.transsion.baseui.dialog.BaseDialogFragment
    public hj.b newLogViewConfig() {
        return new hj.b("share_panel", false, 2, null);
    }

    @Override // com.transsion.baseui.dialog.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override // com.transsion.baseui.dialog.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = a0.a(287.0f);
        attributes.width = -1;
        window.setGravity(80);
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(Z());
        }
        window.setAttributes(attributes);
    }
}
