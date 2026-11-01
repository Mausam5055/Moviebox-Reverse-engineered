package fx;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import ck.j;
import com.blankj.utilcode.util.i;
import com.transsion.version.update.NoticeConfig;
import com.transsion.version.update.R$string;
import com.transsion.version.update.R$style;
import com.transsion.version.update.RemoteVersionInfo;
import com.transsion.version.update.UpdateManager;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class h extends j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f63042g = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ex.b f63043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function1 f63044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f63045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f63046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RemoteVersionInfo f63047f;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a(Context context, RemoteVersionInfo remoteVersionInfo, boolean z10, Function1 callback) {
            Intrinsics.h(context, "context");
            Intrinsics.h(remoteVersionInfo, "remoteVersionInfo");
            Intrinsics.h(callback, "callback");
            h hVar = new h(context);
            hVar.o(remoteVersionInfo, z10);
            hVar.n(callback);
            return hVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Context context) {
        super(context, R$style.BottomDialogTheme);
        Intrinsics.h(context, "context");
        ex.b bVarC = ex.b.c(LayoutInflater.from(context), null, false);
        Intrinsics.g(bVarC, "inflate(...)");
        this.f63043b = bVarC;
        this.f63045d = "";
        setContentView(bVarC.getRoot());
        setCanceledOnTouchOutside(false);
        Window window = getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes = attributes == null ? new WindowManager.LayoutParams() : attributes;
            attributes.width = gk.a.f63625a.a(context);
            attributes.height = -2;
            window.setBackgroundDrawable(null);
            window.setAttributes(attributes);
        }
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: fx.d
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                h.l(this.f63038a, dialogInterface);
            }
        });
        p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(h hVar, DialogInterface dialogInterface) {
        hVar.e();
    }

    private final void m(RemoteVersionInfo remoteVersionInfo) {
        String updateVersionName;
        NoticeConfig noticeConfig;
        NoticeConfig noticeConfig2;
        NoticeConfig noticeConfig3;
        boolean z10 = remoteVersionInfo != null && remoteVersionInfo.getForceUpdate();
        String updateDesc = null;
        String updateTitle = (remoteVersionInfo == null || (noticeConfig3 = remoteVersionInfo.getNoticeConfig()) == null) ? null : noticeConfig3.getUpdateTitle();
        if (remoteVersionInfo != null && (noticeConfig2 = remoteVersionInfo.getNoticeConfig()) != null) {
            updateDesc = noticeConfig2.getUpdateDesc();
        }
        i.f(remoteVersionInfo != null ? remoteVersionInfo.getInstallPkgSize() : 0L, 1048576);
        if (remoteVersionInfo == null || (noticeConfig = remoteVersionInfo.getNoticeConfig()) == null || (updateVersionName = noticeConfig.getUpdateVersionName()) == null) {
            updateVersionName = "";
        }
        this.f63045d = updateVersionName;
        try {
            Drawable applicationIcon = getContext().getPackageManager().getApplicationIcon(getContext().getPackageName());
            Intrinsics.g(applicationIcon, "getApplicationIcon(...)");
            this.f63043b.f62048d.setImageDrawable(applicationIcon);
        } catch (Exception unused) {
            this.f63043b.f62048d.setVisibility(8);
        }
        this.f63043b.f62055k.setText(getContext().getString(R$string.version, this.f63045d));
        if (updateTitle != null && updateTitle.length() != 0) {
            this.f63043b.f62054j.setText(updateTitle);
        }
        if (updateDesc != null && updateDesc.length() != 0) {
            this.f63043b.f62051g.setText(updateDesc);
        }
        setCancelable(!z10);
        setCanceledOnTouchOutside(true ^ z10);
        this.f63043b.f62046b.setVisibility(z10 ? 8 : 0);
    }

    private final void p() {
        this.f63043b.f62046b.setOnClickListener(new View.OnClickListener() { // from class: fx.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h.q(this.f63039a, view);
            }
        });
        this.f63043b.f62047c.setOnClickListener(new View.OnClickListener() { // from class: fx.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h.r(this.f63040a, view);
            }
        });
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: fx.g
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                h.s(this.f63041a, dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(h hVar, View view) {
        hVar.dismiss();
        Function1 function1 = hVar.f63044c;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(h hVar, View view) {
        RemoteVersionInfo remoteVersionInfo = hVar.f63047f;
        if (remoteVersionInfo == null || !remoteVersionInfo.getForceUpdate()) {
            hVar.dismiss();
        }
        Function1 function1 = hVar.f63044c;
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(h hVar, DialogInterface dialogInterface) {
        lg.a.C0828a.f(lg.a.f68839a, "update", "onShow Listener  " + hVar, false, 4, null);
        if (hVar.f63046e) {
            return;
        }
        UpdateManager.f57518f.a().h(hVar.f63045d);
    }

    @Override // ck.j
    public boolean b() {
        if (this.f63046e) {
            return true;
        }
        lg.a.C0828a.g(lg.a.f68839a, "被弹窗拦截策略拦截 " + this, false, 2, null);
        return false;
    }

    @Override // ck.j
    public void f() {
        super.f();
        lg.a.C0828a.f(lg.a.f68839a, "update", "onShow " + this, false, 4, null);
    }

    public final void n(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f63044c = callback;
    }

    public final void o(RemoteVersionInfo remoteVersionInfo, boolean z10) {
        this.f63047f = remoteVersionInfo;
        m(remoteVersionInfo);
        this.f63046e = z10;
    }
}
