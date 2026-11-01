package com.cloud.tmc.miniapp.utils.toast;

import android.app.Application;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.utils.toast.config.IToast;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemToast extends Toast implements IToast {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "SystemToast";
    private TextView mMessageView;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemToast(Application application) {
        super(application);
        Intrinsics.h(application, "application");
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public ImageView findIconView(View view) {
        return IToast.DefaultImpls.findIconView(this, view);
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public TextView findMessageView(View view) {
        return IToast.DefaultImpls.findMessageView(this, view);
    }

    @Override // android.widget.Toast, com.cloud.tmc.miniapp.utils.toast.config.IToast
    public void setText(CharSequence charSequence) {
        TextView textView = this.mMessageView;
        if (textView != null) {
            textView.setText(charSequence);
            return;
        }
        try {
            super.setText(charSequence);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "super.setText failed!", th2);
        }
    }

    @Override // android.widget.Toast, com.cloud.tmc.miniapp.utils.toast.config.IToast
    public void setView(View view) {
        super.setView(view);
        if (view == null) {
            this.mMessageView = null;
        } else {
            this.mMessageView = findMessageView(view);
        }
    }
}
