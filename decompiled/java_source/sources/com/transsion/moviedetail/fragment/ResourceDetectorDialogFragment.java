package com.transsion.moviedetail.fragment;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.R$string;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00152\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0003J!\u0010\u0019\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "p0", "()I", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "r0", "(Landroid/view/View;)V", "", "original", "Landroid/text/SpannableString;", "q0", "(Ljava/lang/String;)Landroid/text/SpannableString;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onResume", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/transsion/moviedetailapi/bean/ResourceDetectors;", "c", "Lcom/transsion/moviedetailapi/bean/ResourceDetectors;", "mResourceDetector", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "mTitle", "e", "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ResourceDetectorDialogFragment extends BaseDialog {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ResourceDetectors mResourceDetector;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String mTitle;

    /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.ResourceDetectorDialogFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ResourceDetectorDialogFragment a(String title, ResourceDetectors resourceDetectors) {
            Intrinsics.h(title, "title");
            Intrinsics.h(resourceDetectors, "resourceDetectors");
            ResourceDetectorDialogFragment resourceDetectorDialogFragment = new ResourceDetectorDialogFragment();
            resourceDetectorDialogFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("arguments_resource_detectors_title", title), TuplesKt.a("arguments_resource_detectors", resourceDetectors)));
            return resourceDetectorDialogFragment;
        }
    }

    public ResourceDetectorDialogFragment() {
        super(R$layout.dialog_resource_detector_layout);
        this.mTitle = "";
    }

    private final int p0() {
        int i11 = getResources().getDisplayMetrics().heightPixels;
        return i11 - (i11 / 3);
    }

    private final SpannableString q0(String original) {
        SpannableString spannableString = new SpannableString(original);
        if (StringsKt.c0(original, "etc", false, 2, null)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#1FBDFF")), 0, StringsKt.o0(original, "etc", 0, false, 6, null), 17);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            return spannableString;
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#1FBDFF")), 0, spannableString.length(), 17);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th3));
        }
        return spannableString;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0087  */
    private final void r0(View view) {
        String strB;
        String uploadTime;
        Long firstSize;
        long jLongValue;
        Integer type;
        Long totalSize;
        String source;
        ((ImageView) view.findViewById(R$id.ivClose)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ResourceDetectorDialogFragment.s0(this.f47173a, view2);
            }
        });
        ((TextView) view.findViewById(R$id.tvTitle)).setText(this.mTitle);
        TextView textView = (TextView) view.findViewById(R$id.tvUrl);
        if (textView != null) {
            ResourceDetectors resourceDetectors = this.mResourceDetector;
            textView.setText(resourceDetectors != null ? resourceDetectors.getResourceLink() : null);
        }
        TextView textView2 = (TextView) view.findViewById(R$id.tvSourceData);
        String str = "";
        if (textView2 != null) {
            ResourceDetectors resourceDetectors2 = this.mResourceDetector;
            if (resourceDetectors2 == null || (source = resourceDetectors2.getSource()) == null) {
                source = "";
            }
            textView2.setText(q0(source));
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.h0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ResourceDetectorDialogFragment.t0(this.f47178a, view2);
                }
            });
        }
        TextView textView3 = (TextView) view.findViewById(R$id.tvSizeData);
        long j11 = 0;
        if (textView3 != null) {
            ResourceDetectors resourceDetectors3 = this.mResourceDetector;
            if (resourceDetectors3 == null || (type = resourceDetectors3.getType()) == null || type.intValue() != 0) {
                ResourceDetectors resourceDetectors4 = this.mResourceDetector;
                if (resourceDetectors4 == null || (firstSize = resourceDetectors4.getFirstSize()) == null) {
                    jLongValue = 0;
                } else {
                    jLongValue = firstSize.longValue();
                }
            } else {
                ResourceDetectors resourceDetectors5 = this.mResourceDetector;
                if (resourceDetectors5 == null || (totalSize = resourceDetectors5.getTotalSize()) == null) {
                    jLongValue = 0;
                } else {
                    jLongValue = totalSize.longValue();
                }
            }
            textView3.setText(oh.b.a(jLongValue, 1));
        }
        TextView textView4 = (TextView) view.findViewById(R$id.tvDateData);
        if (textView4 != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                ResourceDetectors resourceDetectors6 = this.mResourceDetector;
                if (resourceDetectors6 != null && (uploadTime = resourceDetectors6.getUploadTime()) != null) {
                    j11 = Long.parseLong(uploadTime) * ((long) 1000);
                }
                strB = com.blankj.utilcode.util.c0.b(com.blankj.utilcode.util.c0.g(j11), "yyyy-MM-dd");
                Intrinsics.g(strB, "date2String(...)");
                try {
                    Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    th = th2;
                    str = strB;
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m454constructorimpl(ResultKt.a(th));
                    strB = str;
                }
            } catch (Throwable th3) {
                th = th3;
            }
            textView4.setText(strB);
        }
        TextView textView5 = (TextView) view.findViewById(R$id.tvUploadedBy);
        if (textView5 != null) {
            String string = textView5.getContext().getString(R$string.base_ui_uploaded_by);
            ResourceDetectors resourceDetectors7 = this.mResourceDetector;
            textView5.setText(string + " " + (resourceDetectors7 != null ? resourceDetectors7.getUploadBy() : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(ResourceDetectorDialogFragment resourceDetectorDialogFragment, View view) {
        resourceDetectorDialogFragment.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(ResourceDetectorDialogFragment resourceDetectorDialogFragment, View view) {
        Navigator navigatorC = TheRouter.c(WebPageIdentity.WEB_VIEW);
        ResourceDetectors resourceDetectors = resourceDetectorDialogFragment.mResourceDetector;
        Navigator.x(navigatorC.K("url", resourceDetectors != null ? resourceDetectors.getResourceLink() : null).z(WebConstants.FIELD_LOAD_URL_ONLY, true), resourceDetectorDialogFragment.requireContext(), null, 2, null);
        resourceDetectorDialogFragment.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mResourceDetector = (ResourceDetectors) arguments.getSerializable("arguments_resource_detectors");
            this.mTitle = arguments.getString("arguments_resource_detectors_title");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
        }
        Window window2 = cVar.getWindow();
        if (window2 != null) {
            window2.setGravity(80);
            window2.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = com.transsion.baseui.util.a.f43502a.b(contextRequireContext);
            attributes.height = p0();
            window2.setBackgroundDrawable(null);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onResume() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout(-1, -2);
            }
            Window window2 = dialog.getWindow();
            if (window2 != null) {
                window2.setGravity(80);
            }
        }
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        r0(view);
    }
}
