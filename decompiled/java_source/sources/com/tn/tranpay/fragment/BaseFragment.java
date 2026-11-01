package com.tn.tranpay.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00112\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00112\b\u0010\n\u001a\u0004\u0018\u00010\tH&¢\u0006\u0004\b\u0019\u0010\u0018J!\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00112\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u001a\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\u0007H&¢\u0006\u0004\b\u001b\u0010\u0006J\u000f\u0010\u001c\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001c\u0010\u0006J\u0019\u0010\u001f\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b!\u0010\u0006J\u000f\u0010\"\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\"\u0010\u0006J\u000f\u0010#\u001a\u00020\u0007H\u0016¢\u0006\u0004\b#\u0010\u0006J\u000f\u0010$\u001a\u00020\u0007H\u0016¢\u0006\u0004\b$\u0010\u0006R$\u0010+\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010/\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001d\u00108\u001a\u0004\u0018\u0001038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107¨\u00069"}, d2 = {"Lcom/tn/tranpay/fragment/BaseFragment;", "Lg4/a;", "T", "Landroidx/fragment/app/Fragment;", "Lcom/tn/tranpay/report/b;", "<init>", "()V", "", "W", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "getViewBinding", "(Landroid/view/LayoutInflater;)Lg4/a;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initView", "initData", "lazyLoadData", "onDestroyView", "Landroid/content/Intent;", "intent", "newIntent", "(Landroid/content/Intent;)V", "onResume", "onPause", "logResume", "logPause", "a", "Lg4/a;", "getMViewBinding", "()Lg4/a;", "setMViewBinding", "(Lg4/a;)V", "mViewBinding", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "isFirst", "()Z", "setFirst", "(Z)V", "Lcom/tn/tranpay/report/c;", "c", "Lkotlin/Lazy;", "getLogViewConfig", "()Lcom/tn/tranpay/report/c;", "logViewConfig", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseFragment<T extends g4.a> extends Fragment implements com.tn.tranpay.report.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private g4.a mViewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean isFirst = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy logViewConfig = LazyKt.b(new Function0<com.tn.tranpay.report.c>(this) { // from class: com.tn.tranpay.fragment.BaseFragment$logViewConfig$2
        final /* synthetic */ BaseFragment<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        {
            super(0);
            this.this$0 = this;
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.tn.tranpay.report.c invoke() {
            return this.this$0.V();
        }
    });

    private final void W() {
        if (this.isFirst) {
            this.isFirst = false;
            lazyLoadData();
        }
    }

    public com.tn.tranpay.report.c V() {
        return com.tn.tranpay.report.b.a.a(this);
    }

    @Override // com.tn.tranpay.report.b
    public com.tn.tranpay.report.c getLogViewConfig() {
        return (com.tn.tranpay.report.c) this.logViewConfig.getValue();
    }

    public final g4.a getMViewBinding() {
        return this.mViewBinding;
    }

    public abstract g4.a getViewBinding(LayoutInflater inflater);

    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
    }

    public abstract void initView(View view, Bundle savedInstanceState);

    public abstract void lazyLoadData();

    public void logPause() {
        com.tn.tranpay.report.b.a.b(this);
    }

    public void logResume() {
        com.tn.tranpay.report.b.a.c(this);
    }

    public void newIntent(Intent intent) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.isFirst = true;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        g4.a viewBinding = getViewBinding(inflater);
        this.mViewBinding = viewBinding;
        if (viewBinding != null) {
            return viewBinding.getRoot();
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mViewBinding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (isHidden()) {
            return;
        }
        logPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        logResume();
        W();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView(view, savedInstanceState);
        initData(view, savedInstanceState);
    }
}
