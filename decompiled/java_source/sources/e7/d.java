package e7;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.R$style;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.util.r;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.hisavana.sdk.e4;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends Dialog {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f61564l = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Function0 f61565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextView f61566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextView f61567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextView f61568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TextView f61569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ImageView f61570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ImageView f61571g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f61572h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private e f61573i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f61574j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AdsDTO f61575k;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends e {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ d f61576f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(long j11, d dVar) {
            super(j11, 1000L);
            this.f61576f = dVar;
        }

        @Override // e7.e
        public void e() {
            this.f61576f.k(true);
        }

        @Override // e7.e
        public void f(long j11) {
            d dVar = this.f61576f;
            try {
                Result.Companion companion = Result.INSTANCE;
                int i11 = (int) ((j11 + ((long) DescriptorProtos$Edition.EDITION_PROTO3_VALUE)) / ((long) 1000));
                if (dVar.f61568d != null) {
                    dVar.f61568d.setText(dVar.f61572h + " (" + i11 + "s)");
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context, Function0 function0) {
        super(context, R$style.HSDialogTheme);
        Intrinsics.h(context, "context");
        this.f61565a = function0;
        this.f61572h = "";
        setCancelable(false);
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: e7.a
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
                return d.d(this.f61561a, dialogInterface, i11, keyEvent);
            }
        });
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.hs_ad_bubble_popup_layout, (ViewGroup) null);
        setContentView(viewInflate);
        View viewFindViewById = viewInflate.findViewById(R$id.tv_app_name);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f61566b = (TextView) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R$id.tv_app_size);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f61567c = (TextView) viewFindViewById2;
        View viewFindViewById3 = viewInflate.findViewById(R$id.tv_cta);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        TextView textView = (TextView) viewFindViewById3;
        this.f61568d = textView;
        View viewFindViewById4 = viewInflate.findViewById(R$id.tv_auto_start);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f61569e = (TextView) viewFindViewById4;
        View viewFindViewById5 = viewInflate.findViewById(R$id.iv_close);
        Intrinsics.g(viewFindViewById5, "findViewById(...)");
        ImageView imageView = (ImageView) viewFindViewById5;
        this.f61570f = imageView;
        View viewFindViewById6 = viewInflate.findViewById(R$id.iv_icon);
        Intrinsics.g(viewFindViewById6, "findViewById(...)");
        this.f61571g = (ImageView) viewFindViewById6;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: e7.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.e(this.f61562a, view);
            }
        });
        textView.setOnClickListener(new View.OnClickListener() { // from class: e7.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.f(this.f61563a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(d this$0, DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
        Intrinsics.h(this$0, "this$0");
        if (i11 != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        this$0.dismiss();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(d this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(d this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.k(false);
    }

    private final void j() {
        try {
            Result.Companion companion = Result.INSTANCE;
            e eVar = this.f61573i;
            if (eVar != null) {
                eVar.d();
            }
            this.f61573i = null;
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(boolean z10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            j();
            Function0 function0 = this.f61565a;
            if (function0 != null) {
                function0.invoke();
            }
            AthenaTracker.Z(this.f61575k, z10);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void r() {
        j();
        this.f61573i = new b(((long) this.f61574j) * 1000, this).g();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            j();
            super.dismiss();
        } catch (Throwable th2) {
            e4.b().w("AdBubblePopupDialog", "hide failed: " + th2.getMessage());
        }
    }

    public final boolean l() {
        return isShowing();
    }

    public final void m(AdsDTO adsDTO) {
        Object objM454constructorimpl;
        PslinkInfo pslinkInfo;
        NativeBean nativeObject;
        this.f61575k = adsDTO;
        String sourceSize = null;
        String titleTxt = (adsDTO == null || (nativeObject = adsDTO.getNativeObject()) == null) ? null : nativeObject.getTitleTxt();
        if (titleTxt != null && titleTxt.length() != 0) {
            this.f61566b.setText(titleTxt);
        }
        n(adsDTO);
        r rVar = r.f22193a;
        AdsDTO adsDTO2 = this.f61575k;
        if (adsDTO2 != null && (pslinkInfo = adsDTO2.getPslinkInfo()) != null) {
            sourceSize = pslinkInfo.getSourceSize();
        }
        o(rVar.i(sourceSize));
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(getContext().getString(R$string.hs_bubble_install_btn));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = "Install it";
        }
        Intrinsics.g(objM454constructorimpl, "getOrDefault(...)");
        q((String) objM454constructorimpl);
        int autoRetentionTime = adsDTO != null ? adsDTO.getAutoRetentionTime() : 0;
        p(autoRetentionTime);
        if (autoRetentionTime > 0) {
            this.f61569e.setVisibility(0);
            this.f61569e.setText(getContext().getString(R$string.ad_bubble_auto_start, Integer.valueOf(autoRetentionTime)));
            return;
        }
        try {
            String string = getContext().getString(R$string.install);
            Intrinsics.g(string, "getString(...)");
            q(string);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th3));
        }
        this.f61569e.setVisibility(8);
    }

    public final void n(AdsDTO adsDTO) {
        NativeBean nativeObject;
        if (adsDTO != null && adsDTO.getSource() == 4) {
            DownLoadRequest.n(adsDTO.getLogoUrl(), adsDTO, null, this.f61571g);
            return;
        }
        String logoUrl = (adsDTO == null || (nativeObject = adsDTO.getNativeObject()) == null) ? null : nativeObject.getLogoUrl();
        if (logoUrl == null) {
            logoUrl = "";
        }
        DownLoadRequest.o(logoUrl, adsDTO, 1, null, this.f61571g);
    }

    public final void o(String size) {
        Intrinsics.h(size, "size");
        if (size.length() <= 0) {
            this.f61567c.setVisibility(8);
        } else {
            this.f61567c.setText(size);
            this.f61567c.setVisibility(0);
        }
    }

    public final void p(int i11) {
        this.f61574j = i11;
    }

    public final void q(String text) {
        Intrinsics.h(text, "text");
        this.f61572h = text;
        this.f61568d.setText(text);
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            AthenaTracker.a0(this.f61575k);
            if (this.f61574j > 0) {
                r();
            }
        } catch (Throwable th2) {
            e4.b().w("AdBubblePopupDialog", "show failed: " + th2.getMessage());
        }
    }
}
