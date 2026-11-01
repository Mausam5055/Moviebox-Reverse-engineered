package com.transsnet.downloader.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.noober.background.drawable.DrawableCreator;
import com.noober.background.view.BLConstraintLayout;
import com.transsnet.downloader.R$color;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.util.DownloadUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\f¢\u0006\u0004\b\u0015\u0010\u000eJ\r\u0010\u0016\u001a\u00020\f¢\u0006\u0004\b\u0016\u0010\u000eJ\r\u0010\u0017\u001a\u00020\f¢\u0006\u0004\b\u0017\u0010\u000eJ0\u0010\u001e\u001a\u00020\f2!\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\f0\u0018¢\u0006\u0004\b\u001e\u0010\u001fJ0\u0010 \u001a\u00020\f2!\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\f0\u0018¢\u0006\u0004\b \u0010\u001fR\u0014\u0010#\u001a\u00020\u000f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010)\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010\"R\u0014\u0010,\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R3\u0010/\u001a\u001f\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\f\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R3\u00101\u001a\u001f\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\f\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010.¨\u00062"}, d2 = {"Lcom/transsnet/downloader/widget/DownloadPathEntranceView;", "Lcom/noober/background/view/BLConstraintLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "j", "()V", "", "pathName", "", "size", "updatePathName", "(Ljava/lang/String;J)V", "onPermissionGranted", "onPermissionDenied", "onPermissionRefresh", "Lkotlin/Function1;", "Landroid/view/View;", "Lkotlin/ParameterName;", "name", "v", "callback", "setChangeClickCallback", "(Lkotlin/jvm/functions/Function1;)V", "setPermissionClickCallback", "a", "Ljava/lang/String;", "TAG", "Lpy/x0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lpy/x0;", "viewBinding", "c", "availableStr", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "dp16", "e", "Lkotlin/jvm/functions/Function1;", "changeClickCallback", "f", "permissionClickCallback", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadPathEntranceView extends BLConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final py.x0 viewBinding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final String availableStr;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int dp16;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function1 changeClickCallback;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function1 permissionClickCallback;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadPathEntranceView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadPathEntranceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadPathEntranceView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.TAG = "DownloadPathEntranceView";
        String string = Utils.a().getString(R$string.available);
        Intrinsics.g(string, "getString(...)");
        this.availableStr = string;
        this.dp16 = com.blankj.utilcode.util.a0.a(16.0f);
        View.inflate(context, R$layout.layout_download_re_path_entrance, this);
        py.x0 x0VarA = py.x0.a(this);
        Intrinsics.g(x0VarA, "bind(...)");
        this.viewBinding = x0VarA;
        j();
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0013  */
    private final void j() {
        ConstraintLayout.b bVar;
        if (getLayoutParams() != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            bVar = (ConstraintLayout.b) layoutParams;
            if (bVar == null) {
                bVar = new ConstraintLayout.b(-1, -2);
            }
        } else {
            bVar = new ConstraintLayout.b(-1, -2);
        }
        bVar.setMarginStart(this.dp16);
        bVar.setMarginEnd(this.dp16);
        setLayoutParams(bVar);
        setBackground(new DrawableCreator.Builder().setCornersRadius(com.blankj.utilcode.util.a0.a(8.0f)).setSolidColor(getContext().getResources().getColor(R$color.download_module_1)).build());
        onPermissionRefresh();
        this.viewBinding.f72976i.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadPathEntranceView.k(this.f60224a, view);
            }
        });
        this.viewBinding.f72974g.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadPathEntranceView.l(this.f60226a, view);
            }
        });
        ConstraintLayout clPermission = this.viewBinding.f72969b;
        Intrinsics.g(clPermission, "clPermission");
        com.transsion.baseui.util.q.c(clPermission, com.blankj.utilcode.util.i.e(8.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(DownloadPathEntranceView downloadPathEntranceView, View view) {
        Function1 function1 = downloadPathEntranceView.permissionClickCallback;
        if (function1 != null) {
            Intrinsics.e(view);
            function1.invoke(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(DownloadPathEntranceView downloadPathEntranceView, View view) {
        Function1 function1;
        if (downloadPathEntranceView.viewBinding.f72974g.getAlpha() != 1.0f || (function1 = downloadPathEntranceView.changeClickCallback) == null) {
            return;
        }
        Intrinsics.e(view);
        function1.invoke(view);
    }

    public final void onPermissionDenied() {
        this.viewBinding.f72974g.setAlpha(0.4f);
        Group groupPermission = this.viewBinding.f72970c;
        Intrinsics.g(groupPermission, "groupPermission");
        jg.c.k(groupPermission);
    }

    public final void onPermissionGranted() {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onPermissionGranted", false, 4, null);
        Group groupPermission = this.viewBinding.f72970c;
        Intrinsics.g(groupPermission, "groupPermission");
        jg.c.g(groupPermission);
        this.viewBinding.f72974g.setAlpha(1.0f);
    }

    public final void onPermissionRefresh() {
        if (DownloadUtil.f59900a.D()) {
            onPermissionGranted();
        } else {
            onPermissionDenied();
        }
    }

    public final void setChangeClickCallback(Function1<? super View, Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.changeClickCallback = callback;
    }

    public final void setPermissionClickCallback(Function1<? super View, Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.permissionClickCallback = callback;
    }

    public final void updatePathName(String pathName, long size) {
        Intrinsics.h(pathName, "pathName");
        String string = Utils.a().getString(R$string.sdcard_name);
        Intrinsics.g(string, "getString(...)");
        if (StringsKt.c0(pathName, string, false, 2, null)) {
            pathName = pathName + File.separator + lj.b.f68866a.f();
        }
        this.viewBinding.f72975h.setText(getContext().getString(R$string.download_path_title_prefix) + " " + pathName);
        TextView textView = this.viewBinding.f72973f;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(size <= 0 ? "0Mb" : oh.b.a(size, 2));
        sb2.append(" ");
        sb2.append(this.availableStr);
        textView.setText(sb2.toString());
        this.viewBinding.f72973f.setTextColor(Utils.a().getResources().getColor(size <= 0 ? com.tn.lib.widget.R$color.error_50 : com.tn.lib.widget.R$color.text_02));
    }
}
