package ip;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.w;
import com.blankj.utilcode.util.KeyboardUtils;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$style;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import np.j;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f65589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private InterfaceC0793b f65590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f65591c;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f65592a;

        public a(Context context) {
            Intrinsics.h(context, "context");
            this.f65592a = context;
        }

        public final b a(InterfaceC0793b listener, View view) {
            Intrinsics.h(listener, "listener");
            return new b(this.f65592a, listener, view, null);
        }
    }

    /* JADX INFO: renamed from: ip.b$b, reason: collision with other inner class name */
    public interface InterfaceC0793b {
        void completeLoad();
    }

    private b(Context context, InterfaceC0793b interfaceC0793b, View view) {
        super(context, R$style.CommentEditInputDialogTheme);
        this.f65590b = interfaceC0793b;
        this.f65591c = view;
        setContentView(R$layout.dialog_link_input_edit);
        Window window = getWindow();
        if (window != null) {
            window.setGravity(80);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes != null) {
                if (attributes.width != -1) {
                    attributes.width = -1;
                }
                if (attributes.height != -2) {
                    attributes.height = -2;
                }
                window.setAttributes(attributes);
                window.setSoftInputMode(4);
            }
        }
        this.f65589a = new j(null, this, interfaceC0793b, this.f65591c, true, 1, null);
        np.b bVar = new np.b();
        j jVar = this.f65589a;
        if (jVar != null) {
            jVar.k(bVar);
        }
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: ip.a
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
                return b.g(this.f65588a, dialogInterface, i11, keyEvent);
            }
        });
    }

    public /* synthetic */ b(Context context, InterfaceC0793b interfaceC0793b, View view, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, interfaceC0793b, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g(b bVar, DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
        if (i11 != 4 || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        bVar.dismiss();
        return false;
    }

    private final void h() {
    }

    private final void i() {
    }

    @Override // androidx.appcompat.app.w, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        View viewJ;
        super.dismiss();
        this.f65591c = null;
        j jVar = this.f65589a;
        if (jVar == null || (viewJ = jVar.j()) == null) {
            return;
        }
        KeyboardUtils.e(viewJ);
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.activity.q, android.app.Dialog
    protected void onStart() {
        super.onStart();
        h();
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    protected void onStop() {
        super.onStop();
        i();
    }
}
