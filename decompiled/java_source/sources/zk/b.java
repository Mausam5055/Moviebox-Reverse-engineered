package zk;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.i;
import com.blankj.utilcode.util.y;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private yk.b f79429a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(b bVar, View view) {
        bVar.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        yk.b bVarC = yk.b.c(getLayoutInflater());
        this.f79429a = bVarC;
        yk.b bVar = null;
        if (bVarC == null) {
            Intrinsics.z("viewBinding");
            bVarC = null;
        }
        setContentView(bVarC.getRoot());
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(null);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes != null) {
                attributes.gravity = 17;
            }
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (attributes2 != null) {
                attributes2.width = y.e() - i.e(70.0f);
            }
        }
        float fE = i.e(8.0f);
        yk.b bVar2 = this.f79429a;
        if (bVar2 == null) {
            Intrinsics.z("viewBinding");
            bVar2 = null;
        }
        LinearLayout root = bVar2.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        al.a.a(root, fE);
        yk.b bVar3 = this.f79429a;
        if (bVar3 == null) {
            Intrinsics.z("viewBinding");
            bVar3 = null;
        }
        AppCompatTextView btnOk = bVar3.f79029b;
        Intrinsics.g(btnOk, "btnOk");
        al.a.a(btnOk, fE);
        yk.b bVar4 = this.f79429a;
        if (bVar4 == null) {
            Intrinsics.z("viewBinding");
        } else {
            bVar = bVar4;
        }
        bVar.f79029b.setOnClickListener(new View.OnClickListener() { // from class: zk.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.b(this.f79428a, view);
            }
        });
    }
}
