package e7;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.util.r;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class i extends PopupWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f61588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f61589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f61590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f61591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f61592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TranCircleImageView f61593f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f61594g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f61595h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ImageView f61596i;

    public interface a {
        void a();

        void onClick(View view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(final Context context, final AdsDTO adsDTO, boolean z10) {
        super(context);
        Intrinsics.h(context, "context");
        this.f61588a = z10;
        View view = null;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_hs_popupwindow_confirm, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        this.f61589b = viewInflate;
        if (viewInflate == null) {
            Intrinsics.z("popupView");
            viewInflate = null;
        }
        setContentView(viewInflate);
        setFocusable(true);
        setOutsideTouchable(true);
        setBackgroundDrawable(new ColorDrawable(0));
        g();
        setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: e7.f
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                i.d(this.f61583a, context);
            }
        });
        View view2 = this.f61589b;
        if (view2 == null) {
            Intrinsics.z("popupView");
            view2 = null;
        }
        this.f61593f = (TranCircleImageView) view2.findViewById(R$id.iv_pop_logo);
        View view3 = this.f61589b;
        if (view3 == null) {
            Intrinsics.z("popupView");
            view3 = null;
        }
        this.f61594g = (TextView) view3.findViewById(R$id.tv_pop_name);
        View view4 = this.f61589b;
        if (view4 == null) {
            Intrinsics.z("popupView");
            view4 = null;
        }
        this.f61595h = (TextView) view4.findViewById(R$id.tv_pop_size);
        View view5 = this.f61589b;
        if (view5 == null) {
            Intrinsics.z("popupView");
            view5 = null;
        }
        this.f61596i = (ImageView) view5.findViewById(R$id.iv_pop_close);
        View view6 = this.f61589b;
        if (view6 == null) {
            Intrinsics.z("popupView");
        } else {
            view = view6;
        }
        TextView textView = (TextView) view.findViewById(R$id.btn_pop_confirm);
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: e7.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view7) {
                    i.e(adsDTO, this, view7);
                }
            });
        }
        ImageView imageView = this.f61596i;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: e7.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view7) {
                    i.f(this.f61587a, view7);
                }
            });
        }
    }

    public /* synthetic */ i(Context context, AdsDTO adsDTO, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, adsDTO, (i11 & 4) != 0 ? true : z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(i this$0, Context context) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(context, "$context");
        a aVar = this$0.f61592e;
        if (aVar != null) {
            aVar.a();
        }
        if (Build.VERSION.SDK_INT <= 30 || !this$0.f61588a) {
            return;
        }
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            this$0.i(activity, 1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(AdsDTO adsDTO, i this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        AthenaTracker.Z(adsDTO, false);
        a aVar = this$0.f61592e;
        if (aVar != null) {
            aVar.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(i this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        try {
            this$0.dismiss();
        } catch (Throwable unused) {
        }
    }

    private final void g() {
        getContentView().measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        this.f61590c = getContentView().getMeasuredWidth();
        this.f61591d = getContentView().getMeasuredHeight();
    }

    public final void h(a popwindowEventListener) {
        Intrinsics.h(popwindowEventListener, "popwindowEventListener");
        this.f61592e = popwindowEventListener;
    }

    public final void i(Activity activity, float f11) {
        Intrinsics.h(activity, "activity");
        try {
            Window window = activity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.alpha = f11;
            window.setAttributes(attributes);
        } catch (Throwable unused) {
        }
    }

    public final void j(Context context, AdsDTO adsDTO, View anchor, int i11, int i12) {
        Intrinsics.h(context, "context");
        Intrinsics.h(anchor, "anchor");
        try {
            if (isShowing()) {
                return;
            }
            AthenaTracker.a0(adsDTO);
            if (this.f61590c == 0) {
                g();
            }
            try {
                if (Build.VERSION.SDK_INT > 30 && this.f61588a) {
                    Activity activity = context instanceof Activity ? (Activity) context : null;
                    if (activity != null) {
                        i(activity, 0.5f);
                    }
                }
            } catch (Throwable unused) {
            }
            showAtLocation(anchor, 0, i11 - (this.f61590c / 2), i12 - this.f61591d);
        } catch (Throwable unused2) {
        }
    }

    public final void k(AdsDTO adsDTO) {
        NativeBean nativeObject;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            String logoUrl = (adsDTO == null || (nativeObject = adsDTO.getNativeObject()) == null) ? null : nativeObject.getLogoUrl();
            if (logoUrl == null) {
                logoUrl = "";
            }
            DownLoadRequest.o(logoUrl, adsDTO, 1, null, this.f61593f);
        } else {
            DownLoadRequest.n(adsDTO.getLogoUrl(), adsDTO, null, this.f61593f);
        }
        if (adsDTO != null) {
            try {
                TextView textView = this.f61594g;
                if (textView != null) {
                    NativeBean nativeObject2 = adsDTO.getNativeObject();
                    textView.setText(nativeObject2 != null ? nativeObject2.getTitleTxt() : null);
                }
                TextView textView2 = this.f61595h;
                if (textView2 == null) {
                    return;
                }
                r rVar = r.f22193a;
                PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
                textView2.setText(rVar.i(pslinkInfo != null ? pslinkInfo.getSourceSize() : null));
            } catch (Throwable unused) {
            }
        }
    }
}
