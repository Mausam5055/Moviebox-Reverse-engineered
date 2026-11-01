package com.transsion.postdetail.comment;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.view.Window;
import android.view.WindowManager;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$style;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends androidx.appcompat.app.w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f48740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ro.a f48741b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f48742a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ro.a f48743b;

        public a(Context context) {
            Intrinsics.h(context, "context");
            this.f48742a = context;
            this.f48743b = new ro.a();
        }

        public final g a() {
            g gVar = new g(this.f48742a, null);
            gVar.k(this.f48743b);
            return gVar;
        }

        public final a b(Editable editable) {
            ro.a aVar = this.f48743b;
            if (aVar != null) {
                aVar.g(editable);
            }
            return this;
        }

        public final a c(i0 i0Var) {
            ro.a aVar = this.f48743b;
            if (aVar != null) {
                aVar.f(i0Var);
            }
            return this;
        }

        public final a d(int i11) {
            ro.a aVar = this.f48743b;
            if (aVar != null) {
                aVar.h(i11);
            }
            return this;
        }

        public final a e(CommentBean commentBean) {
            ro.a aVar = this.f48743b;
            if (aVar != null) {
                aVar.i(commentBean);
            }
            return this;
        }
    }

    private g(Context context) {
        super(context, R$style.CommentEditInputDialogTheme);
        setContentView(R$layout.dialog_comment_input_edit);
        setCancelable(true);
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
        this.f48740a = new m(null, this, null, true, 5, null);
    }

    public /* synthetic */ g(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private final void i() {
        m mVar = this.f48740a;
        if (mVar != null) {
            mVar.k(this.f48741b);
        }
        m mVar2 = this.f48740a;
        if (mVar2 != null) {
            mVar2.B();
        }
    }

    private final void m() {
        m mVar = this.f48740a;
        if (mVar != null) {
            mVar.z();
        }
    }

    public final void f() {
        m mVar = this.f48740a;
        if (mVar != null) {
            mVar.g();
        }
    }

    public final ro.a g() {
        return this.f48741b;
    }

    public final m h() {
        return this.f48740a;
    }

    public final void j(Editable editable) {
        ro.a aVar = this.f48741b;
        if (aVar != null) {
            aVar.g(editable);
        }
    }

    public final void k(ro.a aVar) {
        this.f48741b = aVar;
    }

    public final void l() {
        m mVar = this.f48740a;
        if (mVar != null) {
            mVar.y();
        }
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.activity.q, android.app.Dialog
    protected void onStart() {
        super.onStart();
        i();
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    protected void onStop() {
        super.onStop();
        m();
    }
}
